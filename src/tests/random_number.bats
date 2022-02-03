# Runs prior to every test
setup() {
    # Load our script file.
    source ./src/scripts/random_number.sh
}

@test '1: Pick a random number' {
    # Mock environment variables or functions by exporting them (after the script has been sourced)
    export PARAM_UPPER=1
    # Capture the output of our "Greet" function
    result=$(RandomNumber)
    [ "$result" == 1 ]

    echo $result was chosen
}
