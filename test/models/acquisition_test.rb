# == Schema Information
#
# Table name: acquisitions
#
#  id         :integer          not null, primary key
#  game_id    :integer
#  source_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class AcquisitionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
