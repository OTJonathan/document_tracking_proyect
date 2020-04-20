class DocumentStateRel < ApplicationRecord
  belongs_to :user
  belongs_to :document
  belongs_to :document_state
end
