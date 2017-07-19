FROM %%BASE_IMAGE%%

ENV LANG C.UTF-8

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
