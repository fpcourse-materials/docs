all: slides

slides:
	git pull origin main:main
	make clean-slides
	make sem-all
	make sem-all
	make clean-slides

clean-slides:
	rm -i --force flags.tex
	rm -i --force *.aux *.log *.nav *.out
	rm -i --force *.snm *.synctex.gz *.toc *.vrb *.pyg
	rm -ri --force _minted*
	rm -i --force *.synctex* *-pause.tex

clean-all: clean-slides
	rm -i --force *.pdf

sem-all: sem6 sem5 sem4 sem3 sem2 sem1

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

handouttrue:
	echo "\handouttrue" > flags.tex

handoutfalse:
	echo "\handoutfalse" > flags.tex
