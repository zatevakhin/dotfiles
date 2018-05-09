
# Create directoriy and go into it.
mkcd()
{
    case "$1" in /*) :;; *) set -- "./$1";; esac
    mkdir -p "$1" && cd "$1"
}

# Run some command n times
run()
{
    number=$1
    shift
    for i in `seq $number`; do
      $@
    done
}
