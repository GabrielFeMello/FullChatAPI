defmodule FullChatApi.Repo do
  use Ecto.Repo,
    otp_app: :full_chat_api,
    adapter: Ecto.Adapters.Postgres
end
