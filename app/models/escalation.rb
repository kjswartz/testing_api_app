# == Schema Information
#
# Table name: escalations
#
#  id            :integer          not null, primary key
#  name          :string
#  response_time :integer
#  default       :boolean
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Escalation < ActiveRecord::Base
  has_many :escalation_pools, dependent: :destroy
end
