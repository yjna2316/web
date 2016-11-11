class HomeController < ApplicationController
  
def home_params  
  params.require(:home).permit(:name, :title, :content, :tag_list)
end

def index #main화면 ,aaa
  
   if params[:tag]
    @every_homes = Home.tagged_with(params[:tag]).all.order("id desc")
  else
    @every_homes = Home.all.order("id desc")
  end
end

def bbb #show_infos

 
   if params[:tag]
    @every_homes = Home.tagged_with(params[:tag]).all.order("id desc")
  else
    @every_homes = Home.all.order("id desc")
  end
end 

def write1 #내용쓰기(view) , create
end
def write2 #db저장, creat
  @title = params[:title]
  @content = params[:content]
  @tag_list= params[:tag_list]
  @image = params[:image]
  
  new_post = Home.new
  new_post.title = @title
  new_post.content=@content
  new_post.tag_list=@tag_list
  new_post.image=@image
  new_post.save
  
  redirect_to "/bbb"
end

def list #db 저장된 내용 리스트
  @every_homes = Home.all.order("id desc")
end
def destroy #삭제
@one_post = Home.find(params[:home_id])
@one_post.destroy
redirect_to "/list"
end
def update1 #수정하기(overwrite)
 @one_post = Home.find(params[:home_id])
end
def update2 #수정내용 db에 저장
  @one_post = Home.find(params[:home_id])
  @one_post.title= params[:title]
  @one_post.content = params[:content]
  @one_post.tag_list= params[:tag_list]
  @one_post.image = params[:image]
  @one_post.save
redirect_to "/list"
end
end
