export FLASK_ENV=development;
source ./venv/bin/activate;
flask run --host=0.0.0.0 --port=80;
deactivate;
rm -rf __pycache__
