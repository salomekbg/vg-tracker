# == Schema Information
#
# Table name: genres
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  mode_id    :integer
#  theme_id   :integer
#

require 'test_helper'

class GenreTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
