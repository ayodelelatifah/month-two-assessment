cat <<EOF > scripts/docker-run.sh
#!/bin/bash
echo "Starting local environment with Docker Compose..."
docker-compose up -d
EOF
