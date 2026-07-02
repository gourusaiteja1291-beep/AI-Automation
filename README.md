# AI-Automation

A Docker-based automation environment with n8n workflow engine and PostgreSQL.

## Quick Start

1. Copy `.env.example` to `.env` and configure your settings
2. Run `docker-compose up -d`
3. Access n8n at http://localhost:5678

## Services

- **n8n**: Workflow automation tool (port 5678)
- **PostgreSQL**: Database for n8n (port 5432)

## Directory Structure

```
├── docker-compose.yml    # Docker services configuration
├── .env               # Environment variables (not tracked)
├── .env.example       # Environment template
├── .gitignore         # Git ignore rules
├── README.md          # This file
├── docker/            # Docker configuration files
│   ├── n8n/
│   └── postgres/
├── data/              # Persistent data volumes
│   ├── n8n/
│   └── postgres/
├── workflows/         # n8n workflow exports
│   └── linkedin/
├── docs/              # Documentation
│   └── setup.md
└── scripts/           # Utility scripts
    ├── backup.sh
    └── restore.sh
```

## Scripts

- `scripts/backup.sh` - Backup n8n workflows and database
- `scripts/restore.sh` - Restore from backup