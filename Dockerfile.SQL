FROM postgres:13

ENV POSTGRES_USER myprojectuser
ENV POSTGRES_PASSWORD password
ENV POSTGRES_DB myproject


RUN echo " host all all 0.0.0.0/0 md5" >> /var/lib/postgresql/data/pg_hba.conf
RUN echo "listen_addresses='*'" /var/lib/postgresql/data/postgresql.conf

EXPOSE 5432


CMD ["postgres"]





