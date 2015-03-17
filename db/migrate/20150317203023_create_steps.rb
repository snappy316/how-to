class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.string :content
      t.references :list, index: true

      t.timestamps null: false
    end
    add_foreign_key :steps, :lists
  end
end
