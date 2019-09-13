module ValidUserRequestHelper
  # Signs in a valid user uwing the page.drive.post method
  def sign_in_as_valid_user_driver
    p 'addaddsafdasfsdafasdfsdf'
    @user ||= FactoryGirl.create :user
    page.driver.post user_session_path, :user => {:email => @user.email, :password => @user.password}
  end
end