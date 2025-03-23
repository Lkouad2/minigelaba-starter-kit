GML=gml/monlangage-gml.xml

xsd:
	xsltproc scripts/gml2xsd.xsl $(GML) > monlangage.xsd

doc:
	xsltproc scripts/gml2doc.xsl $(GML) > documentation.html

example:
	xsltproc scripts/gml2example.xsl $(GML) > exemple.xml

all: xsd doc example
