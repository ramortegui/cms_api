defmodule CmsApi.CMS.Author do
  use Ecto.Schema
  import Ecto.Changeset
  alias CmsApi.CMS.{Author, Page}


  schema "authors" do
    field :bio, :string
    field :genre, :string
    field :role, :string
    field :user_id, :id
    has_many :pages, Page
    belongs_to :user, CmsApi.Accounts.User

    timestamps()
  end

  @doc false
  def changeset(%Author{} = author, attrs) do
    author
    |> cast(attrs, [:bio, :role, :genre])
    |> validate_required([:bio, :role, :genre])
    |> unique_constraint(:user_id)
  end
end
