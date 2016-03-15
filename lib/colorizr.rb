class String
  @@colors = {
    black: 30, 
    red: 31, 
    green: 32,
    yellow: 33,
    blue: 34, 
    magenta: 35, 
    cyan: 36,
    white: 37
  }
  
  def self.create_colors
    @@colors.each do |color, color_number|
      send(:define_method, "#{color}") do
        "\e[#{color_number}m" + self + "\e[0m"
      end
    end
  end
    
  
  def self.colors # Should return an Array of all the color options
  
  end
  
  def self.sample_colors #should print samble output demonstrating all the colors
  
  end

  
end

String.create_colors