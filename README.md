[![add-on registry](https://img.shields.io/badge/DDEV-Add--on_Registry-blue)](https://addons.ddev.com)
[![tests](https://github.com/webkinder/ddev-webkinder-bedrock/actions/workflows/tests.yml/badge.svg?branch=main)](https://github.com/webkinder/ddev-webkinder-bedrock/actions/workflows/tests.yml?query=branch%3Amain)
[![last commit](https://img.shields.io/github/last-commit/webkinder/ddev-webkinder-bedrock)](https://github.com/webkinder/ddev-webkinder-bedrock/commits)
[![release](https://img.shields.io/github/v/release/webkinder/ddev-webkinder-bedrock)](https://github.com/webkinder/ddev-webkinder-bedrock/releases/latest)

# DDEV Webkinder Bedrock

## Overview

WEBKINDER specific customizations to Bedrock DDEV projects.

## Installation

```bash
ddev add-on get webkinder/ddev-webkinder-bedrock
ddev restart
```

After installation, make sure to commit the `.ddev` directory to version control.

## Usage

| Command               | Description                                      |
| --------------------- | ------------------------------------------------ |
| ddev pull environment | Pull DB and files (web/app/uploads) from environment |
use *--environment="environment=beta,strategy=github"* for different environment and variable fetching strategies

## Credits

**Contributed and maintained by [@webkinder](https://github.com/webkinder)**
