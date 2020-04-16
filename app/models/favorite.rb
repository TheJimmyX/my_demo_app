class Favorite < ApplicationRecord
	validates :photo_id, 		presence: true
	validates :photo_url_small, presence: true
end
