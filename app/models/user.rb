class User < ActiveRecord::Base
	attr_accessible :username, :password, :password_confirmation

	has_secure_password
	validates :username,	presence: true, uniqueness: {case_sensitive: false},
												length: { in: 4..12 },
												format: { with: /\A[a-z][a-z0-9]*\z/, message: 'can only contain lowercase letters or numbers' }
	validates	:password,	length: { in: 4..8 }
	validates	:password_confirmation,	length: { in: 4..8 }											
end