class CreateWalks < ActiveRecord::Migration[6.0]
  def change
    create_table :walks do |t|
      t.string  :content,        null: false
      t.integer :time,           null: false
      t.references :user,       foreign_key: true
      t.timestamps
    end
  end
end
