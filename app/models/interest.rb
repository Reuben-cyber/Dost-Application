class Interest <ApplicationRecord
    has_many :category
    has_many :home, through: :category
    has_many :user, through: :home
end