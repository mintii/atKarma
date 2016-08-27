class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
    	t.integer :difficulty, :points, :requester_id, :completer_id
    	t.string :category, :location, :completer_beginning_location
    	t.time :start_time, :finish_time

    	t.timestamps null: false
    end
  end
end
