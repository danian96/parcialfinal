json.extract! schedule_detail, :id, :name, :description, :init_date, :tag, :schedule_id, :created_at, :updated_at
json.url schedule_detail_url(schedule_detail, format: :json)
