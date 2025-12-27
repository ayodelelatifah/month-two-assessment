# Stage 1: Build
FROM golang:1.25-alpine AS builder

# Install git (required for some go modules)
RUN apk add --no-cache git

WORKDIR /app

# Enable Go modules and set a longer timeout for downloads
ENV GO111MODULE=on
ENV GOPROXY=https://proxy.golang.org,direct

COPY go.mod go.sum ./

# Try downloading with a retry logic in case of network drops
RUN go mod download || (sleep 5 && go mod download)

COPY . .
RUN go build -o main ./cmd/api

# Stage 2: Final Runtime
FROM alpine:3.19
RUN addgroup -S appgroup && adduser -S appuser -G appgroup
WORKDIR /app
COPY --from=builder /app/main .
USER appuser
EXPOSE 3000
HEALTHCHECK --interval=30s --timeout=3s \
  CMD wget --no-verbose --tries=1 --spider http://localhost:3000/health || exit 1
CMD ["./main"]
