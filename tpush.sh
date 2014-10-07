#!/bin/bash

export SHELL=$(type -p bash)
function tpush {
	java -cp lib/saxon/saxon9.jar net.sf.saxon.Transform  $1 lib/xml-to-json.xsl | curl -d @- $2
}
export -f tpush
find $1 -name "TEST*.xml" -print0 | parallel -j8 -t -0I {} tpush {} $2


			   