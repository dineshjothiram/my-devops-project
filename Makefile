run:
\tpython app/app.py

test:
\tpytest -q

build:
\tdocker build -t myapp:local .

push:
\tdocker tag myapp:local mydockerhub/myapp:latest
\tdocker push mydockerhub/myapp:latest

deploy-staging:
\tkubectl apply -f k8s/ -n staging

rollback:
\tkubectl rollout undo deployment/myapp -n staging
