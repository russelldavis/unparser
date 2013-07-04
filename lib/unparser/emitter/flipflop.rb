module Unparser
  class Emitter
    class FlipFlop < self

      MAP = IceNine.deep_freeze(
        :iflipflop => '..',
        :eflipflop => '...',
      ).freeze

      handle *MAP.keys

      children :left, :right

    private

      # Perform dispatch
      #
      # @return [undefined]
      #
      # @api private
      #
      def dispatch
        parentheses { visit(left) }
        write(MAP.fetch(node.type))
        parentheses { visit(right) }
      end
    end # FlipFLop
  end # Emitter
end # Unparser
