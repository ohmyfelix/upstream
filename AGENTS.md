# AGENTS.md

## Repository Role

This repository contains archived legacy Dockerfiles for upstream PHP images:

- `php/5.6`
- `php/7.0`
- `php/7.1`

Treat the repository as a legacy image collection, not an active maintained Docker image line.

## CI Policy

- Keep CI docs-only unless the legacy Docker build viability is explicitly revalidated.
- Do not add Docker publish jobs for these EOL PHP versions.
- Do not add a Docker Hub badge while the repository remains archived legacy content.
- Keep badge markup aligned with Dockette `copybara` style for Actions, Sponsors, and Support badges.

## Makefile Policy

- Preserve baseline targets: `build`, `test`, and `run`.
- Keep Docker variables named `DOCKER_IMAGE`, `DOCKER_TAG`, and `DOCKER_PLATFORMS`.
- Keep `.PHONY` directly above every target.
- Default manual checks to one legacy tag unless a broader build matrix becomes maintainable.

## Change Safety

- Document EOL/runtime limitations instead of hiding them.
- Avoid unrelated rewrites of legacy Dockerfiles.
- Do not add Slack, Gitter, or old badge URLs.
