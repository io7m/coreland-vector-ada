# auto generated - do not edit

default: all

all:\
UNIT_TESTS/add_double UNIT_TESTS/add_double.ali UNIT_TESTS/add_double.o \
UNIT_TESTS/add_single UNIT_TESTS/add_single.ali UNIT_TESTS/add_single.o \
UNIT_TESTS/addsc_double UNIT_TESTS/addsc_double.ali UNIT_TESTS/addsc_double.o \
UNIT_TESTS/addsc_single UNIT_TESTS/addsc_single.ali UNIT_TESTS/addsc_single.o \
UNIT_TESTS/div_double UNIT_TESTS/div_double.ali UNIT_TESTS/div_double.o \
UNIT_TESTS/div_single UNIT_TESTS/div_single.ali UNIT_TESTS/div_single.o \
UNIT_TESTS/divsc_double UNIT_TESTS/divsc_double.ali UNIT_TESTS/divsc_double.o \
UNIT_TESTS/divsc_single UNIT_TESTS/divsc_single.ali UNIT_TESTS/divsc_single.o \
UNIT_TESTS/mult_double UNIT_TESTS/mult_double.ali UNIT_TESTS/mult_double.o \
UNIT_TESTS/mult_single UNIT_TESTS/mult_single.ali UNIT_TESTS/mult_single.o \
UNIT_TESTS/multsc_double UNIT_TESTS/multsc_double.ali \
UNIT_TESTS/multsc_double.o UNIT_TESTS/multsc_single \
UNIT_TESTS/multsc_single.ali UNIT_TESTS/multsc_single.o UNIT_TESTS/sub_double \
UNIT_TESTS/sub_double.ali UNIT_TESTS/sub_double.o UNIT_TESTS/sub_single \
UNIT_TESTS/sub_single.ali UNIT_TESTS/sub_single.o UNIT_TESTS/subsc_double \
UNIT_TESTS/subsc_double.ali UNIT_TESTS/subsc_double.o UNIT_TESTS/subsc_single \
UNIT_TESTS/subsc_single.ali UNIT_TESTS/subsc_single.o UNIT_TESTS/sum_double \
UNIT_TESTS/sum_double.ali UNIT_TESTS/sum_double.o UNIT_TESTS/sum_single \
UNIT_TESTS/sum_single.ali UNIT_TESTS/sum_single.o UNIT_TESTS/zero_double \
UNIT_TESTS/zero_double.ali UNIT_TESTS/zero_double.o UNIT_TESTS/zero_single \
UNIT_TESTS/zero_single.ali UNIT_TESTS/zero_single.o vector-add.ali vector-add.o \
vector-add_scalar.ali vector-add_scalar.o vector-angle.ali vector-angle.o \
vector-angle_norm.ali vector-angle_norm.o vector-dist.ali vector-dist.o \
vector-div.ali vector-div.o vector-div_scalar.ali vector-div_scalar.o \
vector-dot_product.ali vector-dot_product.o vector-magnitude.ali \
vector-magnitude.o vector-mult.ali vector-mult.o vector-mult_scalar.ali \
vector-mult_scalar.o vector-negate.ali vector-negate.o vector-normalize.ali \
vector-normalize.o vector-sub.ali vector-sub.o vector-sub_scalar.ali \
vector-sub_scalar.o vector-sum.ali vector-sum.o vector-zero.ali vector-zero.o \
vector.a vector.ali vector.o

# -- SYSDEPS start
libs-vector-S:
	@echo SYSDEPS vector-libs-S run create libs-vector-S 
	@(cd SYSDEPS/modules/vector-libs-S && ./run)


vector-libs-S_clean:
	@echo SYSDEPS vector-libs-S clean libs-vector-S 
	@(cd SYSDEPS/modules/vector-libs-S && ./clean)


sysdeps_clean:\
vector-libs-S_clean \


# -- SYSDEPS end


UNIT_TESTS/add_double:\
ada-bind ada-link UNIT_TESTS/add_double.ald UNIT_TESTS/add_double.ali \
vector.ali vector-add.ali
	./ada-bind UNIT_TESTS/add_double.ali
	./ada-link UNIT_TESTS/add_double UNIT_TESTS/add_double.ali

UNIT_TESTS/add_double.ali:\
ada-compile UNIT_TESTS/add_double.adb vector-add.ads
	./ada-compile UNIT_TESTS/add_double.adb

