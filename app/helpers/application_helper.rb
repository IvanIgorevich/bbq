module ApplicationHelper
  def user_avatar(user)
    if user.avatar?
      user.avatar.url
    else
      asset_pack_path('media/images/user.png')
    end
  end

  def fa_icon
    content_tag 'i', '', class: "bi bi-x-square-fill"
  end

  def event_photo(event)
    photos = event.photos.persisted

    if photos.any?
      url_for(photos.sample.picture) #photos.sample.photo.url
    else
      asset_pack_path('media/images/event.jpg')
    end
  end

  # Возвращает миниатюрную версию фотки
  def event_thumb(event)
    photos = event.photos.persisted

    if photos.any?
      photos.sample.picture.variant(resize_to_fit: [100, 100]) #photo.thumb.url
    else
      asset_pack_path('media/images/event_thumb.jpg')
    end
  end

  def user_avatar_thumb(user)
    if user.foto.attached?
      url_for(user.foto)
    else
      if user.avatar.file.present?
        user.avatar.thumb.url
      else
        asset_pack_path('media/images/user.png')
      end
    end
  end
end
