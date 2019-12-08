class Instrument < ApplicationRecord
  has_many :instrument_practices
  has_many :users, through: :instrument_practices
end
