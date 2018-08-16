class ModificationHardwareType < ApplicationRecord
  # include ModificationHardwareTypeAdmin
  belongs_to :modification
  belongs_to :hardware_type
  has_many :modification_hardware_type_hardware_items
  has_many :hardware_items, :through => :modification_hardware_type_hardware_items
  def name
    if (modification && hardware_type)
    "#{modification.name} / #{hardware_type.name}"
    end
  end
end
