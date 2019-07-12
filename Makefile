clean:
	find . -name "*.pyc" -exec rm -rf {} \;

run: clean
	python manage.py runserver 0:8000

migrate: clean
	python manage.py migrate

migrations: clean
	python manage.py makemigrations

exclude_migrations: clean
	# rm */**/migrations/*[0-9]*.py
	find . -name '*[0-9]*.py' -type f -delete

install:
	pip install -r requirements.txt

user: clean
	python manage.py createsuperuser

shell: clean
	python manage.py shell

static: clean
	python manage.py collectstatic