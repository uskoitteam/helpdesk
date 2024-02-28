echo crate image.......................................................................................
docker image build -t helpdesk .

echo crate service.....................................................................................
docker service create --name helpdesk\
                      --replicas 3 \
                      --publish published=5549,target=5549 \
                        helpdesk




