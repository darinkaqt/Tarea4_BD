class ComponentInMachine < ApplicationRecord
  belongs_to :component
  belongs_to :machine
end
