defmodule DropletServer.Product do
  use DropletServer.Web, :model

  schema "products" do
    field :name, :string
    field :price, :float
    field :description, :string
    field :quantity, :integer

    timestamps
  end

  @required_fields ~w(name price description quantity)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
