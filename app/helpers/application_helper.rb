module ApplicationHelper

def gravatar_for(user, options = { size: 180 })

	gravatar_id = Digest::MD5::hexdigest(user.email)
	size = options[ :size ]
	gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size }"
	image_tag(gravatar_url, alt: user.username, class: "img-circular")
end

end
