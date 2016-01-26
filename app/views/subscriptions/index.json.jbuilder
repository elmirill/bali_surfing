json.array!(@subscriptions) do |subscription|
  json.extract! subscription, :id, :name, :email, :phone
  json.url subscription_url(subscription, format: :json)
end
