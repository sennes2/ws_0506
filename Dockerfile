FROM ubuntu
COPY ./install.sh /
RUN chmod 755 /install.sh
RUN /install.sh
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
