class RemoveColumnTrPpdIdToTrDtlChannels < ActiveRecord::Migration
  def change
  	remove_column :tr_dtl_channels, :tr_ppd_hdr_id
  	add_column :tr_dtl_channels, :trppdhdr_id, :integer
  end
end
