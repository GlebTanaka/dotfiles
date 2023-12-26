echo 'Hello from .zshenv'

function exists() {
    # `command -v` is similar to `which`
    command -v $1 >/dev/null 2>&1

    # more excplicitly written
    #comannd -v $1 1>/dev/null 2>/dev/null
}
