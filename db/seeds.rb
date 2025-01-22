Book.destroy_all
ApiToken.destroy_all
User.destroy_all

User.create!(email: "user@example.com", password: 123123)
