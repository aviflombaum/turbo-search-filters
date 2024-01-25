json.extract! job, :id, :title, :description, :category, :location, :remote, :created_at, :updated_at
json.url job_url(job, format: :json)
