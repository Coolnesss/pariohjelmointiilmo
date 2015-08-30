class CreateAikas < ActiveRecord::Migration
  def change
    create_table :aikas do |t|
      t.datetime :aika

      t.timestamps null: false
    end
  end
end
