#!/usr/bin/env ruby

require 'nokogiri'
require 'open-uri'

require_relative '../config/environment'

def kds_program_import
  base_url = 'http://kds.knowit.no'
  program_url = "#{base_url}/program.html"

  doc = Nokogiri::HTML.parse(open(program_url).read)

  speakers = doc.css('span.speaker').map(&:inner_html)
  talks = doc.css('span.title a').map(&:inner_html)
  hrefs = doc.css('span.title a').map { |a| a.attr('href') }

  program = speakers.zip(talks)

  program.each_with_index do |p, i|
    attrs = {
      speaker: p[0],
      title: p[1],
      href: [base_url, '/', hrefs[i]].join
    }

    Talk.create!(attrs) unless Talk.find_by_title(attrs[:title])
  end
end

kds_program_import if $0 == __FILE__
