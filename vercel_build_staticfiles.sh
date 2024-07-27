echo "Creando VENV"
python3.9 -m venv venv
source venv/bin/activate

# build_files.sh
echo "Instalando requerimientos..."
pip3 install -r requirements.txt

# Automatic migrations
#echo "Iniciando migraciones..."
#python manage.py makemigrations && python manage.py migrate

# Colecta de staticsFiles en theme/static/
echo "Colectando StaticFiles..."
python3.9 manage.py collectstatic --noinput
