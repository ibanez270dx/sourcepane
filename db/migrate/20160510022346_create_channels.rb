class CreateChannels < ActiveRecord::Migration[5.0]
  def change
    create_table :channels do |t|
      t.integer :user_id, index: true
      t.string :name, index: true

      t.timestamps
    end
    create_table :channels_sources, id: false do |t|
      t.integer :channel_id, index: true
      t.integer :source_id, index: true
    end
  end
end
