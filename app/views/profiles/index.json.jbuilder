json.array!(@profiles) do |profile|
  json.extract! profile, :id, :first_name, :last_name, :picture, :city, :country, :phone, :dob, :tagline, :info, :website, :twitter, :facebook, :linkedin, :google_plus, :user_id
  json.url profile_url(profile, format: :json)
end
