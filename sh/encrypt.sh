#/bin/sh

@echo off

if [[ ! -v "$JAVA_HOME"]]; then
    echo -e "To run encrypt.bat, set the JAVA_HOME environment variable to the directory where the Java Runtime Environment \(JRE\) is installed."
    
elseif [[ -z "$JAVA_HOME"]]; then
        echo -e "We couldn't find the Java Runtime Environment \(JRE\) in directory "%JAVA_HOME%". To run process.bat, set the JAVA_HOME environment variable to the directory where the JRE is installed."
else
    "%JAVA_HOME%\bin\java"  -cp ..\dataloader-51.0.1-uber.jar com.salesforce.dataloader.security.EncryptionUtil %*
fi
