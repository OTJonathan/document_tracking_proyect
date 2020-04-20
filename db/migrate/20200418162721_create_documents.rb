class CreateDocuments < ActiveRecord::Migration[6.0]
  def change
    create_table :documents do |t|
      t.references :document_type, null: false, foreign_key: true
      t.string :doc_code
      t.references :supplier, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.date :date_emission
      t.date :date_due
      t.string :description
      t.decimal :total_amount
      t.string :obs

      t.timestamps
    end
  end
end
