class CreateMsChannels < ActiveRecord::Migration
  def change
    create_table :ms_channels do |t|
      t.string :name
      t.boolean :is_active

      t.timestamps null: false
    end
  end
end
