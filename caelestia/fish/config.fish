if status is-interactive
    # Starship custom prompt
    starship init fish | source
set -Ux GTK_IM_MODULE ibus
set -Ux QT_IM_MODULE ibus
set -Ux XMODIFIERS "@im=ibus"

    # Custom colours
    cat ~/.local/state/caelestia/sequences.txt 2> /dev/null

    # For jumping between prompts in foot terminal
    function mark_prompt_start --on-event fish_prompt
        echo -en "\e]133;A\e\\"
    end
end
