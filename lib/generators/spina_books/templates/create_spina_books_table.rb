class CreateSpinaBooksTable < ActiveRecord::Migration
  def change
    create_table :spina_books do |t|
      t.string :title
      t.string :icon
      t.text :description
      t.timestamps
    end
  end
end
