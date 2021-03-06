####################################################
# Makefile for project deleteme 
# Created: Sat Sep  3 08:28:52 MDT 2016
#
# Manages building the gatecountaudit application.
#    Copyright (C) 2016  Andrew Nisbet
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
# MA 02110-1301, USA.
#
# Written by Andrew Nisbet at Edmonton Public Library
# Rev: 
#      0.1 - This project has moved to production on ils@epl-ils.epl.ca:/home/ils/gatecounts
#            See: ilsdev@ilsdev1:/home/ilsdev/projects/gatecounts/Makfile for more information
#            about how this script is distributed. Basically that Makefile copies it to 
#            the new production directory on the new production machine above, at the time I 
#            wrote this Thu Jan  3 15:01:46 MST 2019.
#      0.0 - Dev. 
####################################################
# This application runs native on ILSdev1@epl.ca and should be scheduled from there.
LOCAL=~/projects/gatecountaudit
APP=gatecountaudit.pl

.PHONY: test head clean
test:
	perl -c ${APP}
install: ${LOCAL}/${APP} test
	scp ${LOCAL}/${APP} ils@epl-ils.epl.ca:/home/ils/gatecounts/


