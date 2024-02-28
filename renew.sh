echo crate image.......................................................................................
docker image build -t helpdesk:3.4.3 .

echo crate service.....................................................................................
docker service create --name helpdesk\
                      --replicas 3 \
                      --publish published=5549,target=5549 \
                        helpdesk:3.4.3



                        docker run -d -p 5549:5549 helpdesk
