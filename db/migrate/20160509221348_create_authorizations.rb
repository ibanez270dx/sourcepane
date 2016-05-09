class CreateAuthorizations < ActiveRecord::Migration[5.0]
  def change
    create_table :authorizations do |t|
      t.integer :user_id
      t.string :type
      t.json :credentials

      t.timestamps
    end
  end
end
