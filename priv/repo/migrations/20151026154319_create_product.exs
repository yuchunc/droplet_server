defmodule DropletServer.Repo.Migrations.CreateProduct do
  use Ecto.Migration

  def change do
    create table(:products) do
      add :name, :string
      add :price, :float
      add :description, :text
      add :quantity, :integer

      timestamps
    end

  end
end
