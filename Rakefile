require "bundler/gem_tasks"

namespace :font do
  desc "Create font"
  task prepare: ["deps:check", :minify_svgs, :build_font, :cleanup]

  task :minify_svgs do
    # Optimize svgs.
    sh "svgo -f src/icons --output=optimized-icons --disable=removeViewBox"
  end

  task :build_font do
    # Building font.
    sh "bundle exec fontcustom compile"
  end

  task :cleanup do
    sh "rm -rf optimized-icons"
  end
end

namespace :deps do
  desc "Install dependencies with homebrew and NPM"
  task :install do
    sh "brew install fontforge --with-python"
    sh "brew install eot-utils"
    sh "npm install svgo -g"
    sh "bundle install"
  end

  task check: [:check_font_custom, :check_svgo]

  task :check_font_custom do
    unless system("fontcustom --version")
      sh "bundle install"
    end
  end

  task :check_svgo do
    unless system("svgo --version")
      fail "svgo doesn't seem to be installed."
    end
  end
end
