# == Schema Information
#
# Table name: classifications
#
#  id         :integer          not null, primary key
#  game_id    :integer
#  genre_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class ClassificationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
