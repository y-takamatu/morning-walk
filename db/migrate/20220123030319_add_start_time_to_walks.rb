class AddStartTimeToWalks < ActiveRecord::Migration[6.0]
  def change
    add_column :walks, :start_time, :datetime
  end
end
