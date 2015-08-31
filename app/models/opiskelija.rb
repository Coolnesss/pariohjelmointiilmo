class Opiskelija < ActiveRecord::Base
  belongs_to :aika

  validate :legit_number?, on: :create

  validates :numero, uniqueness: {
    scope: :aika,
    message: "Olet jo ilmoittautunut tähän aikaan."
  }, numericality: { only_integer: true }

  def legit_number?
    errors.add(:numero, "ei ole validi opiskelijanumero") unless Opiskelija.validate_number(self.numero)
  end

  def self.validate_number(num)
    b = [3, 7, 1, 3, 7, 1, 3, 7]
    return false unless num.length == 9
    a = num.split("").map{|p| p.to_i}.take(8)
    ans = (10 - (a.zip(b).map{|i,j| i*j }.inject(:+)) % 10) % 10
    return (num[8].to_i == ans)
  end
end
