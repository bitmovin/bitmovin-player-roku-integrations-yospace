# Bitmovin Player Yospace Integration

This is an open-source project to enable the use of a third-party component (Yospace) with the Bitmovin Player Web SDK.

## Maintenance and Update

This project is not part of a regular maintenance or update schedule. For any update requests, please take a look at the guidance further below.

## Contributions to this project

As an open-source project, we are pleased to accept any and all changes, updates and fixes from the community wishing to use this project. Please see [CONTRIBUTING.md](CONTRIBUTING.md) for more details on how to contribute.

## Reporting player bugs

If you come across a bug related to the player, please raise this through your support ticketing system.

## Need more help?

Should you want some help updating this project (update, modify, fix or otherwise) and can't contribute for any reason, please raise your request to your Bitmovin account team, who can discuss your request.

## Support and SLA Disclaimer

As an open-source project and not a core product offering, any request, issue or query related to this project is excluded from any SLA and Support terms that a customer might have with either Bitmovin or another third-party service provider or Company contributing to this project. Any and all updates are purely at the contributor's discretion.

Thank you for your contributions!

## Usage

This integration completely encapsulates the usage of Yospace. After creating the player it can be used like a normal Bitmovin Player instance.
The API reference for the Bitmovin Roku Player can be found [here](https://bitmovin.com/docs/player/api-reference/roku).
Furthermore, there are some ad-specific fields and functions exclusive to the Yospace integration:

Current Bitmovin Player SDK - 1.36.1

**Fields:**

- `adBreakStarted`: boolean
  Is set to true once an ad break starts

- `adBreakFinished`: boolean
  Is set to true once an ad break finishes

- `adFinished`: boolean
  Is set to true once an ad finishes

- `adQuartile`: number
  Changes based on the current ad quartile

- `adSkipped`: boolean
  Is set to true if an ad has been skipped

- `adStarted`: boolean
  Is set to true once an ad starts

**Functions:**

- `ad_getActiveAd` ad_getActiveAd() as assocarray
  Returns the currently active ad, if no ad is active returns `invalid`

- `ad_getActiveAdBreak`: ad_getActiveAdBreak() as assocarray
  Returns the currently active ad break, if no ad break is active returns `invalid`

- `ad_list`: ad_list() as assocarray
  Returns a list of all ads

- `ad_skip`: ad_skip() as void
  Skips the currently active ad, has no effect if no ad is currently active

- `setContentMetaData`: setContentMetaData(genre, id, length) as void
  Sets the demographic information required by RAF


## Ad policy
The ad policy can be found and edited in `./source/BitmovinYospacePlayer/DefaultBitmovinYospacePlayerPolicy.brs`.
_If you want to create your own file containing the policy or want to rename the existing one make sure to also rename the script import in `BitmovinPlayerTask.xml`. Naturally, if the function `getDefaultBitmovinYospacePlayerPolicy()` is renamed the function call in `BitmovinPlayerTask.xml` also has to be renamed._

## Compatibility
**This version of the Yospace Integration works only with Bitmovin Player Version >= 1.4.x.
The recommended version of the Yospace SDK is 1.4-2.**

## Getting Started
Clone Git repository

## Running the example
1. Run `npm i` to install dependencies
2. Fetch Yospace SDK
  - Download Yospace SDK
  - Put it into `./YospaceIntegration/source/yospace`
3. Ensure that you are in the same network as the roku device
4. Run `npm run serve`
  _(This will copy all needed files from ./YospaceIntegration to the ./demo folder)_
5. Zip the demo folder content (`components`, `source`, `manifest`) and deploy it to the roku device

## Usage
1. Fetch Yospace SDK
  - Download Yospace SDK
  - Create a folder in your source folder called `yospace`
  - Put the Yospace SDK into the newly created `./source/yospace` folder. _If you want to create a different folder structure you need to change the import of the `Yospace SDK` at the end of the `BitmovinYospacePlayer.xml` file_
  - Set the flag `USE_LOADER_TASK` in `./source/yospace/Utils/YORokuTasks.brs` to `false`
2. Copy the `bitmovinYospacePlayer` folders from the `components` and `source` folders to your `components` and `source` folders respectively.
3. Create an instance of `BitmovinYospacePlayer`
  ```Brightscript
  m.bitmovinPlayer = CreateObject("roSGNode", "BitmovinYospacePlayer")
  ```

## Conviva Integration

1. Create a new folder called `BitmovinConviva` under the root project folder
2. Clone https://github.com/bitmovin/bitmovin-player-roku-analytics-conviva.git inside `BitmovinConviva` folder using `git clone https://github.com/bitmovin/bitmovin-player-roku-analytics-conviva.git .`

3. Run `npm run serve-conviva`
  _(This will copy all needed files from ./YospaceIntegration and ConvivaIntegration to the ./demo folder)_
4. In `PlayerExample.brs` uncomment `m.bitmovinYospacePlayer = CreateObject("roSGNode", "BitmovinYospaceConvivaPlayer")` and use it instead of `BitmovinYospacePlayer`

5. In `PlayerExample.brs` uncomment `initializeConviva` inside method and add your customer key & gatewayUrl

6. In `PlayerExample.brs` go to In `onPlaybackUrlReceived()` callback and uncomment ` m.bitmovinYospacePlayer.callFunc(m.BitmovinFunctions.MONITOR_YOSPACE_SDK)`

7. Finally zip the demo folder and run the application as mentioned before.


### Conviva Setup

1. Setting up the instance of `conviva`

  _Ensure that the bitmovinPlayer exists here as well_

  ```Brightscript
  customerKey = "YOUR_CUSTOMER_KEY"
  config = {
    debuggingEnabled : true
    gatewayUrl : "YOUR_GATEWAY_URL" ' optional and only for testing
  }
 m.bitmovinYospacePlayer.callFunc(m.BitmovinFunctions.SETUP_CONVIVA_ANALYTICS, player, customerKey, config)
  ' Initialize Conviva before calling setup or load on the bitmovinPlayer
  m.bitmovinPlayer.callFunc(m.BitmovinFunctions.SETUP, m.playerConfig)
  ```

### Advanced Usage

#### Custom Deficiency Reporting (VPF)

If you want to track custom VPF (Video Playback Failures) events when no actual player error happens (e.g.
endless stalling due to network condition) you can use following API to track those deficiencies:

```Brightscript
 m.bitmovinYospacePlayer.callFunc(m.BitmovinFunctions.REPORT_PLAYBACK_DEFICIENCY, "MY_ERROR_MESSAGE", true, true)
```

#### Custom Events

If you want to track custom events you can do so by adding the following:

For an event not bound to a session, use:

```Brightscript
m.bitmovinYospacePlayer.callFunc(m.BitmovinFunctions.SEND_CUSTOM_APPLICATION_EVENT, "MY_EVENT_NAME", {
  eventAttributeKey: "eventAttributeValue"
})
```

For an event bound to a session, use:

```Brightscript
m.bitmovinYospacePlayer.callFunc(m.BitmovinFunctions.SEND_CUSTOM_PLAYBACK_EVENT, "MY_EVENT_NAME", {
  eventAttributeKey: "eventAttributeValue"
})
```


#### Content Metadata Handling

If you want to monitor video session you can do so by adding the following:

```Brightscript
contentMetadataOverrides = {
  playerName: "Conviva Integration Test Channel",
  viewerId: "MyAwesomeViewerId",
  tags: {
    "CustomKey": "CustomValue"
  }
}
m.bitmovinYospacePlayer.callFunc(m.BitmovinFunctions.MONITOR_VIDEO, contentMetadataOverrides)
```

If you want to override some content metadata attributes during current session you can do so by adding the following:

```Brightscript
contentMetadataOverrides = {
  playerName: "Conviva Integration Test Channel",
  viewerId: "MyAwesomeViewerId",
  tags: {
    "CustomKey": "CustomValue"
  }
}
m.bitmovinYospacePlayer.callFunc(m.BitmovinFunctions.UPDATE_CONTENT_METADATA, contentMetadataOverrides)
```

#### End a Session

If you want to end a session manually you can do so by adding the following:

```Brightscript
m.bitmovinYospacePlayer.callFunc(m.BitmovinFunctions.END_SESSION)
```
**For a more in depth example on how to use the Bitmovin Yospace Player please refer to the `PlayerExample.brs` as well as `playerExampleConfig.brs` inside the `demo/components/playerExample/` folder.**
