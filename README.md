# Bitmovin Player Yospace Integration
Bitmovin Player integration with the Yospace AdManagement SDK
This integration completely encapsulates the usage of Yospace. After creating the player it can be used like a normal Bitmovin Player instance.

## Compatibility
**This version of the Yospace Integration works only with Bitmovin Player Version >= 1.4.x.
The recommended version of the Yospace SDK is 1.4-2.**

## Getting Started
1. Clone Git repository

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
2. Copy the `bitmovinYospacePlayer` folders from the components and source folders to your components and source folders respectively.
3. Create an instance of `BitmovinYospacePlayer`
  ```Brightscript
  m.bitmovinPlayer = CreateObject("roSGNode", "BitmovinYospacePlayer")
  ```

  For a more in depth example on how to use the Bitmovin Yospace Player please refer to the `PlayerExample.brs` inside the demo folder.
