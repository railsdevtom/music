class UsersController < ApplicationController
  


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
     @user = User.new(params.require(:user).permit(:fname, :lname, :email, :summary))
       if @user.save
    
        flash[:notice] = "User created successfully"
        redirect_to(:action => "index")
      else
        #if fails, then display error and have them fix
        render('new')
      end 
   end


  def edit
  end

  def delete
  end

  def show
  end

  private 

    def user_params

       
 

    end 


end
