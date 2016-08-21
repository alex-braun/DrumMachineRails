class ChangeHatCloseFormatInBeats < ActiveRecord::Migration
  def up
    change_column :beats, :hatClose, :string
  end
  def down
    change_column :beats, :hatCLose, :boolean
  end
end
