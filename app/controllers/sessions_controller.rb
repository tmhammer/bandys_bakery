class SessionsController < Devise::SessionsController

  before_filter :authenticate_user!
end