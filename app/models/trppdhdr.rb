class Trppdhdr < ActiveRecord::Base
	has_many :tr_dtl_channels, dependent: :destroy

	accepts_nested_attributes_for :tr_dtl_channels, allow_destroy: true, reject_if: proc{ |att| att['ms_channel_id'].blank? }
end