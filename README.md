# Bitmovin Player Yospace Integration
Bitmovin Player integration with the Yospace AdManagement SDK
This integration completely encapsulates the usage of Yospace. After creating the player it can be used like a normal Bitmovin Player instance.
The API reference for the Bitmovin Roku Player can be found here https://bitmovin.com/docs/player/api-reference/roku.
Furthermore there are some ad-specific fields and functions exclusive to the Yospace integration.

Those exclusives are the following:
  Fields:
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

  Functions:  
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

  For a more in depth example on how to use the Bitmovin Yospace Player please refer to the `PlayerExample.brs` inside the `demo/components/playerExample/` folder.
