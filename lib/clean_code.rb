class Triangle
    attr_accessor :first, :second, :third
  
    def initialize(first, second, third)
      @first = first
      @second = second
      @third = third
    end
  
    def kind 
    #   if @first == 0 || @second == 0 || @third == 0
    #     begin
    #       raise TriangleError
    #     rescue TriangleError => error
    #       puts error.message_zero
    #     end
  
      elsif @first < 0 || @second < 0 || @third < 0
        begin
          raise TriangleError
        rescue TriangleError => error
          puts error.message_negative
        end
  
      elsif @first + @second < @third || @first + @third < @second || @second + @third < @first
        begin
          raise TriangleError
        rescue TriangleError => error
          puts error.message_inequality
        end
  
      elsif @first == @second && @second == @third
        return :equilateral
  
      elsif (@first != @second && @second == @third) || (@second != @third && @third == @first) || (@first != @third && @second == @first)
        return :isosceles
  
      elsif @first != @second && @second != @third
        return :scalene
  
      end
    end

    def equal_zero?
        if @first == 0 || @second == 0 || @third == 0
            begin
              raise TriangleError
            rescue TriangleError => error
              puts error.message_zero
            end
        end
    end

    def less_than_zero?
        
    end

  
    
    class TriangleError < StandardError
      def message_zero
        "Triangle Error: Zero values not allowed"
      end
  
      def message_inequality
        "Triangle Error: Inequality"
      end
  
      def message_negative
        "Triangle Error: Negative numbers not allowed!"
      end
    end
  end
  