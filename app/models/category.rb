class Category <ApplicationRecord
    belongs_to :interest
    has_many :home
    has_many :user, through: :home
end