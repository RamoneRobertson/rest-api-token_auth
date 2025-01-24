class ChallengeCategory < ApplicationRecord
  belongs_to :challenges
  belongs_to :category
end
