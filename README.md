# deploy

## Ngrok

Une stack Docker minimale est disponible dans [ngrok/docker-compose.yml](/home/garddian/PhpstormProjects/deploy/ngrok/docker-compose.yml).

1. Copier `ngrok/.env.example` vers `ngrok/.env`
2. Renseigner `NGROK_AUTHTOKEN`
3. Si tu as un domaine réservé chez ngrok, renseigner `NGROK_DOMAIN`
4. Ajuster `FORWARD_HOST` et `FORWARD_PORT` vers le service local à exposer
5. Lancer `cd ngrok && docker-compose up -d`

Exemple:

```env
NGROK_AUTHTOKEN=ton_token
NGROK_DOMAIN=mon-app.ngrok.app
FORWARD_HOST=host.docker.internal
FORWARD_PORT=8080
```

L'URL HTTPS sera fournie par ngrok. L'interface locale d'inspection est exposée sur `http://localhost:4040`.
