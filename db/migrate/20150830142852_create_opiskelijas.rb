class CreateOpiskelijas < ActiveRecord::Migration
  def change
    create_table :opiskelijas do |t|
      t.string :numero
      t.integer :aika_id

      t.timestamps null: false
    end
  end
end
