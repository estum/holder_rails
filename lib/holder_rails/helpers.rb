module HolderRails
  module Helpers
    def holder_tag(size, text='', theme=nil, html_options={})
      size = "#{size}x#{size}" unless size =~ /\A\d+[p%]?x\d+\z/
      text = text.to_s.empty? ? size : text
      tag :img, html_options.reverse_merge!(data: { src: "holder.js/#{size}/text:#{text}/#{theme}" }, src: '')
    end
  end
end
