class CreateBeats < ActiveRecord::Migration
  def change
    create_table :beats do |t|
      t.string :name
      t.boolean :kick
      t.boolean :snare
      t.boolean :hatClose
      t.boolean :hatOpen
      t.boolean :clap
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
