class Premiumuser < ActiveRecord::Base
    VLID_EMAIL_REGEX = /\A[a-zA-Z0-9_\#!$%&`'*+\-{|}~^\/=?\.]+@[a-zA-Z0-9][a-zA-Z0-9\.-]+\z/
    validates :name, presence: true, length: {maximum: 50, minimun: 2}
    validates :email, presence: true, format: { with: VLID_EMAIL_REGEX }, uniqueness: true
    has_secure_password
end
