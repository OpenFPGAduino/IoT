all:
	cp vendor.mak Gizwits-GAgent/arch/linux/
	cd Gizwits-GAgent/arch/linux/; make
	cd mqtt; make
	cd oray; make
clean:
	cd Gizwits-GAgent/arch/linux/; make clean
	cd mqtt; make clean 
	cd oray; make clean	

format: clean
	find . -name "*.c" -exec astyle -n {} \;
	find . -name "*.h" -exec astyle -n {} \;	
	find . -name "*.js" -exec js-beautify -r {} \;	 
	find . -name "*.html" -exec html-beautify -r {} \;	 
	find . -name "*.css" -exec css-beautify -r {} \;
