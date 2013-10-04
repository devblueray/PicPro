class AddGalleryToPortrait < ActiveRecord::Migration
  def change
			  change_table :portraits do |t|
			     t.belongs_to :gallery
				  end

  end
end
