# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

gflow is a single-file Bash CLI tool that simplifies Git workflows into three commands: branch (`-b`), sync (`-s`), and merge (`-m`). It's designed to be installed globally via `~/git_flow/` and added to PATH, then used from within any Git repository.

## Architecture

The entire tool is a single Bash script (`gflow`) with four functions dispatched by a `case` statement:
- `show_help` — displays status info about the current repo (default/no args)
- `create_branch` — switches to main, pulls latest, creates a prefixed feature branch
- `sync_changes` — stages all changes, commits with user message, pushes to origin
- `merge_branch` — does a `--no-ff` merge of current branch into main, with optional branch cleanup

`install.sh` copies `gflow` to `~/git_flow/` and adds it to the user's shell PATH.

## Development

There are no build steps, tests, or linters. To test changes, run `./gflow` directly from the repo directory inside any Git repository.

## Workflow Rule

Before making code changes, check the current branch. If on `main`, suggest the user run `gflow -b` to create a feature branch first.

## Key Conventions

- All user interaction is via `read -p` prompts (interactive only, not scriptable)
- Branch prefixes: `feature/`, `bugfix/`, `enhancement/`, `hotfix/`
- Merge requires typing the full word "yes" (not just "y") as a safety measure
- The tool always assumes `main` as the primary branch name
- Color output uses ANSI escape codes (GREEN, BLUE, YELLOW, RED, CYAN)
