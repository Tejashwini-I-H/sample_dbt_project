# Dockerfile
FROM python:3.11-slim

# Install system dependencies (add git here)
RUN apt-get update && apt-get install -y git && apt-get clean

# Install dbt for Postgres
RUN pip install --no-cache-dir dbt-core==1.10.13 dbt-postgres==1.10.0b1

# Set working directory inside container
WORKDIR /usr/app

# Copy your dbt project
COPY . .

# Default command: dbt debug
CMD ["dbt", "debug"]
