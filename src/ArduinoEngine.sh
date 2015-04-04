# variables
verbose='false'
appName=''
arduinoId=''

# Read all flags and get the parameters
inputOptions=`getopt -o n:i: -l appName:,arduinoId:`

eval set -- "$inputOptions"
while true; do
  case "$1" in
    --appName | -n)
					echo "$1"
      				appName="$2"
      				shift
      	;;
    --arduinoId | -i)
					echo "$1"
					arduinoId="$2"
					shift
	  	;;
    *)
		echo "$1"
      	echo "Invalid option: $2"
      	exit 1
      	;;
    --)
      	break
      	;;
  esac
done

echo "All options: $appName y $arduinoId"