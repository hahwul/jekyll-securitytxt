# frozen_string_literal: true

require_relative "securitytxt/version"
require "jekyll"

module Jekyll
  module Securitytxt
    # Jekyll plugin for security.txt
    class Generator < Jekyll::Generator
      safe true
      priority :lowest

      # Plugin entry point.
      def generate(site)
        @site = site
        @site.pages << verification_file unless a_verification_file_exist?
      end

      private

      # Check if a security.txt file already exists in the source tree.
      def a_verification_file_exist?
        file_pattern = %r{.well-known/security\.txt?}
        exists = @site.static_files.any? { |p| p.url =~ file_pattern }
        warn_msg = "Found a security.txt file in source tree matching /#{file_pattern.source}/; not generating one..."
        Jekyll.logger.warn "Jekyll-securitytxt", warn_msg if exists
        exists
      end

      # Get path of the template file.
      def source_path(file = "template.html")
        File.expand_path file.to_s, __dir__
      end

      # Path of the security.txt file.
      def securitytxt_path
        ".well-known/security.txt"
      end

      # Construct a file object from a template with content that can be added to generated pages
      def verification_file
        Jekyll.logger.info "Jekyll-securitytxt", "Generating #{securitytxt_path}"
        page = PageWithoutAFile.new(@site, __dir__, "", securitytxt_path)
        page.content = File.read(source_path)
        page.data["layout"] = nil
        page
      end
    end
  end
end
