# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/)
and this project adheres to [Semantic Versioning](http://semver.org/).

## [1.5.1]
### Fixed
- Adjust startOffset for stitched ads
- Moved creation of RAF off render thread to task thread
- Conviva tracking for non-YoSpace content that autoplays

## [1.5.0]
### Changed
- Bitmovin Player to version [1.41.2](https://bitmovin.com/docs/player/releases/roku/roku-1-41-2)

## [1.4.0]
### Added
- Callback for BitmovinFields.METADATA
- Missing reportCompanionEvent in BitmovinYospaceConvivaPlayer module
### Fixed
- Crash in AdBreak handlers if no current break
- Firing of Post Roll events when video element is not yet created

## [1.3.1]
### Fixed
- Sessions not being ended when the video is stopped or finished

## [1.3.0]
### Fixed
- Custom tags issue

### Added
- Conviva integration with YoSpace
- BitmovinYoSpaceConvivaPlayer & BitmovinYoSpaceConvivaPlayerTask which contain conviva code

## [1.2.3]
### Changed
- Bitmovin Player to `1.39.1`

## [1.2.2]
### Changed
- Bitmovin Player to `1.36.1`

## [1.2.1]
### Fixed
- Missing Bitmovin Player Source Files

## [1.2.0]
### Changed
- Bitmovin Player to `1.39.0`

## [1.1.0]
### Added
- `position` property to `AdBreak`
- Companion ads

### Changed
- Yospace SDK to `1.8-6`

## [1.0.1]
### Fixed
- Crash at end of VOD playback due to extra forced call to onAdEnd and onAdBreakEnd Yospace callbacks with type param of `invalid`

## [1.0.0]
### Added
- Support for a custom Yospace ad policy as well as a default policy if none is set.
- Fire `adBreakStart`, `adStart`, `adBreakFinished` and `adBreakFinished` respectively
- Sample configurations on how to play VoD, live and DRM protected streams
- Support for `ContentNode`s as an alternative to the player source configuration. `ContentNode`s can now be set as the `source` in a player configuration and can be passed to the `load` API call
- Support for non Yospace URLs by passing in `assetType` of `none`
- Upgraded to Bitmovin 1.36.1
- Added `setHttpHeaders` method

### Changed
- Improved documentation in README.md
- Updated sample app to show how to listen to different kinds of events
- Allow retryExcludingYospace to fire more than once per app session

### Fixed
- A Crash when ads with no source are received.
- Issues when calling functions that involve policy checks

### Internal
- The BitmovinPlayer component is now being loaded inside the BitmovinYospacePlayer component
  and does not require a separate xml component.
- The BitmovinPlayer is now pinned to a version - 1.36.1
