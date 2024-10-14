# AIaaS-ML-Studio

Define your ML workflow in a simple and easy to use environment. Just focus on ML concepts, the rest is ours to do.

## Guide

This project splits into two sub-project.

    1- Frontend
    2- Backend Services

### Frontend

Contains a web based application, build upon React and ReactFlow, also you can use react testing library on Vitest to test your app.

### Installation for frontend

    cd frontend
    npm i

To run development mode:

    npm run dev

To build app in production mode:

    npm run build

This project has documentation by help of jsdoc.
To build docs you can use below commands:

    npm i -g jsdoc
    jsdoc -r ./src/

You can see the results in /out directory.

### Backend services

There are three services which is build to serve this web-based application.

    1 - http-server
    2 - interpreter
    3 - ml-engine

#### http-server

This is the main server used to server ui to the client.
Also acts as bridge between different services and the ui.
<br>
To install this you need golang 1.22 installed in your OS.
After that run following commands:

if you want to just run app locally:

    run.bat

or use same commands inside run.bat file in a linux based OS.

#### interpreter and ml-engine

These to services are programmed upon python (v3.9) language and flask (v3.0.3) library. Inside each of these directories you can run following commands to run the service locally for development purposes:

    pip install --no-cache-dir -r requirements.txt
    python server.py

## Dockerize and Deploy

To dockerize project and deploy it you should follow these steps:

    1 - you should have installed Docker and Docker-compose in you OS and be able to virtualize with your hardware.

    2 - build frontend with mentioned commands and copy /frontend/dist into /backend/http-server/

    3- to dockerize all services and deploy all services using docker-compose use following script files:
    -windows:
        build_n_deploy.bat
    -linux:
        build_n_deploy.bash

### Developed by Pouya Mohammadi
### Under Dr. Seyed Ahmad Javadi Supervision.
### AUT - Oct. 2024