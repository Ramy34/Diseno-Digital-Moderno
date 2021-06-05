#include "isim/work/simulatzion/simulatzion.h"
#include "isim/work/glbl/glbl.h"
static const char * HSimCopyRightNotice = "Copyright 2004-2005, Xilinx Inc. All rights reserved.";


#include "work/simulatzion/simulatzion.h"
static HSim__s6* IF0(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    HSim__s6 *blk = new workMsimulatzion(label); 
    return blk;
}


#include "unisim_ver.auxlib/_a_n_d2/_a_n_d2.h"
static HSim__s6* IF1(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    HSim__s6 *blk = new unisim_ver_auxlibM_a_n_d2(label); 
    return blk;
}


#include "unisim_ver.auxlib/_i_n_v/_i_n_v.h"
static HSim__s6* IF2(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    HSim__s6 *blk = new unisim_ver_auxlibM_i_n_v(label); 
    return blk;
}


#include "unisim_ver.auxlib/_n_a_n_d2/_n_a_n_d2.h"
static HSim__s6* IF3(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    HSim__s6 *blk = new unisim_ver_auxlibM_n_a_n_d2(label); 
    return blk;
}


#include "unisim_ver.auxlib/_n_o_r2/_n_o_r2.h"
static HSim__s6* IF4(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    HSim__s6 *blk = new unisim_ver_auxlibM_n_o_r2(label); 
    return blk;
}


#include "unisim_ver.auxlib/_o_r2/_o_r2.h"
static HSim__s6* IF5(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    HSim__s6 *blk = new unisim_ver_auxlibM_o_r2(label); 
    return blk;
}


#include "unisim_ver.auxlib/_x_n_o_r2/_x_n_o_r2.h"
static HSim__s6* IF6(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    HSim__s6 *blk = new unisim_ver_auxlibM_x_n_o_r2(label); 
    return blk;
}


#include "unisim_ver.auxlib/_x_o_r2/_x_o_r2.h"
static HSim__s6* IF7(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    HSim__s6 *blk = new unisim_ver_auxlibM_x_o_r2(label); 
    return blk;
}


#include "unisim_ver.auxlib/_x_o_r2/_x_o_r2.h"
static HSim__s6* IF8(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    HSim__s6 *blk = new unisim_ver_auxlibM_x_o_r2(label); 
    return blk;
}


#include "unisim_ver.auxlib/_x_n_o_r2/_x_n_o_r2.h"
static HSim__s6* IF9(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    HSim__s6 *blk = new unisim_ver_auxlibM_x_n_o_r2(label); 
    return blk;
}


#include "unisim_ver.auxlib/_o_r2/_o_r2.h"
static HSim__s6* IF10(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    HSim__s6 *blk = new unisim_ver_auxlibM_o_r2(label); 
    return blk;
}


#include "unisim_ver.auxlib/_n_o_r2/_n_o_r2.h"
static HSim__s6* IF11(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    HSim__s6 *blk = new unisim_ver_auxlibM_n_o_r2(label); 
    return blk;
}


#include "unisim_ver.auxlib/_n_a_n_d2/_n_a_n_d2.h"
static HSim__s6* IF12(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    HSim__s6 *blk = new unisim_ver_auxlibM_n_a_n_d2(label); 
    return blk;
}


#include "unisim_ver.auxlib/_i_n_v/_i_n_v.h"
static HSim__s6* IF13(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    HSim__s6 *blk = new unisim_ver_auxlibM_i_n_v(label); 
    return blk;
}


#include "unisim_ver.auxlib/_a_n_d2/_a_n_d2.h"
static HSim__s6* IF14(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    HSim__s6 *blk = new unisim_ver_auxlibM_a_n_d2(label); 
    return blk;
}


#include "work/_prac_compu/_prac_compu.h"
static HSim__s6* IF15(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    HSim__s6 *blk = new workM_prac_compu(label); 
    return blk;
}


#include "work/glbl/glbl.h"
static HSim__s6* IF16(HSim__s6 *Arch,const char* label,int nGenerics, 
va_list vap)
{
    HSim__s6 *blk = new workMglbl(label); 
    return blk;
}

class _top : public HSim__s6 {
public:
    _top() : HSim__s6(false, "_top", "_top", 0, 0, HSim::VerilogModule) {}
    HSimConfigDecl * topModuleInstantiate() {
        HSimConfigDecl * cfgvh = 0;
        cfgvh = new HSimConfigDecl("default");
        (*cfgvh).addVlogModule("simulatzion", (HSimInstFactoryPtr)IF0);
        (*cfgvh).addVlogModule("AND2", (HSimInstFactoryPtr)IF1);
        (*cfgvh).addVlogModule("INV", (HSimInstFactoryPtr)IF2);
        (*cfgvh).addVlogModule("NAND2", (HSimInstFactoryPtr)IF3);
        (*cfgvh).addVlogModule("NOR2", (HSimInstFactoryPtr)IF4);
        (*cfgvh).addVlogModule("OR2", (HSimInstFactoryPtr)IF5);
        (*cfgvh).addVlogModule("XNOR2", (HSimInstFactoryPtr)IF6);
        (*cfgvh).addVlogModule("XOR2", (HSimInstFactoryPtr)IF7);
        (*cfgvh).addVlogModule("XOR2", (HSimInstFactoryPtr)IF8);
        (*cfgvh).addVlogModule("XNOR2", (HSimInstFactoryPtr)IF9);
        (*cfgvh).addVlogModule("OR2", (HSimInstFactoryPtr)IF10);
        (*cfgvh).addVlogModule("NOR2", (HSimInstFactoryPtr)IF11);
        (*cfgvh).addVlogModule("NAND2", (HSimInstFactoryPtr)IF12);
        (*cfgvh).addVlogModule("INV", (HSimInstFactoryPtr)IF13);
        (*cfgvh).addVlogModule("AND2", (HSimInstFactoryPtr)IF14);
        (*cfgvh).addVlogModule("PracCompu", (HSimInstFactoryPtr)IF15);
        (*cfgvh).addVlogModule("glbl", (HSimInstFactoryPtr)IF16);
        HSim__s5 * topvl = 0;
        topvl = new workMsimulatzion("simulatzion");
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
