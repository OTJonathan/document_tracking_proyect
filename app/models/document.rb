class Document < ApplicationRecord
  belongs_to :document_type
  belongs_to :supplier
  belongs_to :user
end
