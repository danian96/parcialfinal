json.extract! planner_detail, :id, :name, :init_date, :description, :response, :status, :created_at, :updated_at
json.url planner_detail_url(planner_detail, format: :json)
