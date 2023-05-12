# Last edited 2/2/23
# Curtis Yu [luyangy3]

export CDK_DIR="$SOFTPATH/ncsu-cdk-1.6.0.beta"
export CLASS="/class/ece425"

if [ ! -f cds.lib ]
then
    echo "Copying cds.lib"
    cp $CLASS/init_script/cds.lib .
fi

module load cadence/2021-09
module load Synopsys_x86-64/2021

alias ic618="$SOFTPATH/cadence-2021-09/IC618/bin/virtuoso"
export CDSHOME=$SOFTPATH/cadence-2021-09/IC618
#export QRC_HOME=$SOFTPATH/cadence-2021-09/EXT618
#export ASSURAHOME=$SOFTPATH/cadence-2021-09/ASSURA41
export CDS_Netlisting_Mode=Analog

if [ ! -f .cdsenv ]
then
    echo "Copying cdsenv"
    cp $CLASS/init_script/cdsenv .cdsenv
fi

if [ ! -f .cdsinit ]
then
    echo "Copying cdsinit"
    cp $CLASS/init_script/cdsinit .cdsinit
fi

if [ ! -f .cdsplotinit ]
then
    echo "Copying cdsplotinit"
    cp $CLASS/init_script/cdsplotinit .cdsplotinit
fi

if [ ! -f .simrc ]
then
    echo "Copying simrc"
    cp $CLASS/simrc .simrc
fi

export LM_LICENSE_FILE="27005@synopsys.webstore.illinois.edu:5280@cadence.webstore.illinois.edu"
