# Searchkick.client = Elasticsearch::Client.new({
#   url: ENV["ELASTICSEARCH_URL"],
#   transport_options: { request: { timeout: timeout }, headers: { content_type: "application/json" } }
# }.deep_merge(client_options)) do |f|
#   f.use Searchkick::Middleware
#   f.request :aws_signers_v4,
#     credentials: Aws::InstanceProfileCredentials.new,
#     service_name: "es",
#     region: "us-east-1"
# end