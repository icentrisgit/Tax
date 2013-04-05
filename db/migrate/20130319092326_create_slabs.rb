class CreateSlabs < ActiveRecord::Migration
  def change
    create_table :slabs do |t|
      t.string :slab_from
      t.string :slab_to
      t.string :slab_percentage
      t.string :min_tax

      t.timestamps
    end
  end
end
