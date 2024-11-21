defmodule ClosureTable.Repo.Migrations.CreateOrganizations do
  use Ecto.Migration

  def change do
    create table(:organizations) do
      add :name, :string, null: false
      add :code, :string

      timestamps(type: :utc_datetime)
    end
  end
end
