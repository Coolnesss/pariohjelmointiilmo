class Opiskelija < ActiveRecord::Base
  belongs_to :aika

  validates :aika_id, uniqueness: {
    scope: :numero,
    message: "Olet jo ilmoittautunut tähän aikaan."
  }

end
