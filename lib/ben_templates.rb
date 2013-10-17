require 'will_paginate'

module BenTemplates
  class Railtie < Rails::Railtie
    config.app_generators do |g|
      g.templates.unshift File::expand_path('../templates', __FILE__)
    end
  end

  module Willpaginate
    class Engine < ::Rails::Engine
    end
  end
end

