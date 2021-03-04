module NotificationsHelper
  
  def notification_form(notification)
    @visiter = notification.visiter
    @visited = notification.visited
    @comment = nil
    @order = nil
    @visiter_comment = notification.comment_id
    @visited_order = notification.order_id
    case notification.action
      when "comment" then
        @comment = Comment.find_by(id: @visiter_comment)&.content
        tag.a(@visiter.name, href:mypage_path(@visiter), style:"font-weight: bold;")+"さんが"+tag.a('あなたの投稿', href:post_path(notification.post_id), style:"font-weight: bold;")+"にコメントしました"
      when "order" then
        tag.a('あなたの捜索願', href:mypage_path(@visited), style:"font-weight: bold;")+"に合致する"+tag.a('投稿', href:post_path(notification.post_id), style:"font-weight: bold;")+"がありました"
    end
  end
  
  def unchecked_notifications
    @notifications = current_user.passive_notifications.where(checked: false)
  end
    
end
