<h1 align=center>Dockette / Upstream</h1>

<p align=center>
   <a href="https://github.com/dockette/upstream/actions"><img src="https://github.com/dockette/upstream/actions/workflows/docs.yml/badge.svg" alt="GitHub Actions"></a>
   <a href="https://github.com/sponsors/f3l1x"><img src="https://img.shields.io/badge/sponsor-GitHub%20Sponsors-ea4aaa" alt="GitHub Sponsors"></a>
   <a href="https://github.com/orgs/dockette/discussions"><img src="https://img.shields.io/badge/support-discussions-6f42c1" alt="Support/Discussions"></a>
</p>

<p align=center>
   Legacy upstream PHP image collection for PHP 5.6, PHP 7.0, and PHP 7.1.
</p>

-----

## Status

This repository is archived legacy content. The PHP versions and their Alpine package bases are end-of-life, so CI intentionally does not build or publish Docker images from this repository.

The Docker Hub pulls badge is omitted because there is no maintained image rollout target for this archived collection. Keeping the badge out avoids suggesting current support for EOL PHP images.

## Images

Available Dockerfile directories:

- `php/5.6`
- `php/7.0`
- `php/7.1`

The `Makefile` defaults to `DOCKER_TAG=php-5.6` as the least complex single legacy target for manual checks. Builds may still fail when upstream package mirrors, Composer, or legacy plugins stop supporting these EOL runtimes.

## Usage

Build the default legacy image manually:

```bash
make build
```

Run smoke checks against a locally built image:

```bash
make test
```

Start an interactive container:

```bash
make run
```

Select another legacy directory by overriding both the tag and context:

```bash
make build DOCKER_TAG=php-7.1 DOCKER_CONTEXT=php/7.1
```

## Maintenance

See [how to contribute](https://github.com/dockette/.github/blob/master/CONTRIBUTING.md) to this package. Consider to [support](https://github.com/sponsors/f3l1x) **f3l1x**. Thank you for using this package.
