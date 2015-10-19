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
  has_and_belongs_to_many :pools, join_table: :escalation_pools
  has_and_belongs_to_many :pools, join_table: :escalation_pools

end
