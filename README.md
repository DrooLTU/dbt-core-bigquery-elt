## Store sales DBT & BigQuery dimensional data modelling

# A showcase dimensional data modelling project

# Tech

- dbt core
- BigQuery
- Docker

# What does it do?

- Transforms data from a single source

# How to use:

- Make a new Google cloud project and set up BigQuery.
- Generate a json credential file with necessary permissions (https://cloud.google.com/bigquery/docs/use-service-accounts).
- Place the json credentials at the root folder of the project (where this README is).
- Update the ```profiles.yml```:
    - 'keyfile' path to mach the name of your credentials file.
    - Other values to mach your GCP project.
- Open a terminal and change directory to the project root.
- Run ```docker compose up``` which will execute ```dbt -d run``` in a Docker container.

# Other notes:

- If you want to execute other commands:
    - Update the ```docker-compose.yaml``` file 'command' value. Do not include 'dbt' in the command!
- It is much easier to develop dbt by setting up a Python virtual environment.