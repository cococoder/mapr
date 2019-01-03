class Mark < ApplicationRecord
  validates_uniqueness_of :uid
end
