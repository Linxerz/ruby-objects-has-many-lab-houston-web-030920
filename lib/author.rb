class Author
    attr_accessor :name
    @@all = []
    
    def initialize(name)
        @name = name
        self.class.all << self
    end

    def self.all
        @@all
    end

    def posts
        arr = []
        Post.all.each do |post|
            if post.author == self
                arr << post
            end
        end
        arr
    end

    def add_post(post)
        post.author = self
    end

    def add_post_by_title(title)
        post = Post.new(title)
        self.add_post(post)
    end

    def self.post_count

    total = 0
    self.all.each do |author| 
       total += author.posts.length
    end
    total

    end
end