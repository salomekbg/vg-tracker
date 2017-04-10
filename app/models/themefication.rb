# == Schema Information
#
# Table name: themefications
#
#  id         :integer          not null, primary key
#  game_id    :integer
#  theme_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Themefication < ApplicationRecord
end
