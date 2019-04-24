# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/)
and this project adheres to [Semantic Versioning](http://semver.org/).

## [Unreleased]
### Added
- Support for a custom Yospace ad policy as well as a default policy if none is set.
- Fire `adBreakStart`, `adStart`, `adBreakFinished` and `adBreakFinished` respectively

### Internal
- The BitmovinPlayer component is now being loaded inside the BitmovinYospacePlayer component
  and does not require a separate xml component.
