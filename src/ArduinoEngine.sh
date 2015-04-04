# variables
verbose='false'
appName=''
arduinoId=''
files=''

# Read all flags and get the parameters
while getopts ":n:i:" opt; do
  case $opt in
    n)
      	appName=$OPTARG
      	;;
    i)
		arduinoId=$OPTARG
	  	;;
    \?)
      	echo "Invalid option: -$OPTARG" >&2
      	exit 1
      	;;
    :)
      	echo "Option -$OPTARG requires an argument." >&2
      	exit 1
      	;;
  esac
done

echo "All options: $appName y $arduinoId"