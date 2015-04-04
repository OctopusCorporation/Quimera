# variables
verbose='false'
appName=''
arduinoId=''

# Read all flags and get the parameters
while getopts ":n:i:" opt; do
  case $opt in
    n)
		temp=$OPTARG
		# Validate if first char is '-' to control the flags aren't empty value
		if [[ ${temp:0:1} == "-" ]] 
		then 
			echo "Invalid App Name"
			exit 1; 
		else 
			appName=$OPTARG
		fi
      	;;
    i)
		temp=$OPTARG
		if [[ ${temp:0:1} == "-" ]]
		then 
			echo "Invalid App Name"
			exit 1
		else 
			arduinoId=$OPTARG
		fi
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

# Validate if variables are empty
if [ -z "$appName" ]; then
    echo "appName is null or empty"
    exit 1
fi

if [ -z "$arduinoId" ]; then
    echo "arduinoId is null or empty"
    exit 1
fi

# Create a directory that contains all files
mkdir -p "/home/pi/$appName-$arduinoId"
echo "directory is created: /home/pi/$appName-$arduinoId"
cd "/home/pi/$appName-$arduinoId"
echo "Current path: /home/pi/$appName-$arduinoId"

# Initialize the default template
ino init -t Blink

echo "All options: $appName y $arduinoId"