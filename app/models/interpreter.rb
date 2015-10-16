# == Schema Information
#
# Table name: interpreters
#
#  id          :integer          not null, primary key
#  first_name  :string
#  last_name   :string
#  username    :string
#  language    :text
#  staff       :boolean
#  status      :string
#  credentials :text
#  specilities :text
#  licenses    :text
#  gender      :string
#  vaccines    :text
#  email       :string
#  address     :string
#  city        :string
#  state       :string
#  zip         :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  verified    :boolean
#  profile     :string
#

class Interpreter < ActiveRecord::Base
  has_many :jobs, dependent: :destroy
  has_many :interpreter_pools, dependent: :destroy
  has_many :pools, through: :interpreter_pools

  serialize :language
  serialize :licenses
  serialize :credentials
  serialize :specilities
  serialize :vaccines
end
