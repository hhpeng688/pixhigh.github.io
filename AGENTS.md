# Repository Guidelines

## Project Structure & Module Organization
This repository is a small static site. Pages live as individual folders, each with its own `index.html`. Current layout:

- `index.html`: root landing page (currently empty).
- `dracula/index.html`, `privacy/index.html`, `terms/index.html`: standalone pages.

Keep new pages in their own folder with an `index.html` to match the existing pattern (e.g., `about/index.html`).

## Build, Test, and Development Commands
There is no build step or test runner. For local preview, serve the directory with a simple static server:

- `python3 -m http.server`: serve the repo at `http://localhost:8000`.

Opening `index.html` directly in a browser also works for quick checks, but a local server is preferred for consistent path handling.

## Coding Style & Naming Conventions
HTML is the primary format. There is no formatter or linter configured, so keep style consistent within each file:

- Use clear, semantic HTML tags.
- Keep indentation consistent (2 or 4 spaces per level; pick one per file).
- Name new directories in lowercase, single words or hyphenated (e.g., `release-notes`).

If you add CSS or JS, keep it colocated with the page (e.g., `privacy/styles.css`) unless a shared asset folder is introduced.

## Testing Guidelines
No automated tests are configured. Validate changes manually by loading affected pages in a browser and checking links, layout, and any added assets.

## Commit & Pull Request Guidelines
The Git history currently contains a single commit, so there is no established convention. Use concise, descriptive commit messages (imperative mood works well), such as:

- `Add privacy policy page layout`

For pull requests, include:
- A brief summary of what changed and why.
- Links to any related issues (if applicable).
- Screenshots for visual changes or new pages.

## Security & Configuration Tips
Do not commit secrets, API keys, or tokens. This is a static site intended to be served as-is, so keep configuration minimal and client-safe.
