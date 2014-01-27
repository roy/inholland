module WelcomeHelper
  def item_title(item)
    ret = ""
    ret = '<strong>NEW!</strong> ' if item.created_at > 10.minutes.ago
    ret += h(truncate(item.title))
    ret
  end
end