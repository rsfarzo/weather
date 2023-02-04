class ApplicationController < ActionController::Base
    # commented out code 😭
    #def hello
    #    render html: "hello, world!"
    #end
    include SessionsHelper
end
