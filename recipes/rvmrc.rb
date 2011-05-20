if config['rubyVersion'] && config['gemSet']
  say_wizard "Using RVM: #{config['rubyVersion'] + config['gemSet']} ..."
  run "echo 'rvm #{config['rubyVersion'] + config ['gemSet']}' > .rvmrc" 
end

__END__
name: .rvmrc
description: "Allow the user to specify a version of ruby to use with the project."
author: devinmrn
tags: [other]

config:
  - rubyVersion:
      type: string
      prompt: "Which ruby version are you using with RVM (Ex. 1.9.2-p180)?"
  - gemSet:
      type: string
      prompt: "Which gemset do you want to use? (Ex. @default)"
