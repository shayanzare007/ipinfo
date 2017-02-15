require_relative "ipinfo/version"
require "json"
require "open-uri"
require "colorize"
require "net/http"

module Ipinfo
  def ip_info(ip)
    url = "http://ipinfo.io/"
    res = Net::HTTP.get_response(URI(url+ip))
    #parse json
    parsed = JSON.parse(res.body)
    #print ip
    print "[*] Ip Address : ".blue
    puts parsed["ip"].red

    #print hostname
    print "\n[*] HostName : ".blue
    puts parsed["hostname"].red

    #print city name
    print "\n[*] City : ".blue
    puts parsed["city"].red

    #print region name
    print "\n[*] Region : ".blue
    puts parsed["region"].red

    #print country name
    print "\n[*] Country : ".blue
    puts parsed["country"].red

    #print locations
    print "\n[*] Locations : ".blue
    puts parsed["loc"].red

    #print org
    print "\n[*] Org : ".blue
    puts parsed["org"].red
  end
  #my ip info
  def my_ip
    url = "http://ipinfo.io/"
    res = Net::HTTP.get_response(URI(url))
    #parse json
    parsed = JSON.parse(res.body)
    #print ip
    print "[*] Ip Address : ".blue
    puts parsed["ip"].red

    #print hostname
    print "\n[*] HostName : ".blue
    puts parsed["hostname"].red

    #print city name
    print "\n[*] City : ".blue
    puts parsed["city"].red

    #print region name
    print "\n[*] Region : ".blue
    puts parsed["region"].red

    #print country name
    print "\n[*] Country : ".blue
    puts parsed["country"].red

    #print locations
    print "\n[*] Locations : ".blue
    puts parsed["loc"].red

    #print org
    print "\n[*] Org : ".blue
    puts parsed["org"].red
  end
end
