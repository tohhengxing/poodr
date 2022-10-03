FROM ruby:2.4.0-slim
# ENV GEM_PATH "${GEM_PATH}:/root/.gem/ruby/2.4.0:/usr/local/lib/ruby/gems/2.4.0"
# ENV GEM_HOME "${GEM_HOME}:/root/.gem/ruby/2.4.0:/usr/local/lib/ruby/gems/2.4.0"
WORKDIR /home/poodr
# RUN echo $GEM_HOME
RUN gem uninstall -i /usr/local/lib/ruby/gems/2.4.0 minitest
# RUN gem uninstall minitest 5.10.1
RUN gem install minitest -v 5.10.3

CMD ["/bin/bash"]
