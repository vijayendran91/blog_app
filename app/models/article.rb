class Article < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true

<<<<<<< HEAD
  default_scope { order(created_at: :desc)}
=======
  default_scope { order(created_at: :desc) }
>>>>>>> listing-articles

end
