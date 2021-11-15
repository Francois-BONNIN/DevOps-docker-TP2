# DevOps TP2 - Docker


## 1. Initialisation du dépôt git
```
git init
touch .gitignore && echo "node_modules/" >> .gitignore
git add .gitignore
git commit -m "question 1"
git push -u origin main
```

## 2. DOCKERFILE
```
FROM node:12-alpine3.9

WORKDIR /src

COPY /src/* ./src/

COPY package.json .

RUN npm i -D

EXPOSE 3000

CMD ["node", "src/index.js"]
```

#### L'option DEV
`RUN npm i -D` nous permet de d'installer uniquement les dépendances issus de packages.json.



