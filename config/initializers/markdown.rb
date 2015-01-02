$markdown = Redcarpet::Markdown.new(
    Redcarpet::Render::HTML, 
    autolink: true, 
    tables: true,
    escape_html: true,
    safe_links_only: true,
    with_toc_data: true)