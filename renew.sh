echo crate image.......................................................................................
docker build -t php-helpdesk .

echo crate service.....................................................................................
docker stack deploy --compose-file docker-compose2.yml php-helpdesk-dervice

