class Transaction < ApplicationRecord
    belongs_to :sender, class_name: "User", foreign_key: :from_user_id
    belongs_to :reciever, class_name: "User", foreign_key: :to_user_id
end
