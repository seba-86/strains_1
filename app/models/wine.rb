class Wine < ApplicationRecord
    has_many :assemblies
    has_many :strains, through: :assemblies, dependent: :destroy

    validates_presence_of :name, on: :create, message: "can't be blank"
end
