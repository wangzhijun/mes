package require Itcl
package require Itk

namespace import itcl::*
namespace import itk::*

source dialog.tcl
source message.tcl
source grab.tcl

Grab grabber
Message .m

.m configure \
    -type "2button" \
    -title "Error" \
    -button1of2 "Dismiss" \
    -button2of2 "good" \
    -text "Sbtb has a problem"

if {[.m confirm]} {
    puts "yes"
} else {
    puts "no"
}

