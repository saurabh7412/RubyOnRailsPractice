class ApplicationController < ActionController::Base
    def print_text
        render html: "This is a custom home route."
    end
end
