# Prometheus for help to buy healthy foods services in the Gov UK PaaS

This repository contains an instance of [prometheus](https://prometheus.io/) along with configuration to scrape metrics from the deployed [metrics exporter](https://github.com/alphagov/paas-prometheus-exporter) and push those metrics to a cloud hosted instance of prometheus. 

The configuration is setup to forward all metrics to the prometheus cloud provider, as such, the metrics endpoint for this service should not be used as a datasource for grafana, instead use the url provided by the cloud provider.

To deploy the application into PaaS, first log into the PaaS in the desired space (only one instance of the service is needed, not one per space).

Then run the deploy script, passing in the grafana metric publisher api key (in 1password)
`sh deploy.sh [api-key]`

Once deployed check the logs use `cf logs prometheus-htbhf --recent` to make sure there are no errors.