UNIT_TESTS/add_double.o:\
UNIT_TESTS/add_double.ali

UNIT_TESTS/add_single:\
ada-bind ada-link UNIT_TESTS/add_single.ald UNIT_TESTS/add_single.ali \
vector.ali vector-add.ali
	./ada-bind UNIT_TESTS/add_single.ali
	./ada-link UNIT_TESTS/add_single UNIT_TESTS/add_single.ali

UNIT_TESTS/add_single.ali:\
ada-compile UNIT_TESTS/add_single.adb vector-add.ads
	./ada-compile UNIT_TESTS/add_single.adb

UNIT_TESTS/add_single.o:\
UNIT_TESTS/add_single.ali

UNIT_TESTS/addsc_double:\
ada-bind ada-link UNIT_TESTS/addsc_double.ald UNIT_TESTS/addsc_double.ali \
vector.ali vector-add_scalar.ali
	./ada-bind UNIT_TESTS/addsc_double.ali
	./ada-link UNIT_TESTS/addsc_double UNIT_TESTS/addsc_double.ali

UNIT_TESTS/addsc_double.ali:\
ada-compile UNIT_TESTS/addsc_double.adb vector-add_scalar.ads
	./ada-compile UNIT_TESTS/addsc_double.adb

UNIT_TESTS/addsc_double.o:\
UNIT_TESTS/addsc_double.ali

UNIT_TESTS/addsc_single:\
ada-bind ada-link UNIT_TESTS/addsc_single.ald UNIT_TESTS/addsc_single.ali \
vector.ali vector-add_scalar.ali
	./ada-bind UNIT_TESTS/addsc_single.ali
	./ada-link UNIT_TESTS/addsc_single UNIT_TESTS/addsc_single.ali

UNIT_TESTS/addsc_single.ali:\
ada-compile UNIT_TESTS/addsc_single.adb vector-add_scalar.ads
	./ada-compile UNIT_TESTS/addsc_single.adb

UNIT_TESTS/addsc_single.o:\
UNIT_TESTS/addsc_single.ali

UNIT_TESTS/div_double:\
ada-bind ada-link UNIT_TESTS/div_double.ald UNIT_TESTS/div_double.ali \
vector.ali vector-div.ali
	./ada-bind UNIT_TESTS/div_double.ali
	./ada-link UNIT_TESTS/div_double UNIT_TESTS/div_double.ali

UNIT_TESTS/div_double.ali:\
ada-compile UNIT_TESTS/div_double.adb vector-div.ads
	./ada-compile UNIT_TESTS/div_double.adb

UNIT_TESTS/div_double.o:\
UNIT_TESTS/div_double.ali

UNIT_TESTS/div_single:\
ada-bind ada-link UNIT_TESTS/div_single.ald UNIT_TESTS/div_single.ali \
vector.ali vector-div.ali
	./ada-bind UNIT_TESTS/div_single.ali
	./ada-link UNIT_TESTS/div_single UNIT_TESTS/div_single.ali

UNIT_TESTS/div_single.ali:\
ada-compile UNIT_TESTS/div_single.adb vector-div.ads
	./ada-compile UNIT_TESTS/div_single.adb

UNIT_TESTS/div_single.o:\
UNIT_TESTS/div_single.ali

UNIT_TESTS/divsc_double:\
ada-bind ada-link UNIT_TESTS/divsc_double.ald UNIT_TESTS/divsc_double.ali \
vector.ali vector-div_scalar.ali
	./ada-bind UNIT_TESTS/divsc_double.ali
	./ada-link UNIT_TESTS/divsc_double UNIT_TESTS/divsc_double.ali

UNIT_TESTS/divsc_double.ali:\
ada-compile UNIT_TESTS/divsc_double.adb vector-div_scalar.ads
	./ada-compile UNIT_TESTS/divsc_double.adb

UNIT_TESTS/divsc_double.o:\
UNIT_TESTS/divsc_double.ali

UNIT_TESTS/divsc_single:\
ada-bind ada-link UNIT_TESTS/divsc_single.ald UNIT_TESTS/divsc_single.ali \
vector.ali vector-div_scalar.ali
	./ada-bind UNIT_TESTS/divsc_single.ali
	./ada-link UNIT_TESTS/divsc_single UNIT_TESTS/divsc_single.ali

