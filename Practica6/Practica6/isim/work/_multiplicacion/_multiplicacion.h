////////////////////////////////////////////////////////////////////////////////
//   ____  ____  
//  /   /\/   /  
// /___/  \  /   
// \   \   \/    
//  \   \        Copyright (c) 2003-2004 Xilinx, Inc.
//  /   /        All Right Reserved. 
// /___/   /\   
// \   \  /  \  
//  \___\/\___\ 
////////////////////////////////////////////////////////////////////////////////

#ifndef H_workM_multiplicacion_H
#define H_workM_multiplicacion_H

#ifdef _MSC_VER
#pragma warning(disable: 4355)
#endif

#ifdef __MINGW32__
#include "xsimMinGW.h"
#else
#include "xsim.h"
#endif

class workM_multiplicacion : public HSim__s5{
public: 
    workM_multiplicacion(const char *instname);
    ~workM_multiplicacion();
    void setDefparam();
    void constructObject();
    void moduleInstantiate(HSimConfigDecl *cfg);
    void connectSigs();
    void reset();
    virtual void archImplement();
    class cu0 : public HSimVlogTask{
    public: 
        HSim__s3 uv[1];
        cu0(workM_multiplicacion* arch );
        HSimVlogTaskCall * createTaskCall(HSim__s7 * process );
        void deleteTaskCall(HSimVlogTaskCall *p );
        void reset();
        void constructObject();
        int getSizeForArg(int argNumber);
        workM_multiplicacion* Arch ;
        HSimVector<HSimRegion *> activeInstanceList ;
        HSimVector<HSimRegion *>  availableTaskCallObjList ;
        ~cu0();
        bool disable(HSim__s7* proc);
    };
    cu0 u0;
    class cu1 : public HSimVlogTask{
    public: 
        HSim__s3 uv[1];
        cu1(workM_multiplicacion* arch );
        HSimVlogTaskCall * createTaskCall(HSim__s7 * process );
        void deleteTaskCall(HSimVlogTaskCall *p );
        void reset();
        void constructObject();
        int getSizeForArg(int argNumber);
        workM_multiplicacion* Arch ;
        HSimVector<HSimRegion *> activeInstanceList ;
        HSimVector<HSimRegion *>  availableTaskCallObjList ;
        ~cu1();
        bool disable(HSim__s7* proc);
    };
    cu1 u1;
    class cu2 : public HSimVlogTask{
    public: 
        HSim__s3 uv[1];
        cu2(workM_multiplicacion* arch );
        HSimVlogTaskCall * createTaskCall(HSim__s7 * process );
        void deleteTaskCall(HSimVlogTaskCall *p );
        void reset();
        void constructObject();
        int getSizeForArg(int argNumber);
        workM_multiplicacion* Arch ;
        HSimVector<HSimRegion *> activeInstanceList ;
        HSimVector<HSimRegion *>  availableTaskCallObjList ;
        ~cu2();
        bool disable(HSim__s7* proc);
    };
    cu2 u2;
    class cu3 : public HSimVlogTask{
    public: 
        HSim__s3 uv[1];
        cu3(workM_multiplicacion* arch );
        HSimVlogTaskCall * createTaskCall(HSim__s7 * process );
        void deleteTaskCall(HSimVlogTaskCall *p );
        void reset();
        void constructObject();
        int getSizeForArg(int argNumber);
        workM_multiplicacion* Arch ;
        HSimVector<HSimRegion *> activeInstanceList ;
        HSimVector<HSimRegion *>  availableTaskCallObjList ;
        ~cu3();
        bool disable(HSim__s7* proc);
    };
    cu3 u3;
    class cu4 : public HSimVlogTask{
    public: 
        HSim__s3 uv[1];
        cu4(workM_multiplicacion* arch );
        HSimVlogTaskCall * createTaskCall(HSim__s7 * process );
        void deleteTaskCall(HSimVlogTaskCall *p );
        void reset();
        void constructObject();
        int getSizeForArg(int argNumber);
        workM_multiplicacion* Arch ;
        HSimVector<HSimRegion *> activeInstanceList ;
        HSimVector<HSimRegion *>  availableTaskCallObjList ;
        ~cu4();
        bool disable(HSim__s7* proc);
    };
    cu4 u4;
    class cu5 : public HSimVlogTask{
    public: 
        HSim__s3 uv[1];
        cu5(workM_multiplicacion* arch );
        HSimVlogTaskCall * createTaskCall(HSim__s7 * process );
        void deleteTaskCall(HSimVlogTaskCall *p );
        void reset();
        void constructObject();
        int getSizeForArg(int argNumber);
        workM_multiplicacion* Arch ;
        HSimVector<HSimRegion *> activeInstanceList ;
        HSimVector<HSimRegion *>  availableTaskCallObjList ;
        ~cu5();
        bool disable(HSim__s7* proc);
    };
    cu5 u5;
    HSim__s1 us[6];
    HSim__s3 uv[8];
};

#endif
