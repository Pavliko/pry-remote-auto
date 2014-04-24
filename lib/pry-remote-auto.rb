require "pry-remote"

class Object
  def remote_pry_with_auto_launch(*args)
    Thread.start do
      sleep 2
      system 'osascript', File.expand_path('../'+File.basename(__FILE__, '.rb'), __FILE__)+'.applescript'
    end
    remote_pry_without_auto_launch(*args)
  end
  alias_method :remote_pry_without_auto_launch, :remote_pry
  alias_method :remote_pry, :remote_pry_with_auto_launch
  alias_method :pry_remote, :remote_pry
end
