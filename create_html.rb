stylesheet_one = File.read("_stylesheets/first_stylesheet.txt")
stylesheet_two = File.read("_stylesheets/second_stylesheet.txt")

html_one = "<html>
  <head>
    <title>My Blog</title>
    #{stylesheet_one}
    <meta charset='utf-8'>
    <meta name='robots' content='noindex, nofollow, nosnippet, noarchive, noimageindex'>
  </head>
  <body>
    {{ content }}
  </body>
</html>"

html_two = "<html>
  <head>
    <title>My Blog</title>
    #{stylesheet_two}
    <meta charset='utf-8'>
    <meta name='robots' content='noindex, nofollow, nosnippet, noarchive, noimageindex'>
  </head>
  <body>
    {{ content }}
  </body>
</html>"

File.open("_includes/option1.html", "w") { |f|
  f.puts html_one
}

File.open("_includes/option2.html", "w") { |f|
  f.puts html_two
}
