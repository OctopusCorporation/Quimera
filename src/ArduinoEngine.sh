# variables
verbose='false'
appName=''
arduinoId=''

# Read all flags and get the parameters
if ! options=$(getopt -o n:i: -l appName,arduinoId,clong: -- "$@")
then
    # something went wrong, getopt will put out an error message for us
    exit 1
fi

set -- $options
while true; do
  case $1 in
    -n|--appName)
echo " opcion $1"
      				#appName="$2"
      				shift
      	;;
    -i|--arduinoId)
echo " opcion $1"
					#arduinoId="$2"
					shift
	  	;;
    (--) shift; break;;
    (-*) echo "$0: error - unrecognized option $1" 1>&2; exit 1;;
    (*) 
echo " opcion desconocida $1";break;;
  esac
done

echo "All options: $appName y $arduinoId"