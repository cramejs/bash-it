
hg_prompt_info() {
    hg prompt --angle-brackets "\
< on ${purple}<branch>${reset_color}>\
< at ${yellow}<tags|${reset_color}, ${yellow}>${reset_color}>\
${bold_green}<status|modified|unknown><update>${reset_color}<
patches: <patches|join( → )|pre_applied(${yellow})|post_applied(${reset_color})|pre_unapplied(${bold_black})|post_unapplied(${reset_color})>>" 2>/dev/null
}

prompt() {
    hg_prompt=$(hg_prompt_info)
    PS1="\n${purple}\u${reset_color} in ${bold_green}\W${reset_color}${hg_prompt}\n$ "
}

PROMPT_COMMAND=prompt
