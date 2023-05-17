module UserHelper
  def getUsers(limit)
    return @users = User.limit(limit);
  end
end
