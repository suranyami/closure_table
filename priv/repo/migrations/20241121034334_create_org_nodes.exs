defmodule ClosureTable.Repo.Migrations.CreateOrgNodes do
  use Ecto.Migration

  def change do
    create table(:org_nodes) do
      add :node_id, :integer
      add :parent_id, :integer
      add :depth, :integer

      timestamps(type: :utc_datetime)
    end
  end
end
