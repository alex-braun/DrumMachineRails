class ChangeClapFormatInBeats < ActiveRecord::Migration
  def up
    change_column :beats, :clap, :string
  end
  def down
    change_column :beats, :clap, :boolean
  end
end
