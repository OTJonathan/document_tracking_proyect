class CreateSuppliers < ActiveRecord::Migration[6.0]
  def change
    create_table :suppliers do |t|
      t.string :name
      t.string :doc_ident
      t.string :street
      t.string :email
      t.integer :mobile

      t.timestamps
    end
  end
end
