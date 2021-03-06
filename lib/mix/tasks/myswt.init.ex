defmodule Mix.Tasks.Myswt.Init do
	use Mix.Task
	def run(_) do
		Enum.each([:bullet, :conform, :cowboy, :cowlib, :exactor, :exrm, :extask, :exutils, :hashex, :jazz, :logex, :mimetypes, :quickrand, :ranch, :silverb, :tinca, :uuid, :tools], &(:application.start(&1)))
		case File.exists?("./priv") do
			true ->
				Myswt.Console.error("FAIL, priv dir is already exist!")
			false ->
				:os.cmd('cd ./deps/myswt && git submodule init && git submodule update') |> to_string |> Myswt.Console.warn
				File.cp_r!(Exutils.priv_dir(:myswt)<>"/priv", "./priv")
				:os.cmd('cd ./priv/megaweb && rm -rf ./.git*') |> to_string |> Myswt.Console.warn
				Myswt.Console.notice("SUCCESS, priv dir with MYSWT template created!")
		end
	end
end
