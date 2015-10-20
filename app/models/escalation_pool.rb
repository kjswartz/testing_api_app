# == Schema Information
#
# Table name: escalation_pools
#
#  id            :integer          not null, primary key
#  escalation_id :integer
#  pool_id       :integer
#  p_id          :integer
#  response_time :integer
#  name          :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class EscalationPool < ActiveRecord::Base
  belongs_to :escalation
  belongs_to :pool
end
