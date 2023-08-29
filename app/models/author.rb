class Author < ApplicationRecord
  has_many :articles
  enum rank: {
    junior: 0,
    senior: 1,
    professional: 2
  }
  validates :username, length: { maximum: 50 }
  validates :name, format: { without: /[\\,.\/\z]/ }
end
