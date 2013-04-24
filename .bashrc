# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/lib64/
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/boost_1_38/lib
export LD_LIBRARY_PATH=/usr/lib/jvm/java-1.6.0-openjdk-1.6.0.0.x86_64/jre/lib/amd64/server:$LD_LIBRARY_PATH
export path=$path:/home/lyl/pbound_0_1_0/release


#
alias rm="rm -r"
alias cp="cp -r"
alias p="sh run.sh"
alias delsvn="find . -type d -name ".svn"|xargs rm -rf" 
