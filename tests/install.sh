#!/bin/sh -eu

# Run in a disposable Alpine container: the installer adjusts /etc permissions.
source_dir=$(CDPATH= cd -- "$(dirname "$0")/.." && pwd)
fixture=$(mktemp -d)
trap 'rm -rf "$fixture"' EXIT
mkdir -p "$fixture/source with spaces/wkit" "$fixture/source with spaces/broken"
cp "$source_dir/install" "$fixture/source with spaces/install"
printf '#!/bin/sh\nexit 0\n' > "$fixture/source with spaces/wkit/install"
printf '#!/bin/sh\nexit 23\n' > "$fixture/source with spaces/broken/install"

sh "$fixture/source with spaces/install"

if sh "$fixture/source with spaces/install" broken; then
    echo 'Installer swallowed component failure' >&2
    exit 1
else
    test "$?" -eq 23
fi

if sh "$fixture/source with spaces/install" missing; then
    echo 'Installer accepted a missing component' >&2
    exit 1
fi

if sh "$fixture/source with spaces/install" ../wkit; then
    echo 'Installer accepted a path outside the component directory' >&2
    exit 1
fi
