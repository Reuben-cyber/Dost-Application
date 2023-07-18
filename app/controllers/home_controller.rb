class HomeController<ApplicationController
  def new   
      @home=Home.new 
      @home = Home.new(home_params)
      if @home.save
        redirect_to root_path
      else
        redirect_to root_path
      end 
      
  end

  def index
    @interest = Interest.all
    @cat=Category.all
    @homes=Home.all
    @category=Category.all.pluck(:id,:name).to_h  
  end
   
  def suggestions
    @homes=Home.all
    @otherusers=User.all
    @category=Category.all 
    @similarity_percent,@similar_category_hash = Home.category_by_users(@homes,current_user)
    @similar_category_record = Home.get_categories(@similar_category_hash,@category)
  end

   private 
    def home_params
      params.permit(:interest_id, :user_id, :category_id)
    end
end


