class CreateDocumentStateRels < ActiveRecord::Migration[6.0]
  def change
    create_table :document_state_rels do |t|
      t.datetime :date
      t.string :name
      t.string :description
      t.string :obs
      t.references :user, null: false, foreign_key: true
      t.references :document, null: false, foreign_key: true
      t.references :document_state, null: false, foreign_key: true

      t.timestamps
    end
  end
end
