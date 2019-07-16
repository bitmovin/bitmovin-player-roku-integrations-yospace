# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/)
and this project adheres to [Semantic Versioning](http://semver.org/).

## [Unreleased]
### Added
- Support for a custom Yospace ad policy as well as a default policy if none is set.
- Fire `adBreakStart`, `adStart`, `adBreakFinished` and `adBreakFinished` respectively
- Sample configurations on how to play VoD, live and DRM protected streams
- Support for non Yospace URLs by passing in `assetType` of `none`

### Changed
- Improved documentation in README.md
- Updated sample app to show how to listen to different kinds of events

### Fixed
- A Crash when ads with no source are received.
- Issues when calling functions that involve policy checks

### Internal
- The BitmovinPlayer component is now being loaded inside the BitmovinYospacePlayer component
  and does not require a separate xml component.
