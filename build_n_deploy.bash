# TODO: remove dist directory in backend/http-server

# # build frontend
# cd frontend
# npm run build
# # TODO: cp files from frontend/dist to backend/http-server/dist
# cd ..

# build http-server img
cd backend/http-server
docker build -t http-server .
cd ..
# build interpreter service img
cd interpreter
docker build -t interpreter .
cd ..
# build ml-engine service img
cd ml-engine
docker build -t ml-engine .

# run app
docker-compose up -d
