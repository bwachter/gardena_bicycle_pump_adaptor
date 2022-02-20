Q?=@

all: gardena_bicycle_pump_adaptor.stl

%.stl: %.scad
	$(Q) echo "EXPORT $@"
	$(Q) openscad -o $@ $<
