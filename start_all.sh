#!/bin/bash

# Définit un répertoire de travail (si nécessaire)
WORK_DIR="/var/www/deploy"

# Démarrer Docker Compose sur la machine locale
echo "Démarrage de Traefik"
cd $WORK_DIR/traefik && docker compose up -d

echo "Démarrage d'ael_rule"
cd $WORK_DIR/ael_rule && docker compose up -d

echo "Démarrage de strapi"
cd $WORK_DIR/strapi && docker compose up --build -d

docker ps -a --format "table {{.Names}}\t{{.Status}}\t{{.Image}}"