defmodule MissionableWeb.WalletController do
  use MissionableWeb, :controller

  alias Missionable.Accounts
  # alias Missionable.Accounts.User
  alias Missionable.Accounts.Wallet

  def index(conn, _params) do
    # wallets = Accounts.list_wallets()
    render(conn, "wallet.html")
  end
end
