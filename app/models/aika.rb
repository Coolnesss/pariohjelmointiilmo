class Aika < ActiveRecord::Base
  has_many :opiskelijas
  validates :opiskelijas, uniqueness: true
end
