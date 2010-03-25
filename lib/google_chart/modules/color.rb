module GoogleChart
  # This module is used as a mixin for providing color functionality
  module Color
    private
    def color(color)
      @colors ||= []
      @colors << color
    end

    def add_colors
      @params[:chco] = @colors.collect{|x| x.kind_of?(Array) ? x.join('|') : x}.join(',') unless @colors.compact!.empty?
    end

  end
end
