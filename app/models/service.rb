class Service < ApplicationRecord
	mount_uploader :image, ImageUploader
	mount_uploader :item_1_image, ImageUploader
	mount_uploader :item_2_image, ImageUploader
	mount_uploader :item_3_image, ImageUploader
	mount_uploader :item_4_image, ImageUploader
	mount_uploader :item_5_image, ImageUploader
	mount_uploader :item_6_image, ImageUploader
end
