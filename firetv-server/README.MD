FireTV Server

This addon runs the FireTV Server daemon to communicate with FireTV devices, see FireTV Server

The addon is stored in this https://gitub.com/gollo/hassio-addons repository. You will have to add this Add-On Repositories section of the Add-On Shop page in the hassio dashboard. From here you can install the addon like any other. Do not yet start the add-on.

Follow the first two steps from here to set up your Fire TV device with ADB and retrieve the IP address and port. There is no need to follow any further steps until the HASS configuration.xml documented towards the end.

Once complete, configure the addon as below.

{
  "devices": [
    {
      "name": "thenamehasswilluse",
      "host": "hostname/IP",
      "port": 5555
    }
  ]
}
Configuration variables:

devices (Required): List of firetv devices with which to communicate.
name (Required): This is the name HASS will know the device by in configuration.xml
host (Required): This is the IP address of the device.
port (Requited): This is the port of the device, usually 5555.
Start the addon and restart HASS.

Currently any unavailble devices will cause the addon to stop. These should be removed from the configuration until resolved.
