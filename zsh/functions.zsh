# make new directory and cd into it
mcd() {
	mkdir -p "$@" && cd "$@"
}


# quick change jdk versions
jdk() {
	version=$1
	export JAVA_HOME=$(/usr/libexec/java_home -v"$version");
	java -version
}

