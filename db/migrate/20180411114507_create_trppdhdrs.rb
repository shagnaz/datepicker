class CreateTrppdhdrs < ActiveRecord::Migration
  def change
    create_table :trppdhdrs do |t|
      t.date :tgl_berlaku

      t.timestamps null: false
    end
  end
end
