FROM nginx
WORKDIR '/app'
COPY package.json .
RUN npm install
COPY . .
RUN npm run build
EXPOSE 80
COPY /app/build /usr/share/nginx/html
