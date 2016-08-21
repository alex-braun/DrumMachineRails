class ChangeHatOpenFormatInBeats < ActiveRecord::Migration
  def up
    change_column :beats, :hatOpen, :string
  end
  def down
    change_column :beats, :hatOpen, :boolean
  end
end
