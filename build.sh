echo "HELLO WORLD" + ${output-path}

# #!/bin/bash -e
# OUTPUT_PATH="${PWD}/${OUTPUT_PATH}"

# # If the variable KEYSTORE_CONTENT is set, then the keystore is created from the content of the variable.
# if [ -n "${KEYSTORE_CONTENT}" ]; then
#     echo "Creating keystore from content"
#     echo $KEYSTORE_CONTENT | base64 --decode > "keystore.jks"
# fi

# #TODO: Make sure BUNDLER_VERSION and RUBY_VERSION are compatible

# # If RUBY_VERSION is set, then latest RVM is installed and the specified version of Ruby will be used
# if [ -n "${RUBY_VERSION}" ]; then
#     # sudo apt-get update 
#     # sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libxml2-dev libxslt1-dev libcurl4-openssl-dev libffi-dev
    
#     # git clone https://github.com/rbenv/rbenv.git ~/.rbenv
#     # echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
#     # echo 'eval "$(rbenv init -)"' >> ~/.bashrc
#     # exec $SHELL
    
#     # git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
#     # echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
#     # exec $SHELL

#     # rbenv -v
#     # rbenv install ${RUBY_VERSION}
#     # rbenv global ${RUBY_VERSION}
#     # ruby -v

#     # sudo apt-get install software-properties-common
#     # sudo apt-add-repository -y ppa:rael-gc/rvm
#     # sudo apt-get update
#     # sudo apt-get install rvm

#     # source /etc/profile.d/rvm.sh

#     # sudo rvm get stable
#     # sudo rvm -v && ruby -v
#     # sudo rvm install ${RUBY_VERSION}
#     # sudo rvm use ${RUBY_VERSION}
#     # ruby -v
#     # echo "Running ruby with version: ${RUBY_VERSION}"
#     # ruby -v
# fi

# # If the variable BUNDLER_VERSION is set, then install bundler with selected version
# # otherwise use latest
# if [ -n "${BUNDLER_VERSION}" ]; then
#     echo "Running bundler with version: ${BUNDLER_VERSION}"
#     gem install bundler:2.3.26 -NV
#     rbenv rehash
# else
#     gem install bundler -NV
# fi


# script_path=$(cd $(dirname ${0}); pwd)
# cp -r ${script_path}/fastlane ./
# cp -r ${script_path}/Gemfile ./

# bundle install

# # If the variable FASTLANE_ENV is set then run fastlane with the --env equal to the variable.
# if [ -n "${FASTLANE_ENV}" ]; then
#     echo "Running fastlane with environment: ${FASTLANE_ENV}"
#     fastlane --env ${FASTLANE_ENV} android $BUILD_TYPE
# else
#     echo "Running fastlane"
#     fastlane android $BUILD_TYPE
# fi
