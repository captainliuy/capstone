export PATH=/Xilinx/Vivado/2018.2/tps/lnx64/binutils-2.26/bin:/Xilinx/Vivado/2018.2/tps/lnx64/gcc-6.2.0/bin:/Xilinx/Vivado/2018.2/msys64/usr/bin:/Xilinx/Vivado/2018.2/msys64/mingw64/bin:/Xilinx/Vivado/2018.2/bin:/Xilinx/Vivado/2018.2/lnx64/bin:/Xilinx/Vivado/2018.2/lnx64/tools/bin:/Xilinx/Vivado/2018.2/bin:/Xilinx/Vivado/2018.2/tps/lnx64/jre/bin:/Xilinx/SDK/2018.2/bin:/Xilinx/Vivado/2018.2/ids_lite/ISE/bin/lin64:/Xilinx/Vivado/2018.2/tps/lnx64/binutils-2.26/bin:/Xilinx/Vivado/2018.2/tps/lnx64/gcc-6.2.0/bin:/Xilinx/Vivado/2018.2/msys64/usr/bin:/Xilinx/Vivado/2018.2/msys64/mingw64/bin:/Xilinx/Vivado/2018.2/lnx64/bin:/Xilinx/Vivado/2018.2/lnx64/tools/bin:/Xilinx/SDK/2018.2/gnu/microblaze/lin/bin:/Xilinx/SDK/2018.2/gnu/arm/lin/bin:/Xilinx/SDK/2018.2/gnu/microblaze/linux_toolchain/lin64_le/bin:/Xilinx/SDK/2018.2/gnu/aarch32/lin/gcc-arm-linux-gnueabi/bin:/Xilinx/SDK/2018.2/gnu/aarch32/lin/gcc-arm-none-eabi/bin:/Xilinx/SDK/2018.2/gnu/aarch64/lin/aarch64-linux/bin:/Xilinx/SDK/2018.2/gnu/aarch64/lin/aarch64-none/bin:/Xilinx/SDK/2018.2/gnu/armr5/lin/gcc-arm-none-eabi/bin:/Xilinx/SDK/2018.2/tps/lnx64/cmake-3.3.2/bin:/Xilinx/DocNav:/home/tatsumima/bin:/home/tatsumima/.local/bin:/home/tatsumima/.nvm/versions/node/v11.5.0/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin
export LD_LIBRARY_PATH=/Xilinx/Vivado/2018.2/lnx64/tools/gdb_v7_2:/Xilinx/Vivado/2018.2/lnx64/tools/graphviz/lib:/Xilinx/Vivado/2018.2/lnx64/bin:/Xilinx/Vivado/2018.2/lib/lnx64.o/Ubuntu:/Xilinx/Vivado/2018.2/lib/lnx64.o:/Xilinx/Vivado/2018.2/tps/lnx64/jre/lib/amd64:/Xilinx/Vivado/2018.2/tps/lnx64/jre/lib/amd64/server:/Xilinx/Vivado/2018.2/tps/lnx64/jre/lib/amd64/server:/Xilinx/Vivado/2018.2/tps/lnx64/jre/lib/amd64:/Xilinx/Vivado/2018.2/tps/lnx64/jre/../lib/amd64:/Xilinx/Vivado/2018.2/lnx64/tools/gdb_v7_2:/Xilinx/Vivado/2018.2/lnx64/tools/graphviz/lib:/Xilinx/Vivado/2018.2/lnx64/bin:/Xilinx/Vivado/2018.2/lib/lnx64.o/Ubuntu:/Xilinx/Vivado/2018.2/lib/lnx64.o:/Xilinx/Vivado/2018.2/tps/lnx64/jre/lib/amd64:/Xilinx/Vivado/2018.2/tps/lnx64/jre/lib/amd64/server:/Xilinx/Vivado/2018.2/bin/../lnx64/tools/dot/lib:/Xilinx/Vivado/2018.2/lnx64/tools/fpo_v7_0:/Xilinx/Vivado/2018.2/lnx64/tools/fft_v9_1:/Xilinx/Vivado/2018.2/lnx64/tools/opencv:/Xilinx/Vivado/2018.2/lnx64/tools/fir_v7_0:/Xilinx/Vivado/2018.2/lnx64/tools/dds_v6_0:/Xilinx/Vivado/2018.2/lnx64/lib/csim:/Xilinx/Vivado/2018.2/bin/../lnx64/tools/dot/lib:/Xilinx/Vivado/2018.2/lnx64/tools/fpo_v7_0:/Xilinx/Vivado/2018.2/lnx64/tools/fft_v9_1:/Xilinx/Vivado/2018.2/lnx64/tools/opencv:/Xilinx/Vivado/2018.2/lnx64/tools/fir_v7_0:/Xilinx/Vivado/2018.2/lnx64/tools/dds_v6_0:/Xilinx/Vivado/2018.2/lnx64/lib/csim
export HDI_APPROOT=/Xilinx/Vivado/2018.2
export XILINX_OPENCL_CLANG=/Xilinx/Vivado/2018.2/lnx64/tools/clang
export RDI_PLATFORM=lnx64
bugpoint -mlimit=32000  --load libhls_support.so  --load libhls_bugpoint.so  -hls -strip  -function-uniquify -auto-function-inline -globaldce  -ptrArgReplace -mem2reg -instcombine -dce  -reset-lda  -loop-simplify -indvars -licm -loop-dep  -loop-bound -licm -loop-simplify -flattenloopnest  -array-flatten -gvn -instcombine -dce  -array-map -dce -func-legal  -gvn -adce -instcombine -cfgopt -simplifycfg -loop-simplify   -array-burst -promote-global-argument -dce  -axi4-lower -array-seg-normalize  -basicaa -aggrmodref-aa -globalsmodref-aa -aggr-aa -gvn -gvn  -basicaa -aggrmodref-aa -globalsmodref-aa -aggr-aa -dse -adse -adce -licm  -inst-simplify -dce  -globaldce -instcombine -array-stream -eliminate-keepreads -instcombine  -dce   -deadargelim -doublePtrSimplify  -doublePtrElim -dce -doublePtrSimplify -promote-dbg-pointer  -dce -scalarrepl -mem2reg -disaggr -norm-name -mem2reg  -instcombine  -dse -adse -adce -ptrLegalization -dce -auto-rom-infer -array-flatten -dce -instcombine -check-doubleptr  -loop-rot -constprop -cfgopt -simplifycfg -loop-simplify -indvars -pointer-simplify -dce -loop-bound  -loop-simplify -loop-preproc  -constprop -global-constprop -gvn -mem2reg -instcombine -dce  -loop-bound  -loop-merge -dce  -bitwidthmin  -deadargelim -dce  -canonicalize-dataflow -dce  -scalar-propagation -deadargelim -globaldce -mem2reg  -read-loop-dep  -interface-preproc -directive-preproc -interface-gen  -bram-byte-enable  -deadargelim -inst-simplify -dce  -gvn -mem2reg -instcombine -dce -adse  -loop-bound  -instcombine -cfgopt -simplifycfg -loop-simplify  -clean-region -io-protocol  -find-region -mem2reg  -bitop-raise  -inst-simplify -inst-rectify -instcombine -adce -deadargelim  -loop-simplify -phi-opt -bitop-raise  -cfgopt -simplifycfg -strip-dead-prototypes  -interface-lower -bitop-lower -intrinsic-lower -auto-function-inline  -basicaa -aggrmodref-aa -globalsmodref-aa -aggr-aa  -inst-simplify -simplifycfg   -loop-simplify  -mergereturn -inst-simplify -inst-rectify  -dce -load-elim -bitop-lower  -loop-rewind -pointer-simplify -dce -cfgopt  -dce -bitwidth -loop-dep -read-loop-dep -dce  -check-stream -norm-name -legalize  -validate-dataflow -dead-allocation-elimination  /home/tatsumima/galapagos/mac_addr_filter_v4/solution1/.autopilot/db/a.o.2.bc
llvm-dis bugpoint-reduced-simplified.bc 
