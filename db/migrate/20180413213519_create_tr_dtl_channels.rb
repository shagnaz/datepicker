class CreateTrDtlChannels < ActiveRecord::Migration
  def change
    create_table :tr_dtl_channels do |t|
      t.integer :ms_channel_id
      t.integer :tr_ppd_hdr_id
      t.string :name_dropdown
      t.boolean :is_active

      t.timestamps null: false
    end
  end
end
