# variables
verbose='false'
appName=''
arduinoId=''

# Read all flags and get the parameters
inputOptions='getopt -o ni: --long appName,arduinoId:'
eval set -- inputOptions
while true; do
  case $opt in
    --appName | -n)
      				appName=$2
      				shift
      	;;
    --arduinoId | -i)
					arduinoId=$2
					shift
	  	;;
    *)
      	echo "Invalid option: -$2"
      	exit 1
      	;;
    --)
      	break;
      	;;
  esac
done

echo "All options: $appName y $arduinoId"