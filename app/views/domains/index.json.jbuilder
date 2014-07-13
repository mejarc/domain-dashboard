json.array!(@domains) do |domain|
  json.extract! domain, :id, :hostname, :origin_ip_address
  json.url domain_url(domain, format: :json)
end
