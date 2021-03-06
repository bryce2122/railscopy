module ApplicationHelper

def resource_name
    :user
  end

  def resource_class 
     User 
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end





def follow(other_user)
    active_relationships.create(follower_id: other_user.id)
end
def unfollow(other_user)
    active_relationships.find_by(followed_id: other_user.id).destroy
end

def following?(other_user)
    following.include?(other_user)
end

end










