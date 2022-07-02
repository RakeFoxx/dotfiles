if status is-interactive
	if not functions --query tide
		fisher install IlanCosman/tide@v5
		echo 1 1 3 2 2 1 1 1 y | tide configure > /dev/null
	end

	fish_vi_key_bindings
	set -g fsh_cursor_default block
	set -g fish_cursor_insert line
	set -g fish_cursor_visual underscore
end
