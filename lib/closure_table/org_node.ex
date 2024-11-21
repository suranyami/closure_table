defmodule ClosureTable.OrgNode do
  use Ecto.Schema
  import Ecto.Changeset

  schema "org_nodes" do
    field :depth, :integer
    field :node_id, :integer
    field :parent_id, :integer

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(org_node, attrs) do
    org_node
    |> cast(attrs, [:node_id, :parent_id, :depth])
    |> validate_required([:node_id, :parent_id, :depth])
  end
end
