class CreateJobs < ActiveRecord::Migration[7.2]
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :description
      t.string :category, index: true
      t.string :location, index: true
      t.boolean :remote, index: true
      t.integer :commitment, index: true

      t.timestamps
    end
  end
end
