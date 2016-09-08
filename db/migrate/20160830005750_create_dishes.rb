class CreateDishes < ActiveRecord::Migration[5.0]
    def change
        create_table :dishes do |t|
            t.string :name, null: false
            t.string :ingredients, null: false, array:true, default: '{}'
            t.string :categories, null: false, array:true, default: '{}'
            t.integer :price, null: false
            t.string :portion, null: false
            t.integer :quantity, null: false
            t.references :user, index: true, null: false
            t.references :ethnicity, index: true, null: false
            t.references :tag, index: true, null: false
            t.text :description, null: false, length: {minimum: 30}
            t.timestamps null: false
        end
    end
end
