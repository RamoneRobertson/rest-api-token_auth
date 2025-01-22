class ApiToken < ApplicationRecord
  belongs_to :user

  # Validate the user has a unique token
  validates :token, presence: true, uniqueness: true

  # Before the token gets validated, generate a token
  before_validation :generate_token, on: :create
  encrypts :token, deterministic: true

  private

  def generate_token
    self.token = Digest::MD5.hexdigest(SecureRandom.hex)
    self.active = true
  end
end
