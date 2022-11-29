services:
  pocketbase:
    build: pd/
    restart: unless-stopped
    container_name: pocketbase
    volumes:
      - data:/pd_data
    ports:
      - 8090:8090
volumes:
  data:


