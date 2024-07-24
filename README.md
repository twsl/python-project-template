# Python Project Template

[![Copier](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/copier-org/copier/master/img/badge/badge-grayscale-border.json)](https://github.com/copier-org/copier)
[![Poetry](https://img.shields.io/endpoint?url=https://python-poetry.org/badge/v0.json)](https://python-poetry.org/)
[![linting: ruff](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/astral-sh/ruff/main/assets/badge/v2.json)](https://github.com/astral-sh/ruff)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit)](.pre-commit-config.yaml)
[![Checked with pyright](https://microsoft.github.io/pyright/img/pyright_badge.svg)](https://microsoft.github.io/pyright/)
[![security: bandit](https://img.shields.io/badge/security-bandit-yellow.svg)](https://github.com/PyCQA/bandit)
[![vulnerability: safety](https://img.shields.io/badge/vulnerability-safety-yellow.svg)](https://github.com/pyupio/safety)
[![Semantic Versions](https://img.shields.io/badge/%20%20%F0%9F%93%A6%F0%9F%9A%80-semantic--versions-e10079.svg)](https://github.com/twsl/python-project-template/releases)
[![License](https://img.shields.io/badge/license-MIT-blue)](LICENSE)


A generic python project template based on [`copier`](https://copier.readthedocs.io/en/stable/) for my data science focused projects.

## TL;DR

```bash
copier copy --trust git+https://github.com/twsl/python-project-template path/to/destination
```

## Features

### Development features

- Supports `Python 3.8` and higher.
- [`Poetry`](https://python-poetry.org/) as a dependencies manager. See configuration in `pyproject.toml`.
- Automatic codestyle with [`ruff`](https://github.com/astral-sh/ruff).
- Ready-to-use [`pre-commit`](https://pre-commit.com/) hooks with code-formatting.
- Type checks with [`pyright`](https://github.com/microsoft/pyright).
- Security checks with [`safety`](https://github.com/pyupio/safety) and [`bandit`](https://github.com/PyCQA/bandit).
- Testing with [`pytest`](https://docs.pytest.org/en/latest/).
- Ready-to-use `.editorconfig` and `.gitignore`.
- Ready-to-use [`Devcontainer`](https://containers.dev/).

### Deployment features

- `GitHub` integration: Ready-to-use **Pull Requests templates** and several **Issue templates**
- `Github Actions` with predefined workflows.
- Everything is already set up for security checks, codestyle checks, code formatting, testing, linting, docker builds
- Always up-to-date dependencies with [`@dependabot`](https://dependabot.com/).
- Automatic release notes with [`Release Drafter`](https://github.com/marketplace/actions/release-drafter).
- Documentation with [`MkDocs`](https://www.mkdocs.org/) or [`Sphinx`](https://www.sphinx-doc.org/en/master/).

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
copier copy --trust git+https://github.com/twsl/python-project-template path/to/destination
```

### Update

You can update the template in your destination folder with:

```bash
copier update --trust path/to/destination
```

### Variables

The template uses the following variables to customize the project:

| **Parameter**                      | **Default value**                                |
| ---------------------------------- | ------------------------------------------------ |
| `custom_install`                   | `customized`                                     |
| `project_name`                     | `example_project`                                |
| `project_description`              | ``                                               |
| `primary_branch`                   | `main`                                           |
| `author_username`                  | ``                                               |
| `author_email`                     | `{{ author_username }}@users.noreply.github.com` |
| `repository_provider`              | `github.com`                                     |
| `repository_namespace`             | `{{ author_username }}`                          |
| `repository_name`                  | `{{ project_name }}`                             |
| `copyright_holder`                 | `{{ author_username }}`                          |
| `copyright_holder_email`           | `{{ author_email }}`                             |
| `copyright_year`                   | `2024`                                           |
| `copyright_license`                | `MIT`                                            |
| `python_version`                   | `3.11`                                           |
| `python_package_distribution_name` | `{{ project_name }}`                             |
| `python_package_import_name`       | `{{ project_name }}`                             |
| `python_package_command_line_name` | `{{ project_name }}`                             |
| `line_ending`                      | `lf`                                             |
| `use_precommit`                    | `true`                                           |
| `include_docs`                     | `true`                                           |
| `docs_library`                     | `mkdocs`                                         |
| `include_notebooks`                | `true`                                           |
| `include_databricks`               | `true`                                           |
| `include_databricks`               | `true`                                           |
| `include_copilot`                  | `true`                                           |
| `github_runner_python_version`     | `3.11`                                           |
| `github_runner`                    | `ubuntu-latest`                                  |
| `github_runner_onprem`             | `small`                                          |
| `github_rate_limit`                | `false`                                          |
| `include_sample_code`              | `false`                                          |
| `self_signed`                      | `false`                                          |

All input values will be saved in the `.copier-answers.yml`

## Credits

I just combined multiple templates to create this one, therefore all credits belong to the following projects:

- [poetry-copier](https://github.com/lukin0110/poetry-copier)
- [python-project-template](https://github.com/lincc-frameworks/python-project-template)
- [copier-poetry](https://github.com/pawamoy/copier-poetry)
- [python-package-template](https://github.com/TezRomacH/python-package-template)
