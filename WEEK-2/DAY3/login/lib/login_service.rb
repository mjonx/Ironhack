class LoginService
  VALID_USERS = {
    unai: 1234,
    jonsnow: 4321
  }.freeze

  def initialize(user)
    @user = user
  end

  def login
    VALID_USERS[@user[:username].to_sym] == @user[:password].to_i
  end
end
