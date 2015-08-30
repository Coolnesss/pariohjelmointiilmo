class Opiskelija < ActiveRecord::Base
  belongs_to :aika

  validates :numero, uniqueness: {
    scope: :aika,
    message: "Olet jo ilmoittautunut tähän aikaan."
  }, numericality: { only_integer: true }

end
