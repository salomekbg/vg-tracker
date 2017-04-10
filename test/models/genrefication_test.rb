# == Schema Information
#
# Table name: genrefications
#
#  id         :integer          not null, primary key
#  game_id    :integer
#  genre_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class GenreficationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
