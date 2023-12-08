FROM python:3.11-alpine
WORKDIR /stage
COPY . .
RUN pip install . && \
    pip cache purge
RUN rm -rf /stage && \
    rm -rf /root/.cache
ENTRYPOINT [ "semverkit" ]
