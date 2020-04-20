class CreateDocumentStates < ActiveRecord::Migration[6.0]
  def change
    create_table :document_states do |t|
      t.string :name
      t.string :format
      t.string :icon

      t.timestamps
    end
  end
end
