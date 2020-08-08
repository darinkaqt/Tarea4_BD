class ComponentMaterial < ApplicationRecord
  belongs_to :component
  belongs_to :material
end
