# Setup Guide

## Prerequisites

- Docker and Docker Compose installed
- Git (optional)

## Installation

1. Clone this repository
2. Copy `.env.example` to `.env`:
   ```bash
   cp .env.example .env
   ```
3. Edit `.env` with your desired credentials
4. Start the services:
   ```bash
   docker-compose up -d
   ```

## Initial Setup

1. Access n8n at http://localhost:5678
2. Complete the initial setup wizard
3. Configure your LinkedIn credentials in n8n workflows

## Backup & Restore

See `scripts/backup.sh` and `scripts/restore.sh` for data management.