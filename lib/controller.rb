class Controller

  def initialize
    @view = View.new
  end

  def create_gossip
    params = @view.create_gossip
    gossip = Gossip.new(params[:author], params[:content])
    gossip.save
  end

  def view_list_gossip
    all_gossips = Gossip.all
    @view.view_all(all_gossips)
  end

  def delete_gossip
    all_gossips = Gossip.all
    @view.view_all(all_gossips)
    gossip_to_delete = @view.view_delete
    Gossip.delete(gossip_to_delete)
  end


end