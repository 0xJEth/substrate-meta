## Using ElasticSearch pipeline

This pipeline is used to unpack logs used from the WebSocket logger and transform them into metrics that are usable in queries.
Any log that is fed into this pipeline will be parsed into a `substrate` object, with the timestamp, requestor, and request method and parameters will be available in that object.

Logs must be ingested through the pipeline, which requires the configuration of a Filebeat agent (or similar).
Once ElasticSearch is configured to receive the logs, you can upload the [JSON version of the pipeline](substrate.json) to configure the parsing.

An example of this is:

```shell
curl -s -X PUT 'https://elasticsearch:9200/_ingest/pipeline/substrate-pipeline' -H 'Authorization: ApiKey $API_KEY' -H 'Content-Type: application/json' -d @substrate.json 
```

Note that ElasticSearch requires authentication to use the API.
You can either use an API key you have generated, or use one of the other available authentication methods (see ElasticSearch documentation).

Your pipeline will be named whatever name you've used in the path after `/pipeline/`, so keep note of what you've used in your ingest configuration and ensure they match.