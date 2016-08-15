FROM vikas027/todobackend-base:latest
MAINTAINER Vikas Kumar <vikas@reachvikas.com>

# Copy application artifacts created in Build stage
COPY target /wheelhouse

# Install application
RUN . /appenv/bin/activate && \
    pip install --no-index -f /wheelhouse todobackend && \
    rm -rf /wheelhouse
