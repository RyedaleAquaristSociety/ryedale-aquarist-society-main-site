module LegacyHtmlRedirects
  class Generator < Jekyll::Generator
    safe true
    priority :highest

    def generate(site)
      (site.pages + site.posts.docs).each do |doc|
        url = doc.url
        next if url == "/" || !url.end_with?("/")
        next unless doc.respond_to?(:output_ext) && doc.output_ext == ".html"

        old_url = "#{url.chomp("/")}.html"
        doc.data["redirect_from"] = Array(doc.data["redirect_from"]) | [old_url]
      end
    end
  end
end
