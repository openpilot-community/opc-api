class ModificationHardwareItem < ApplicationRecord
  belongs_to :modification
  belongs_to :hardware_item
end
