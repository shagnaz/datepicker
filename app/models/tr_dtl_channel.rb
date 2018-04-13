class TrDtlChannel < ActiveRecord::Base
	belongs_to :trppdhdr, :class_name => "Trppdhdr", :foreign_key => "trppdhdr_id"
	belongs_to :ms_channel, :class_name => "MsChannel", :foreign_key => "ms_channel_id"
end
