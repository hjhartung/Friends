class FriendMailer < ActionMailer::Base
  default from: "hjhartung0@gmail.com"

  def new_friend_msg(friend)
    @friend = friend
    mail(:to => friend.email, :subject => "My New Friend")
  end
  def remove_friend_msg(friend)
  	@friend = friend
  	mail(:to => friend.email, :subject => "Removed a Friend")
  end
end
