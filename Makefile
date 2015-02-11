MAIN_JARS=Clustering SequenceMatch classifier

.PHONY: all
.DEFAULT: all

all: deploy

deploy: lib Clustering/dist/Clustering.jar SequenceMatch/dist/SequenceMatch.jar classifier/dist/classifier.jar Framebot/dist/FrameBot.jar AbundanceStats/dist/AbundanceStats.jar ProbeMatch/dist/ProbeMatch.jar KmerFilter/dist/KmerFilter.jar Xander-HMMgs/dist/hmmgs.jar
	-(cp Framebot/dist/FrameBot.jar Clustering/dist/Clustering.jar SequenceMatch/dist/SequenceMatch.jar classifier/dist/classifier.jar AbundanceStats/dist/AbundanceStats.jar ReadSeq/dist/ReadSeq.jar SeqFilters/dist/SeqFilters.jar ProbeMatch/dist/ProbeMatch.jar KmerFilter/dist/KmerFilter.jar Xander-HMMgs/dist/hmmgs.jar AlignmentTools/dist/AlignmentTools.jar ./; cp -r */dist/lib/* lib/; rm -r classifier/dist/)

lib:
	mkdir lib

Clustering/dist/Clustering.jar: Clustering/nbproject/build-impl.xml
	ant -f Clustering/build.xml jar

Framebot/dist/FrameBot.jar: Framebot/nbproject/build-impl.xml
	ant -f Framebot/build.xml jar

SequenceMatch/dist/SequenceMatch.jar: SequenceMatch/nbproject/build-impl.xml
	ant -f SequenceMatch/build.xml jar

classifier/dist/classifier.jar: classifier/nbproject/build-impl.xml
	ant -f classifier/build.xml jar
	rm -r classifier/build/

AbundanceStats/dist/AbundanceStats.jar: AbundanceStats/nbproject/build-impl.xml
	ant -f AbundanceStats/build.xml jar

KmerFilter/dist/KmerFilter.jar: KmerFilter/nbproject/build-impl.xml
	ant -f KmerFilter/build.xml jar

Xander-HMMgs/dist/hmmgs.jar: Xander-HMMgs/nbproject/build-impl.xml
	ant -f Xander-HMMgs/build.xml jar

clean:
	rm -r */dist/; rm lib/*; rm *jar
