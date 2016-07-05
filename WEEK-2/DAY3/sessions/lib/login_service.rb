class LoginService
  VALID_USERS = {
    marjon: 1234,
    alina: 5678
  }.freeze

  def initialize(user)
    @user = user
  end

  def login
    VALID_USERS[@user[:username].to_sym] == @user[:password].to_i
  end
end
