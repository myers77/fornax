defmodule Tracker.Repo.Migrations.CreateTemps do
  use Ecto.Migration

  def change do
    create table(:temps) do
      add :temperature, :decimal
      add :humidity, :decimal

      timestamps()
    end

  end
end
