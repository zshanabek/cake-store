class Category < ActiveRecord::Base
    has_many :products, dependent: :destroy
    validates :title, :description,
    presence: true,
    length: { minimum: 5 }
end
