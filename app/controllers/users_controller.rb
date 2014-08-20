class UsersController < ApplicationController

layout "user"  


def sign_in
  @fname = params[:first_name]
 # if !@fname.blank? 
 #@User = User.create({:fname => @fname})
   #end
   @users = User.all
 end


  def index
   @users = User.all
  end


  def new
    @user = User.new(params[:user])
    @user_count = User.count + 1
  end


  def create
     @user = User.new(user_params)
      if @user.save
    
        flash[:notice] = "User created successfully"
        redirect_to(:action => "index")
      else
        #if fails, then display error and have them fix
        render('new')
      end 
   end


  def edit
    @user = User.find(params[:id])
    @user_count = User.count
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:notice] = "User updated Successfully"
      redirect_to(:action => "show", :id => @user.id)
    else
      @user_count = User.count
      render('edit')
    end
  end


  def delete
    @user = User.find(params[:id])
  end


  def destroy 
    user = User.find(params[:id]).destroy
    flash[:notice] = "User '#{user.firstname}' destroyed successfully."
    redirect_to(:action => 'index')
  end 


  def show
    @user = User.find(params[:id])
  end

 #do a search 

     def live_search
@searchphrase = "*" + params[:query] + "*"
@results = Post.find(:all, :conditions => ["Description LIKE ? ", @searchphrase])
render(:layout => false) 
    end 


  private 

    def user_params
       params.require(:user).permit(:firstname, :lname, :email, :summary)
    end 


end