UNIT_TESTS/divsc_single.ali:\
ada-compile UNIT_TESTS/divsc_single.adb vector-div_scalar.ads
	./ada-compile UNIT_TESTS/divsc_single.adb

UNIT_TESTS/divsc_single.o:\
UNIT_TESTS/divsc_single.ali

UNIT_TESTS/mult_double:\
ada-bind ada-link UNIT_TESTS/mult_double.ald UNIT_TESTS/mult_double.ali \
vector.ali vector-mult.ali
	./ada-bind UNIT_TESTS/mult_double.ali
	./ada-link UNIT_TESTS/mult_double UNIT_TESTS/mult_double.ali

UNIT_TESTS/mult_double.ali:\
ada-compile UNIT_TESTS/mult_double.adb vector-mult.ads
	./ada-compile UNIT_TESTS/mult_double.adb

UNIT_TESTS/mult_double.o:\
UNIT_TESTS/mult_double.ali

UNIT_TESTS/mult_single:\
ada-bind ada-link UNIT_TESTS/mult_single.ald UNIT_TESTS/mult_single.ali \
vector.ali vector-mult.ali
	./ada-bind UNIT_TESTS/mult_single.ali
	./ada-link UNIT_TESTS/mult_single UNIT_TESTS/mult_single.ali

UNIT_TESTS/mult_single.ali:\
ada-compile UNIT_TESTS/mult_single.adb vector-mult.ads
	./ada-compile UNIT_TESTS/mult_single.adb

UNIT_TESTS/mult_single.o:\
UNIT_TESTS/mult_single.ali

UNIT_TESTS/multsc_double:\
ada-bind ada-link UNIT_TESTS/multsc_double.ald UNIT_TESTS/multsc_double.ali \
vector.ali vector-mult_scalar.ali
	./ada-bind UNIT_TESTS/multsc_double.ali
	./ada-link UNIT_TESTS/multsc_double UNIT_TESTS/multsc_double.ali

UNIT_TESTS/multsc_double.ali:\
ada-compile UNIT_TESTS/multsc_double.adb vector-mult_scalar.ads
	./ada-compile UNIT_TESTS/multsc_double.adb

UNIT_TESTS/multsc_double.o:\
UNIT_TESTS/multsc_double.ali

UNIT_TESTS/multsc_single:\
ada-bind ada-link UNIT_TESTS/multsc_single.ald UNIT_TESTS/multsc_single.ali \
vector.ali vector-mult_scalar.ali
	./ada-bind UNIT_TESTS/multsc_single.ali
	./ada-link UNIT_TESTS/multsc_single UNIT_TESTS/multsc_single.ali

UNIT_TESTS/multsc_single.ali:\
ada-compile UNIT_TESTS/multsc_single.adb vector-mult_scalar.ads
	./ada-compile UNIT_TESTS/multsc_single.adb

UNIT_TESTS/multsc_single.o:\
UNIT_TESTS/multsc_single.ali

UNIT_TESTS/sub_double:\
ada-bind ada-link UNIT_TESTS/sub_double.ald UNIT_TESTS/sub_double.ali \
vector.ali vector-sub.ali
	./ada-bind UNIT_TESTS/sub_double.ali
	./ada-link UNIT_TESTS/sub_double UNIT_TESTS/sub_double.ali

UNIT_TESTS/sub_double.ali:\
ada-compile UNIT_TESTS/sub_double.adb
	./ada-compile UNIT_TESTS/sub_double.adb

UNIT_TESTS/sub_double.o:\
UNIT_TESTS/sub_double.ali

UNIT_TESTS/sub_single:\
ada-bind ada-link UNIT_TESTS/sub_single.ald UNIT_TESTS/sub_single.ali \
vector.ali vector-sub.ali
	./ada-bind UNIT_TESTS/sub_single.ali
	./ada-link UNIT_TESTS/sub_single UNIT_TESTS/sub_single.ali

UNIT_TESTS/sub_single.ali:\
ada-compile UNIT_TESTS/sub_single.adb
	./ada-compile UNIT_TESTS/sub_single.adb

UNIT_TESTS/sub_single.o:\
UNIT_TESTS/sub_single.ali

UNIT_TESTS/subsc_double:\
ada-bind ada-link UNIT_TESTS/subsc_double.ald UNIT_TESTS/subsc_double.ali \
vector.ali vector-sub_scalar.ali
	./ada-bind UNIT_TESTS/subsc_double.ali
	./ada-link UNIT_TESTS/subsc_double UNIT_TESTS/subsc_double.ali

