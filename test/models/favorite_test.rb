require 'test_helper'

class FavoriteTest < ActiveSupport::TestCase
  test "should not save favorite whitout photo_id and photo_url_small" do
  	favorite = Favorite.new
  	assert_not favorite.save
  end
end
