class Task < ApplicationRecord
	belongs_to :requester, class_name: "User", foreign_key: :requester_id
	belongs_to :completer, class_name: "User", foreign_key: :completer_id

	validates :difficulty, :category, :location, presence: true

end
