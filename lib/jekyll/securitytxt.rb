# frozen_string_literal: true

require_relative "securitytxt/version"
require "jekyll"

module Jekyll
  module Securitytxt
    # Jekyll plugin for generating security.txt
    class Generator < Jekyll::Generator
      safe true
      priority :lowest

      # Plugin entry point.
      def generate(site)
        @site = site
        @site.pages << create_security_txt_file unless security_txt_file_exists?
      end

      private

      # Check if a security.txt file already exists in the source tree.
      def security_txt_file_exists?
        file_pattern = %r{.well-known/security\.txt?}
        exists = @site.static_files.any? { |p| p.url =~ file_pattern }
        if exists
          Jekyll.logger.warn "Jekyll-securitytxt",
                             "Found a security.txt file in source tree matching /#{file_pattern.source}/; not generating one..."
        end
        exists
      end

      # Get path of the template file.
      def template_file_path(file = "template.html")
        File.expand_path(file.to_s, __dir__)
      end

      # Path of the security.txt file.
      def security_txt_file_path
        ".well-known/security.txt"
      end

      # Construct a file object from a template with content that can be added to generated pages
      def create_security_txt_file
        Jekyll.logger.info "Jekyll-securitytxt", "Generating #{security_txt_file_path}"
        page = PageWithoutAFile.new(@site, __dir__, "", security_txt_file_path)
        page.content = File.read(template_file_path)
        page.data["layout"] = nil
        page
      end
    end
  end
end
