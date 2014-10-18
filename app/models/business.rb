class Business < ActiveRecord::Base
	belongs_to :user

	extend	FriendlyId
	friendly_id	:name, use: :slugged
end
