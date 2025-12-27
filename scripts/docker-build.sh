cat <<EOF > scripts/docker-build.sh
#!/bin/bash
echo "Building Backend Docker Image..."
docker build -t container-assessment-backend:latest .
EOF
