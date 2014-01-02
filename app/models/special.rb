class Special < ActiveRecord::Base
  attr_accessible :name, :image

	has_attached_file :image, styles: {
		big: '600x600>',
		small: '150x150#'
	}
end