UNIT_TESTS/subsc_double.ali:\
ada-compile UNIT_TESTS/subsc_double.adb vector-sub_scalar.ads
	./ada-compile UNIT_TESTS/subsc_double.adb

UNIT_TESTS/subsc_double.o:\
UNIT_TESTS/subsc_double.ali

UNIT_TESTS/subsc_single:\
ada-bind ada-link UNIT_TESTS/subsc_single.ald UNIT_TESTS/subsc_single.ali \
vector.ali vector-sub_scalar.ali
	./ada-bind UNIT_TESTS/subsc_single.ali
	./ada-link UNIT_TESTS/subsc_single UNIT_TESTS/subsc_single.ali

UNIT_TESTS/subsc_single.ali:\
ada-compile UNIT_TESTS/subsc_single.adb vector-sub_scalar.ads
	./ada-compile UNIT_TESTS/subsc_single.adb

UNIT_TESTS/subsc_single.o:\
UNIT_TESTS/subsc_single.ali

UNIT_TESTS/sum_double:\
ada-bind ada-link UNIT_TESTS/sum_double.ald UNIT_TESTS/sum_double.ali \
vector.ali vector-sum.ali
	./ada-bind UNIT_TESTS/sum_double.ali
	./ada-link UNIT_TESTS/sum_double UNIT_TESTS/sum_double.ali

UNIT_TESTS/sum_double.ali:\
ada-compile UNIT_TESTS/sum_double.adb vector-sum.ads
	./ada-compile UNIT_TESTS/sum_double.adb

UNIT_TESTS/sum_double.o:\
UNIT_TESTS/sum_double.ali

UNIT_TESTS/sum_single:\
ada-bind ada-link UNIT_TESTS/sum_single.ald UNIT_TESTS/sum_single.ali \
vector.ali vector-sum.ali
	./ada-bind UNIT_TESTS/sum_single.ali
	./ada-link UNIT_TESTS/sum_single UNIT_TESTS/sum_single.ali

UNIT_TESTS/sum_single.ali:\
ada-compile UNIT_TESTS/sum_single.adb vector-sum.ads
	./ada-compile UNIT_TESTS/sum_single.adb

UNIT_TESTS/sum_single.o:\
UNIT_TESTS/sum_single.ali

UNIT_TESTS/zero_double:\
ada-bind ada-link UNIT_TESTS/zero_double.ald UNIT_TESTS/zero_double.ali \
vector.ali vector-zero.ali
	./ada-bind UNIT_TESTS/zero_double.ali
	./ada-link UNIT_TESTS/zero_double UNIT_TESTS/zero_double.ali

UNIT_TESTS/zero_double.ali:\
ada-compile UNIT_TESTS/zero_double.adb vector-zero.ads
	./ada-compile UNIT_TESTS/zero_double.adb

UNIT_TESTS/zero_double.o:\
UNIT_TESTS/zero_double.ali

UNIT_TESTS/zero_single:\
ada-bind ada-link UNIT_TESTS/zero_single.ald UNIT_TESTS/zero_single.ali \
vector.ali vector-zero.ali
	./ada-bind UNIT_TESTS/zero_single.ali
	./ada-link UNIT_TESTS/zero_single UNIT_TESTS/zero_single.ali

UNIT_TESTS/zero_single.ali:\
ada-compile UNIT_TESTS/zero_single.adb vector-zero.ads
	./ada-compile UNIT_TESTS/zero_single.adb

UNIT_TESTS/zero_single.o:\
UNIT_TESTS/zero_single.ali

ada-bind:\
conf-adabind conf-systype conf-adatype conf-adafflist flags-cwd

ada-compile:\
conf-adacomp conf-adatype conf-systype conf-adacflags conf-adafflist flags-cwd

ada-link:\
conf-adalink conf-adatype conf-systype conf-aldfflist libs-vector-S

ada-srcmap:\
conf-adacomp conf-adatype conf-systype

ada-srcmap-all:\
ada-srcmap conf-adacomp conf-adatype conf-systype

cc-compile:\
conf-cc conf-cctype conf-systype

cc-link:\
conf-ld conf-ldtype conf-systype

cc-slib:\
conf-systype

conf-adatype:\
mk-adatype
	./mk-adatype > conf-adatype.tmp && mv conf-adatype.tmp conf-adatype

