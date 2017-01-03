class AuthenticateUser
  prepend SimpleCommand

  def initialize(accountid, password)
    @accountid = accountid
    @password = password
  end

  def call
    JsonWebToken.encode(user_id: user.id) if user
  end

  private

  attr_accessor :accountid, :password

  def user
    user = User.find_by_accountid(accountid)
    return user if user && user.authenticate(password)

    errors.add :user_authentication, 'invalid credentials'
    nil
  end
end
