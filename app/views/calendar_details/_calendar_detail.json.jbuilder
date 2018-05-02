json.extract! calendar_detail, :id, :name, :init_date, :description, :calendar_id, :calendar_tag_id, :created_at, :updated_at
json.url calendar_detail_url(calendar_detail, format: :json)
