#export PATH=~/tools/gcc/bin:$PATH

#Search for PROJ_ROOT
loop_cnt=0
cur_dir=`pwd`
while [ ! -e $cur_dir/.proj_root ]; do
  cur_dir=`echo $cur_dir | sed 's/\/[^/]*$//g'`
	loop_cnt=`expr $loop_cnt + 1`
  if [ $loop_cnt -gt 50 ]; then
    echo "Error: Cannot find .proj_root -- please make sure you source the script under proper $PROJ_NAME svn tree!";
    exit 1
  fi
done
export PROJ_ROOT=$cur_dir

#libopencm3
export OPENCM3_DIR=$PROJ_ROOT/lib/libopencm3
