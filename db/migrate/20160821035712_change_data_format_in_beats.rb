class ChangeDataFormatInBeats < ActiveRecord::Migration
  def up
    change_column :beats, :kick, :string
  end
  def down
    change_column :beats, :kick, :boolean
  end
end
