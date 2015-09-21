json.array!(@activities) do |activity|
  json.extract! activity, :id, :name, :description, :user_id, :type, :project_id, :impact, :effort, :profitability, :reach, :total_hours
  json.url activity_url(activity, format: :json)
end
