resource "google_dataflow_flex_template_job" "big_data_job" {
  provider                = google-beta
  name                    = "dataflow-flextemplates-job"
  container_spec_gcs_path = "gs://jit92/samples/dataflow/templates/streaming-beam-sql.json"
  
  parameters = {
    input_subscription="projects/terraformlearning-284414/subscriptions/ratings"
    output_table="terraformlearning-284414:beam_samples.streaming_beam_sql"
    network="terraform-network"
    no_use_public_ips="true" 
  }
}
