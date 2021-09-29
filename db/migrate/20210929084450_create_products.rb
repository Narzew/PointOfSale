# frozen_string_literal: true

class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :code
      t.decimal :price, scale: 2, precision: 30

      t.timestamps
    end
  end
end
