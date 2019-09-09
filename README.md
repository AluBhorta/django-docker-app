# django-docker-app

```bash
# run application
sudo docker-compose up
```

```bash
# run commands on the django app
sudo docker-compose run app bash -c "<command>"
# e.g.
sudo docker-compose run app bash -c "python manage.py migrate"

```