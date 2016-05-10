class CreateSources < ActiveRecord::Migration[5.0]
  def change
    create_table :sources do |t|
      t.integer :user_id
      t.string :type
      t.json :credentials

      t.timestamps
    end
  end
end
