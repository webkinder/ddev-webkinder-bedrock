[![add-on registry](https://img.shields.io/badge/DDEV-Add--on_Registry-blue)](https://addons.ddev.com)
[![tests](https://github.com/webkinder/ddev-webkinder-bedrock/actions/workflows/tests.yml/badge.svg?branch=main)](https://github.com/webkinder/ddev-webkinder-bedrock/actions/workflows/tests.yml?query=branch%3Amain)
[![last commit](https://img.shields.io/github/last-commit/webkinder/ddev-webkinder-bedrock)](https://github.com/webkinder/ddev-webkinder-bedrock/commits)
[![release](https://img.shields.io/github/v/release/webkinder/ddev-webkinder-bedrock)](https://github.com/webkinder/ddev-webkinder-bedrock/releases/latest)

# DDEV Webkinder Bedrock

## Overview

This add-on integrates Webkinder Bedrock into your [DDEV](https://ddev.com/) project.

## Installation

```bash
ddev add-on get webkinder/ddev-webkinder-bedrock
ddev restart
```

After installation, make sure to commit the `.ddev` directory to version control.

## Usage

| Command | Description |
| ------- | ----------- |
| `ddev describe` | View service status and used ports for Webkinder Bedrock |
| `ddev logs -s webkinder-bedrock` | Check Webkinder Bedrock logs |

## Advanced Customization

To change the Docker image:

```bash
ddev dotenv set .ddev/.env.webkinder-bedrock --webkinder-bedrock-docker-image="ddev/ddev-utilities:latest"
ddev add-on get webkinder/ddev-webkinder-bedrock
ddev restart
```

Make sure to commit the `.ddev/.env.webkinder-bedrock` file to version control.

All customization options (use with caution):

| Variable | Flag | Default |
| -------- | ---- | ------- |
| `WEBKINDER_BEDROCK_DOCKER_IMAGE` | `--webkinder-bedrock-docker-image` | `ddev/ddev-utilities:latest` |

## Credits

**Contributed and maintained by [@webkinder](https://github.com/webkinder)**
