json.array!(@service_records) do |service_record|
  json.extract! service_record, :service_type
  json.url service_record_url(service_record, format: :json)
end