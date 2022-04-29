alias mvn="docker run -it --rm --name maven-project -v "$(pwd)":/usr/src/maven -w /usr/src/maven maven mvn"
alias aws='docker run --rm -it -v ~/.aws:/root/.aws -v $(pwd):/aws amazon/aws-cli'