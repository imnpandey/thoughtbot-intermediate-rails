# this module is mixed in to the view class,
 # and all the methods in a view class are avilabe to the template

module ShoutsHelper
  def gravatar(user, size = 48)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: user.username, class: "gravatar")
  end
end
