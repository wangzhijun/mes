package provide grab 1.0

class Grab {
    private variable stack {}
    public method set { w }
    public method release { w }
}

body Grab::set { w } {
    lappend stack $w
    if {[catch {grab set $w}]} {
	puts "Grab failed!"
    }
}

body Grab::release { w } {
    grab release $w
    ::set stack [lrange $stack 0 end-1]
    if {[llength $stack] != 0} {
	grab set [lindex $stack end]
    }
}
