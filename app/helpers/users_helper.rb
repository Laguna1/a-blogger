# frozen_string_literal: true

module UsersHelper
    def display_avatar(user)
        if user.avatar.attached?
          cloudinary_url(user.avatar.key)
        else
          asset_path('avatar.png')
        end
      end
end
