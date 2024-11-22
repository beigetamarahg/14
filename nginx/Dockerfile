# minimal base image
FROM nginx:alpine

# Switch to a non-root user
USER nginx

# Start Nginx
# CMD ["nginx", "-g", "daemon off;"]
ENTRYPOINT ["/docker-entrypoint.sh"]
