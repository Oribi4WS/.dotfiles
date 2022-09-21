#!/usr/bin/env zsh

echo "\n <<< Setup Java >>>>\n"

## jenv
## https://github.com/jenv/jenv
## http://davidcai.github.io/blog/posts/install-multiple-jdk-on-mac/
## https://chamikakasun.medium.com/how-to-manage-multiple-java-version-in-macos-e5421345f6d0

# if which jenv > /dev/null; then
# 	which jenv
# else
# 	eval "$(jenv init -)";
# fi

if echo $JAVA_HOME > /dev/null; then
	echo "JAVA_HOME =" $JAVA_HOME
else
	echo "jenv enable-plugin export : You've to restart the terminal"
	jenv enable-plugin export
	echo "Ok, I'll restart the shell..."
	exec $SHELL -l # ! will restart the shell !
fi

if /usr/libexec/java_home -V > /dev/null; then
	echo "--- Java JDKs installed ---"
	/usr/libexec/java_home -V
else
	echo "Linking Java..."
	# sudo ln -sfn /opt/homebrew/opt/openjdk/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk
fi

# Install Java JDK's
# brew info java11
# brew install java11
# jenv add /Library/Java/JavaVirtualMachines/openjdk-11.jdk/Contents/Home/
# jenv add /Library/Java/JavaVirtualMachines/jdk-18.0.2.1.jdk/Contents/Home/

# brew info java
# brew install java
# jenv add /Library/Java/JavaVirtualMachines/openjdk.jdk/Contents/Home/
# /opt/homebrew/opt/openjdk/libexec/openjdk.jdk
# sudo ln -sfn /opt/homebrew/opt/openjdk/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk

# echo "--- global NPM packages installed ---"
# npm list --global --depth=0

