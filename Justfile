# Default
default:
  just --list

# Build Docker Image
build-image:
  docker build -t ranckosolutionsinc/akala-21-store:v1.0 .

# Run Docker Container
run-container:
  docker run -d -p 3000:3000 --network proxy-net --restart always --name akala-21-store ranckosolutionsinc/akala-21-store:v1.0

# Docker compose
compose:
  docker compose -f compose.yaml up -d

# Docker compose down
compose-down:
  docker compose -f compose.yaml down
