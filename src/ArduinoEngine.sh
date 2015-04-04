# variables
verbose='false'
appName=''
arduinoId=''

# Read all flags and get the parameters
if ! options=$(getopt -o ni: -l appName,arduinoId,clong: -- "$@")
then
    # something went wrong, getopt will put out an error message for us
    exit 1
fi

set -- $options
while true; do
  case "$1" in
    --appName | -n)
					echo "$1"
      				appName="$2"
      				shift 2
      	;;
    --arduinoId | -i)
					echo "$1"
					arduinoId="$2"
					shift 2
	  	;;
    *)
		echo "$1"
      	echo "Invalid option: $2"
      	exit 1
      	;;
    )
      	break
      	;;
  esac
done

echo "All options: $appName y $arduinoId"