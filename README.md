# Summary
This is a service that downloads [IMDB datasets](https://contribute.imdb.com/dataset) and uploads them to Google BigQuery.

# Running Locally
## Prerequisites
- [Docker](https://download.docker.com/)
- [gcloud cli tool](https://cloud.google.com/sdk/docs#install_the_latest_cloud_tools_version_cloudsdk_current_version)
- [A Google Cloud Platform Project](https://cloud.google.com/resource-manager/docs/creating-managing-projects#creating_a_project)

## Steps
- Authenticte to your GCP account and follow the prompts.
  ```bash
  gcloud auth login
  ```
- Run the service via docker-compose:
  ```bash
  docker-compose run terminal auto/run
  ```