conf-cctype:\
conf-cc mk-cctype
	./mk-cctype > conf-cctype.tmp && mv conf-cctype.tmp conf-cctype

conf-ldtype:\
conf-ld mk-ldtype
	./mk-ldtype > conf-ldtype.tmp && mv conf-ldtype.tmp conf-ldtype

conf-systype:\
mk-systype
	./mk-systype > conf-systype.tmp && mv conf-systype.tmp conf-systype

mk-adatype:\
conf-adacomp conf-systype

mk-cctype:\
conf-cc conf-systype

mk-ctxt:\
mk-mk-ctxt
	./mk-mk-ctxt

mk-ldtype:\
conf-ld conf-systype conf-cctype

mk-mk-ctxt:\
conf-cc

mk-systype:\
conf-cc

vector-add.ali:\
ada-compile vector-add.adb vector-add.ads
	./ada-compile vector-add.adb

vector-add.o:\
vector-add.ali

vector-add_scalar.ali:\
ada-compile vector-add_scalar.adb vector-add_scalar.ads
	./ada-compile vector-add_scalar.adb

vector-add_scalar.o:\
vector-add_scalar.ali

vector-angle.ali:\
ada-compile vector-angle.adb vector-angle.ads
	./ada-compile vector-angle.adb

vector-angle.o:\
vector-angle.ali

vector-angle_norm.ali:\
ada-compile vector-angle_norm.adb vector-angle_norm.ads
	./ada-compile vector-angle_norm.adb

vector-angle_norm.o:\
vector-angle_norm.ali

vector-dist.ali:\
ada-compile vector-dist.adb vector-dist.ads
	./ada-compile vector-dist.adb

vector-dist.o:\
vector-dist.ali

vector-div.ali:\
ada-compile vector-div.adb vector-div.ads
	./ada-compile vector-div.adb

vector-div.o:\
vector-div.ali

vector-div_scalar.ali:\
ada-compile vector-div_scalar.adb vector-div_scalar.ads
	./ada-compile vector-div_scalar.adb

vector-div_scalar.o:\
vector-div_scalar.ali

vector-dot_product.ali:\
ada-compile vector-dot_product.adb vector-dot_product.ads
	./ada-compile vector-dot_product.adb

vector-dot_product.o:\
vector-dot_product.ali

vector-magnitude.ali:\
ada-compile vector-magnitude.adb vector-magnitude.ads
	./ada-compile vector-magnitude.adb

vector-magnitude.o:\
vector-magnitude.ali

vector-mult.ali:\
ada-compile vector-mult.adb vector-mult.ads
	./ada-compile vector-mult.adb

vector-mult.o:\
vector-mult.ali

vector-mult_scalar.ali:\
ada-compile vector-mult_scalar.adb vector-mult_scalar.ads
	./ada-compile vector-mult_scalar.adb

vector-mult_scalar.o:\
vector-mult_scalar.ali

vector-negate.ali:\
ada-compile vector-negate.adb vector-negate.ads
	./ada-compile vector-negate.adb

vector-negate.o:\
vector-negate.ali

vector-normalize.ali:\
ada-compile vector-normalize.adb vector-normalize.ads
	./ada-compile vector-normalize.adb

vector-normalize.o:\
vector-normalize.ali

vector-sub.ali:\
ada-compile vector-sub.adb
	./ada-compile vector-sub.adb

vector-sub.o:\
vector-sub.ali

vector-sub_scalar.ali:\
ada-compile vector-sub_scalar.adb vector-sub_scalar.ads
	./ada-compile vector-sub_scalar.adb

vector-sub_scalar.o:\
vector-sub_scalar.ali

vector-sum.ali:\
ada-compile vector-sum.adb vector-sum.ads
	./ada-compile vector-sum.adb

vector-sum.o:\
vector-sum.ali

vector-zero.ali:\
ada-compile vector-zero.adb vector-zero.ads
	./ada-compile vector-zero.adb

vector-zero.o:\
vector-zero.ali

