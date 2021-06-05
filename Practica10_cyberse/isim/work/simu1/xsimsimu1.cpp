#include "isim/work/simu1/simu1.h"
#include "isim/work/glbl/glbl.h"
static const char * HSimCopyRightNotice = "Copyright 2004-2005, Xilinx Inc. All rights reserved.";
#include "C:/Xilinx/vhdl/hdp/nt/ieee/std_logic_1164/std_logic_1164.h"
#include "C:/Xilinx/vhdl/hdp/nt/ieee/std_logic_arith/std_logic_arith.h"
#include "C:/Xilinx/vhdl/hdp/nt/ieee/std_logic_unsigned/std_logic_unsigned.h"


#include "work/simu1/simu1.h"
static HSim__s6* IF0(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    HSim__s6 *blk = new workMsimu1(label); 
    return blk;
}


#include "uni9000_ver.auxlib/_i_n_v/_i_n_v.h"
static HSim__s6* IF1(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    HSim__s6 *blk = new uni9000_ver_auxlibM_i_n_v(label); 
    return blk;
}


#include "uni9000_ver.auxlib/_i_n_v/_i_n_v.h"
static HSim__s6* IF2(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    HSim__s6 *blk = new uni9000_ver_auxlibM_i_n_v(label); 
    return blk;
}


#include "work/_practica10/_practica10.h"
static HSim__s6* IF3(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    HSim__s6 *blk = new workM_practica10(label); 
    return blk;
}


#include "work/glbl/glbl.h"
static HSim__s6* IF4(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    HSim__s6 *blk = new workMglbl(label); 
    return blk;
}


static HSim__s6* IF5(HSim__s6 *Arch,const char* label,int nGenerics,va_list vap)
{
    extern HSim__s6* createWork_flipflop_behavioral(const char*);
    HSim__s6 *blk = createWork_flipflop_behavioral(label);
    return blk;
}


static HSim__s6* IF6(HSim__s6 *Arch,const char* label,int nGenerics,va_list vap)
{
    extern HSim__s6* createWork_pract7_behavioral(const char*);
    HSim__s6 *blk = createWork_pract7_behavioral(label);
    return blk;
}


static HSim__s6* IF7(HSim__s6 *Arch,const char* label,int nGenerics,va_list vap)
{
    extern HSim__s6* createWork_flipflop_behavioral(const char*);
    HSim__s6 *blk = createWork_flipflop_behavioral(label);
    return blk;
}


static HSim__s6* IF8(HSim__s6 *Arch,const char* label,int nGenerics,va_list vap)
{
    extern HSim__s6* createWork_pract7_behavioral(const char*);
    HSim__s6 *blk = createWork_pract7_behavioral(label);
    return blk;
}

class _top : public HSim__s6 {
public:
    _top() : HSim__s6(false, "_top", "_top", 0, 0, HSim::VerilogModule) {}
    HSimConfigDecl * topModuleInstantiate() {
        HSimConfigDecl * cfgvh = 0;
        cfgvh = new HSimConfigDecl("default");
        (*cfgvh).addVlogModule("simu1", (HSimInstFactoryPtr)IF0);
        (*cfgvh).addVlogModule("INV", (HSimInstFactoryPtr)IF1);
        (*cfgvh).addVlogModule("INV", (HSimInstFactoryPtr)IF2);
        (*cfgvh).addVlogModule("Practica10", (HSimInstFactoryPtr)IF3);
        (*cfgvh).addVlogModule("glbl", (HSimInstFactoryPtr)IF4);
        (*cfgvh).addVlogModule("flipflop/behavioral", (HSimInstFactoryPtr)IF5, true);
        (*cfgvh).addVlogModule("pract7/behavioral", (HSimInstFactoryPtr)IF6, true);
        (*cfgvh).addVlogModule("flipflop", (HSimInstFactoryPtr)IF7, true);
        (*cfgvh).addVlogModule("pract7", (HSimInstFactoryPtr)IF8, true);
        HSim__s5 * topvl = 0;
        topvl = new workMsimu1("simu1");
        topvl->moduleInstantiate(cfgvh);
        addChild(topvl);
        topvl = new workMglbl("glbl");
        topvl->moduleInstantiate(cfgvh);
        addChild(topvl);
        return cfgvh;
}
};

main(int argc, char **argv) {
  HSimDesign::initDesign();
  globalKernel->getOptions(argc,argv);
  HSim__s6 * _top_i = 0;
  try {
    IeeeStd_logic_1164=new Ieee_std_logic_1164("Std_logic_1164");
    IeeeStd_logic_arith=new Ieee_std_logic_arith("Std_logic_arith");
    IeeeStd_logic_unsigned=new Ieee_std_logic_unsigned("Std_logic_unsigned");
    HSimConfigDecl *cfg;
 _top_i = new _top();
  cfg =  _top_i->topModuleInstantiate();
    return globalKernel->runTcl(cfg, _top_i, "_top", argc, argv);
  }
  catch (HSimError& msg){
    try {
      globalKernel->error(msg.ErrMsg);
      return 1;
    }
    catch(...) {}
      return 1;
  }
  catch (...){
    globalKernel->fatalError();
    return 1;
  }
}
