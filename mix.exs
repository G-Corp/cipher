defmodule Cipher.Mixfile do
  use Mix.Project

  def project do
    [app: :cipher,
     version: "1.3.3",
     elixir: ">= 1.3.0",
     package: package(),
     description: "Elixir crypto library to encrypt/decrypt arbitrary binaries.",
     source_url: "https://github.com/rubencaro/cipher",
     docs: [source_ref: get_commit()],
     deps: deps()]
  end

  defp package do
    [maintainers: ["Rubén Caro"],
     licenses: ["MIT"],
     links: %{github: "https://github.com/rubencaro/cipher",
              other_languages: "https://gist.github.com/rubencaro/9545060"}]
  end

  defp deps do
    [{:poison, "~> 2.0 or ~> 3.0"},
     {:ex_doc, "~> 0.14", only: :dev, runtime: false},
     {:plug, ">= 1.1.0"}]
  end

  defp get_commit do
    :os.cmd('git rev-parse --short HEAD') |> to_string |> String.trim_trailing("\n")
  end

end
