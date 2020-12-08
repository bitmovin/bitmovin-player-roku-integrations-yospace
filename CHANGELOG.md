# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/)
and this project adheres to [Semantic Versioning](http://semver.org/).

## [Unreleased]
### Fixed
- Crash at end of VOD playback

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
