module ApplicationHelper
  def user_avatar(user)
    asset_pack_path('media/images/user.png')
  end

  def fa_icon
    content_tag 'i', '', class: "bi bi-x-square-fill"
  end
end
