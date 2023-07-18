class User <ApplicationRecord
    has_secure_password
    has_many :home, dependent: :destroy
    has_many :category, through: :home
    has_many :interest, through: :category
end

