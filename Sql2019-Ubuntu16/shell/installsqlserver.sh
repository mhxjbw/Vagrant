#!/bin/sh

# Add the Microsoft package key and repository.

wget -qO- https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
add-apt-repository "$(wget -qO- https://packages.microsoft.com/config/ubuntu/16.04/mssql-server-2019.list)"

# Now update the packages so we can install Microsoft SQL Server.

sudo apt-get update
sudo apt-get install -y mssql-server

# Run the configuration script.

sudo /opt/mssql/bin/mssql-conf setup

# Now verify that the service is running.

systemctl status mssql-server --no-pager