vector.a:\
cc-slib vector.sld vector-add.o vector-add_scalar.o vector-angle.o \
vector-angle_norm.o vector-dist.o vector-div.o vector-div_scalar.o \
vector-dot_product.o vector-magnitude.o vector-mult.o vector-mult_scalar.o \
vector-negate.o vector-normalize.o vector-sub.o vector-sub_scalar.o \
vector-sum.o vector-zero.o vector.o
	./cc-slib vector vector-add.o vector-add_scalar.o vector-angle.o \
	vector-angle_norm.o vector-dist.o vector-div.o vector-div_scalar.o \
	vector-dot_product.o vector-magnitude.o vector-mult.o vector-mult_scalar.o \
	vector-negate.o vector-normalize.o vector-sub.o vector-sub_scalar.o \
	vector-sum.o vector-zero.o vector.o

vector.ali:\
ada-compile vector.ads
	./ada-compile vector.ads

vector.o:\
vector.ali

clean-all: sysdeps_clean obj_clean ext_clean
clean: obj_clean
obj_clean:
	rm -f UNIT_TESTS/add_double UNIT_TESTS/add_double.ali UNIT_TESTS/add_double.o \
	UNIT_TESTS/add_single UNIT_TESTS/add_single.ali UNIT_TESTS/add_single.o \
	UNIT_TESTS/addsc_double UNIT_TESTS/addsc_double.ali UNIT_TESTS/addsc_double.o \
	UNIT_TESTS/addsc_single UNIT_TESTS/addsc_single.ali UNIT_TESTS/addsc_single.o \
	UNIT_TESTS/div_double UNIT_TESTS/div_double.ali UNIT_TESTS/div_double.o \
	UNIT_TESTS/div_single UNIT_TESTS/div_single.ali UNIT_TESTS/div_single.o \
	UNIT_TESTS/divsc_double UNIT_TESTS/divsc_double.ali UNIT_TESTS/divsc_double.o \
	UNIT_TESTS/divsc_single UNIT_TESTS/divsc_single.ali UNIT_TESTS/divsc_single.o \
	UNIT_TESTS/mult_double UNIT_TESTS/mult_double.ali UNIT_TESTS/mult_double.o \
	UNIT_TESTS/mult_single UNIT_TESTS/mult_single.ali UNIT_TESTS/mult_single.o \
	UNIT_TESTS/multsc_double UNIT_TESTS/multsc_double.ali \
	UNIT_TESTS/multsc_double.o UNIT_TESTS/multsc_single \
	UNIT_TESTS/multsc_single.ali UNIT_TESTS/multsc_single.o UNIT_TESTS/sub_double \
	UNIT_TESTS/sub_double.ali UNIT_TESTS/sub_double.o UNIT_TESTS/sub_single \
	UNIT_TESTS/sub_single.ali UNIT_TESTS/sub_single.o
	rm -f UNIT_TESTS/subsc_double UNIT_TESTS/subsc_double.ali \
	UNIT_TESTS/subsc_double.o UNIT_TESTS/subsc_single UNIT_TESTS/subsc_single.ali \
	UNIT_TESTS/subsc_single.o UNIT_TESTS/sum_double UNIT_TESTS/sum_double.ali \
	UNIT_TESTS/sum_double.o UNIT_TESTS/sum_single UNIT_TESTS/sum_single.ali \
	UNIT_TESTS/sum_single.o UNIT_TESTS/zero_double UNIT_TESTS/zero_double.ali \
	UNIT_TESTS/zero_double.o UNIT_TESTS/zero_single UNIT_TESTS/zero_single.ali \
	UNIT_TESTS/zero_single.o vector-add.ali vector-add.o vector-add_scalar.ali \
	vector-add_scalar.o vector-angle.ali vector-angle.o vector-angle_norm.ali \
	vector-angle_norm.o vector-dist.ali vector-dist.o vector-div.ali vector-div.o \
	vector-div_scalar.ali vector-div_scalar.o vector-dot_product.ali \
	vector-dot_product.o vector-magnitude.ali vector-magnitude.o vector-mult.ali \
	vector-mult.o vector-mult_scalar.ali vector-mult_scalar.o vector-negate.ali \
	vector-negate.o vector-normalize.ali vector-normalize.o vector-sub.ali \
	vector-sub.o vector-sub_scalar.ali vector-sub_scalar.o vector-sum.ali \
	vector-sum.o vector-zero.ali vector-zero.o vector.a vector.ali
	rm -f vector.o
ext_clean:
	rm -f conf-adatype conf-cctype conf-ldtype conf-systype mk-ctxt

regen:\
ada-srcmap ada-srcmap-all
	./ada-srcmap-all
	cpj-genmk > Makefile.tmp && mv Makefile.tmp Makefile
