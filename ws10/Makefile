RAW   := raw.csv
TRIM  := trimmed.csv
CLEAN := clean.csv

.PHONY: all tidy           
all: $(CLEAN)


$(TRIM): $(RAW)
	@echo " building $@ from $<"
	@cut -d',' -f1,3,5 $< > $@


$(CLEAN): $(TRIM)
	@echo "  filtering $@"
	@{ \
		head -n 1 $< ; \
		tail -n +2 $< | awk -F',' 'NF==3 && $$2!="" && $$3!=""' ; \
	} > $@


tidy:
	@echo "➜  deleting intermediate files"
	@rm -f $(TRIM) $(CLEAN)