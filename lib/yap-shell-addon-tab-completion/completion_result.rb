module YapShellAddonTabCompletion
  class CompletionResult
    attr_accessor :text, :type, :descriptive_text

    def initialize(text:, type:, descriptive_text: nil)
      @descriptive_text = descriptive_text || text
      @text = text
      @type = type
    end

    def ==(other)
      other.is_a?(self.class) && @text == other.text && @type == other.type
    end

    def <=>(other)
      @text <=> other.text
    end

    def to_s
      @text.to_s
    end
    alias_method :to_str, :to_s
    alias_method :inspect, :to_s
  end
end
