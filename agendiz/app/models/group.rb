class Group < ApplicationRecord
    has_many :interns
    belongs_to :recruiter
end
