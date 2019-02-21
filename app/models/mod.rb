class Mod < ApplicationRecord
  belongs_to :jeep
  belongs_to :user
  belongs_to :build
end
