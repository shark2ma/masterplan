class CreateCodebooks < ActiveRecord::Migration
  def change
    create_table :codebooks do |t|
      t.string :title
      t.string :code

      t.timestamps
    end
  end
end
