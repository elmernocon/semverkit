FROM python:3.11-slim-bookworm
WORKDIR /stage
COPY . .
RUN pip install .
RUN rm -rf /stage
ENTRYPOINT [ "semverkit" ]
