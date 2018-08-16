# == Schema Information
#
# Table name: modifications
#
#  id           :bigint(8)        not null, primary key
#  name         :string
#  summary      :string
#  description  :text
#  instructions :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Modification < ApplicationRecord
  # include ModificationAdmin
  extend FriendlyId
  friendly_id :name, use: :slugged
  has_many :modification_hardware_types
  has_many :hardware_types, :through => :modification_hardware_types
  has_many :vehicle_config_modifications
  has_many :vehicle_configs, :through => :vehicle_config_modifications
end
