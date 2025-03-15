# _plugins/taint_patch.rb
unless "".respond_to?(:tainted?)
    class String
      def tainted?
        false
      end
    end
  end
  