# Python Project Template

[![Copier](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/copier-org/copier/master/img/badge/badge-grayscale-border.json)](https://github.com/copier-org/copier)
[![linting: ruff](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/astral-sh/ruff/main/assets/badge/v2.json)](https://github.com/astral-sh/ruff)
[![security: bandit](https://img.shields.io/badge/security-bandit-yellow.svg)](https://github.com/PyCQA/bandit)
[![Semantic Versions](https://img.shields.io/badge/%20%20%F0%9F%93%A6%F0%9F%9A%80-semantic--versions-e10079.svg)](https://github.com/twsl/python-project-template/releases)
[![License](https://img.shields.io/badge/license-MIT-blue)](LICENSE)

A generic python project template based on [`copier`](https://copier.readthedocs.io/en/stable/) for my data science focused projects.

- Package Manager: [![uv](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/astral-sh/uv/main/assets/badge/v0.json)](https://github.com/astral-sh/uv) or [![Poetry](https://img.shields.io/endpoint?url=https://python-poetry.org/badge/v0.json)](https://python-poetry.org/)
- pre-commit: [![prek](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/j178/prek/master/docs/assets/badge-v0.json)](https://github.com/j178/prek) or [![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit)](https://github.com/pre-commit/pre-commit)
- Type checker: [![ty](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/astral-sh/ty/main/assets/badge/v0.json)](https://github.com/astral-sh/ty) or [![Checked with pyright](https://microsoft.github.io/pyright/img/pyright_badge.svg)](https://microsoft.github.io/pyright/)

## TL;DR

```bash
copier copy --trust --vcs-ref=HEAD git+https://github.com/twsl/python-project-template path/to/destination
```

## Features

### Development features

- Supports `Python 3.10` and [higher](https://devguide.python.org/versions/).
- [`uv`](https://github.com/astral-sh/uv) or [`Poetry`](https://python-poetry.org/) as a dependencies manager. See configuration in `pyproject.toml`.
- Automatic codestyle with [`ruff`](https://github.com/astral-sh/ruff).
- Ready-to-use [`pre-commit`](https://pre-commit.com/) hooks with code-formatting. Execute with [`prek`](https://github.com/j178/prek) or [`pre-commit`](https://github.com/pre-commit/pre-commit)
- Type checks with [`ty`](https://github.com/astral-sh/ty) or [`pyright`](https://github.com/microsoft/pyright).
- Security checks with [`bandit`](https://github.com/PyCQA/bandit).
- Testing with [`pytest`](https://docs.pytest.org/en/latest/).
- Ready-to-use `.editorconfig` and `.gitignore`.
- Ready-to-use [`Devcontainer`](https://containers.dev/).
- Find dead code with [`vulture`](https://github.com/jendrikseipp/vulture).
- Avoid credential leaks with [`gitleaks`](https://github.com/gitleaks/gitleaks).

### Deployment features

- `GitHub` integration: Ready-to-use **Pull Requests templates** and several **Issue templates**
- `Github Actions` with predefined workflows.
- Everything is already set up for security checks, codestyle checks, code formatting, testing, linting, docker builds
- Always up-to-date dependencies with [`@dependabot`](https://dependabot.com/).
- Automatic release notes with [`Release Drafter`](https://github.com/marketplace/actions/release-drafter).
- Documentation with [`MkDocs`](https://www.mkdocs.org/).

### Open source community features

- Files such as: `LICENSE`, `CONTRIBUTING.md`, `CODE_OF_CONDUCT.md`, and `SECURITY.md` are generated automatically.
- [Semantic Versions](https://semver.org/) specification with [`Release Drafter`](https://github.com/marketplace/actions/release-drafter).

## How to use it

### Installation

To begin using the template consider updating [`copier`](https://copier.readthedocs.io/en/stable/):

```bash
pip install --upgrade copier
```

Then, you can copy the template to your destination folder:

```bash
copier copy --trust git+https://github.com/twsl/python-project-template path/to/destination  --vcs-ref=HEAD
```

### Update

You can update the template in your destination folder with:

```bash
copier update --trust -A --vcs-ref=HEAD
```

### Develpment

The devcontainer is already set up for you, just open the project in VSCode and you will be prompted to open the project in the devcontainer.

To test the project you can run:

```bash
copier copy ./ ./dist --data-file "./.github/assets/.copier-answers.yml" -f --vcs-ref=HEAD
```

### Variables

The template uses the following variables to customize the project:

| **Parameter**                      | **Default value**                                |
| ---------------------------------- | ------------------------------------------------ |
| `custom_install`                   | `customized`                                     |
| `project_name`                     | `example_project`                                |
| `project_description`              | ``                                               |
| `repository_provider`              | `github.com`                                     |
| `ghec`                             | `false`                                          |
| `ghes`                             | `false`                                          |
| `primary_branch`                   | `main`                                           |
| `author_username`                  | ``                                               |
| `author_email`                     | `{{ author_username }}@users.noreply.github.com` |
| `repository_provider`              | `github.com`                                     |
| `repository_namespace`             | `{{ author_username }}`                          |
| `repository_name`                  | `{{ project_name }}`                             |
| `copyright_holder`                 | `{{ author_username }}`                          |
| `copyright_holder_email`           | `{{ author_email }}`                             |
| `copyright_year`                   | `2026`                                           |
| `copyright_license`                | `MIT`                                            |
| `python_version`                   | `3.12`                                           |
| `python_package_distribution_name` | `{{ project_name }}`                             |
| `python_package_import_name`       | `{{ project_name }}`                             |
| `python_package_command_line_name` | `{{ project_name }}`                             |
| `line_ending`                      | `lf`                                             |
| `package_manager`                  | `uv`                                             |
| `type_checker`                     | `ty`                                             |
| `use_precommit`                    | `true`                                           |
| `precommit_tool`                   | `prek`                                           |
| `include_docs`                     | `true`                                           |
| `include_notebooks`                | `true`                                           |
| `include_databricks`               | `false`                                          |
| `github_runner_python_version`     | `[3.12]`                                         |
| `github_runner`                    | `ubuntu-latest`                                  |
| `github_runner_ghec`               | `ubuntu-2core-amd64`                             |
| `github_runner_clean`              | `true`                                           |
| `github_rate_limit`                | `false`                                          |
| `include_sample_code`              | `false`                                          |
| `self_signed`                      | `false`                                          |
| `copier_auto_update`               | `false`                                          |

All input values will be saved in the `.copier-answers.yml`
