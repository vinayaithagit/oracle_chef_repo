require 'mixlib/shellout'
def mylib
  find = Mixlib::ShellOut.new("dir /a'")
  find.run_command
end
