require 'tty-prompt'
prompt = TTY::Prompt.new

class CLI
    def greeting
        prompt.ask("What is your name?")
    end
end