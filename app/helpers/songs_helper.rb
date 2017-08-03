module SongsHelper
  def link_to_edit(text, href)
    "<a href='#{href}'>#{text}</a>".html_safe
  end
end
