class Assembly < ApplicationRecord
  belongs_to :wine
  belongs_to :strain

  validates_presence_of :percentage, on: :create, message: "can't be blank"
end
