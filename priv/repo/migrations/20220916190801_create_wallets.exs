defmodule Missionable.Repo.Migrations.CreateWallets do
  use Ecto.Migration

  def change do
    create table(:wallets) do
      add :user_id, references(:users, on_delete: :delete_all), null: false
      add :token_id, :string, null: false
      timestamps()
    end
  end
end
