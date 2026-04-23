# Bind Mounts vs COPY (Docker)

## Overview

This project uses two different approaches for handling files in development and production.

---

## Comparison Table

| Feature            | Bind Mount (Dev)                 | COPY (Prod)                        |
| ------------------ | -------------------------------- | ---------------------------------- |
| Definition         | Links local files into container | Copies files into image at build   |
| File Location      | Host machine (live)              | Inside Docker image                |
| Live Updates       | Yes (instant on refresh)         | No (requires rebuild)              |
| Performance        | Slightly slower                  | Faster                             |
| Rebuild Needed     | No                               | Yes                                |
| Use Case           | Development                      | Production                         |
| Dependency on Host | Yes                              | No                                 |
| Example            | `./src:/usr/share/nginx/html`    | `COPY ./src /usr/share/nginx/html` |

---

## Development (Bind Mount)

- Local `src/` directory is mounted into the container.
- Any changes made locally are immediately reflected in the browser.
- No need to rebuild the container.

---

## Production (COPY)

- Files are copied into the Docker image during build.
- The container is self-contained and does not depend on local files.
- Changes require rebuilding the image.

---

## Summary

- Use **bind mounts** for fast development and live editing.
- Use **COPY** for stable, production-ready deployments.
