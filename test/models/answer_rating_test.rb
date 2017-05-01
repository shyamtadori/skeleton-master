require 'test_helper'

class AnswerRatingTest < ActiveSupport::TestCase
 
  def setup
    create_answers_and_ratings_with_five_avg_rating
  end

  test "average rating should be correct" do
    c = candidates(:bill_snakey)
    assert_equal c.rating, 5
  end
end
