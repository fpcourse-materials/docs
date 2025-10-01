all: slides

slides:
	git pull origin main:main
	make clean-slides
	make sem-all
	make sem-all
	make clean-slides

clean-meta:
	rm -i --force flags.tex
	rm -i --force *.aux *.log *.nav *.out
	rm -i --force *.snm *.synctex.gz *.toc *.vrb *.pyg
	rm -ri --force _minted*
	rm -i --force *.synctex* *-pause.tex
	rm -i --force *.bbl *.blg

clean-all: clean-meta
	rm -i --force *.pdf

sem-all: sem14 sem13 sem12 sem11 sem10 sem9 sem8 sem7 sem6 sem5 sem4 sem3 sem2 sem1

sem1: sem1h sem1p

sem1h:
	sh build-slides.sh 1 01 handout

sem1p:
	sh build-slides.sh 1 01 pause

sem2: sem2h sem2p

sem2h:
	sh build-slides.sh 1 02 handout

sem2p:
	sh build-slides.sh 1 02 pause

sem3: sem3h sem3p

sem3h:
	sh build-slides.sh 1 03 handout

sem3p:
	sh build-slides.sh 1 03 pause

sem4: sem4h sem4p

sem4h:
	sh build-slides.sh 1 04 handout

sem4p:
	sh build-slides.sh 1 04 pause

sem5: sem5h sem5p

sem5h:
	sh build-slides.sh 1 05 handout

sem5p:
	sh build-slides.sh 1 05 pause

sem6: sem6h sem6p

sem6h:
	sh build-slides.sh 1 06 handout

sem6p:
	sh build-slides.sh 1 06 pause

sem7: sem7h sem7p

sem7h:
	sh build-slides.sh 1 07 handout

sem7p:
	sh build-slides.sh 1 07 pause

sem8: sem8h sem8p

sem8h:
	sh build-slides.sh 1 08 handout

sem8p:
	sh build-slides.sh 1 08 pause

sem9: sem9h sem9p

sem9h:
	sh build-slides.sh 1 09 handout

sem9p:
	sh build-slides.sh 1 09 pause

sem10: sem10h sem10p

sem10h:
	sh build-slides.sh 1 10 handout

sem10p:
	sh build-slides.sh 1 10 pause

sem11: sem11h sem11p

sem11h:
	sh build-slides.sh 1 11 handout

sem11p:
	sh build-slides.sh 1 11 pause

sem12: sem12h sem12p

sem12h:
	sh build-slides.sh 1 12 handout

sem12p:
	sh build-slides.sh 1 12 pause

sem13: sem13h sem13p

sem13h:
	sh build-slides.sh 1 13 handout

sem13p:
	sh build-slides.sh 1 13 pause

sem14: sem14h sem14p

sem14h:
	sh build-slides.sh 1 14 handout

sem14p:
	sh build-slides.sh 1 14 pause

sem-fin: sem-fin-h sem-fin-p

sem-fin-h:
	sh build-slides.sh 1 fin handout

sem-fin-p:
	sh build-slides.sh 1 fin pause

handouttrue:
	echo "\handouttrue" > flags.tex

handoutfalse:
	echo "\handoutfalse" > flags.tex
