module Jekyll
  class GithubRepo < Liquid::Tag

    def initialize(name, repository, tokens)
      super
      @repository = repository.strip

    end

    def render(context)
      if @repository.kind_of?(Array) 
        result = ""
        @repository.each do |repo|
          result << %(<div class="github-widget" data-repo="#{repo}"></div>)
        end
        result
      else
        %(<div class="github-widget" data-repo="#{@repository}"></div>)
      end
    end
  end
end

Liquid::Template.register_tag('githubrepo', Jekyll::GithubRepo)
