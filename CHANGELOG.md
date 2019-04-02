# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/)
and this project adheres to [Semantic Versioning](http://semver.org/).

## [Unreleased]
### Added
- Fire `adBreakStart`, `adStart`, `adBreakFinished` and `adBreakFinished` respectively
  https://github.com/bitmovin/player-issues-roku/issues/23
  
### Internal
- The BitmovinPlayer component is now being loaded inside the BitmovinYospacePlayer component
  and does not require a separate xml component.
  https://github.com/bitmovin/player-issues-roku/issues/25
