# == Schema Information
#
# Table name: pools
#
#  id         :integer          not null, primary key
#  name       :string
#  staff      :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Pool < ActiveRecord::Base
  has_many :interpreter_pools, dependent: :destroy
  has_many :interpreters, through: :interpreter_pools
end
