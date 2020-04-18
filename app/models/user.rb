class User < ApplicationRecord
    validates :name, presence: { message: "no puede estar en blanco" }
    validates :email, presence: { message: "no puede estar en blanco" }, uniqueness: { case_sensitive: false, message: "es Unico" }
    validates :password, presence: { message: "no puede estar en blanco" }

    has_many :documents
end
