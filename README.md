# deploy

## Ngrok

Une stack Docker minimale est disponible dans [ngrok/docker-compose.yml](/home/garddian/PhpstormProjects/deploy/ngrok/docker-compose.yml).

1. Copier `ngrok/.env.example` vers `ngrok/.env`
2. Renseigner `NGROK_AUTHTOKEN`
3. Renseigner `NGROK_URL` avec ton URL réservée ngrok, ou laisser vide pour une URL générée automatiquement
4. Ajuster `UPSTREAM_HOST` et `UPSTREAM_PORT` vers le service Docker à exposer
5. Lancer `cd ngrok && docker-compose up -d`

Exemple:

```env
NGROK_AUTHTOKEN=ton_token
NGROK_URL=mon-app.ngrok.app
UPSTREAM_HOST=ael-rule
UPSTREAM_PORT=80
```

L'URL HTTPS sera fournie par ngrok. L'interface locale d'inspection est exposée sur `http://localhost:4040`.
