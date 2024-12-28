FROM nginx:stable-alpine3.17-slim

# Install required packages
RUN apk add --no-cache inotify-tools dos2unix

# Copy all files first
COPY ./deploy /deploy/

# Create necessary directories and move files to correct locations
RUN mkdir -p /docker-entrypoint.d && \
    cp -rv /deploy/docker-entrypoint.d/* /docker-entrypoint.d/ && \
    cp -rv /deploy/reloader.sh / && \
    # Convert line endings and set permissions
    dos2unix /docker-entrypoint.d/*.sh && \
    dos2unix /reloader.sh && \
    chmod 755 /docker-entrypoint.d/*.sh && \
    chmod 755 /reloader.sh && \
    rm -rf /deploy
