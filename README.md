# Bitmovin Player Yospace Integration
Bitmovin Player integration with the Yospace AdManagement SDK

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
5. Zip and deploy the demo to the roku device

## Usage

1. Fetch Yospace SDK
  - Download Yospace SDK
  - Create a folder in your source folder called `yospace`
  - Put the Yospace SDK into the newly created `./source/yospace` folder. _If you want to create a different folder structure you need to change the import of the `Yospace SDK` at the end of the `BitmovinYospacePlayer.xml` file_
2. Copy the folder `bitmovinYospacePlayer` to your components folder
3. Create an instance of `BitmovinYospacePlayer`
  ```Brightscript
  m.bitmovinPlayer = CreateObject("roSGNode", "BitmovinYospacePlayer")
  ```