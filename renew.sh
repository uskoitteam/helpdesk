echo download from git.................................................................................
git pull origin


docker build -t php_8.3-helpdesk .
echo crate service.....................................................................................
docker service create --name php_8.3-helpdesk\
                      --replicas 5 \
                      --publish published=5541,target=5541 \
                        php_8.3-helpdesk:1.0
