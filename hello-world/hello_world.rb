class HelloWorld
  def self.hello(*w)
    "Hello, #{w[0] || 'World'}!"
  end
end
