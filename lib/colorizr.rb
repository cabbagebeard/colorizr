class String
  @@colors = {
    black: 30, 
    red: 31, 
    green: 32,
    yellow: 33,
    blue: 34, 
    pink: 95, 
    light_blue: 96,
    white: 97,
    light_grey: 37,
  }
  
  def self.create_colors
    @@colors.each do |color, color_number|
      send(:define_method, "#{color}") do
        "\e[#{color_number}m" + self + "\e[0m"
      end
    end
  end
    
  def self.colors # Should return an Array of all the color options
    colors = []
    @@colors.each do |color, color_number|
      colors.push(color)
    end
    puts colors
  end
  
  def self.sample_colors #should print sample output demonstrating all the colors
    @@colors.each do |color, color_number|
      puts "This is " + color.to_s.send(color)
    end
  end

end

String.create_colors
