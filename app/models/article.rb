class Article < ApplicationRecord
    validates :title, presence: true
    validates :content, presence: true
    belongs_to :tag
    belongs_to :user


    has_attached_file :photo, styles: { medium: "600x600>", thumb: "300x300>" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/
end
