# variables
verbose='false'
appName=''
arduinoId=''
files=''

# Read all flags and get the parameters
while getopts 'nif:v' flag; do
  case "${flag}" in
    n) appName="${OPTARG}" ;;
    i) arduinoId="${OPTARG}" ;;
    f) files="${OPTARG}" ;;
    v) verbose='true' ;;
    *) error "Unexpected option ${flag}" ;;
  esac
done

echo "All options: "  $appName  " "  $arduinoId