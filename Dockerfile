# Usar a imagem base do Laravel Sail
FROM sail-8.4/app

# Definir o usuário e grupo corretos
ARG WWWUSER=33
ARG WWWGROUP=33

# Garantir que o usuário www-data tenha as permissões corretas
RUN chown -R www-data:www-data /var/www/html/storage /var/www/html/bootstrap/cache && \
    chmod -R 775 /var/www/html/storage /var/www/html/bootstrap/cache

# Definir o usuário padrão do contêiner como www-data
USER www-data
