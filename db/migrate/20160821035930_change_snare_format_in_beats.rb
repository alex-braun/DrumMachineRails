class ChangeSnareFormatInBeats < ActiveRecord::Migration
  def up
    change_column :beats, :snare, :string
  end
  def down
    change_column :beats, :snare, :boolean
  end
end
