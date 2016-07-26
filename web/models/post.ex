defmodule ElixirApi.Post do
  use ElixirApi.Web, :model

  schema "posts" do
    field :title, :string
    field :body, :string, size: 3000

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title, :body])
    |> validate_required([:title, :body])
  end
end
