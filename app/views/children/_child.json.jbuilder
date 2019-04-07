json.extract! child, :id, :children_name, :children_nric, :children_age, :children_sex, :personal_detail_id, :created_at, :updated_at
json.url child_url(child, format: :json)
