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
5. Zip and deploy the demo folder contains to the roku device

## Usage

  For an example on how to use the Bitmovin Yospace Player please refer to the `PlayerExample.brs` inside the demo folder.
