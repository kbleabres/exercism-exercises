class HelloWorld

  def self.hello(*args)
    return args.empty? ? 'Hello, World!' : "Hello, #{args.first.to_s}!"
  end
end
