defmodule CmsApiWeb.CMS.PageView do
  use CmsApiWeb, :view

  alias CmsApi.CMS

  def author_name((%CMS.Page{author: author})) do
    author.user.name
  end
end
