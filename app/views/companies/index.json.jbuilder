json.array!(@companies) do |company|
  json.extract! company, :id, :logo_large, :logo_small, :description, :size, :email, :location, :industry_id, :subdomain
  json.url company_url(company, format: :json)
end
