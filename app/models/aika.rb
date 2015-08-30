class Aika < ActiveRecord::Base
  has_many :opiskelijas

  def to_s
    self.aika.to_s(:long)
  end
end
