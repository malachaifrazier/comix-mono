# frozen_string_literal: true

# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.js"
pin "@hotwired/stimulus", to: "https://ga.jspm.io/npm:@hotwired/stimulus@3.0.1/dist/stimulus.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"
pin "tailwindcss-stimulus-components", to: "https://ga.jspm.io/npm:tailwindcss-stimulus-components@3.0.3/dist/tailwindcss-stimulus-components.modern.js"
pin "trix"
pin "@rails/actiontext", to: "actiontext.js"
pin "@rails/activestorage", to: "https://ga.jspm.io/npm:@rails/activestorage@6.1.5/app/assets/javascripts/activestorage.js"
pin "vanilla-nested", to: "vanilla_nested.js", preload: true
