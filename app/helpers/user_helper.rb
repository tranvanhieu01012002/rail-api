module UserHelper
  def getUsers(limit,obset)
    return @users = User.limit(limit);
  end
end
