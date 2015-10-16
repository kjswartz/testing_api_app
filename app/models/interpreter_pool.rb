# == Schema Information
#
# Table name: interpreter_pools
#
#  id             :integer          not null, primary key
#  interpreter_id :integer
#  pool_id        :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class InterpreterPool < ActiveRecord::Base
  belongs_to :interpreter
  belongs_to :pool
end
