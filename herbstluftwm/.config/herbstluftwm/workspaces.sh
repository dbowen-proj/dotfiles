# herbst workspaces

tag_names=(   "System" "Web"  "Dev"   "Office" "Comm")
tag_keys=(     "s"      "w"    "d"    "o"         "c")
tag_layouts=( "grid"   "max" "grid"  "max"      "grid")

hc rename default "${tag_names[0]}" || true
for i in "${!tag_names[@]}" ; do
    tag="${tag_names[$i]}"
    key="${tag_keys[$i]}"
    layout="${tag_layouts[$i]}"

    hc add $tag
    hc keybind "Mod1-$key" use $tag
    hc use $tag
    hc set_layout $layout
done

hc set tree_style '╾│ ├└╼─┐'


