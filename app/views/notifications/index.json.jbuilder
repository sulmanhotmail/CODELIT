json.array! @notifications do|notification|
  #json.recipient notification.recipient
  json.actor notification.actor.slug
  json.action notification.action
  json.notifiable do
    json.type = "a #{notification.notifiable.class.to_s.underscore.humanize.downcase}"
  end
  if notification.notifiable.class.to_s.underscore.humanize.downcase == 'recipe'
    json.url recipe_path(notification.notifiable, anchor: dom_id(notification.notifiable))
  elsif notification.notifiable.class.to_s.underscore.humanize.downcase == 'cast'
      json.url cast_path(notification.notifiable, anchor: dom_id(notification.notifiable))
  elsif notification.notifiable.class.to_s.underscore.humanize.downcase == 'lecture'
    json.url course_lecture_path(notification.notifiable.course, notification.notifiable, anchor: dom_id(notification.notifiable))
  end
end
