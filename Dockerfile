FROM wordpress

RUN echo Asia/Shanghai > /etc/timezone && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
COPY  aliyun-oss-support-2.3.2/  /var/www/html/wp-content/plugins/aliyun-oss-support-2.3.2/

ENTRYPOINT ["/entrypoint.sh"]
CMD ["apache2-foreground"]
