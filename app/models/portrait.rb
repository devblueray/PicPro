class Portrait < ActiveRecord::Base
	#belongs_to :attachable, :polymorphic => true
   belongs_to :gallery
	mount_uploader :attachment, AttachmentUploader # Tells rails to use this uploader for this model.
end
