class UserShare < ApplicationRecord
  extend Enumerize

  validates :link, :share_type, presence: true

  belongs_to :user
  
  enumerize :share_type, in: %i[youtube], predicates: true
end
