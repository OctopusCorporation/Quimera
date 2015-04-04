# variables
verbose='false'
appName=''
arduinoId=''
files=''

# Read all flags and get the parameters
while getopts ":n:" opt; do
  case $opt in
    n)
      $appName = "$OPTARG" >&2
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