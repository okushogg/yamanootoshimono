module NotificationsHelper
  
  def notification_form(notification)
    @visiter = notification.visiter
    @comment = nil
    @order = nil
    @visiter_comment = notification.comment_id
    @visited_order = notification.order_id
    case notification.action
    when "comment" then
      @comment = Comment.find_by(id: @visiter_comment)&.content
      tag.a(@visiter.name, href:mypage_path(@visiter), style:"font-weight: bold;")+"が"+tag.a('あなたの投稿', href:post_path(notification.post_id), style:"font-weight: bold;")+"にコメントしました"
      when "order" then
      "捜索願に合う"+tag.a('投稿', href:post_path(notification.post_id), style:"font-weight: bold;")+"がありました。"
    end
  end
  
  def unchecked_notifications
    @notifications = current_user.passive_notifications.where(checked: false)
  end
    
end
