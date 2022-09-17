defmodule Missionable.Accounts.Wallet do
  use Ecto.Schema
  import Ecto.Changeset

  schema "wallets" do
    field :token_id, :string
    belongs_to :user, Missionable.Accounts.User
    timestamps()
  end

  @doc false
  def changeset(wallet, attrs) do
    wallet
    |> cast(attrs, [:user_id, :token_id])
    |> validate_required([:user_id, :token_id])
    |> foreign_key_constraint(:user_id)
  end
end
