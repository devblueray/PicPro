class AddAttachableToPortraits < ActiveRecord::Migration
  def change
    add_reference :portraits, :attachable, index: true
  end
end
