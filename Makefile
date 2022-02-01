start:
	hypercorn main:app --bind 0.0.0.0:8000

start-http2:
	hypercorn --keyfile key.pem --certfile cert.pem main:app  --bind 0.0.0.0:8000

generate-ssl:
	openssl req -x509 -newkey rsa:4096 -keyout key.pem -out cert.pem -days 365 -nodes

export_requirements:
	poetry export -f requirements.txt --output requirements.txt
