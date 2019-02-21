class PurchasedBuild < ApplicationRecord
  belongs_to :build
  belongs_to :order
end
