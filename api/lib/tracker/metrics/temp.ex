defmodule Tracker.Metrics.Temp do
  use Ecto.Schema
  import Ecto.Changeset
  alias Tracker.Metrics.Temp


  schema "temps" do
    field :humidity, :decimal
    field :temperature, :decimal

    timestamps()
  end

  @doc false
  def changeset(%Temp{} = temp, attrs) do
    temp
    |> cast(attrs, [:temperature, :humidity])
    |> validate_required([:temperature, :humidity])
  end
end
