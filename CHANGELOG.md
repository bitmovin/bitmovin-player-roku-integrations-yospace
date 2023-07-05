# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/)
and this project adheres to [Semantic Versioning](http://semver.org/).

## [Unreleased]

## 1.7.1 - 2022-02-03
### Changed
- Swap out Deprecated bitmovinPlayer field listener `currentTime` in favor of new field listener `timeChanged`

## 1.7.0 - 2022-01-19
### Changed
- Updated to bitmovin player [v1.57.0](https://bitmovin.com/docs/player/releases/roku/roku-1-57-0)

## 1.6.1 - 2021-08-06
### Fixed
- Seek error when m.conviva is not defined

## 1.6.0 - 2021-04-23
### Changed
- Updated to bitmovin player [v1.44.0](https://bitmovin.com/docs/player/releases/roku/roku-1-44-0)

### Fixed
- Crash when CUE tag of SCTE35 event contains ID character set

## 1.5.2 - 2021-04-06
### Fixed
- startOffset of live events when not going through YoSpace
- Conviva tracking of non-YS streams

## 1.5.1 - 2021-03-18
### Fixed
- Adjust startOffset for stitched ads
- Moved creation of RAF off render thread to task thread
- Conviva tracking for non-YoSpace content that autoplays

## 1.5.0 - 2021-02-26
### Changed
- Bitmovin Player to version [1.41.2](https://bitmovin.com/docs/player/releases/roku/roku-1-41-2)

## 1.4.1 - 2021-03-03
### Fixed
- Conviva tracking for non-YoSpace content that autoplays

## 1.4.0 - 2021-02-23
### Added
- Callback for BitmovinFields.METADATA
- Missing reportCompanionEvent in BitmovinYospaceConvivaPlayer module
### Fixed
- Crash in AdBreak handlers if no current break
- Firing of Post Roll events when video element is not yet created

## 1.3.1 - 2021-02-09
### Fixed
- Sessions not being ended when the video is stopped or finished

## 1.3.0 - 2021-01-28
### Fixed
- Custom tags issue

### Added
- Conviva integration with YoSpace
- BitmovinYoSpaceConvivaPlayer & BitmovinYoSpaceConvivaPlayerTask which contain conviva code

## 1.2.3 - 2021-01-27
### Changed
- Bitmovin Player to `1.39.1`

## 1.2.2 - 2021-01-25
### Changed
- Bitmovin Player to `1.36.1`

## 1.2.1 - 2021-01-22
### Fixed
- Missing Bitmovin Player Source Files

## 1.2.0 - 2021-01-20
### Changed
- Bitmovin Player to `1.39.0`

## 1.1.0 - 2021-01-13
### Added
- `position` property to `AdBreak`
- Companion ads

### Changed
- Yospace SDK to `1.8-6`

## 1.0.1 - 2020-12-08
### Fixed
- Crash at end of VOD playback due to extra forced call to onAdEnd and onAdBreakEnd Yospace callbacks with type param of `invalid`

## 1.0.0 - 2020-11-10
### Added
- Support for a custom Yospace ad policy as well as a default policy if none is set.
- Fire `adBreakStart`, `adStart`, `adBreakFinished` and `adBreakFinished` respectively
- Sample configurations on how to play VoD, live and DRM protected streams
- Support for `ContentNode`s as an alternative to the player source configuration. `ContentNode`s can now be set as the `source` in a player configuration and can be passed to the `load` API call
- Support for non Yospace URLs by passing in `assetType` of `none`
- Upgraded to Bitmovin 1.36.1
- Added `setHttpHeaders` method
- Bitmovin Player version `1.36.1`
- Sample app to also show how to listen to different kinds of events
- Allow retryExcludingYospace to fire more than once per app session

### Fixed
- A Crash when ads with no source are received.
- Issues when calling functions that involve policy checks
