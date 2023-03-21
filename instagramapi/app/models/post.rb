class Post < ApplicationRecord
    # include Rails.application.routes.url_helpers
    has_one_attached :image
    validates :image, presence: true
    has_many :likes, dependent: :destroy

end
