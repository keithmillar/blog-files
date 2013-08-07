require 'cgi'

module Fiftyfive
  module Liquid
    class EmbedCode < ::Liquid::Tag
      def initialize(tag_name, filename, tokens)
        @filename = filename.strip
        @codefile = "_code/#{@filename}"
        super
      end
      # get the file
      def fetch_file(raw_text)
        File.read(raw_text)
      end
      # Render the code into html tags
      def render(context)
        mycode = "#{@codefile}"
        <<MARKUP.strip
<pre><code>#{CGI.escapeHTML(fetch_file(mycode))}</code></pre>
MARKUP
      end
    end
  end
end

Liquid::Template.register_tag('gist', Fiftyfive::Liquid::EmbedCode)

