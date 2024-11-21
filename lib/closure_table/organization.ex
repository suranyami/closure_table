defmodule ClosureTable.Organization do
  use Ecto.Schema
  import Ecto.Changeset

  schema "organizations" do
    field :code, :string
    field :name, :string

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(organization, attrs) do
    organization
    |> cast(attrs, [:name, :code])
    |> validate_required([:name, :code])
  end
end
