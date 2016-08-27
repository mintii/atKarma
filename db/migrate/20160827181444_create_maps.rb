class CreateMaps < ActiveRecord::Migration[5.0]
  def change
    create_table :maps do |t|
    	t.float :completer_location, :completer_id, :task_id
    	
    	t.timestamps null: false
    end
  end
end
