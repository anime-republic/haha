# 🎬 Haha - Media Service & Bot

![Docker Build](https://img.shields.io/github/actions/workflow/status/walterwhite-69/haha/docker.yml?branch=main&label=Docker%20Build&style=for-the-badge)
![Python Version](https://img.shields.io/badge/Python-3.10-blue?style=for-the-badge&logo=python)
![Ubuntu](https://img.shields.io/badge/Ubuntu-22.04-orange?style=for-the-badge&logo=ubuntu)

A powerful, containerized media service and Telegram integration tool (powered by Pyrogram). It features automated Docker builds and direct integration with popular Anime APIs like Miruro and Anivexa.

---

## 🐳 Docker Build Information

The core of this project runs via a fully automated Docker container. The latest build statistics are tracked and updated automatically on every successful push to the repository.

---

## 📦 Core Dependencies

This project relies on several key Python packages to handle media streaming, database management (MongoDB), and API requests. The table below reflects the exact package versions currently active in the latest Docker build.

---

## 🔗 Integrated External Services

To provide the best media experience, we automatically clone and install these external API services within our Docker container environment.

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
