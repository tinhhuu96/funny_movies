class UserShare < ApplicationRecord
  extend Enumerize

  belongs_to :user
  
  enumerize :type, in: %i[youtube facebook], predicates: true
end
