This addon runs the [FireTV Server](https://github.com/happyleavesaoc/python-firetv) daemon to communicate with FireTV devices.

The addon is stored in this https://gitub.com/gollo/hassio-addons repository. You will have to add this Add-On Repositories section of the Add-On Shop page in the hassio dashboard. From here you can install the addon like any other. Do not yet start the add-on.

Follow the first two steps from [here](https://home-assistant.io/components/media_player.firetv/) to set up your Fire TV device with ADB and retrieve the IP address and port. There is no need to follow any further steps until the HASS configuration.yaml documented towards the end.

Once complete, configure the addon as below.

```json
{
  "devices": [
    {
      "name": "thenamehasswilluse",
      "host": "hostname/IP",
      "port": 5555
    }
  ]
}
```

Configuration variables:

+ **devices** (_Required_): List of firetv devices with which to communicate.
  *    **name** (_Required_): This is the name HASS will know the device by in configuration.xml
  *    **host** (_Required_): This is the IP address of the device.
  *    **port** (_Requited_): This is the port of the device, usually 5555.
    
Start the addon and restart HASS.
