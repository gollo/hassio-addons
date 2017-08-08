FROM %%BASE_IMAGE%%

ENV LANG C.UTF-8

ARG DOCKER_TAG
# Various labels used for image classification.
LABEL org.label-schema.build-date=%%BUILD_DATE%% \
      org.label-schema.name="firetv-server" \
      org.label-schema.description="Runs python-firetv-server as a hass.io addon." \
      org.label-schema.url="https://github.com/gollo/hassio-addons" \
      org.label-schema.vcs-url="https://github.com/gollo/hassio-addons/firetv-server" \
      org.label-schema.vcs-ref=%%VCS_REF%% \
      org.label-schema.vendor="Dacre Breeze LTD" \
      org.label-schema.version=$DOCKER_TAG \
      org.label-schema.schema-version="2.0"

# Install requirements for add-on
RUN apk add --no-cache python python-dev py2-pip jq openssl-dev libusb musl-dev py-yaml gcc \
   && pip install flask \
   && pip install --upgrade https://github.com/gollo/python-firetv/zipball/stability_debug

# Python 3 HTTP Server serves the current working dir
# So let's set it to our add-on persistent data directory.
WORKDIR /data
# Copy data for add-on
COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
