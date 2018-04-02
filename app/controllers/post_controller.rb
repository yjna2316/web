class PostController < ApplicationController
def post_params  
  params.require(:post).permit(:name, :title, :content, :tag_list)
end

def main
   if params[:tag]
    @posts = Post.tagged_with(params[:tag]).all.order("id desc")
  else
    @posts = Post.all.order("id desc")
  end
end

def show_infos #find and show posts with tags matched to the user input. Else show all in db
   if params[:tag]
    @posts = Post.tagged_with(params[:tag]).all.order("id desc")
  else
    @posts = Post.all.order("id desc")
  end
end 

def create_new_post #내용쓰기(view), Create
end

def save_new_post #db저장, Creat  
  new_post = Post.new
  new_post.title = params[:title]
  new_post.content = params[:content]
  new_post.tag_list = params[:tag_list]
  new_post.image = params[:image]
  new_post.save
  
  redirect_to "/show_infos"
end

def list #db에 저장된 내용 리스트로 보이기
  @posts = Post.all.order("id desc")
end

def destroy #삭제
@one_post = Post.find(params[:Post_id])
@one_post.destroy
redirect_to "/list"
end

def modify_post_view #수정하기(overwrite)
 @one_post = Post.find(params[:Post_id])
end

def save_change #수정내용 db에 저장
  @one_post = Post.find(params[:Post_id])
  @one_post.title= params[:title]
  @one_post.content = params[:content]
  @one_post.tag_list= params[:tag_list]
  @one_post.image = params[:image]
  @one_post.save
redirect_to "/list"
end
end
