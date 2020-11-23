#!/usr/bin/ruby
# $Id$

require 'find'
require 'fileutils'

SRCPATH='U:/DCIM'
#SRCPATH='C:/Documents and Settings/heiwa2/My Documents/My Pictures/DCIM'
DSTPATH='D:/Users/heiwa2/Pictures/DCIM'

f = s = d = nil
a = []

# pass 1 - scan files

Find.find( SRCPATH ) do |f|
  s = File.stat f
  if s.file?
    next unless /.(?:JPE?G|DNG|NEF|AVI|MOV|MPO|RAF)$/i =~ f
    a << f
  elsif s.directory?
    if /\d{4}-\d{1,2}-\d{1,2}$/ =~ f
      Find.prune
      next
    end
  end
end

# pass 2 - copy files
a.sort.each do |f|
  d = DSTPATH + File.stat(f).mtime.strftime('/%Y/%m/%Y-%m-%d')
  unless FileTest.directory? d
    unless FileTest.exist? d
      FileUtils.mkdir_p d
    else
      next
    end
  end

  f2 = "/"+f[SRCPATH.length+1,f.length].gsub('/','-')

  #puts f+"->"+d+f2

  next if FileTest.exist? d+f2

  FileUtils.cp( f, d+f2, {:verbose => true} )

end
