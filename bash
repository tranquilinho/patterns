# Parsing long parameters (positional)
case "$1" in
	"add")

	;;
	"del")

	;;
	*)
	    echo "Syntax: $0 [add|del]"
	    exit 2
esac

# Parsing short key parameters
while getopts "f:t:h" options; do
    case "${options}" in
        f)
            readonly from="${OPTARG}"
            ;;
        t)
            readonly to="${OPTARG}"
            ;;
	h)
	    echo "Syntax: $0 [-h] -f FROM [-t TO]"
    esac
done
# from is required
if [ -z "${from}" ]; then
    echo "Syntax: $0 [-h] -f FROM [-t TO]"
    exit 2
fi

