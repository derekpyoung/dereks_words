module UserGamesHelper
  
  def log_game(arr)
    p arr
  end 
  
  def users_total_score(users)
    arr = []
    player_score_array = []
    total = {}
    final_hash = {}
    name_hash = {}
    users.each do |user|
      arr = []
      user.user_games
      user.user_games.each do |round|
        arr.push(round.score)
      end 
      total[user.id] = arr.sum 
    end 
    sorted = total.sort_by{ |k, v| v }.reverse
    i = 0
    while i < sorted.length do 
      final_hash[User.find(sorted[i][0]).name.capitalize] = sorted[i][1] 
      # player_score_array.push(player.name.capitalize)
      # player_score_array.push(score)
      p User.find(sorted[i][0]).name
      p sorted[i][0]
      i += 1
    end 
    p final_hash 
    # p player_score_array
    

    
      
   

    # arr = []
    # @h = Hash.new(0)
    # users_hash = Hash.new(0)
    # user = User.find_by(id: id)
    # p "----------"
    # games = user.user_games
    # games.each do |game|
    #   arr.push(game.score)
    # end 
    # @h[user.id] = arr.sum
  end

  def sort_scores 
    p "shit fuck shit"
    p @h 


  end 


  def total_score(id)
    arr = []
    total_arr = []
    score_hash = {}
    user = User.find_by(id: id)
    games = user.user_games.all
    games.each do |game|
      arr.push(game.score)
    end 
    return arr.sum 
  end

 

  def total_wins(id)
    arr = []
    user = User.find_by(id: params[:id])
    games = user.user_games.all 
    games.each do |game|
      if game.win == true
        arr.push(game.win)
      end 
    end 
    return arr.length 
  end 

  def total_losses(id)
    arr = []
    user = User.find_by(id: params[:id])
    games = user.user_games.all 
    games.each do |game|
      if game.win == false
        arr.push(game.win)
      end 
    end 
    return arr.length 
  end 

end
