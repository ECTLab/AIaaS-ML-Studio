@REM @REM remove previous builds
@REM if exist ./backend/http-server/dist del ./backend/http-server/dist

@REM @REM build frontend
@REM cd frontend
@REM npm run build
@REM @REM TODO: cp files
@REM cd ..

@REM Build http-server img
cd backend/http-server
docker build -t http-server .
cd ..
@REM build interpreter service img
cd interpreter
docker build -t interpreter .
cd ..
@REM build ml-engine service img
cd ml-engine
docker build -t ml-engine .

@REM deploy web application
docker-compose up -d
