# variables
verbose='false'
appName=''
arduinoId=''

# Read all flags and get the parameters
while getopts ":n:i:" opt; do
  case $opt in
    n)
		temp=$OPTARG
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
			appName=$OPTARG
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

if [ -n "$appName" ]; then
    echo "appName is not empty"
fi

if [ -n "$arduinoId" ]; then
    echo "arduinoId is not empty"
fi

echo "All options: $appName y $arduinoId"