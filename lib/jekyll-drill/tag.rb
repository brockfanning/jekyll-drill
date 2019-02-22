require "jekyll"

# https://jekyllrb.com/docs/plugins/#tags

module JekyllDrill
  class Tag < Liquid::Tag
    def initialize(tag_name, text, tokens)
      super
      @text = text
    end

    def render(context)
      # Outputs the content of the tag.
    end
  end
end

Liquid::Template.register_tag('drill', JekyllDrill::Tag)
