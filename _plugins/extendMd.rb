# -*- coding: utf-8 -*-
module Jekyll
  module Converters
    class Markdown
      class RedcarpetParser
        alias_method :old_convert, :convert


        def convert(content)
          @renderer.class_eval do
            def paragraph(text)
              # 定義リストの代わり
              matched = text.scan(/(.+)\n^\:\s*(.+)\n?/)
              unless matched.empty?
                return "<dl>#{matched.map{|i| dlitem(i[0], i[1])}.join}</dl>"
              end
              # HTMLで改行されないようにする
              return "\n<p>#{text.gsub(/\n/, '')}</p>\n"
            end

            private
            def dlitem(dt, dd)
              "<dt>#{dt}</dt><dd>#{dd}</dd>"
            end
          end

          old_convert(content)
        end
      end
    end
  end
end
