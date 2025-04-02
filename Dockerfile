FROM oryd/kratos:latest

# Copy the Kratos configuration file
COPY ./kratos.yml /etc/config/kratos.yml

# Copy the identity schema file
COPY ./identity.schema.json /etc/config/kratos/identity.schema.json

# Start the Kratos server
CMD ["serve", "-c", "/etc/config/kratos.yml"]
# CMD ["migrate", "sql", "-c", "/etc/config/kratos.yml", "-e", "--yes"]

# FROM oryd/kratos:latest

# # Copy configuration files
# COPY ./kratos.yml /etc/config/kratos.yml
# COPY ./identity.schema.json /etc/config/identity.schema.json
# COPY ./entrypoint.sh /entrypoint.sh

# # Set the entrypoint
# ENTRYPOINT ["/entrypoint.sh"]
