json.extract! profile, :id, :first_name, :last_name, :dob, :age, :created_at, :updated_at
json.url profile_url(profile, format: :json)
