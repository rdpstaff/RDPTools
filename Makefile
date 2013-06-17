MAIN_JARS=Clustering SequenceMatch classifier

.PHONY: all
.DEFAULT: all

all: Clustering/dist/Clustering.jar SequenceMatch/dist/SequenceMatch.jar classifier/dist/classifier.jar

Clustering/dist/Clustering.jar: Clustering/nbproject/build-impl.xml
	ant -f Clustering/build.xml jar

SequenceMatch/dist/SequenceMatch.jar: SequenceMatch/nbproject/build-impl.xml
	ant -f SequenceMatch/build.xml jar

classifier/dist/classifier.jar: classifier/nbproject/build-impl.xml
	ant -f classifier/build.xml jar
