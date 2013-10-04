class AddCustomerToGallery < ActiveRecord::Migration
  def change
			 change_table :galleries do |t|
						t.belongs_to :customer
			 end

  end
end
