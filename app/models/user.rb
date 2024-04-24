class User < UserBase

  def self.with_credentials(auth)
    # Override this method to handle the lookup/creation of a user from an omniauth response
    super
  end
end