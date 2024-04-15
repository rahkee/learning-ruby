class Article < ApplicationRecord
    validates :title, presence: true
    belongs_to :author
    # validates (:title, presence: true, length: { minimum: 5 })
end
