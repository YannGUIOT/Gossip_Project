class View

  def initialize

  end

  def create_gossip
    system 'clear'
    print " Enter Author Name : \n > "
    author = gets.chomp
    print " Enter the Gossip : \n > "
    content = gets.chomp
    return params = { content: content, author: author }
  end 

  def view_all(all_gossips)
    system 'clear'
    puts " *** GOSSIP LIST ***"
    all_gossips.each do |gossip|
    print " From : #{gossip.author} >> #{gossip.content}\n"
    end
    gets.chomp
  end

  def view_delete
    puts "Quel gossip souhaite-tu supprimer ?\n"
    print " > "
    return gets.to_i
  end


end