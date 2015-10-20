# == Schema Information
#
# Table name: pools
#
#  id         :integer          not null, primary key
#  name       :string
#  staff      :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  languages  :text
#

class Pool < ActiveRecord::Base
  has_many :interpreter_pools, dependent: :destroy
  has_many :interpreters, through: :interpreter_pools
  has_many :escalation_pools, dependent: :destroy
  accepts_nested_attributes_for :escalation_pools


  before_save :pool_languages

  def pool_languages
    @languages = []
    self.interpreters.each do |i|
      @languages << i.language[:name]
    end
    self.languages = @languages.flatten.uniq.join(', ')
  end


end
