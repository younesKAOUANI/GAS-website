FROM nginx:stable-alpine

# Copy custom nginx config
COPY ./default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
