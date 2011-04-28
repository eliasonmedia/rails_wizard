gem 'compass'
   
after_bundler do
  generate_command = "compass init rails . "
  if config['syntax'] = 'sass'
    generate_command += "--syntax sass "
  end
  if config['stylesheets'] = 'blueprint'
    generate_command += "--using blueprint "
  end
  run generate_command
end

__END__
name: Compass
description: "Install the compass stylesheets into the project."
author: devinmrn

category: assets
tags: [css, sass, framework]

config:
  - syntax:
      type: multiple_choice
      prompt: "What syntax do you want your files in?"
      choices:
        - ["CSS based (SCSS)", scss]
        - ["Indent based (Sass)", sass]
  - stylesheet:
      type: multiple_choice
      prompt: "What starter stylesheets do you want?"
      choices:
        - ["Compass's Starter Stylesheets", compass]
        - ["Blueprints's Starter Stylesheets", blueprint]
