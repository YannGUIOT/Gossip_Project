class Router

  def initialize
    @controller = Controller.new
  end

  def perform
    #proposer 3 choix
    choice = self.menu
    case choice
    when 1
      # create gossip
      @controller.create_gossip
      self.perform
    when 2
      # view list
      @controller.view_list_gossip
      self.perform
    when 3
      # delete gossip
      @controller.delete_gossip
      self.perform
    when 4
      # quit
      exit
    end
  end

  def menu
      system 'clear'
      print "\n WELCOME TO GOSSIP PROJECT \n"
      print "\n  [1] CREATE NEW GOSSIP" 
      print "\n  [2] VIEW GOSSIP LIST" 
      print "\n  [3] DELETE A GOSSIP" 
      print "\n  [Q] QUIT\n"
      self.user_choice
  end

  def user_choice
      x = $stdin.getch
      case x
          when '1' then return 1
          when '2' then return 2
          when '3' then return 3
          when 'q' then return 4
          else self.user_choice
      end
  end
end
