module ApplicationHelper
  def build_body_id
    "#{controller_name}-#{action_name}"
  end

  def favicons
    # http://www.jonathantneal.com/blog/understand-the-favicon/
    # http://stackoverflow.com/questions/2997437/what-size-should-apple-touch-icon-png-be-for-ipad-and-iphone-4
    #
    icons=""
    # (.. Because retina icons are exactly double the size of the standard icons we really only need to make 2 icons: 114 x 114 and 144 x 144)
    # Standard iPhone -->
    icons << favicon_link_tag("favicons/apple-touch-icon-114x114.png", rel:"apple-touch-icon", sizes:"57x57")
    # Retina iPhone -->
    icons << favicon_link_tag("favicons/apple-touch-icon-114x114.png", rel:"apple-touch-icon", sizes:"114x144")
    # Standard iPad -->
    icons << favicon_link_tag("favicons/apple-touch-icon-144x144.png", rel:"apple-touch-icon", sizes:"72x72")
    # Retina iPad -->
    icons << favicon_link_tag("favicons/apple-touch-icon-144x144.png", rel:"apple-touch-icon", sizes:"144x144")

    # 76x76 PNG
    icons << favicon_link_tag("favicons/apple-touch-icon-76x76.png", rel:"icon")

    # Resolutions emmbeded: 16x16, 24x24, 32x32, 64x64
    # http://www.xiconeditor.com/
    icons << "<!--[if IE]>#{ favicon_link_tag("favicons/favicon.ico", rel:"shortcut icon")}<![endif]-->"

    # IE10 + Windows 8, 144x144 transparent
    icons << %{
      <meta name="application-name" content="pagebox" />
      <meta name="msapplication-starturl" content="https://www.zeit.io" />
      <meta name="msapplication-TileImage" content="#{path_to_image('favicons/apple-touch-icon-144x144.png')}" />
    }

    icons.html_safe
  end
end
