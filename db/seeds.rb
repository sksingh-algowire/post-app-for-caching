for i in 1..250 do
    begin
        post = Post.new(title: "Post number #{i}", body: "Post body description #{i}")
    
        if post.save
            comment = post.comments.build( name: "User #{i}", message: "Comment on post #{i} by user #{i}")
            comment.save
        end
    rescue => exception
      puts "exception occure"
    end
end
