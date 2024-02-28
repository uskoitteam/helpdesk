echo crate image.......................................................................................
docker image build -t helpdesk:3.4.3 .

echo crate service.....................................................................................
docker service create --name helpdesk\
                      --replicas 3 \
                      --publish published=5541,target=5541 \
                        helpdesk:3.4.3