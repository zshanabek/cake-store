class Product < ActiveRecord::Base
    has_attached_file :image, styles: { medium: "400x400>", thumb: "100x100>", large: "500x500>"}, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
    belongs_to :category   
    validates :category_id, presence: true
    validates :description, length: {maximum: 255}


end

