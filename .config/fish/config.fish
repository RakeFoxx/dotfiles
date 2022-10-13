if status is-interactive
	# set -x LANG en_US.UTF-8
	# set -x LANGUAGE en_US.UTF-8
	# set -x LC_ALL en_US.UTF-8
	# set -x LC_CTYPE UTF-8

	set -x EDITOR nvim
	set -x VISUAL nvim

	if not functions --query tide
		echo '=== setup prompt ===
			fisher install IlanCosman/tide@v5
			echo 1 1 3 2 2 1 1 1 y | tide configure > /dev/null'
	end

	fish_vi_key_bindings
	set -g fish_cursor_default block
	set -g fish_cursor_insert line
	set -g fish_cursor_visual underscore

	set -U fish_greeting

	source "$HOME/.mambaforge/etc/fish/conf.d/conda.fish"
end

source "$HOME/.config/fish/custom.fish"
