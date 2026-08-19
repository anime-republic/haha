# 🎬 Haha - Media Service & Bot

![Docker Build](https://img.shields.io/github/actions/workflow/status/anime-republic/haha/docker.yml?branch=main&label=Docker%20Build&style=for-the-badge)
![Python Version](https://img.shields.io/badge/Python-3.10-blue?style=for-the-badge&logo=python)
![Ubuntu](https://img.shields.io/badge/Ubuntu-22.04-orange?style=for-the-badge&logo=ubuntu)

A powerful, containerized media service and Telegram integration tool (powered by Pyrogram). It features automated Docker builds and direct integration with popular Anime APIs like Miruro and Anivexa.

---

## 🐳 Docker Build Information

The core of this project runs via a fully automated Docker container. The latest build statistics are tracked and updated automatically on every successful push to the repository.

- **Name:** `arata74/haha`
- **Version:** `9b0ceb3` (latest)
- **Latest Update:** `2026-08-19 17:38:32 GMT+8`
- **Commit:** docs: auto-update Docker build info in README [skip ci]

---

## 📦 Core Dependencies

This project relies on several key Python packages to handle media streaming, database management (MongoDB), and API requests. The table below reflects the exact package versions currently active in the latest Docker build.

| Name | Version | Last Update |
|---|---|---|
| Pyrogram | 2.0.106 | 2023-04-30 |
| pillow | 10.2.0 | 2024-01-02 |
| setuptools | Not found | Unknown |
| TgCrypto | 1.2.5 | 2022-11-11 |
| python-dotenv | 1.0.1 | 2024-01-23 |
| hachoir | 3.3.0 | 2023-12-12 |
| beautifulsoup4 | 4.12.3 | 2024-01-17 |
| requests | 2.32.5 | 2025-08-18 |
| httpx | 0.27.0 | 2024-02-21 |
| dnspython | 2.6.1 | 2024-02-18 |
| feedparser | 6.0.11 | 2023-12-10 |
| APScheduler | 3.10.4 | 2023-08-19 |
| motor | 3.3.2 | 2023-11-14 |
| psutil | 5.9.8 | 2024-01-19 |
| cloudscraper | 1.2.71 | 2023-04-25 |
| lk21 | 1.6.0 | 2021-07-15 |
| lxml | 5.1.0 | 2024-01-10 |
| irc | 20.5.0 | 2024-07-14 |
| nodriver | 0.50.3 | 2026-05-13 |
| curl_cffi | 0.16.0 | 2026-08-01 |
| anipy-api | 3.10.0 | 2026-08-11 |
| anipy-cli | 3.10.0 | 2026-08-11 |
| cachetools | 5.3.3 | 2024-02-26 |
| aiofiles | 23.2.1 | 2023-08-09 |
| aiohttp | 3.9.3 | 2024-01-29 |
| aiohttp_session | Not found | Unknown |
| cryptography | 42.0.5 | 2024-02-24 |
| marshmallow | 3.21.3 | 2024-06-06 |
| umongo | 3.0.1 | 2021-10-16 |

---

## 🔗 Integrated External Services

To provide the best media experience, we automatically clone and install these external API services within our Docker container environment.

| Repository | Latest Commit | Date | Status |
|---|---|---|---|
| [walterwhite-69/Miruro-API](https://github.com/walterwhite-69/Miruro-API) | `dfb38a6` v3.0 - curl_cffi bypass, remove auth middleware | 2026-07-03 12:34:09 GMT+8 | Cloned in Docker |
| [walterwhite-69/Anivexa-API](https://github.com/walterwhite-69/Anivexa-API) | `14abe7b` Merge pull request #19 from az4if/main | 2026-08-15 10:28:17 GMT+8 | Cloned in Docker |

---

## 🚀 Getting Started

To run this project locally:

1. Clone the repository.
2. Provide your required environment variables in a `.env` file.
3. Build and run the Docker container:
   ```bash
   docker build -t arata74/haha:latest .
   docker run -d arata74/haha:latest
   ```
