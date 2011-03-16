#!/usr/bin/ruby

#########################################################################
#
#  The Contents of this file are made available subject to the terms of
#  the Sun Industry Standards Source License Version 1.2
#
#  Sun Microsystems Inc., March, 2006
#
#
#  Sun Industry Standards Source License Version 1.2
#  =================================================
#  The contents of this file are subject to the Sun Industry Standards
#  Source License Version 1.2 (the "License"); You may not use this file
#  except in compliance with the License. You may obtain a copy of the
#  License at http://gridengine.sunsource.net/Gridengine_SISSL_license.html
#
#  Software provided under this License is provided on an "AS IS" basis,
#  WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING,
#  WITHOUT LIMITATION, WARRANTIES THAT THE SOFTWARE IS FREE OF DEFECTS,
#  MERCHANTABLE, FIT FOR A PARTICULAR PURPOSE, OR NON-INFRINGING.
#  See the License for the specific provisions governing your rights and
#  obligations concerning the Software.
#
#   The Initial Developer of the Original Code is: Sun Microsystems, Inc.
#
#   Copyright: 2006 by Sun Microsystems, Inc.
#
#   All Rights Reserved.
#
#########################################################################
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'drmaa'

class Sleeper < DRMAA::JobTemplate
	def initialize
		super
		self.command = "/bin/sleep"
		self.arg     = ["5"]
		self.stdout  = ":/dev/null"
		self.join    = true
	end
end

version = DRMAA.version
drm = DRMAA.drm_system
impl = DRMAA.drmaa_implementation
contact = DRMAA.contact
puts "DRMAA #{drm} v #{version} impl #{impl} contact #{contact}"

session = DRMAA::Session.new

t = Sleeper.new

#jobid = session.run(t) 
#puts "job: " + jobid

session.run_bulk(t, 1, 20).each { |job| 
	puts "job: " + job 
}

session.wait_each{ |info|
	if ! info.wifexited?
		puts "failed: " + info.job
	else	
		puts info.job + " returned with " + info.wexitstatus.to_s
	end
}

exit 0
