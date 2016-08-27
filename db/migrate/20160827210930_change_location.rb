class ChangeLocation < ActiveRecord::Migration[5.0]
  def change
  		remove_column :tasks, :location, :string
  		add_column :tasks, :longitude, :string
  		add_column :tasks, :latitude, :string
  end
end
