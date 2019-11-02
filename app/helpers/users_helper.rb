module UsersHelper
    def gravatar_url(user, options = { size: 80 })
        garavatar_id = Digest::MD5::hexdigest(user.email.downcase)
        size = options[:size]
        "https://secure.gravatar.com/avatar/#{garavatar_id}?s=#{size}"
    end
end
