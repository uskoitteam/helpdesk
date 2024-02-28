echo crate image.......................................................................................
docker image build -t helpdesk:1 .

echo crate service.....................................................................................
docker service create --name helpdesk\
                      --replicas 1 \
                      --publish published=5549,target=5549 \
                        helpdesk:1



#                        docker run -d -p 5549:5549 helpdesk
