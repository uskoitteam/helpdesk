echo download from git.................................................................................
git pull origin


docker build -t php_8.3-helpdesk .
echo crate service.....................................................................................
docker service create --name php_8.3-helpdesk --replicas 3 --publish 5541:80 php_8.3-helpdesk