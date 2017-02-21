require 'asciidoctor/extensions'

Asciidoctor::Extensions.register do
  block_macro do
    named :operation
    process do |parent, reader, attrs|
      wrapper = create_open_block parent, [], {}
      content = %q(
=== Subsection

Some more content
)
      parse_content wrapper, content
      warn wrapper.blocks
      wrapper
    end
  end
end
