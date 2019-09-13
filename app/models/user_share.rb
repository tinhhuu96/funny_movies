class UserShare < ApplicationRecord
  extend Enumerize

  validates :link, presence: true

  belongs_to :user
  
  enumerize :type, in: %i[youtube facebook], predicates: true
end
