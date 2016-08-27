class User < ApplicationRecord

	has_many :user_tasks
	has_many :tasks, through: :user_tasks


	validates :email_address, :phone_number, uniqueness: true

	has_secure_password

end
