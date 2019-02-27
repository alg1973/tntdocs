(defun c-style-hook ()
	(c-set-style "Linux")
	(setq blank-style "color")
;;	(blank-mode)
)


(defun c-lineup-arglist-tabs-only (ignored)
"Line up argument lists by tabs, not spaces"
(let* ((anchor (c-langelem-pos c-syntactic-element))
    (column (c-langelem-2nd-pos c-syntactic-element))
    (offset (- (1+ column) anchor))
    (steps (floor offset c-basic-offset)))
    (* (max steps 1)
    c-basic-offset)))

(add-hook 'c-mode-common-hook
	(lambda ()
	    ;; Add kernel style
	    (c-add-style
	    "linux-tabs-only"
	    '("linux" (c-offsets-alist
			(arglist-cont-nonempty
			c-lineup-gcc-asm-reg
			c-lineup-arglist-tabs-only))))))

(show-paren-mode 1)

;; (setq-default c-indent-level      8)
;; (setq-default c-basic-offset      8)
;; (setq-default tab-width                8)
;; (add-hook 'c-mode-hook 'tabs-on)
;; Above lines replaced with Linux style
(add-hook 'c-mode-hook 'c-style-hook)
(add-hook 'c++-mode-hook 'c-style-hook)

(set-face-foreground 'font-lock-keyword-face "dark red")



(defun create-tags (dir-name)
     "Create tags file."
     (interactive "DDirectory: ")
     (eshell-command
      (format "find %s -type f -name \"*.[ch]*\" | etags -" dir-name)))

(add-hook 'before-save-hook 'whitespace-cleanup)

(setq auto-mode-alist (cons '("\\.m$" . octave-mode) auto-mode-alist))
8 [YKW\: S[CUTpVQ^UUWBW]@SHB:	
[QAU\rRBQWVUWBW]BUKG\DK_VADQ_W Y\TKFQW]QVV@J]FY\WCWDUBY^\Y^W_J[DXU_VWHDJSAMWBY]AQVV:	
[QAU\rRBQWVKFQD]DBY\CYL[_^K:	
[QAU\rQELZ_ByYC]^zY\YYC]^pSW@@USY\@E2
YYC]^:	
[QAU\2
YYC]^:  ]YWMAXUNYVQ\E\WUWBW]@XHB:  ]YWMAXUN:		[QAU\Y^[^ET]SYACUJF: S[CUTYVQ\E\WNWSDW@: 	
S[CUTYVQ\E\WKADB]S]2
YYC]^Q\S\MVUS\WW@YDP_: S[CUTYVQ\E\W^G^SL[_^Y^: S[CUTYVQ\E\WQFUBYF_B8 UQUECPWF[^STGTUY_KFBUY_: ]YEJ]DQ^WYVQ\E\WQFUBYF_B8 UQUECPWF2

WY_GCX]DQ\S\MVUP__KFVW@]QLX@H:	
[QAU\Y^[^ET]RW]CDT_B]SSXZ@@8 [YKW\[^STGTUR_WADMFY\QFIPB@2YYC]^Q\S\MVUP__KFCLSDY[mQCKWBDZ@@8
 K[QBS[[^STGTUR_WADTWHY[S\o[SCDZ@@8	_[MHUFY\_[^STGTUR_WAD[]^DY[^UJV\YFo]YBXHB:	]YEJ]DQ^WYVQ\E\WM\_B\WBU\m]QH:
U[WEKZUF8[YKW\[^STGTU\__UUBZ@@8
[YKW\[^STGTUTU^AXHB:S[CUTYVQ\E\W[]]]W\T]TCPB@2
YYC]^:  ]YWMAXUNYVQ\E\W]J@QVVY^_mXUYBXHB: S[CUT: YKZYRQF_FY^[^ET]RW]CDPY^\X@H: YKZYRQF_F8 [YKW\MAY^_^QUWC@YQUKFT2
YYC]^:  YTUUS[_N:	[QAU\FU]H^QD]STSCC{^@MFyD]@QDW@[^QCKdQ\QKAsW_@QJSD_J:	[QAU\{^@MFyD]@QDW@VQ\ToO[DX{^@MFyD]@QDW@VQ@CDy^HGDyLWBQL]BTSCDS_VADlFY^EUs_UBQBYF_BQ]@8 [YKW\C8	Q\W]QS]FGXQ^UTYBKF\QKFSUB^[BCLFY^EU: QVU]YY_FVQ@CD8 [YKW\BULGB^TYBKF:		S[CUTM: S[CUT:U[WEKZUF8 UQUECPWFVS]UKBQS]]UJUUB2
YYC]^K2
YYC]^Q\QKArYQ[UVVbUKG\DKUB_WB
{]@T8 [YKW\K:	S[CUTCDJGSDADQ_WoJWS_JV:	[QAU\I:	[QAU\YVFRYQ[UVV:	S[CUTQ\D\]SY\	:	 [QAU\EVAYWVWTKFQW]oSJQCkkfqw}osjqcm8[YKW\RE^VQDYm@DJS_VFU^Lm@DJ	:QVU]YY_FRMTTQLSo@L@C]SBSPWBCgBDB8  UQUECPWFR_W^B]__F]	: YKZYRQF_FRW]\QAo]Y^GQJW:	 WCQ^]^_NZ]_\ZQCg\US]ACQJKoDYUC2 
QCXQPYDWDPEV\SDQgBDBGB\8  [CP[RYL]FRE^VQDYm@DJYT@mFUJAY_V	: YKZYRQF_FRW]CDS_VFQYVWB
ADQL[SoNWSDW@RMTTQLSo@L@usho}jdbymebta]JDBYmEBTA:
]YEJ]DQ^W:

_AQVW\_FCLSWU	mBU[]BT[^DSoRYQ[UVV[]^CLCDYUUgV_SM_U^LQgATWQZ]_\SoYKm]QTEQB]RW]\YmXQKm^U[WCCY@IoLSWC:QVU]YY_FRYQ[UVVQgPQSSW^TTWQYTSoC	V_SV_SQV2ST]_Q[WDQ_^LW^DgBDBSoC	V_SQ_^LW^D:QVU]YY_FC]SBSPWBCgBDBSoC	V_SAUQJQXUJA2 
QCXQPYDWD@U]WDU^S\C]:	 WCQ^]^_NQAo]Y^GQJWQg[CoUS\GY@U8 
_KSV_V]FXQKm^U[WCCY@IoLSWCSoXYAo^]QUCKSBIgFQWK:	 [QAU\K2YYC]^rw}cdgadql{soyacujfkfqw}osjqc:
]YEJ]DQ^W:	[QAU\ADQ_Wo[@SCcmQoKT_[SB[:	S[CUTCDYUUgQBSKimQgATWQSJQ2YYC]^CLSWU	mSB[AkeYmC\]S[@S8   [CP[RYL]F2 
QCXQPYDWDB]__F]YmC\]SJW]_NW:	YAXYZ[D_NYT@mFUJAY_VYmC\]SQVHoNWBCQ]^2 
QCXQPYDWD:	YAXYZ[D_NYVQgATWQEJ^uUBDI2 QCXQPYDWDK2 
QCXQPYDWDEJ^SoC	V_SGB\8 [CP[RYL]F]JDBYmEBTA@MAXoZSS[EBT2 QCXQPYDWDM2 QCXQPYDWD:	YAXYZ[D_NV_JSW\CDSEDWM@\oQoKT_[UHL@QoM@\C:YKZYRQF_FWHDJSoEJ^CHGCXgPQSSEJ^o	:YKZYRQF_F8[YKW\M:	S[CUTM2	 U[EBWFQV]:S[CUTCDJGSDPQSSW^Tg[^VW8
[YKW\C8
[YKW\Y^L^TWQCo_@_EHA:S[CUTQ\DVV_SKmD_LS\2
	ST]_Q[WD[^D^QCLmY^\WH2
	ST]_Q[WD: YTUUS[_NQ\DVV_SKmBUIGUCLWT2ST]_Q[WD[^D\T_[AoB]QUYNWT2ST]_Q[WD[^D\T_[AoU@FBQ8Q\W]QS]F2 YYC]^P__TQGY[DoKY]H]BD8 [YKW\R_W^T]ST2ST]_Q[WD: YTUUS[_NZSS[]\ToQ\V_: QVU]YY_F^\]SCgUB_MBCVV_SKmD_LS\TSCDg[^T]J :QVU]YY_F^\]SCg@UAMWCD]V ^\]SCg@US][FU\ ^TWQCo]JDBY 8Q\W]QS]FQGY[DoKY]H]BDTQ\KWVUQ\VQTAU2 YYC]^I: QVU]YY_FM2ST]_Q[WD: YTUUS[_NN]YTEQYLmCDYUU [^D@UAMWCD]V: YTUUS[_NC8Q\W]QS]FVV_SKmBUIGUCLWTBUIGUCLWT2ST]_Q[WD: YTUUS[_NQGY[DoKY]H]BDDJGU2ST]_Q[WDO: QVU]YY_F8Q\W]QS]FF_QVWWFoCLSWUS_VADKFQW]oB]AE\LB]A: YTUUS[_NC8 [YKW\VV_SKmWBWG@CB]AX]STUJ^TWQCo_@_EHA:S[CUT^TWQCoL]DQTJWCPWQT]@^\]SCgF_DY^:  YTUUS[_N\QKFoYVVUHB]AX]STUJ\QKFoYVVUH8Q\W]QS]F2ST]_Q[WD^\]SCg@US][FU\JWC\]SCCYBW8_[MHUFY\_QT^TWQCoJWAE]ADU\:	 	]YEJ]DQ^W^TWQCoJWAE]ADU\VV_SKmBU[WYF]V:  YTUUS[_N:QVU]YY_F\T_[AoU@FBQ 8Q\W]QS]F^]B[^D[QVV_SKmBU[WYF]VQ2ST]_Q[WD[V@UCV_SKkYeBUIGYB]Vo@WAYDQ]^Q\YDQS\YBWT:QVU]YY_F^\]SCgWHDJS:	YTUUS[_N:	[QAU\SGQQFoC[]@W@DVQTAU2 YYC]^O: QVU]YY_F8Q\W]QS]FR_W^YKmGQQFY^_mCDYUU SW\CDIB]FEBVQGY[DoKY]H]BDM: YTUUS[_N:	 [QAU\RW]\QAoT]STS_VADCBULGB^VUQ\	M2 YYC]^D_Y\]QJYoT]STK\WQTDJGUO:	[QAU\O:	 YBQ^YQXUN:QVU]YY_FADBMQD\]SEUW^DgVQDY8[@Y\QSPWFC8Q\W]QS]FR_W^YKm^QN[W2Q@QVSSX]DQ\Y[YoBY\[[@: 		 Q_EBYAXUNKWB@gCEQT[DIgTUQLGBUKCVI	:QVU]YY_FRMTTQLSo@L@CV[@oP^: YAXYZ[D_NZGVTYFQoHFBJS^[gFBQ[WoV]SD2	S@YFWKPEV\SDQgBDBV_SgFBQ[W:	YTUUS[_N:QVU]YY_FRMTTQLSo@L@CLSWU	mS_VFU^L	:QVU]YY_FRMTTQLSo@L@CLSWU	mCUY@SX]@C2ST]_Q[WD:	YAXYZ[D_NZGVTYFQoHFBM@\2 
QCXQPYDWDP__KF

[]^DY[^UJ
CLSDY[mFU[F_BPEV\SDQgBDB}q`muhl`qom`|cUHL@QoM@\C8  [CP[RYL]FRE^VQDYm@DJYT@mFUJAY_V	: YKZYRQF_F8   [CP[RYL]F2ST]_Q[WDD_Y\Y^QF2ST]_Q[WDI:QVU]YY_F[CoVSFY_^S\C]	:QVU]YY_FQBS\QQ[oJS^[: 		 Q_EBYAXUNCVIKWB@gCEQT[DIgTUQLGBUK2ST]_Q[WDCV[@oP^PEV\SDQgBDB: YAXYZ[D_NBQVYoDJSSUgTUQLZGVTYFQoHFB	:  [BQD_IV_SgFBQ[WPEV\SDQgBDB:	YTUUS[_NCDYUUgQ_^LW^DRMTTQLSo@L@8Q\W]QS]FKFQW]oC]SBSPWBCRMTTQLSo@L@8   [CP[RYL]FM@\RE^VQDYm@DJ2ST]_Q[WDO:	
YHS^Q[ZUFO:	]YEJ]DQ^W: ]SGJUNS^_FI@]VUVU_WW
_HFY_VS\oNS\E]EYVFgFjWA`WA:
]YEJ]DQ^W:	
[QAU\ADBMQD\]SEUW^Dg@USW@T: S[CUTK:
]YEJ]DQ^WzSS[]\Ty|RQ[YU^\	:	U[WEKZUFYVF@WA:		]YWMAXUN:	U[WEKZUFYVFTWQYT8 [YKW\T_MP\UEUY_ZD2YYC]^G^CQU^U\SB[Akclswumsb{aadqwo{`sce	:	[QAU\WWU_
]@DQ]^QTmFQTGUM[^DoDC@]QYQTmSB[	:	TQ^F_SZY^WWU_
]@DQ]^QTmFQTGUM[^DoDSB[:	]YEJ]DQ^WjWA`WAB]CEYJWToH]CYL[_^8UQUECPWF2ST]_Q[WDV_SM_U^LmTQLS\SDQ8Q\W]QS]F2ST]_Q[WDP__T@QJAUTgQ_^LW^D:S[CUTZ]_\[W^W@U
		:	 [QAU\RW]\JW]_NW
8
[YKW\R_W^C	mU^IGUE]V
8	 _[MHUFY\_t_USY^@_EHT_USY^gUB_MB
8	 _[MHUFY\_R_W^SWG\TgPUoYmWBWG@oTWQT]@
8 		Q[ZEBS[^R_W^YKm]UJUQRTW
8   [CP[RYL]FR_W^]Y^GQJW
8 
_KSV_V]FR_W^^]QUCKSBIgFQWK2	U[EBWFQV]v_]Y[^wJ]E@V_]Y[^o_@_EHmRQ[YE@ :	]YEJ]DQ^WjWA`WAB]Co@WAoRYQ[EH	: ]SGJUNS^_RW]\JWAoH]CoZSS[MBUT:
]YEJ]DQ^W: YKZYRQF_FUVG]ZS^oKFQD]AKzS^b]Cy^QFzS^b]CgQQFzS^b]CbUYVIERQVmCDYFUo8   [CP[RYL]F2	 U[EBWFQV]V_SM_U^LmBU[]BTpQSSW^TqvRYQ[UVVoY\YVF@WAYDQ]^Q_^KFCLSWUmT_[G]UVFKT_[
2	WY_GCX]DRYQ[UVVRYQ[UVVoY\H]CH]CYL[_^:QVU]YY_FV_SQVCV_SV_SQVEUY_ZDKT_[GUQUXD:QVU]YY_FVQDY 8Q\W]QS]FHSBC]VoSW\DUVFCV_SBQBKWTo[]^D]\D8	 _[MHUFY\_YWV]BUTQ\KW@U]WDU^S\C]KoUVCEUMWT^S\C]US\GY@U^S\C]VWSUKAQBAmDQ_ADJGU8	 _[MHUFY\_T_USY^gUB_MBoRYQ[EHt_USY^@_EH
~w|uBUIm@_KmRQ[YE@]VVY^CURY\oCLSDUgrQV`UAq\YD8[YKW\K: 	S[CUTrwadokfqdqqoqkaublclswumsb{a	:  ]SGJUNS^_8[YKW\[@SCcmC \]S[@S8[YKW\[@SCcmC \]S[@S8[YKW\[@SCc mC \]S[@S8 [YKW\KBUSQS\o[@SC \]SKBUSQS\o[@S2\Y\N][XQ\SJQC \]S[@S8Q\W]QS]FJWAEQ@UTgB_CQFY_VKT_[BUIGYB]Vo@WAYDQ]^2	U[EBWFQV]TW_QYVmWBWG@C \]S\]]QQ\oWJ]E@8	 _[MHUFY\_[]E\\mRUgSoWJ]E@g^UQ\WBC \]S[]E\\mRUgSoWJ]E@g^UQ\WB2 	SSPGB[Q\YKm]UJUQRTWA TWQYKm]UJUQRTW:
]YEJ]DQ^W:	 [QAU\ADTVYT^o^SJQCkkfqw}osjqcmcdyuugqbsk m2YYC]^:	S[CUTQCKWBDXYAoCLSWU		:	
[QAU\M2ST]_Q[WD:	YTUUS[_NN]YTW^CM@Uo\SDQ^YRMFY\]UU
dABUTy^\_[SD_JQT^_SYF_B8Q\W]QS]FK:	YTUUS[_NYVTYFQ2ST]_Q[WDK2ST]_Q[WDVQDYY^\_[SD_Jq\T]ScL@ESLTWQE]]\Do\SDQT[REL[\
_U]dIHWTqT^_SYF_Bdihwosw|duvf8Q\W]QS]FTQLSQ\YD:	YTUUS[_NM:	YTUUS[_NE8Q\W]QS]F2
YYC]^[]]@Y@CYW\
: S[CUTXQUXUJGUQUXDZQCBBYW@YDA8 [YKW\^_G]@RYQ[UVVXYA@J[_BQFI: S[CUT\WEUBB_CQFY_VXQK@BQ]BYLKH@UC]@FUPQSSW^T_B\WB2
YYC]^P__T_@]@QDW@[]^CLT_[G]UVFoB]Q_B\BS_VAD: S[CUTC8Q\W]QS]FQ\DJWA@WA@UAM[BU\m@_K[DYW\YV[DYY^YJ]V8Q\W]QS]FQ\DJmBUIB_CB@UAM[BU\m@_K[DYW\YV[DYY^YJ]V8Q\W]QS]FQTJWA@WABoJWA@WA: YTUUS[_NJWDEJ\B]C@_KJmBUIB_C8Q\W]QS]FQTJWA@WA: YTUUS[_NK: YTUUS[_NM[^D oDB_CB]CEYJWToH]CYL[_^DQ\MW8Q\W]QS]FEYVFgFBgB_CB@UAM[BU\m@_K[DYW\FY^EU: YTUUS[_NQTH]CBgB_C8Q\W]QS]FJWDEJ\BgB_C@WA: YTUUS[_NM: YTUUS[_N: QVU]YY_F[VEUY_ZDBEUY_ZD2ST]_Q[WD@UDM@^OWYWPF@G][WXL	: QVU]YY_F8Q\W]QS]FQTZSS[]\TBPQSSW^T8Q\W]QS]FBULGB^@RYQ[UVVPQSSW^T8Q\W]QS]F2ST]_Q[WDB]FEBVBH]C@_K	:	
[QAU\M2	 U[EBWFQV]: S[CUTZ]_\]@UJSD_JSW\CDV_SM_U^LmBU[]BTBQ_^KFK@UDM@^]@UJSD_JB	M2	 U[EBWFQV]:	S[CUTLW]@TSDUQ\QKAd8 [YKW\R_W^CY_UoT]SQTmT_[[T[]^CLd@[]^CLK: S[CUTBULGB^RQ[YU^\@RYQ[UVVT_[[TBV_SQV2
YYC]^O:  ]SGJUNS^_8 [YKW\DUUB\QLWSTSCCf: 
S[CUTZ]_\]@UJSD_J[]^CLd@[]^CLK:		S[CUTBULGB^AQ]]m\_[S\o\]SY\B8 [YKW\M:
]YEJ]DQ^W:	[QAU\FW[T]\AE]GUoKFQW]IC	mU^IGUE]VFBE]	M2	 U[EBWFQV]:	S[CUTN]YTSCCQU^oKFQW]SW\CDADQ_WoJWS_JVKT_[:		[QAU\K2	WY_GCX]DQKAUBLKS]Ug^_SY^oTWQYTATWQV_SM_U^LmBU[]BTQCK[W^gADQ_WgS^_LZUBgT_[G]UVF:
]YEJ]DQ^W:U[WEKZUF[VATWQB]__F]:_AQVW\_FC]FoB]__F]V8	

_[MHUFY\_2 
QCXQPYDWDY^C\]SQAo]Y^GQJW:	YAXYZ[D_NCULm]QTEQB]2 
QCXQPYDWD:	 WCQ^]^_N^U[WCCY@IoLSWCC	V_SZQCg\US]ACQJKoDYUC2 ]CYT_^WD: 	S[CUTCD\
SWBIC\]SKFQW]oSJQCkoATWQCLSWU	mSB[Akclswu	msb{amSB[Akclswumsb{am	:QVU]YY_FVQDYCLSWU	mS_VFU^LKT_[S_VFU^Lm@DJ	:QVU]YY_FVQDYCLSWU	mCUY@SX]@CC\]SKWQB[ZUBKm@DJ	:YKZYRQF_FVQDYY\JoF]@CYW\ATWQY\JoF]@CYW\:	YAXYZ[D_N: YKZYRQF_F[VC\]SM@\}_@DA8   [CP[RYL]FTYFQGB\C	V_SGB\8 [CP[RYL]F\SDQUHL@QoM@\CC	V_SWHDJSoEJ^C2 QCXQPYDWD:S[CUTE8	

_[MHUFY\_2YYC]^D_Y\CULmYWV]BUK[W^W@UDBMWE8 [YKW\F_QVST@oY_\_B]CYWV]BUVY^CUM:	S[CUTZ]_\[W^W@UTSW\CDIB]FEBVYWV]BUM:
]YEJ]DQ^W:	 [QAU\FW[TKWDoJW]_NWTKJW]_NWFBE]	M2 YYC]^P__TBUU]FU\[]^CLKJWDEJ\B]__F]	M2	 U[EBWFQV]:	YAXYZ[D_NN]YTAUDg_Q\OSBUKUS\GY@UDBMWE8   [CP[RYL]FR_W^YKm]QTEQB]K@UDM@^US\GY@UO: YKZYRQF_F8 [YKW\R_W^Q[FYF][]^CLKJWDEJ\[W^W@UDNB]__F]E8	

_[MHUFY\_2ST]_Q[WDP__TXQKmCDYUUSW\CDIB]FEBVTQLSTYFQADQ_Wo[]^D]\D}_@DAO:

_AQVW\_FRW]\PSCoVWSUKAQBAmDQ_AQ_^KFK@UDM@^VWSUKAQBAmDQ_AE8
 VFYAY\AWF2\FQK[\I]DG^CQU^U\C [@SSW\CDIB]FEBVSB[Ak e	M2\FQK[\I]DG^CQU^U\C [@SSW\CDIB]FEBVSB[Ake	M2\FQK[\I]DG^CQU^U\C [@SSW\CDIB]FEBVSB[Ake	M2\FQK[\I]DG^CQU^U\C[@SSW\CDIB]FEBVSB[Akclswumsb{amO: 	 TNSCYTKUFEVAYWVWTKSB[ Q_^KFK@UDM@^[@SCcadqw o{`sce	M2\FQK[\I]DG^CQU^U\C[@SSW\CDIB]FEBVSB[Akclswumsb{a mO: 	 TNSCYTKUF8
 VFYAY\AWFR_W^]]@WUYP\UQ_^KFTWQE]]\DoJWS_JVJSW\CD2\FQK[\I]DI:	QQXEJYY^[VYCg_UB_SR\]LLBQAo]]@WQZ^U2 	SSPGB[Q\@UDM@^^S\C]	:	QQXEJYY^8
K[QBS[BUIGYB]Vo@WAYDQ]^ ��������������������������8	NWET[^QTJWAEQ@UTgB_CQFY_VY^QFYQT[JU\JWAEQ@UTgB_CQFY_VFQTGU2	
FUE\Q\B]FEBVVQTAU2	
FUE\Q\:	TDQCQ^IUNYVBUIGYB]Vo@WAYDQ]^Q\YDQS\YBWTLL@B]CEYJWToH]CYL[_^[^YL[Q\QHUT:	TDQCQ^IUNK:	TDQCQ^IUNQTA SJQLDC [@SBKSB[ 2\FQK[\I]DC[@S DNC	QBS
BASJQ:	TDQCQ^IUNJWDEJ\VY^CU8
 VFYAY\AWFE8
 VFYAY\AWFJWDEJ\DJGU2\FQK[\I]DO: 	 TNSCYTKUF8
 VFYAY\AWFR_W^CY_Uo\]]QQ\oWJ]E@Q_^KFTWQE]]\DoJWS_JVJSW\CD2\FQK[\I]DI: ]SGJUNS^_@UDM@^V_]Y[^o_@_EHv_]Y[^wJ]E@~vwB\]]QQ\oWJ]E@|]]QQ\wBWG@
|~}C [@SBKSB[ 8
 VFYAY\AWFM:
 TDQCQ^IUN:   TNSCYTKUFRW]\KS]UgFYDTWSW\CDV_SM_U^LmBU[]BTBQ_^KF:   TNSCYTKUFK2 \FQK[\I]DB]FEBVC[@SBKSB[8
 VFYAY\AWFM:	]YEJ]DQ^W2	U[EBWFQV]D_Y\BUH^QS]mBUIm@_KS_VADjWA`WA\UGg@UAgB_C8	 _[MHUFY\_K:	]YEJ]DQ^WYV@UAgB_CgPQSSG@U\: ]SGJUNS^_DP@_GADT\__[So]@B_JcBUH^QS]mBUIm@_K
B]B\Q[WoB]Co@WAmS\B]STI@U@TSSU\8	 _[MHUFY\_JWAoH]CoZSS[MB@UAM[BU\m@_K[DYW\:	]YEJ]DQ^WBUIGYB]Vo@WAYDQ]^^UOmBUIm@_K	: ]SGJUNS^_@UAgB_CgPQSSG@U\L@EU8	 _[MHUFY\_M:	]YEJ]DQ^W2	U[EBWFQV]D_Y\S\]SBo\]]QQ\oWJ]E@: ]SGJUNS^_K2	U[EBWFQV]TW_QYVmWBWG@oZSS[MBV_]Y[^o_@_EH	: ]SGJUNS^_V_]Y[^o_@_EH|]]QQ\wBWG@
|~}	: ]SGJUNS^_M2	U[EBWFQV]8	 _[MHUFY\_F_QVB]AD_JWoRYQ[EHA2	U[EBWFQV]I: ]SGJUNS^_[V@UAgB_CgPQSSG@U\:	]YEJ]DQ^WK:	]YEJ]DQ^WJWAEQ@UTgB_CQFY_VJWAoH]CoZSS[MB:	]YEJ]DQ^WJWAoH]CoZSS[MBUTVY^CU8	 _[MHUFY\_E8	 _[MHUFY\_: ]SGJUNS^_[VV_]Y[^o_@_EHmRQ[YE@|]]QQ\wBWG@
|~}:	]YEJ]DQ^WK:	]YEJ]DQ^W\]]QQ\oWJ]E@TW_QYVmWBWG@oZSS[MB:	]YEJ]DQ^W\]]QQ\oWJ]E@gPQSSG@t_USY^@_EH
~w|u2	U[EBWFQV]M2	U[EBWFQV]O:
]SGJUNS^_:	 ]YEJ]DQ^W[ZQBUUDgPQ^gADQLWQ_^KF:
]SGJUNS^_K2	U[EBWFQV]CO[DSPRY\oCLSDUg:	 ]YEJ]DQ^WK:	 ]YEJ]DQ^W[SCUpQ^jWAb]STIBULGB^8	_[MHUFY\_SQKWrY\bUIeQYLB]FEBVa	:
]SGJUNS^_T]TQETF
JWDEJ\:	 ]YEJ]DQ^WM:	 ]YEJ]DQ^WE8[YKW\E	: QVU]YY_F8  
VYTD_[P[^KFBE[FTWQE]]\DoJWS_JVoB]^QDQDUoTWCC2  \Y\N][XQ\K2   \Y\N][XQ\V_SM_U^LmBU[]BTg@U\YFYF]m\UKASW\CDADTFU[F_BV_SM_U^LmBU[]BTTYFQ8  VYTD_[P[^\SDQgTQLS:
T[\FWYXYVC8  VYTD_[P[^M:
T[\FWYXYV:
TQ^F_SZY^RW]\WBUBYF_BYVFHY^LIQ_^KF:
TQ^F_SZY^K2  \Y\N][XQ\B]FEBVTQLSok@oVQDYmkIe	:
TQ^F_SZY^M2  \Y\N][XQ\:
T[\FWYXYV[]^CLCD\
F]QD_JT_[G]UVFoB]Q_B\\SDQg	:
TQ^F_SZY^O:
T[\FWYXYV:	[QAU\ADTFU[F_BPQSSW^Tg[^VWRYQ[UVVoYVT_Cg	:	
[QAU\ADTFU[F_BV_SM_U^LmBU[]BTT_[G]UVFCo8 [YKW\}J@QVVY^_zUQH}BT]@UBCD\
F]QD_JT_[G]UVFoB]Q_B\ZUQHm_B\WBUJm:S[CUTCD\
F]QD_JCDYUUg@USW@TADQ_WoJWS_JVCo8	

_[MHUFY\_2YYC]^DABUT]TCLV

NWSDW@TWQE]]\DoJWS_JV
[DUJSD_JT_[@USg[DUJSD_J	: ]SGJUNS^_P__KF

M\_B\WBU\m]QHEVAYWVWTADTFU[F_BT_[@USg[DUJSD_JT_USY^gUB_MBCo8	

_[MHUFY\_2CYQJYYSW\CD[^D\BUKG\DKm^U]Vo�������������������������������������:	 CSSJQSY^L^CmSQ[ZUoVWUTg	������������������������������ 2CYQJYYYVF^]ET_[AoCLSWUm���������������������������������������������KFQW]:
 A[YHQ[[^DADQ_WoZ]E^\SBIg	���������������������������CLSWU	�����������������������������������������������������8 [YKW\UWBW]mDIHWoDQ_]HSBCQ]^oUWDXWVo2
QS@I]WDYVF]]@WU\mT_[AoSWG^Dg	:]SGJUNS^_[^DPQ^VWTo\]SCgQ_EVFo 2WY_GCX]Dy_\_B]qbs[W^W@Uo[@So8 UQUECPWFZ]_\A]QJFoCLSWUmVQ[F_Bg	: _AQVW\_FP__TSX]Q[oKFQW]oTWQE]]\DoH]CYL[_^g	:U[WEKZUF^YRMFY\]UU
dABUTy^\_[SD_JQT^_SYF_Bg	:QNSI^ZWBWUB_WBcHSCXu]TU[]Wg_UB_WBoU]TU8		_[MHUFY\_uWBW]@c@Y@CUk}_\WCHSBC]mCg__T]	:
QSG[XL[SX[^D\C@T[Do8   [CP[RYL]FZ]_\GCUgPQ^g	:C_@YWW@YU[^D[]Q_Wo]]@WUJmTYKFQ^[W
:	]YEJ]DQ^WY^L]Q@m]ETFYoJWCETFCo8	 _[MHUFY\_2Y[ESZDY[ZVT]QD_QHgBBU[SSX]VoQU]E^Lm8 YBYN]I^^_QL]Q@mQ\T]GU\m@B]QQSPWToY__EVFo 8 [YKW\@EZ^YS8Q\W]QS]F2Y[ESZDY[ZyUB\Q\DVPQSSW^TKYVF^JWCETFCoVWUT\YZGDYT
]]_

lK@U\s\\WQQDW@Y^\_[SD_JYVF^KB\YLRW]\MAUoZS^DBMW8	

_[MHUFY\_RQ[YU^\mY^^]Co\RQ[YU^\A2 YYC]^V_SM_U^LAoX]S@oW@TUJWBoT_[G]UVFCo:
]YEJ]DQ^WV@UCM^DCg\UU\m^JWCETFCoVWUT:		_AQVW\_F^KoSYQXUg\UU\m :	[QAU\^]ET_[AoCLSWUm CLSWU	mR_M\TQJKo:		S[CUT[]]@Y@CYW\o]]FX_\m}}`wuguu~}`ys: U[WEKZUF]]@WU\mT_[AoSWG^Dg 8UQUECPWFC]Y@DoKFQW]oVYQD_JmVY^CU:U[WEKZUFSPWS[gADQ_W o\]SEUW^DgB_CQFY_VmVY^CU: YKZYRQF_FQT^_SYF_BgQ\T]SQL]B8S[MYXDQQX^CH^YDg^CH^YD: ]SGJUNS^_EKWoRY\oMAUoZS^8	 _[MHUFY\_]Q@m]ETFYoJWCETFCo:	YTUUS[_NK:	YTUUS[_NM:	YTUUS[_N: 	 TNSCYTKUFD_Y\cUL{W^W@UsjqSW\CD{W^W@UsjqQU^_JWoSJQ:	TDQCQ^IUNK:	TDQCQ^IUNYWV]BUgQBSgQU^_JWoSJQ:	TDQCQ^IUNM:	WCQ^]^_N:		_AQVW\_FD_Y\cULa sYQXUk[JUY^LC gQQSPWoCQHUI^KoSYQXUg\UU\mA o[SSX]mCYBWE8   [CP[RYL]FN]YTaUDmAUrY\Z]_\GCUgPQ^KMAUoZS^oEKWoRY\E8	 _[MHUFY\_N]YTaUDuSH}M^DYjWCETFCQ\DUSHoUG\DQmBUKG\DKK_QHg_E\L[oB]AE\LAo]Q@m]ETFYoJWCETFCO: 	 TNSCYTKUF8UQUECPWFN]YTaUDk_QBLaDQ_W vYQD_JR_W^CUSBDgADQ_W o^SSDW@CC]Y@DoKFQW]oVYQD_JmA]QJFoCLSWUmVQ[F_BM:	 ]YWMAXUNF_QVc]FsX]Q[cLSWUv_SM_U^Lb_CQFY_VR_W^SPWS[gADQ_W o\]SEUW^DgB_CQFY_VKQXU[YoCLSWUmT_[G]UVFo@WAYDQ]^oSPWS[gADQ_W o\]SEUW^DgB_CQFY_V	M2WY_GCX]D:	YAXYZ[D_NF_QVqHB\IzS^b]AE\LA[]^CLrQ[YU^\`UCM^DCuWBW]@

ZS^B]CEUKFCPQ^g@C8   [CP[RYL]FC8 [CP[RYL]F^]B[]^CLQEL]ZS^o]\
ZS^oJA:	YAXYZ[D_NK:	YAXYZ[D_NV_JQEL]\]SoT_[G]UVFCo: YKZYRQF_FI: YKZYRQF_F[VV_SgT_[[TRY\oUVT_[[TTWQoZSS[]\TRY\oUVRQ[YU^\:	YAXYZ[D_NK:	]YEJ]DQ^WYVT_[mRY\oCLSDUgV_SM_U^LmBU[]BTrQV`UAjWQTA:]SGJUNS^_I:]SGJUNS^_TWQoUS\GY@URQVmU^[CoUS\GY@U2	
U[EBWFQV]V_SgBUU]FURY\oUVBUU]FU8	_[MHUFY\_T_[mRY\oCLSDUg\]SEUW^Dg@USW@T
pQ^jWAb]STI8	_[MHUFY\_2	
U[EBWFQV]PQ^VWTo\]SCgQ_EVFoTWQoJW]_NW:	 ]YEJ]DQ^WM:	
 ]YEJ]DQ^W:
]SGJUNS^_[VPQ^gW^QAoBW]DoZS^8	 _[MHUFY\_RQV\UTgV_SKmS_M\DozS^rAv_]Y[^V_SgC [@SZS^o]\8	 _[MHUFY\_2 
QCXQPYDWDRJWQ[8   [CP[RYL]FE8   [CP[RYL]FE8   [CP[RYL]FE8   [CP[RYL]FE8   [CP[RYL]F2 
QCXQPYDWDFW[TyB@\Aw]@LKrQVs^COWBQ_^KFrYQ[UVVbUKG\DKUB_WB
PQ^JWAE]ADCRQVmBC: YKZYRQF_FI: YKZYRQF_Fs@@TKrQV`UCM^DCRQVmBC:	YAXYZ[D_NM:	YAXYZ[D_N:
YKZYRQF_FD_Y\s\]SBqT^t_[A2 	
QCXQPYDWDK2 	
QCXQPYDWDTWQE]]\DCgS\]SB	:
YKZYRQF_FO:
YKZYRQF_F8	

_[MHUFY\_N]YTsTTkFQW]bUKG\DpQSSW^TqvRYQ[UVV[]^CLCDYUU g@UCM^D@UC8[YKW\C8_KSV_V]FRQ[YU^\mT_[[To[]]@Y@QDW@\]SEUW^Dg@USW@TQ]@8
[YKW\QCKWBDRQ[YU^\[^DPQSSW^Tg[^VWAoK[JU8	Q\W]QS]F2CYQJYYosb~q|w
��������������������������������������������������������������������:	 CSSJQS�����������������������������������������������������������������������������������V2CYQJYY�������������������������:QVU]YY_FEVAYWVWTVV_SKmBU[WYF]VoR]T_B]ZSS[]\ToQ\V_KmkRYQ[UVVmVV_SKmBU[WYF]V:  YTUUS[_NZSS[]\ToQ\V_KmkRYQ[UVVm_]DoKFQW]B]A2
	ST]_Q[WD:	YAXYZ[D_NQT@UCV_SKCQHUVV_SKmBU[WYF]VoR]T_B]:S[CUTC8_KSV_V]FQTQXU[YoCLSWUmT_[G]UVFo@WAYDQ]^o:	
_AQVW\_FI:QVU]YY_FVW@M\CY_\UT[QVV_SKmBU[WYF]VoR]T_B]	[:	 WCQ^]^_NC8UQUECPWF\]SEUW^Dg@USW@T\]SZSS[]\T[H]CJWC\]SCiYm	:	
_AQVW\_FADTFU[F_BV_SM_U^LmBU[]BT
YLWBQL]B^[^Tg[DVYVVoGQFXV_SM_U^LAoZWWYVV_SM_U^LAo]\TTWQ[_@8_KSV_V]FQTTY^\mYD\]SEUW^DKmUVV8_KSV_V]FC8_KSV_V]F|__wBBW@Z]_CL
VW@]QLq\VcDYUU jWCETF
v_SM_U^LTWQYTTPQSSW^TT\_DT_EVV\]S\]SY\\]SZSS[]\T8_KSV_V]FE8UQUECPWF]^CU[VVYVVoYLG][WXLV_SEUY_ZDDNVQ\ToQFH]CTWQ@WA8UQUECPWFC8_KSV_V]F|__wBBW@Z]_CL
VW@]QLq\VcDYUU jWCETF
v_SM_U^LTWQYTTPQSSW^TTEQCQXQVUUTVYVVoYLTWQYTVQ\ToQFZSS[]\T8_KSV_V]FE8_KSV_V]FM:	 WCQ^]^_NM:	 WCQ^]^_N:QVU]YY_FT_BE^K[W^]VY^\]SCg@US][FU\mRU^]BUYBUKT_[A K[JUY2]CYT_^WDK2	WY_GCX]DV_SM_U^LmBU[]BTV_SPQSSW^TY	B_C@UCV_SKkYe:WCQ^]^_NQTQXU[YoCLSWUmT_[G]UVFo@WAYDQ]^o: _AQVW\_FK2 ]CYT_^WDCLV

NWSDW@TWQE]]\DoJWS_JV
[DUJSD_JVYVVoYL^[^TgEYDPTWQE]]\DCgRU_[^TWQE]]\DCgU^\V_SS]H:	 ]YWMAXUNYVVQ\ToQFT_[G]UVFCoW^T2	WY_GCX]DK2]CYT_^WD~_W}@B_JRW]CDV_J_QDqT\aDQ_W b]AE\L
|]SEUW^DT_[[TVZSS[]\TVY^BUYVIYVTU\TWQTWQYTTWQRYQ[UVV8
 _KSV_V]FE8	_KSV_V]FM:	YTUUS[_N: YKZYRQF_FY^MAUoZS^o: YKZYRQF_FTWQRY\oCLSDUg\]SEUW^Dg@USW@T
pQ^jWAb]STI8	_KSV_V]FT_[G]UVFCoBECPmRQ[Y\]S	:QVU]YY_FTWQE]]\DoJWS_JVJWVT_[G]UVFCoPQSS2Q@QVSSX]D:	YTUUS[_NJWV]\CEJWoTYFQY^\_[SD_Jm2ST]_Q[WD@UVVQDYCV[@oP^@UCV_SKkYeC^QBoXT	:QVU]YY_FB]TTYFQ[CoVSFY_JWC\]SCiYm[CoVSFY_	:QVU]YY_FB]TTYFQQBBUKT_[A kQoSJ	:	
QUGBQKZUFB]TTYFQAVAB]ATWQC c[mKTA2	
 QCXQPYDWD@UVVQDYBY\[oL@QS]mVUYF@UCV_SKkYeBQVYoDJSSUgTUQL	:  [BQD_IB]TTYFQV_SgFBQ[W@UCV_SKkYeT_[mDBYQU2]CYT_^WDM2ST]_Q[WD:	YTUUS[_N^UOV_SKmCDYUU gPQSSW^Tg[^VWAokZSS[]\Tm\T_[AoB]QUYNWT^TWQCoJWSUQDUTgPUVW@U2 YYC]^O:		[QAU\O:  ]SGJUNS^_8	

_[MHUFY\_N]YTsTTkFQW]bUKG\DpQSSW^TqvRYQ[UVV[]^CLCDYUUg@UCM^D@UC8[YKW\C8Q\W]QS]Frwado~}buyqx[]^CLCDYUUgV_SM_U^LC	V_SBUKT_[A2ST]_Q[WDI:

_AQVW\_FADQ_WoJWS_JVCoBECPmRQ[YKFQW]oB]Q_B\RQ[YU^\C	V_SC\]SQAo]Y^GQJWKT_[XQKm^U[WCCY@IoLSWC8 [YKW\M:S[CUTM:	YTUUS[_N:		_AQVW\_FD_Y\wULtY^Y^bUKG\DpQSSW^TjWCETFC}]@WUJ
VQ\Q\g@UCM^D@UCC [SSX]mY^^]KoDWmSQ[ZU 	:
	[QAU\D_Y\wULvURMUy^^]CLV

KFBYVUCDJWQ]_C	:TQ^F_SZY^D_Y\wULqBSb_CQFY_VARW]CDE^W@TUJWToUS@M[^DoDY^L[@SgB_C	:	
[QAU\D_Y\bUU]FUzSS[]\Tb]AE\LAYVFRYQ[UVV2 
QCXQPYDWDRW]\vWHDlSC[C JWAE]ADCC JCKBUIGUCLAKBARQVmS_VFQYVWBPQ^I2	 U[EBWFQV]:	WCQ^]^_NY^LWULQHh@USYQXU\s]_M\DS_VAD:	WCQ^]^_NK:	

[J[F_AJWDEJ\\BUKG\DKm^U]Vo
UUDh@USYQXU\s]_M\D\BUKG\DKm^U]Vo_QHgBBU[SSX]VoQU]E^LmUSHoY^\_OWToH@USYQXU\mQ]WG^Dg2]CYT_^WDM2
YYC]^BBYNSDU8[YKW\2YYC]^D]_@\YFU[^QCKd2YYC]^CL@ESLRQ[YU^\mT_[[To[]]@Y@QDW@:	[QAU\I:  ]SGJUNS^_RW]\WBUBYF_BSW\CDfYSW\CDfZSW\CD2YYC]^I:  ]SGJUNS^_@UDM@^SRYQ[UVVRZSS[]\T:	[QAU\YT_[[TR\]SY\
SRYQ[UVVPRYQ[UVV:	S[CUTE8[YKW\E	:	
_AQVW\_F8_KSV_V]FLW]@TSDUQ\QKAd8_KSV_V]FKFBE[FRYQ[UVVoTWQYTgQ_]HSBQL]B2]CYT_^WDK2]CYT_^WDP__T_@]@QDW@Q_^KFdQQ_^KFdRQ_^KF:	
_AQVW\_FK2
	ST]_Q[WDB]FEBVQPQSSW^TZRQ[YU^\STWQYTZT_[[T8_KSV_V]FM:	 WCQ^]^_NM2]CYT_^WD:	S[CUTDUUB\QLWSTSCCfqQ\QKAdz:	[QAU\ADBMQD\]SEUW^DKmRQ[YU^\mT_[[To[]]@Y@QDW@:	S[CUTK:
]YEJ]DQ^WZ]_\]@UJSD_J[]^CLdqQQ_^KFdzRS_VAD:	S[CUTC8	

_[MHUFY\_JWDEJ\YRQ[YU^\PRYQ[UVV8[YKW\QV_SQVPTWQYT
YRQ[YU^\ZRQ[YU^\	:	[QAU\M2YYC]^M8	

_[MHUFY\_2\FQK[\I]DD]_@\YFU[^QCKsX]Q[UJTWQBU[mYD]@QDW@]]@WUzKsb{Y^LBU_[_^sX]Q[UJSX]Q[UJ:		S[CUTT_[@USg[DUJSD_JWULUB_WTb]UY_VY^LBU_[_^	:  ]SGJUNS^_8Q\W]QS]FN]YTA@\QFt_[G]UVFC\]SB]QoYLWBQL]BZ]E^\SBI8Q\W]QS]FC8 [YKW\CD\
VW@oUYQXV_SM_U^LAoZWWYVP_EVVQBACLV

UW]o^G^oJWVV_SM_U^LmBU[]BTS\JmYWV]BU2
 YYC]^_UB_WTo\]SCgQ_EVFo 2YYC]^M2	 U[EBWFQV]: 	S[CUTCDJGSDSGQQFoYVT_: 
S[CUTK: 	S[CUTQ\D\QGY[DYVUoCLSWU		:	 [QAU\YVFV@UQ\KoCLSWU		:	 [QAU\RW]\KFQW]oSW^\YK[_^gT_EVV:	YAXYZ[D_NQ\D\QGY[DYVUoRY\:	YTUUS[_N:QVU]YY_FQOSYDg[^VW:	YTUUS[_N
VSGQQFY^_mCDYUU\BUYVIoKFQW] : YKZYRQF_FCLSWUmS_T^YCQ]^o^]E^\VQTAU^QOSYDQ\WoZS^:QVU]YY_FK2ST]_Q[WDO:QVU]YY_F8Q\W]QS]FR_W^GY[DoK]]ULZY^_[]^CL8Q\W]QS]FK:	YAXYZ[D_NBULGB^^QOSYDQ\WoKFQW]LDCDYUU gQ_\T[CYW\oVWG^TNLVSGQQFY^_mRQV: 	S[CUTE8 [YKW\E	:  ]SGJUNS^_8   [CP[RYL]FYEQYLmY^^]W]FqGY[DYVUbUIGUCLAKBUIGUCLAKBACJWAE]ADCCJCZS^B]CEUKFCPQ^JC\]SB]QoYLWBQL]BZ]E^\SBI:
]YEJ]DQ^W:	 [QAU\D_Y\Q@H^IsPS^W]A8 [YKW\N]YT[]@W@DcLSWU	`UCM^DC:		S[CUTF_QVYUB_BLarApQSSW^TKYVFRWG^TY@IADTFU[F_BADQ_WoJWS_JVAB]QC	:QVU]YY_F8	SFYK^R]@W8
K[QBS[rRBQWV���������������������������������������������������������������������\����������������������������:
 A[YHQ[pRJ[UV���������������U�����������������������������������������������������������������������������������:	 CSSJQSpZ@YU^�����������^
U: QDQIVPUB_: QDQIVPUB_F_QVCH^QCP{]Q_WC\]SB]QoYLWBQL]BZ]E^\SBI	:QNSI^ZWBW8
K[QBS[xPBY]T�������������L@EU��������������������������������������������������������������������������������c	�����������: ]YEJ]DQ^WR_W^yK|UU\WTc	YVF@WAYDQ]^P__T@B]_QDM@UVQTAUS_VAD2		U[EBWFQV]:	 CSSJQSpRJ[UV���������������������������������������������������������������������������c	�����������������:	 CSSJQSpRJ[UV��������������DBMW��������������������������������������a��������: ]SGJUNS^_P__TwULtY^Y^cjWAE]ADCT_[@USg[DUJSD_JR_M\TQJKKBUIGUCLAABI2		U[EBWFQV]: ]YEJ]DQ^WF_QVuVCEUMWcT_[G]UVFoB]Q_B\B]Q_B\C	@UAMWCDKC	@A	: YKZYRQF_FD_Y\u^IGUE]pQ^T_[G]UVFoB]Q_B\B]Q_B\RY\BUIGUCLAKBA:	]YEJ]DQ^W: ]SGJUNS^_D_Y\wBY\DtW_QYVuB_MBr_VGC	:	 ]SGJUNS^_8	_[MHUFY\_Q\DzS^rAv_]Y[^G^CQU^U\C [@SS_VADZS^B]CEUKFoUVFBIRY\oUV2		U[EBWFQV]:	

[J[F_ACDYFYS[^DUUDh@USYQXU\s]_M\DQ\DVVT]QDBBU[SSX]VoQU]E^LVT]QD_QHgS\\WEUTgBBU[SSX]VoQU]E^L:QVU]YY_FI: [BQD_IB]FEBV]YV]Q@mQ\T]GU\m@B]QQSPWToY__EVFVH@USYQXU\mQ]WG^D	:QVU]YY_FO:QVU]YY_F8	UQUECPWFM\CY_\UTA]QJFoCLSWUmVQ[F_BQ_^KFTWGR\]2	 U[EBWFQV]:S[CUTVBQW^TQ\QKArYQ[UVVbUKG\DKUB_WB2
YYC]^O:
]YEJ]DQ^W:	   [QAU\2CYQJYYrRBQWV������������������������������������������������������������2CYQJYYrRBQWV������������������������������������������������������������������2CYQJYYr@QJS]kQ\mZSS[]\T������������������8 [YKW\:	S[CUTQ\\YVWFW[TzSS[]\Tb]AE\LA}UJUUBy]H^

jW]_NWrQ[YU^\`UCM^DC[^DPQSSW^T8 [YKW\K:		S[CUTrwado~}buyqxV_SM_U^LmBU[]BTBV_SM_U^LAo8[YKW\C8 
_KSV_V]FYVBPQSSW^TZSS[]\TBPSCoKFQW]NL@XYAo^]QUCKSBIgFQWK: 	S[CUTBKWDoJW]_NWT	:		[QAU\O:  ]SGJUNS^_8 [YKW\ZSS[]\ToQ\V_KmkRYQ[UVVmUSB[gVUQ\2
YYC]^O:
QVU]YY_F8 [YKW\:	 CSSJQSxEQBV[^W������������������������������������w^n
���^�������������dls|o|}scgzqf}8
K[QBS[pRJ[UV����������������������������{`s���������������������������������������������������������������:
 A[YHQ[pZ@YU^����������������������������������������g��������������m������������8
K[QBS[pRJ[UVm���o��������o������������������^]\DBQWC���������������������:
 A[YHQ[pZ@YU^�����������������������������������������������������������������������������������2CYQJYYrBULGB^����������������������������������������������������������������������������������������������������2YYC]^: 	 TNSCYTKUFD]_@\YFU[^QCKsX]Q[UJ:	 [QAU\rYQ[UVVbUKG\DKUB_WB
{]@T
TWQBU[mYD]@QDW@: 	 TNSCYTKUFrYQ[UVVbUKG\DKUB_WB
{]@T
]]@WUzKsb{S_VADQ\DVWUTsX]Q[UJSX]Q[UJ:	
[QAU\K2 YYC]^YVF]]@WUgSBUYVWUT8 [YKW\Q\DVSSDQDUo]\DBQWC 2ST]_Q[WD: QDQIVPUB_R_WAD
G^_JVUB]Vo]YBEVAYWVWT[^DT_USY^KmBUKG\DK	:QNSI^ZWBW8Q\W]QS]FdPWRWG^TY@IWT]]@WU\T_[G]UVFC2ST]_Q[WDTWQBU[mYD]@QDW@RWG^TY@IT_[G]UVFCoPUWQ\8Q\W]QS]FdPWRWG^TY@IWTTWQE]]\DCEYDPBUIGYB]V@WAYDQ]^2ST]_Q[WDTWQBU[mYD]@QDW@@WAYDQ]^T_[G]UVFCoPUWQ\8 [YKW\\]:	 [QAU\I:	 [QAU\8
K[QBS[���������������������8 [CP[RYL]F������������f`����������������������X]S@]J@QVV:	 CSSJQS
�������������������������������������������������������������������2CYQJYY����������������������������������������������������������������8
K[QBS[����������������������������������������������������������������������������������������������������������������������2CYQJYY�����������������������������������������������������������������������������2 YYC]^:YTUUS[_N:	 [QAU\k	m:
 A[YHQ[����������������_UB_WoQJWQ��������������������������������8	S[MYXDQQX:	QVU]YY_FYVF^g_QHQ\DV_SM_U^LAoK[JU:	YTUUS[_NQ\DVm@_K[^DCD\
TQADQVQU\]SEUW^DKmR]UY^H]CYL[_^	:		QSG[XL[SX:	
  QYE[PFYSPUWBW]mQB]S_Y^S_UBQBK[_^g_UDP]Touwbw}mim~qVm@_KUWBW]mQB]S_UB_WoQJWQ
]UJUUoY@UQW]F}Q@bBU[SSX]Vq]WG^D^oUSH8	S[MYXDQQX:	 [QAU\X]S@oW@TUJWBo`UCW@DdWBUWBW]mQB]S8Q\W]QS]F2ST]_Q[WDu]FUFXU_UB_WRWG^TY@IYZUQ\RMFQTA_KSFUFXU^QCLR_M\TQJK:QNSI^ZWBWFQTGUM\DYTDX]]UJUUQASW_@\]FUfXU_UB_WYK@UJT_BUWTWDUB2ST]_Q[WDLZU\]SEUW^DKRULEUUVDX]AULE_Z]E^\SBY]A:	YTUUS[_N\]SB]QoYLWBQL]BH@UFgP_EVVQBAZ]E^\SBI8Q\W]QS]FR_M\TQJKV_SM_U^LAoZWWYV]UJUUoY@UQ8Q\W]QS]F2ST]_Q[WDqTDPWTWQE]]\DCPUVW@ULZUTSCDP_EVVQBAGUJWQT^GQFXJWAEQ@UT2ST]_Q[WDH]CYL[_^FXUVYD[CVWUT]VDWSX]Q[QTDPWBUSBUA_]]]_JW_^8Q\W]QS]FFXUU:	QVU]YY_FY^@JWFoZ]E^\SBIH]CYL[_^8Q\W]QS]FK:	YTUUS[_NGXQ^UB_CQFY_VP_EVVQBAB_CQFY_VB]CEYJWToH]CYL[_^[^YL[Q\QHUT:	YTUUS[_N@_K[DYW\:	YTUUS[_NY^ :	YTUUS[_NYV@_K[DYW\R_M\TQJK:	YTUUS[_N[]^DQ\EU8Q\W]QS]FH@UFgP_EVVQBAH]CYL[_^8Q\W]QS]FW^TQT:	QVU]YY_FM2ST]_Q[WD:YTUUS[_NQT[W^W@Uo[@Sos\\:	TDQCQ^IUNCim:	S[CUTV_J\]SB]QoYLWBQL]BQ[BBUNmR_M\TQJKQ[R_M\TQJKYY:	 [QAU\I:	QVU]YY_FY^YQQ[FYF]2 YYC]^I: 	 TNSCYTKUFQXU[YUB`UC]FYY:	TDQCQ^IUNV_J\]SB]QoYLWBQL]BRXV_SM_U^LAoZWWYVXZYQ	XZ8 [YKW\C8   [CP[RYL]FYVZRQ[FYF]SPWS[]@sPWS[~]B}]@WUZZ2ST]_Q[WDI: 	 TNSCYTKUF[YAUDg[W^W@U	:	 	Y[BA__F]]@WU\mT_[AoSWG^Dg	: 	 TNSCYTKUFPBUYY:		S[CUTE8 [YKW\E8 [YKW\M: 	S[CUTM: 	S[CUTE8Q\W]QS]F2	 	YFQA\RUJUcm:QNSI^ZWBWY^[]]@Y@CYW\o]]FX_\m}ujuuoqqw}a: QDQIVPUB_C8	SFYK^R]@WS_VADQ\DUSHo\]]QQ\oB]AE\LAADTSUQ^T\_YF^JWCETFCoVWUTgQ_WoUWBW]@o]WVUKB\QKZo@YUUoK[JU[]Wg_UB_WBoU]TUA@\YAXoK[DUg@UCM^DC8	SFYK^R]@WV_JT_[@USg[DUJSD_JYD@JWFoZ]E^\SBIYDRWG^TY@IYL:QNSI^ZWBWK2	 	YFQA\RUJU[V[DSSDQDUYWV]BUgQBSgwUL{W^W@U	YDC [@S 2	 	YFQA\RUJUI:QNSI^ZWBWTW_QYVAoB]AE\LAkYLCQBS
m		:QNSI^ZWBWY^TW_QYVAoB]AE\LAkYLCQBS
m]YJoTW_QYVmBUKG\DK:QNSI^ZWBWK2	 	YFQA\RUJU[DAUDg[W^W@U	:QNSI^ZWBW_UB_WTo\]SCgQ_EVFo2	 	YFQA\RUJUO:QNSI^ZWBWM2	 	YFQA\RUJUO:QNSI^ZWBWM2	 	YFQA\RUJU: 	S[CUTkm:	YTUUS[_NVSSDQDUo]\DBQWC8Q\W]QS]FCD\
SWG^Dg[VH]CYL[_^R_M\TQJKUW]o^G^oJWVV_SM_U^LmBU[]BTQSL[FU: S[CUTM:	YTUUS[_NGXQ^UP_EVVQBAV_SM_U^LAo]\T\QSL[FUgW^DJ[UC^]WT	:	QVU]YY_F8Q\W]QS]FJWDEJ\RWG^TY@I2
YYC]^O:  ]SGJUNS^_8Q\W]QS]FrQ[YU^\`UCM^DCuWBW]@

q_@\T_[@USg[DUJSD_J8Q\W]QS]FrQ[YU^\`UCM^DCuWBW]@

q_@\WULUB_WTb]UY_VY^LBU_[_^8 [YKW\K:		S[CUTYVS_UBQBK[_^g_UDP]Touwbw}mwuvwby{:   TNSCYTKUFB]FEBV]UJUUrAqbsBU_[_^wUVWBQTqQ^\[TQLWsX]Q[UJT_[G]UVFoB]Q_B\Y_\_B]mSB[m	:QVU]YY_FW\C]8	SFYK^R]@WC8
K[QBS[��������������������������������������{`s�{ZUSSWB����������������������������������������������: QDQIVPUB_qU^_JWsb{YWV]BUY_\_B]mSB[m: QDQIVPUB_QU^_JWc]FyWV]BUL@EU	:C_@YWW@YUB]FEBV]UJUUrAqbsBU_[_^xQU_Y^_qQ^\[TQLWsX]Q[UJT_[G]UVFoB]Q_B\YUSWUg_UB_WBo\[CDY\SUYWV]BU2	 	YFQA\RUJUM2	
YYC]^O:  ]SGJUNS^_8 [YKW\F_QVrYQ[UVVbUKG\DKUB_WB
{]@T
QHB\I{ZQ^_WC8 [YKW\K:	S[CUTYV^UOV_SKmCDYUU g:	[QAU\I:	[QAU\Y^ADQ_WoJWS_JVCoW]@LK:	[QAU\K2YYC]^|WUtUZGWrQ[YU^\`UCM^DCuWBW]@
m\UV^[SY]\DMAQW]@QLFUBVKFQW]QVVCLSWU	VYT^UTAY]M^DQVW_EK^I:	 CSSJQS���������������CDYUUgP_EVVQBAm����������������������������������������������������CLSWU��������������2YYC]^CLSWU	mR_M\TQJKo^]ET_[AoCLSWUm:	S[CUTE8[YKW\^UOV_SKmCDYUU g	:	 [QAU\X]S@oW@TUJWBo}^cW@DsY\SUT^UT:	]YEJ]DQ^W2	U[EBWFQV]uBQVFt_USY^@_EHp_^MA8[YKW\E8 [YKW\Q_@_JFcDYUUjWCETFC	:	
[QAU\M2	 U[EBWFQV]: 	S[CUTzSS[]\Tb]AE\LA}UJUUBy]H^

YEQYLmY^^]: YKZYRQF_FrYQ[UVVbUKG\DKUB_WB
{]@T
W]FqGY[DYVUbUIGUCLAKBUIGUCLAKBACJWAE]ADCCJCZS^B]CEUKFCPQ^JC\]SB]QoYLWBQL]BZ]E^\SBI:		[QAU\K2WY_GCX]DTWGR\]GUQUXDgAE] 8Q\W]QS]FM\CY_\UT\T_[A:	YTUUS[_NE^K[W^]V^\]SCgWHDJS:	YTUUS[_N:	   [QAU\V_SJWSoQFUBYF_B[DT_[G]UVFCoPUWQ\8 [YKW\^]BQFR_M\TQJKYD:		[QAU\I:	QVU]YY_FSW\CDV_SM_U^LmBU[]BTBU[]BTQF:	YTUUS[_NQTJWS_JVB]CEYJWToH]CYL[_^[^YL[Q\QHUT:	YTUUS[_NC8Q\W]QS]F^TWQCo]JDBY	:	QVU]YY_FM2ST]_Q[WDW\C]8Q\W]QS]FK:	YTUUS[_NGUQUXDgAE]JWS_JVG][WXL	:	QVU]YY_F^\]SC8Q\W]QS]FM: ]YWMAXUNM: ]YWMAXUN:QVU]YY_F[^D\BUKG\DKmQE__U^LWT^B]AE\LAo^]WTo^\]SCgWHDJS:	YTUUS[_NY^L]Q@m@B]QQSPWUUDuSH`JWSQ[ZUTy__EVF^\]SCgWHDJS:	YTUUS[_N:QVU]YY_FSGQQFoYVT_YEY^^	: YKZYRQF_F8	UQUECPWFQFV_SM_U^LAoZWWYV2		U[EBWFQV]: ]YEJ]DQ^WY^LQSLGQ\gB_CQFY_V	:
	U[WEKZUFT_B[DRWG^TY@IYL: ]YWMAXUNK:S[CUT\]SEUW^Dg@USW@T@USW@TYL	:	QVU]YY_FTWGR\]GUQUXDgSFBG][WXLmCEUVV_SK	:QVU]YY_F8 [YKW\YVB]Q_B\QSL[FU2 YYC]^I:

_AQVW\_F[VBU[]BTZQCgADQ_W@USW@TPSCoVWSUKAQBAmDQ_ALDqA~U]VUTkYQDEY^o@WAYDQ]^FBE]2 YYC]^K2 
QCXQPYDWDY^B]Q_B\RQVmCDYFUo\]SEUW^Dg@USW@T
pQ^jWAyV[D8   [CP[RYL]FC8   [CP[RYL]F}\AE]GUrY\JWS_JVZS^BI2 
QCXQPYDWDQO[^V\QGY[DYVUoRY\8   [CP[RYL]FE8   [CP[RYL]F]^CU[V@USW@TZS^oKFQD]mT_[G]UVFoB]Q_B\
rY\bUIeQYL:	YAXYZ[D_NK:	YAXYZ[D_NQGQ\VVSGQQFY^_mRQV2 
QCXQPYDWDM2CYQJYY�����������������CLSWU�������������������������:YKZYRQF_F[VYEY^^^B]STIgADQ_W^JWCETFCoYGW]]\DU\QGQ\VOSYDgA_]]FXYVUK2 	 QCXQPYDWDRJWQ[8  [CP[RYL]FE8
[YKW\E8 [YKW\]^CU2 YYC]^K2 YYC]^SGYVT^YEQYL[^WgADQ_W	: ]SGJUNS^_uVCEUMWcBU[]BTCJC8
[YKW\E8		_[MHUFY\_Q[FEQTm@_K[DYW\: 
S[CUTE8Q\W]QS]F2CYQJYY������������������������������������������:	 CSSJQS��������������������������������������������������������2ST]_Q[WD[^DBBU[SSX]V@UCM^DCgSEWUW^D]VSGYVT^JWQTAmCDYUU8 YBYN]IYVQO[^V\QGY[DYVUoCLSWU	_Y^UUDh@USYQXU\s]_M\DH@USYQXU]Q@m@B]QQSPWToY__EVFo_QHgS\\WEUTgBBU[SSX]VoQU]E^Lm_QHgBBU[SSX]2ST]_Q[WDI:
 A[YHQ[YL	��������������������������������������������������������2YYC]^RJWQ[8 [YKW\M: YTUUS[_N:
 A[YHQ[���������������������ADQ_W �������������������������������������������������������8
K[QBS[�������������������������:	   [QAU\RYQ[UVVoYVT_PQSSW^Tg[^VWZSS[]\ToQ\V_KmkJWS_JVRYQ[UVVm8 [YKW\YVZSS[]\ToQ\V_[Co\WQT2YYC]^I:QVU]YY_FP__TYCg^QCL@USW@TH]CRYQ[UVVoYVT_VV_SKmBU[WYF]V2ST]_Q[WDY^YKm\QKFRQ[YU^\mY^^]^\]SCgUB_MBCRQ[YU^\mY^^]^\]SCg@US][FU\:	 [QAU\I:
 A[YHQ[���������������������CDYUU �����������������������������������������������������2CYQJYY�������������������������������������������������������8
K[QBS[����������������������������������������������������������������������������������8
K[QBS[����������������������������������������V@UCM^DCg\UU\m�������������8	

_[MHUFY\_2ST]_Q[WD[VRYQ[UVVoYVT_QAoGY[DYVUoCLSWU8Q\W]QS]FK: ]YWMAXUNE^K[W^]VVYQD_J
	:QVU]YY_F8 UQUECPWFQTK_QBLmCDYUU gTQSL]BoOWYWPFoQN@: YTUUS[_N^SSDW@A]QJFoCLSWUmVQ[F_B@USW@TOWYWPFEUY_ZDoYDB8	UQUECPWF2ST]_Q[WDYVF^\]SCg@UAMWCDRYQ[UVVoYVT_VV_SKmBUIGUCLWT2ST]_Q[WDY^VV_SKmBUIGUCL:QVU]YY_F^\]SCg@UAMWCDRYQ[UVVoYVT_VV_SKmBU[WYF]V: YTUUS[_N^TWQCoJWAE]ADVYQD_J	:
	U[WEKZUF8Q\W]QS]FQTK_QBLmCDYUU gTQSL]Bo8Q\W]QS]FC8Q\W]QS]FYV^TWQCoJWAE]AD]Q@m@B]QQSPWRQ[YU^\mY^^]^\]SCg@UAMWCD]V_QHgBBU[SSX]: QVU]YY_F\T_[AoB]CEUKF_QHgBBU[SSX]	:QVU]YY_FUTAUQTZ]_CL
^]JDQFRWG^TY@I^\]SCg@UAMWCD]YJo@JWSQ[ZU2ST]_Q[WD^\]SCg@UAMWCD]YJo@JWSQ[ZU2ST]_Q[WDM2ST]_Q[WD: ]YWMAXUNC JC@MAXoZSS[C JWAE]ADo]\DBABU[]BTPQSSW^T^TWQCoJWAE]AD2ST]_Q[WDRYQ[UVVoYVT_OSYDgADQ_W VV_SKmBUIGUCL: 	S[CUTE8	

_[MHUFY\_2 YYC]^SGYVTCLSWUmS_T^YCQ]^o^]E^\L@EU8[YKW\E8
[YKW\M:YTUUS[_N:
	U[WEKZUFG][WXLmCEU[DEUY_ZD2ST]_Q[WD^\]SC8[YKW\E8	

_[MHUFY\_2CYQJYY����������������������������������������CLSWU	8
K[QBS[�����������������������������������������������������������������������2	 U[EBWFQV]CLSWU	mR_M\TQJKo]Q@CLSWU	mR_M\TQJKo2 YYC]^CLSDY[mSQKFYVF\[CDY\SUDUSL]B\]SEUW^Dg@USW@TYD]@QDW@TWQE]]\DCgRU_[^QF:
]YEJ]DQ^W:	 [QAU\@UDM@^YEY^^	:		[QAU\M2	 U[EBWFQV]:	 CSSJQSxPBY]T��������������������������������������������CDYUU ADQ_W2 
QCXQPYDWDP__TrQ[YU^\`UCM^DCuWBW]@

q_@\~U@FdQKYKBUIGUCLAKBACJWAE]ADCCJCZS^o[]^DY[^UJRY\oS:	 [QAU\K2 YYC]^QHB\I{ZQ^_WC	:QVU]YY_F8Q\W]QS]FQ\DH@USYQXUW]F}Q@bBU[SSX]Vq]WG^D:	YTUUS[_NT_[@USg[DUJSD_JR_M\TQJKUUDuWBW]VbU_[_^BBU[SSX]:	YTUUS[_N: YKZYRQF_FSGQQFoYVT_YEY^^_WDqOSYDQ\Wb]CEUKFCC JCABIRY\oSRQVmBUIAZ]E^\SBI:	S[CUT|__fBQ[W|UHLfQCSGY[DoK
VKS_T^YCQ]^
CEQYLmRQV\	RWG^TY@IV2 	 YYC]^SGYVT^YEQYL[^WgADQ_WQGQ\VKFQW]oSW^\YK[_^gT_EVVI]A^WYEY^^^QOSYDQ\WoZS^Y^LCD\
TQADQVQU\]SEUW^DKmR]UY^Z]E^\SBI2ST]_Q[WD:	YAXYZ[D_NYVQGQ\VVSGQQFY^_mCDYUU:	YAXYZ[D_NRQVmST_B[WoC]\TDBMW:	YAXYZ[D_N: ]SGJUNS^_[VQO[^VEQYLmC_UWDXQ\W: ]YEJ]DQ^WBULGB^uUD~[^QTab]CEUKFCP_EVVQBAKBA: ]YEJ]DQ^W: YKZYRQF_F8	_[MHUFY\_KB\YLv_SM_U^LAZ]E^\SBI:]YEJ]DQ^W:	 [QAU\@UDM@^YEY^^GQQFoCW_UDP[^W: 	S[CUTE8Q\W]QS]F2YYC]^rRBQWVQ_@_JFCLSWU	BUKG\DCUL]QJYUBK{`sCGYLZY^V_SM_U^LAo:		S[CUTN]YTpQSSW^TjWCETFC}]@WUJ
yUB\
[]@W@Dc	pIrYQ[UVVC[^DP_EVVQBACLV

NWSDW@CLSWU	mBU[]BTC	@USK:	S[CUTC8
K[QBS[��������������������������������������������������������������������:	S[CUT2CYQJYY��������������������������������������C	@UAMWCDg^YCLmTWQCK[JUV_SM_U^LAoK[JU
8
K[QBS[����������������������k�������������������������]YBLG^_JVUB]Vo]YB������������������q`ee8[YKW\:
 A[YHQ[�������������������������������������������������������������������������������������������������ADQ_W2CYQJYY����������������������������������������������DWB����������������������������2CYQJYY]UJUU���RQ[YU^\mYTT_[[T8
K[QBS[�������������8 [YKW\cjR_M\TQJKcbAB]CEUKFo\QADoV_SKCYBWUSHP_EVVQBAC	@UAMWCDg^YCLmTWQCK[JU2CYQJYY�����ab@J\WU@:	[QAU\:	 CSSJQS���������������������������������������������������������������������������������������������������������������:	 CSSJQS������������������������������������������ADQ_W �������@JW@QJWcDYUUt[CD��Y]H]BDkFQW]bUKG\DK8	

_[MHUFY\_:
 A[YHQ[��������������������������������������������������������������������������������������������2CYQJYY�����������cUKAY_V����������������������������������������������������������������������2CYQJYY���������������������������������������������������������:	 [QAU\:	S[CUTFU[F_BV_SM_U^LmBU[]BT
YLWBQL]B\]SCg[DT_[G]UVFCoPUWQ\8	

_[MHUFY\_NWSDW@TWQE]]\DoJWS_JV
[DUJSD_JR_M\TQJKoUVVV_SM_U^LAoZWWYV8 [YKW\]YVTWQE]]\DCgCYBWRWG^TY@I	V_SM_U^LAoK[JU
CYBWoDP_EVVQBA2	 U[EBWFQV]: 
S[CUTC_JF\]SCg[DP_EVVQBAmU^\RYQ[UVVoTWQYTgQ_]HSBQL]B\]SEUW^Dg@USW@T8 [YKW\K]BDCJWSCPUWQ\CJWSCW^TZSS[]\To\]SY\mS_UBQBYF_BADQ_WoJWS_JV2	 U[EBWFQV]:	S[CUTY^L^CS[@@]V:	S[CUTT_[G]UVFCoZSS[]\To\]SY\mS_UBQBYF_B
T_[G]UVFoB]Q_B\CLSWU	mBU[]BTS]H	:  ]SGJUNS^_8 [YKW\^]BFU[F_BADQ_WoJWS_JV
Q_^KFoYLWBQL]BKYDC	@USKRU_[^	:	   [QAU\C	[DC	@USKU^\2YYC]^C	[D8[YKW\C8 [YKW\GXQ^UT_[AoYLP_EVVQBAmU^\Q]@T_[AoYLKYD:	S[CUT\]SCg[D2	 U[EBWFQV]:
]YEJ]DQ^WQTV_SKmYDZ]E^\SBIgW^T\]SCg[DAQ]]m\_[S\o\]SY\C	[D:	[QAU\K2CYQJYY������������������������������������������\]SEUW^DKm:	   [QAU\V_SKmYDQCK[W^gADQ_WCQF8[YKW\YACUJF\]SCg[DZQCgADQ_W2	 U[EBWFQV]:	S[CUT\]SCg[D2YYC]^O:	   [QAU\UTAU: 
S[CUTC8	

_[MHUFY\_t]Wt]PEWsY\DWQCQ^IYACY_\CLSWU	BUKG\DTTEYDP[^Z]E^\SBIT: 
S[CUTCQFZSS[]\TAYLTWQYTR_M\TQJK8	

_[MHUFY\_2CYQJYY�����������������������������Z_Q\��8 [YKW\NWSDW@TWQE]]\DoJWS_JV
[DUJSD_JHYLKFT
TY^\RWG^TY@Io]\TV_SM_U^LAo]\TKYD: 
S[CUTYVHQFT_[G]UVFCoW^TI:	   [QAU\|WUuBJ]BsQVF]YFSXADQ_WJWCETFV
\qFXYA^LRU]\B]CEUKFUTKYDRQ[YU^\C	[DV_SQV8 [YKW\VA[YHBUT8 [YKW\E8 [YKW\]^CU2YYC]^JYDQCK[W^gADQ_WCQF8[YKW\M:	S[CUTM:
]YEJ]DQ^W:  ]SGJUNS^_~_W|WRE_kFQW]Y]H]BD]@VQ\YCPWTT\]SEUW^DKY]H]BD]VVCS[@@]V8 [YKW\YVFKBU[ACQHUVA[YHBUT^KYY@HWT8[YKW\M:
]YEJ]DQ^W:	[QAU\FW[TzSS[]\Tb]AE\LA}UJUUBy]H^

Q_@_JFcDYUUjWCETFC8 [YKW\K:	 ]YWMAXUNYVCLSWU	mBU[]BTKmUUBDI2	WY_GCX]D@UDM@^2	WY_GCX]D:	 ]YWMAXUNXUYBo_JVUB]@ojWC_JFd_HCLSWU	mR_M\TQJKo	: U[WEKZUF[]@W@Dc	pIrYQ[UVVCADQ_WoZ]E^\SBIgCLSWU	mBU[]BTKm8   [CP[RYL]F2	WY_GCX]DX]S@oW@TUJWBo}^cW@DsY\SUT^UT:	 ]YWMAXUNCDYUUg@USW@TCgS\]SB	:	[QAU\M2	 U[EBWFQV]:	]YEJ]DQ^WN]YTpQSSW^TjWCETFC}]@WUJ
yUB\
A@\YAXyUSWUKTWQBU[mYD]@QDW@RWG^TY@I8	SFYK^R]@WK:	]YEJ]DQ^WQTQU^_JWoSJQoWDy_\_B]:
 A[YHQ[@UDM@^����������������������������������������������������������:QNSI^ZWBW8
K[QBS[��������������������������������������������������2			U[EBWFQV]P__KF

[]^DY[^UJ
VTSDoUS@[^DY^LP]CDg[^VW	:]SGJUNS^_YVFB]AE\Lm^EU	:QNSI^ZWBW8	_[MHUFY\_V_JTWQBU[mYD]@QDW@YL\]SEUW^DKmR]UY^QFR_M\TQJKYD:QNSI^ZWBWK2			U[EBWFQV][VYLQ[FYF]8	_[MHUFY\_[]^DQ\EU8	_[MHUFY\_2CYQJYY�����������������������������������������������2			U[EBWFQV][V@UCM^DoVG]Y]_m]UJUUBg__T]C@TSCXgBQW]mCYBW2	 	YFQA\RUJUI:QNSI^ZWBWXWADoQ\V_Q\UY@8  _[MHUFY\_BUKG\Dg\E]8	SFYK^R]@WM: QDQIVPUB_:]SGJUNS^_Y^[DA SJQ:	 CSSJQS������������������������������������������������������������������������������:	]YEJ]DQ^WS_VFY^MW:	]YEJ]DQ^W:]SGJUNS^_YVFV_SKm@UJmCYLWZ_CLmY^^]kQFKSB[ o:	]YEJ]DQ^W:
 A[YHQ[����������������������������������������������������������������������������������:	]YEJ]DQ^WQT\]SCgBUBgAYD]Q_WoUWBW]@o]WVUKB\QKZoCQFUoJWCETFC8	SFYK^R]@WK:	]YEJ]DQ^WTWQCoHWBoK[DU8	SFYK^R]@WS_VFY^MW: QDQIVPUB_E8	SFYK^R]@W2CYQJYY���������������������������������������������������������������:	]YEJ]DQ^W^]BV_SJWSoQFUBYF_B\UHLmYD]@QDW@P__KF

VWHDYDVWHDg[DUJSD_JP_EVVQBA	^U@FoYLWBQL]B8	_[MHUFY\_K:	]YEJ]DQ^WYVVWHDg[DUJSD_JQ[FYF]8  _[MHUFY\_S_VFY^MW:	]YEJ]DQ^W:]SGJUNS^_[^D^]JDo\]SCgBUBgAYD]P]CDg[^VWi^]JDoQFUBYF_BC [@Sm8	_[MHUFY\_QT^U@FoYLWBQL]BA SJQLL\UHLmT_[Ao@]@oCQFUY]_m]UJUUBg__T]C@TSCXgAYD]mBUKG\DK:	]YEJ]DQ^WK:	]YEJ]DQ^WT_[G]UVFoB]Q_B\Q@H@_@J[QD]mT_[\UHLmYD]@QDW@:	]YEJ]DQ^WCD\
SWBIoZSS[OSBTYD^U@FoYLWBQL]BP__KF

VWHD^U@FoYLWBQL]B2			U[EBWFQV]QFS@@J]@BQSDUgV_S8	SFYK^R]@W2			U[EBWFQV]^U@FoTWQCoHWBoK[DU8	_[MHUFY\_Z@UQS	:]SGJUNS^_O:]SGJUNS^_M2	 	YFQA\RUJUO:QNSI^ZWBWM2	 	YFQA\RUJU:	WCQ^]^_NN]YTpQSSW^TjWCETFC}]@WUJ
yUB\
uUD~[^QT`UCM^DzSS[]\Tb]AE\LA}UJUUBVYVS\oJWCETFJWCA SYQXUg[^VWCmD_gQQSPW8[YKW\K: 	S[CUTQ@H^IsPS^W]A8Q\W]QS]F2]CYT_^WDTWQBU[mYD]@QDW@RWG^TY@I2]CYT_^WD8_KSV_V]F{]\\]QDKFQW]TWQE]]\DCT_BADQ_W o[SSX]8Q\W]QS]F2]CYT_^WDY^^KoSYQXUg\UU\m:	WCQ^]^_NK:	WCQ^]^_NZ]E^\SBIW]F}UJUUTjWWYW\^KoSYQXUg\UU\m2]CYT_^WD[VA oL]oSYQXU8_KSV_V]FK:	WCQ^]^_NV_J\]SB]QoYLWBQL]BRFV_SM_U^LAoZWWYVXDRWG^TY@IZL:	WCQ^]^_NK:	 	]YEJ]DQ^WQEL]TWQoYVVUHZL@WA:	 	]YEJ]DQ^WQEL]_QHgV_Sg[^T]JCmD_gQQSPWkRFZSS[]\Tm8_[MHUFY\_2	U[EBWFQV]Y^USHo\]SoQ\TU@\]SoQ\TU@:	 	]YEJ]DQ^WUSHo\]SoQ\TU@\]SoQ\TU@	:		_AQVW\_FO:		_AQVW\_FM2]CYT_^WDM2]CYT_^WD:	WCQ^]^_N2]CYT_^WD:	WCQ^]^_NR_M\TQJKUUDuWBW]VbU_[_^\BUKG\DKm^U]Vo8_KSV_V]F2Y[ESZDY[ZY^SW_@QJAY_Vm]ULZ_TgubwoyuswukLLQ_]HSBCQ]^oUWDXWVo}}`wugkets:	 QYE[PFYSPK: QDQIVPUB_C@TSCXq_QW]ARWG^TY@I8	SFYK^R]@WZ]E^\SBITWQE]]\DCgU^\2	 	YFQA\RUJUM2	 	YFQA\RUJU:		F_G\YVR_W^C]@@oPSCoVSFY_^S\C]	:DWM^Y^T]WY[V_J_^]RUKF^YDYW[^KWB@2 	FUE\Q\VW@V_SJWSoQFUBYF_B[DT_[G]UVFCoPUWQ\YD\]SEUW^DKmUVVQF2 	FUE\Q\K2 	FUE\Q\SW\CDV_SM_U^LmBU[]BTBYL	:DWM^Y^8 NWET[^[V@TYFQ[CoVSFY_:DWM^Y^K:		F_G\YVBVQDYYKm^QN[WVQTAU2 	FUE\Q\KWB@gZQCg\QFQUFBE]	:DWM^Y^M:		F_G\YVM:		F_G\YV:DWM^Y^[VAUBHmXQKm^QN[WTWQE]]\DCgCYBW8 NWET[^C8 NWET[^[]^CLT_[G]UVFoB]Q_B\B\]SEUW^DKmR]UY^:		F_G\YVB\SDQYCg\QFQUFBE]	:DWM^Y^O:DWM^Y^8 [YKW\Q\DVBECPWT 2	U[EBWFQV]YVFQ[FEQTm@_K[DYW\: 	S[CUTV_J\]SB]QoYLWBQL]BQFV_SM_U^LAoZWWYV[DRWG^TY@IYL:	S[CUTK: 
CSSJQS[]^CLT_[G]UVFoB]Q_B\BQF: ]YEJ]DQ^WQT@Q[FYF]8 [YKW\K:]YEJ]DQ^WR_W^^]WToK{C~]WTU\aSSDMS\oH]CYL[_^:	 WCQ^]^_NYV^U]VoC	@XYAoCLSWU	BZQCg\US]ACQJKoDYUC8	_[MHUFY\_[]^DQ\EUEU\]^L^U]V\YADHSWUV_SKGYLZ_ELc2	U[EBWFQV]:	
 YAXYZ[D_NYVBZS^oKFQD]mT_[G]UVFoB]Q_B\
rY\bUI`UQ\K2 QCXQPYDWDSW\DYVGU2 QCXQPYDWD:
]YWMAXUNCD\
_KFBYVUCDJWQ]_UB_WTo[]^D]\D2	U[EBWFQV]Y^^]WToK2	U[EBWFQV]]]@WU\mS_VFU^L@TYFQADQ_Wo[]^D]\D2ST]_Q[WDY^BBQBKWTo[]^D]\D2ST]_Q[WDK2ST]_Q[WD[V@TYFQ[CoVSFY_:QVU]YY_F_UB_WTo[]^D]\D{C~YDYWqA~QN[Wd\2ST]_Q[WD_UB_WTo[]^D]\Da}ooWYWPFJGUQUXDcumgUQUXDn^8Q\W]QS]F]UJUUTgQ_^LW^Dc gQ@SJQCkoa o[lV: YTUUS[_NUWBW]VoSW\DUVFkoS
BQBSKimcmSn^8Q\W]QS]F]UJUUTgQ_^LW^Dc gQ@SJQCk
oa o[lV:	T[\FWYXYVQTJSB[YV[DYY^YJ]V8		VYTD_[P[^UWBW]VoSW\DUVFkoSBQBSkoSl^	: QVU]YY_FY^B@UAM[BU\m@_K[DYW\YV[DYY^YJ]V8Q\W]QS]FUWBW]VoSW\DUVFJWAEQ@UTgB_CQFY_VB@UAM[BU\m@_K[DYW\FY^EU@UAM[BU\m@_K[DYW\lV:	]YEJ]DQ^WQTJT_USY^gUB_MBt_USY^@_EH
~w|u2	U[EBWFQV]]]@WU\mS_VFU^LTW_QYVmWBWG@@TW_QYVmWBWG@T_USY^gUB_MBlV:	YSXM@[YVQT@YKm]UJUQRTW:	YSXM@[YV]UJUUTgQ_^LW^DyCuWBWYP\UqA}UJUQRTWlV:	YTUUS[_NUWBW]VoSW\DUVFB\SDQSB8	S]M@QCPWF]UJUUTgQ_^LW^DJTQLSKTA2ST]_Q[WDM2ST]_Q[WD:	YAXYZ[D_NYVBUS\GY@U8 	[CP[RYL]F]UJUUTgQ_^LW^D}qteqb}q|osbun^8   [CP[RYL]F2  	WY_GCX]DRMTTQLSo@L@SW\DUVF:	YTUUS[_NQ\T]SQL]Bo{^C]@DcL@Y^_\YZGDYT
]]_

lK@U\s\\WQQDW@

lk`ugq~lw~d8Q\W]QS]FUWBW]VoSW\DUVFCL@8Q\W]QS]FQ_^LW^D	:
 QVU]YY_F@UC@EKZoRYQ[^[^QTmBUKG\DgV_SM_U^LBZSS[]\T@G][WXL:
 QVU]YY_FS_VFU^L:
 QVU]YY_FB\SDQCDYUUgAUQJQXUJA:
YTUUS[_NRMTTQLSo@L@:	YTUUS[_N:	QVU]YY_F[VBJWAEQ@UTgB_CQFY_VY^QFYQT[JU\\@EKZUTV@UCM^DCg\UU\m: 	S[CUTZ@UQS	:]SGJUNS^_8	_[MHUFY\_Q[FEQTm@_K[DYW\:	S[CUTE8[YKW\E8[YKW\M: S[CUT:
	U[WEKZUFEVAYWVWTzSS[]\Tb]AE\LA}UJUUBy]H^

K_QBLmCDYUU gTQSL]B[]^CLT_MP\UBQL[_2WY_GCX]DI:
	U[WEKZUFdP[CQAB]AE\L_VEQD[ZY^__^  CEUJ[UCS^TFXUQ@B]AE\LA
:
	U[WEKZUFV_EZ^U^SSDW@: ]YWMAXUNYVBQL[_	:
	U[WEKZUFVYQD_J		:QVU]YY_FW\C]YV	BYFY_BQL[_:
	U[WEKZUFVYQD_J
	:QVU]YY_FW\C]YV	BYFY_BQL[_:
	U[WEKZUFVYQD_J	:QVU]YY_FW\C]YV	BYFY_BQL[_	:
	U[WEKZUFVYQD_J 	:QVU]YY_FW\C]QT
BYFY_: ]YWMAXUN^SSDW@2WY_GCX]D: ]YWMAXUNVQ[F_BT]W^B]AE\LAo^]WTo	:
	U[WEKZUFTQSL]B]Q@VQ[F_B: ]YWMAXUNBULGB^TQSL]B2WY_GCX]DO:
	U[WEKZUF8[YKW\F_QVrYQ[UVVbUKG\DKUB_WB
{]@T
w]FtUZGWyVT_KFT
ADBQ\WCL@UQU_K:
	[QAU\K2	 YYC]^RW]CDV_J_QDT]D2	 YYC]^2	U[EBWFQV]lDcSmKnDg
TlDzss{}|tTlLvsqvVkk
Q[okzS^
SQm2	\Y\N][XQ\K`wa
Tfdy~
TMa 
Cq
J  Js
 HHq
J  JsCE:	]YEJ]DQ^Wa
Cq
J  Js
 HHq
J  JbhCgb|Cvw
Vl^8[YKW\	:
	[QAU\8[YKW\Z]_\[Co]JDBY^S\C]	:
	[QAU\[^D\: 	
S[CUT:
	[QAU\T_BTWQBU[mYD]@QDW@YL\]SEUW^DKmR]UY^QFT_[G]UVFCoW^TYD:
	[QAU\I:
	[QAU\SW\CDV_SM_U^LmBU[]BTBYL	:

_AQVW\_FRW]\HGCX]V@Q[FYF]BZQCgADQ_W@XYAo^]QUCKSBIgFQWK2	 YYC]^: 	
S[CUTQTBECPWTK: 	
S[CUT^	:
	[QAU\M2	 YYC]^: 	
S[CUTWAR_WAD
T_BUSD^_D2	 U[EBWFQV]BQU^_JWT{HGCX]VP__KF

TWHY[S\o[SCDADTCDJ[^W^BEUY_ZDJRQ[YU^\	@TWQYT2 	 YYC]^BPSCoKFQW]
@C	mU^IGUE]Va8	_[MHUFY\_B_WDoZS^oKFQD]JBUU]FU\r
8  [YKW\BH]CRQ[YU^\mY^^]Coc@RYQ[UVVmVV_SKmWBWG@C2	 U[EBWFQV]@SJQCko@SJQCk	o@SJQCk
o:TQ^F_SZY^JSB[YV[DYY^YJ]VRW]CD\U@[SQTmSQKFCLV

KFBYVUJSB[FY^EU:	QVU]YY_FBQBSKimBQBSKimBQBSKim2 	 YYC]^BJWAEQ@UTgB_CQFY_VY^QFYQT[JU\R_WAD
^UHQQQ\gQQCLCD\
CL@Y^_B@UAM[BU\m@_K[DYW\FY^EU: ]SGJUNS^_JTQLSM@\}_@DACD\
CL@Y^_BVQDYEJ^tYFQBVQDYEJ^|]\WDP:	]YEJ]DQ^WJT_USY^gUB_MB: ]SGJUNS^_2	 YYC]^: 	
S[CUTQT[Co]JDBY\^B]AE\LAo^]WTo8[YKW\K:
]YEJ]DQ^W_C^JWCETFCoVWUTg8[YKW\JWCETFCd\2	 YYC]^YKmUHL@QDBMW: 	
S[CUTE8[YKW\E8[YKW\M: 	
S[CUT:TQ^F_SZY^FW[TzSS[]\Tb]AE\LA}UJUUBy]H^

WDsJQ`WAYDQ]^CP__KF

M\_B\WBU\m]QHEYVFgFQ\DSB[o@WA:	T[\FWYXYVC8  VYTD_[P[^Q\D\]SCgAYJ]\]SEUW^DKmCQHU	:
TQ^F_SZY^8  VYTD_[P[^KFT
DUSL]BQ\DV_SM_U^LAoB]^QDQDUV_SKmCYBW8  VYTD_[P[^^]BY^LY [V_SKmCYBWY8  VYTD_[P[^T_[G]UVFCoJW\QL[FUc[mY2  \Y\N][XQ\:
T[\FWYXYVCD\
CW@DV_SM_U^LAoB]^QDQDUJPUWQ\T_[G]UVFCoJW\QL[FU@U^\2   \Y\N][XQ\T_[G]UVFoB]Q_B\mBUTSDYNWo\]ACV_SM_U^LAo2  \Y\N][XQ\:
T[\FWYXYVV_JQ\DW@TUJWT ]BT]@UTTWQCoK[JUW@TUJWT8  VYTD_[P[^C8  VYTD_[P[^Y^LBUTSDYNWV_SM_U^LAoB]^QDQDUkW@TUJWTm8  VYTD_[P[^YVTWQE]]\DCgiBUTSDYNWm[@S[^YL[Q\QHUT2  \Y\N][XQ\SJQoH]Ck\]SEUW^DKmkB]^QDQDUmQBSFQTGUo]BT]@UT8  VYTD_[P[^E8	VYTD_[P[^M:	YAXYZ[D_N: ]SGJUNS^_FW[TzSS[]\Tb]AE\LA}UJUUBy]H^

}\AE]GUc	TWQE]]\DoJWS_JVJWS_JVKBUIGUCLAKBA: ]SGJUNS^_K2		U[EBWFQV][VB]Q_B\CgW^AMWEU\: ]YEJ]DQ^WC8		_[MHUFY\_KBABECPmRQ[YKBUIGUCLmU^L@IJWS_JVRYQ[UVVJWS_JVTWQYT8		_[MHUFY\_ZSS[]\ToQ\V_KmkB]Q_B\RQ[YU^\o\YADoQ\TU@:YKZYRQF_F@USW@T\SDQC^QBoXTB]Q_B\TQLSQAo^YDYW8 YBYN]IJWS_JVTYFQ@Q^SmDBYQUo^WQDBU[]BTVQDYTWQoDJSSU2		U[EBWFQV]B]Q_B\CgW^AMWEU\L@EU8		_[MHUFY\_M: ]YEJ]DQ^WE8[YKW\2 
QCXQPYDWDD_Y\rQ[YU^\`UCM^DCuWBW]@

q_@\u^IGUE]pQ^T_[G]UVFoB]Q_B\B]Q_B\RY\BUIGUCLAZS^BI:	YAXYZ[D_NC8   [CP[RYL]FYVBU[]BTPQ^gADQLWoTWQE]]\DoJWS_JV

zS^b]CgQQF2 
QCXQPYDWDI: YKZYRQF_FRY\BUIGUCLmU^L@IZS^o]\:	YAXYZ[D_NZS^o]\TWQYTB]Q_B\T_[[T2 
QCXQPYDWDPQ^gW^ZSS[]\TBU[]BTPQSSW^T8   [CP[RYL]FYVB]Q_B\TQLSM@\}_@DA8   [CP[RYL]FZS^o]\EJ^@USW@T\SDQEBT	:YKZYRQF_FRY\oUVUHL@QoM@\CB]Q_B\TQLS]JDBYmEBTA:	YAXYZ[D_N:YKZYRQF_FRY\oUVYT@mFUJAY_VJWS_JVTYFQ[THgDUBK[_^8   [CP[RYL]FRQVmU^[CoUS\GY@UBU[]BT_Q\OSBU8   [CP[RYL]FRQVmU^@U]WDUBU[]BT@U]WDU2 
QCXQPYDWD:	YAXYZ[D_NZS^BI@EKZoRYQ[PQ^gW^	: YKZYRQF_FB]Q_B\RQVmCDYFUoTWQE]]\DoJWS_JV

zS^b]CgQQF:	YAXYZ[D_NE8   [CP[RYL]FM:	YAXYZ[D_N: ]SGJUNS^_RW]\zSS[]\Tb]AE\LA}UJUUBy]H^

qA~U]VUTkQ\DH]CYL[_^R_W^@JW]QLGBUSW\CD2		U[EBWFQV]I:	]SGJUNS^_B]FEBVKBQBKWoC	m]_\WC	mVBW_LD8	 _[MHUFY\_H]CYL[_^KBQBKWoC	m]_\WC	mVBW_@B]_QDM@UDNCHSBC]mCg__T]@B]_QDM@UoKoAMWBIQ\W2		U[EBWFQV]O: ]SGJUNS^_8		_[MHUFY\_R_W^rYQ[UVVbUKG\DKUB_WB
{]@T
w]FvYVS\c	`UAMWCDKTWQBU[mYD]@QDW@RWG^TY@IAB]CEUKFCCJC2		U[EBWFQV]I: ]SGJUNS^_[VCHSBC]mCg__T]CgTB_U: ]YEJ]DQ^WBULGB^TQ\KW: ]YEJ]DQ^W: QSG[XL[SX[VQ_]HSBCQ]^oUWDXWVo}}`wug{}qwcDNSW_@QJAY_Vm]ULZ_Tgubwoiwg|q8		_[MHUFY\_C8		_[MHUFY\_KB\QKZy]YUUCP_EVVQBA: ]YEJ]DQ^WR_M\TQJKV_SM_U^LAo]\T	: ]SGJUNS^_O: ]SGJUNS^_8	_[MHUFY\_Z]_\EQYLmC_UWDXQ\WVQTAU2	U[EBWFQV]: ]YEJ]DQ^W@UAMWCDKQ\T]YKAY^_\QKF@YUUJWCETFC: ]YEJ]DQ^WY^LQSLGQ\gB_CQFY_V	: ]SGJUNS^_T_BT_[@USg[DUJSD_JT_[mYDTWQE]]\DCgRU_[^	:]SGJUNS^_V_Sg[DRWG^TY@IQ[FEQTm@_K[DYW\\BUKG\DKm^U]Vo2		U[EBWFQV]T_[mYD2		U[EBWFQV]2		U[EBWFQV]Y^TWQoYLQ[FYF]yK|UU\WTc	Q[FEQTm@_K[DYW\V_Sg[DZQCgADQ_W:]YEJ]DQ^WK: ]YEJ]DQ^Wu^IGUE]aT_[mYDCJC8	_[MHUFY\_OSYDgA_]]FXYVUFBE]	:]SGJUNS^_O: ]SGJUNS^_8		_[MHUFY\_GY\^QAUU[DQ\B]^UQKWRM[\T2			U[EBWFQV]|WUWUJ
yVADQVQUt]PEWkpQSSW^TjWCETFC}]@WUJmWDvQ\Q\kbUIGUCLA
^ECJCCQHU2		U[EBWFQV]:]YEJ]DQ^WBULGB^EQYLmC_UWDXQ\W2		U[EBWFQV]O: ]SGJUNS^_:	]YEJ]DQ^WN]YTpQSSW^TjWCETFC}]@WUJ
yUB\
uBQVFt_USY^@_EHp_^MA2	U[EBWFQV]I: ]SGJUNS^_[V]YJo]M^DYg@UCM^DCg:	]YEJ]DQ^WBULGB^8	 _[MHUFY\_2	U[EBWFQV]BUKWD\]SEUW^DADQLWDWDX]_BQUY^Y^_VWJWCDW@UNS\E]AVJ]]ZSS[MBC2	U[EBWFQV]VW@\]SEUW^Dg@USW@TT_[
\]SEUW^DKm2	U[EBWFQV]K2	U[EBWFQV]V_S@UCL]BUgPQSSG@C:	]YEJ]DQ^WM:	]YEJ]DQ^W: ]SGJUNS^_[^UQJUHQADYVUTW_QYVWBWG@CPUSYGCUV_S[DUJSD_JAG]@UQ\FQT[TQLWTK[^S]DX]\QKFDQ_U:	]YEJ]DQ^WV_JQMF_WBWG@T_USY^gUB_MBCo: ]SGJUNS^_WJ]E@AUSW\T[^UQJ2	U[EBWFQV]:	]YEJ]DQ^WBQBL[DYW\TWQE]]\DCPILZUYJT_USY^UB_MB: ]SGJUNS^_T_BTWQBU[mYD]@QDW@YQ\]SEUW^DKmR]UY^Q[T_[G]UVFCoW^TYY: ]SGJUNS^_Y^YQTW_QYVmWBWG@tW_QYVuB_MB

zko|}stuj:	]YEJ]DQ^WT_USY^gUB_MBCocYYC [@SmBECPmRQ[YQ[8	 _[MHUFY\_2	U[EBWFQV]VW@YGD_WJ]E@TW_QYVmWBWG@Cg:	]YEJ]DQ^WK:	]YEJ]DQ^WKFT
DUSL]BV_SJWSoQFUBYF_BUBo\]SCWJ]E@AUSW\T2	U[EBWFQV]:	]YEJ]DQ^WCW@D\]SEUW^DKGYLZY^SWJ]E@PILZUYJBQVYC:	]YEJ]DQ^WKFT
A_BLWJmT_[AR]UY^_@oTWQC]\T: ]SGJUNS^_imV_SJWSoQFUBYF_B^UVLTWQBU[mYD]@QDW@BQUXDK@UDM@^^UVL@YWPFE2	U[EBWFQV]:	]YEJ]DQ^W[]^CLT_[G]UVFoB]Q_B\TWQT]@WBgV_SKVBW\D	: ]SGJUNS^_Y^\]STUJS_M^ToZWoQgUB_MBo\]STUJ:	]YEJ]DQ^WC8	 _[MHUFY\_Q\D\]]QQ\oWJ]E@gAYJ]		: ]SGJUNS^_T_BQMF_RXUBo\]SCPUWQ\ZZ_@oTWQC]\T	XZ8	 _[MHUFY\_C[VYT_[G]UVFYK_^]_VFXUTYBKF~V_SK~USHoUG\DQmBUKG\DK: ]SGJUNS^_Y^T_USY^gUB_MBoCQHU]YJo]M^DYg@UCM^DCg:	]YEJ]DQ^WC8	 _[MHUFY\_QVVDPW\]STUJYC\QFQU: ]SGJUNS^_[V^UQ\WB\SDQYCg\QFQU2	U[EBWFQV]KLZU^SCCQU^LZYCV_SM_U^LBUIm@_K: ]SGJUNS^_XZBUH^QS]mBUIm@_KbUIb_C8	 _[MHUFY\_E8	 _[MHUFY\_M:	]YEJ]DQ^W]^CU2	U[EBWFQV]IU\KWSTWQB[DCV_]Y[^_@_EH8	 _[MHUFY\_ZZSTWQBgV_]Y[^o_@_EH2	U[EBWFQV]O: ]SGJUNS^_O: ]SGJUNS^_M2	U[EBWFQV]W\C]8	 _[MHUFY\_KB]AUDV_]Y[^_@_EHV_JT_[G]UVFCOZYSPT_VDPSFUS^YDYW^UQ\WB:	]YEJ]DQ^WV_JTWQBU[mYD]@QDW@V_SWJmT_[A2	U[EBWFQV]V_SS\]SBo\]]QQ\oWJ]E@:	]YEJ]DQ^WE8	 _[MHUFY\_E8	 _[MHUFY\_2	U[EBWFQV]X]S@oW@TUJWBo}^cW@DsY\SUT^UT:	]YEJ]DQ^WE8	_[MHUFY\_:]SGJUNS^_YVFrYQ[UVVbUKG\DKUB_WB
{]@T
rY\rI|]]QQ\M\CY_\UTA SJQQ_^KFRY\BUIGUCLmU^L@IRQVmU^:	 ]SGJUNS^_K2	
 U[EBWFQV][VCQBS
:	
 ]YEJ]DQ^WBULGB^:	
 ]YEJ]DQ^W2	
U[EBWFQV][^DPQ^VWTo[\D 2	 U[EBWFQV]T_BT_[G]UVFoB]Q_B\\]ST_[G]UVFCo:	 ]SGJUNS^_K2	U[EBWFQV]Y^TWQCQBS
CQBS
LLV_SPQ^gADQLWoTWQE]]\DoJWS_JV

zS^b]CbUYVI8	_[MHUFY\_S_VFY^MW:		

]YEJ]DQ^W2	 U[EBWFQV]TWQ]Y^GQJWPQ^gW^QAo]Y^GQJW:		

]YEJ]DQ^WT_[BUU]FURY\oUVBUU]FU8	_[MHUFY\_\]SZS^oKFQD]mV_SM_U^LmBU[]BTrQV`UAjWQTA	:]SGJUNS^_8	_[MHUFY\_ZS^^]VoSVFT_[BUU]FU8	_[MHUFY\_M:	 ]YEJ]DQ^WJWDEJ\RY\^U\mS^L	:	 ]SGJUNS^_M2		U[EBWFQV]: S[CUT: S[CUTrYQ[UVVbUKG\DKUB_WB: S[CUT: S[CUT: QSG[XL[SXrYQ[UVVbUKG\DKUB_WB
pQSSW^TjWCETFC}]@WUJY^L^RYQ[UVVC[^D\BUKG\DKm^U]VT[REL[\
_U]dIHWTqT^_SYF_BQ\T]SQL]BP__TEC]mRQVDBMW
zSS[]\Tb]AE\LA}UJUUB^RYQ[UVVC\BUKG\DKm^U]VY^\_[SD_J EC]mRQV:	
QYE[PFYSPC8S[MYXDQQXM:	
QYE[PFYSP:
QSG[XL[SXrYQ[UVVbUKG\DKUB_WB
pQSSW^TjWCETFC}]@WUJY^L^RYQ[UVVC[^D\BUKG\DKm^U]VT[REL[\
_U]dIHWTqT^_SYF_BQ\T]SQL]B[^D\C@T[DP__TEC]mRQVDBMW
:		 QYE[PFYSP@yUB\o^UOrQ[YU^\`UCM^DCuWBW]@

q_@\\RQ[YU^\AV@UCM^DCg\UU\QT^_SYF_B^CH^YDEC]mRQV2
YYC]^I:	
[QAU\M2Y[ESZDY[Z8UQUECPWFF_QVrYQ[UVVbUKG\DKUB_WB
aUDqU^_JWsb{S_VADqU^_JWsb{Y_\_B]mSB[:U[WEKZUFK2WY_GCX]D@q_@\gc]FyWV]BU{`sQU^_JWoSJQ2WY_GCX]DO:  ]SGJUNS^_8_KSV_V]FF_QVrYQ[UVVbUKG\DKUB_WB
aUDksQ[ZUcQHUQ\DKoSYQXUgAYJ]:		_AQVW\_FK2]CYT_^WD@q_@\gc]Fc {SSX]aYJ]C gQQSPWoCQHU8_KSV_V]FM:	WCQ^]^_N: U[WEKZUFFW[TzSS[]\Tb]AE\LA}UJUUBcULa]QJFcDYUU ~SSDW@RW]\K_QBLmCDYUU gTQSL]B2	WY_GCX]DI: U[WEKZUFBy]H^oaUDk_QBLaDQ_W vYQD_JC]Y@DoKFQW]oVYQD_J:	 ]YWMAXUNE8	

_[MHUFY\_2	WY_GCX]DD_Y\rQ[YU^\`UCM^DCuWBW]@

kWDsPWS[kFQW]t_[G]UVF`_K[DYW\RW]\[ZUSSmCDYUU gV_SM_U^Lm@_K[DYW\:	 ]YWMAXUNC8UQUECPWFH{]@TmkWDsPWS[kFQW]t_[G]UVF`_K[DYW\SPWS[gADQ_W o\]SEUW^DgB_CQFY_V:	 ]YWMAXUNE8UQUECPWF2ST]_Q[WDD_Y\rQ[YU^\`UCM^DCuWBW]@

h@U@Y@UcLSWU`UCM^DKFQW]oB]AE\LB]A: YTUUS[_NC8	 _[MHUFY\_}WDUY^\JWCETFCLZQDZQF]UHL@Qo\]S^^QWF_LZUKFQBL_VFXU@UCM^D: YTUUS[_NDUSL]BfXYKYC@UAM[BU\V_JS_J@USLqT\aDQ_W b]AE\LO]B[8Q\W]QS]F: QVU]YY_Fv]DUFXQLQZSS[]\T_WDDQ\WJWAE]ADO[DX\@Y@Q]]FUB_YWPF@TSSU2	U[EBWFQV]QT\[DYW\Q\WHDJSoTWQB]AE\LAQ^FUBFXU\DX@UAMWCD]VB]AE\L: QVU]YY_FK]VW@QVYV^WBUVFFY^EU]VVDX]_B\WBWTCMQXJWCETFCO]E\\TY^TUB8Q\W]QS]FqVVG]^U]VDWVY@DXQA@J]R\]_X]@ULZECW^CM@Y^_QKFQRTWB]AE\L_B\WB2ST]_Q[WDCQHUoLS_M\D 2ST]_Q[WDVW@K[JUgFY YBUKT_[A K[JUQ2ST]_Q[WDK2	 
U[EBWFQV][VQQ_EVF:	 ]YEJ]DQ^WS_VFY^MW:	 ]YEJ]DQ^W:]SGJUNS^_Y^B]ATW_QYVmWBWG@oW]_BUKT_[A kQoYKmUHL@Qo\]S8	
_[MHUFY\_B]ATWQC c[mJWAEQ@UTgB_CQFY_VY^QFYQT[JU\8Q\W]QS]FK: YTUUS[_NCDYUU gV_SM_U^LC B]ATWQC c[m2ST]_Q[WDB]ATWQC WBQKWB]ATWQC PUWQ\Y	: QVU]YY_F@UCV_SKYVAUBLBUKT_[A ZWWYVS_M\DA 8Q\W]QS]FS_M\D2ST]_Q[WDO: QVU]YY_FO: QVU]YY_FM2	U[EBWFQV]8	 _[MHUFY\_F_QVrYQ[UVVbUKG\DKUB_WB
bBUHSBUy\Tq\VcDYUU jWCETFrYQ[UVVytPQSSW^TCDYUU g@UCM^DBUK: ]SGJUNS^_K2	U[EBWFQV]`JW@QJWcDYUU jWCETFB]A2	U[EBWFQV]q\VcDYUU jWCETFRYQ[UVVJWC8	 _[MHUFY\_M: YTUUS[_N:  ]SGJUNS^_FW[TzSS[]\Tb]AE\LA}UJUUBqT\aDQ_W b]AE\LrQ[YU^\{tZSS[]\TQ_^KFCLSWUmBUKG\DBUK:	
[QAU\K2
YYC]^@q_@\gq\VcDYUU jWCETFRYQ[UVVJWC8 [YKW\M:
]YEJ]DQ^W:  ]SGJUNS^_FW[TzSS[]\Tb]AE\LA}UJUUBqT\aDQ_Wb]AE\LrQ[YU^\{tZSS[]\TQ_^KFCLSWU	mBUKG\DBUK:		[QAU\K2YYC]^@q_@\gq\VcDYUUjWCETFRYQ[UVVJWC8[YKW\M:
]YEJ]DQ^W: YKZYRQF_FFW[TzSS[]\Tb]AE\LA}UJUUBq@H^IrY\bUKG\DKrYQ[UVVbUKG\DKUB_WB
PQ^JWAE]ADCRQVmBC:  ]SGJUNS^_K2 
QCXQPYDWDBy]H^os@@TKrQV`UCM^DCRQVmBC: S[CUTE8	

_[MHUFY\_2 	
QCXQPYDWDD_Y\rQ[YU^\`UCM^DCuWBW]@

{^UQJs\\|]SC:
YKZYRQF_FK2 	
QCXQPYDWDBy]H^oq\UY@q\Tv_SK2 	
QCXQPYDWDO:
YKZYRQF_F8   [CP[RYL]FR_W^rYQ[UVVbUKG\DKUB_WB
|UHLfQCSC JWAE]ADCC JCKBUIGUCLAKBARQVmS_VFQYVWBPQ^I: YKZYRQF_FK2 
QCXQPYDWDQKAUBLC@AW]@LKKBAU]HFIRY\AW]@LK8   [CP[RYL]FJWDEJ\@q_@\g~]JDdYA[A BIC	@APQ^I2 
QCXQPYDWDO: YKZYRQF_F8_KSV_V]FY^LrQ[YU^\`UCM^DCuWBW]@

WDb]AE\LAVQ\Q\g@UCM^D@UCC [SSX]mY^^]KoDWmSQ[ZU:	[QAU\K2]CYT_^WD@q_@\gw]FvYVS\b]AE\LBUKCmD_gQQSPW2YYC]^B]FEBVBUKCQHU	:	[QAU\M2	 YYC]^: 	
S[CUTN]YTpQSSW^TjWCETFC}]@WUJ
w]FtUZGWyVT_KFT
ADBQ\WADB8[YKW\K: 	
S[CUTCD\
CL@Y^_ADB]S]KA: 	
S[CUT@yUB\owULvURMUy^^]CK: 	
S[CUTCDJQKAYWVCKCDJ	:
	[QAU\M2	 U[EBWFQV]:	T[\FWYXYVN]YTpQSSW^TjWCETFC}]@WUJ
w]FsB[`_K[DYW\CZ]_CL
EV]BT]@UTg_Q@GY^LoLYVFQBSm@_K:TQ^F_SZY^K2	\Y\N][XQ\@q_@\gw]FsB[`_K[DYW\CQBSm@_K:	T[\FWYXYVE8	VYTD_[P[^2
YYC]^D_Y\rQ[YU^\`UCM^DCuWBW]@

jW]_NWrQ[YU^\`UCM^DC[^DPQSSW^T8 [YKW\K: S[CUTBULGB^By]H^o`U]WDUrYQ[UVVbUKG\DKRQ[YU^\: S[CUTE8	

_[MHUFY\_2 YYC]^D_Y\rQ[YU^\`UCM^DCuWBW]@

p[^DyEQYL[^WkFQW]EVAYWVWTY__EVF:S[CUTC8
[YKW\JWDEJ\@q_@\gTWQE]]\DCgBUKWBF]QU]E^L2 YYC]^O:  ]SGJUNS^_8 [YKW\ADQL[S:  ]SGJUNS^_FW[TzSS[]\Tb]AE\LA}UJUUBqT\ab]AE\LrQ[YU^\{tZSS[]\TQ_^KFCLSWU	mBUKG\DCVYVS\oJWCETFJWC2
YYC]^I:QVU]YY_Fpkfovw`uq{z[]^CLCDYUUgV_SM_U^LC	V_SCV_SK2ST]_Q[WDK2
Q@QVSSX]D[VC\]SJW]_NW:	YAXYZ[D_NC8 Q\W]QS]FJWCBECPmRQ[YVQ\Q\g@UCM^Do\]SEUW^DPQSSW^T :
 QVU]YY_FC\]S[]^D]\D2ST]_Q[WDZGVTYFQoHFB:
 QVU]YY_FRE^VQDYm@DJ	: YKZYRQF_FM2
YYC]^M2
YYC]^O:  ]SGJUNS^_8 [YKW\F_QVrYQ[UVVbUKG\DKUB_WB
`UVMAUzW[^YVURW]\JWVEKWL@EU2 YYC]^I:  QVU]YY_F[V@UVMAU2  ST]_Q[WDBy]H^o[W^W@Uo[@So{W^W@UqT^uH[W@Dm`|	:		[QAU\M2 CYQJYY:		S[CUTN]YTpQSSW^TjWCETFC}]@WUJ
eKWc@]QYQTx_YV[^W_UB_WoDABUoLD2	
YYC]^I:	[QAU\By]H^oQ_]HSBCQ]^oUWDXWVoD2	
YYC]^O:  ]SGJUNS^_8	SFYK^R]@WF_QVrYQ[UVVbUKG\DKUB_WB
aUDq_WcH^QCP_T]S_VADuWBW]@c@YAX}WVU]_\W: QDQIVPUB_C8	SFYK^R]@WH{]@TmQ_WoUWBW]@o]WVU]_\W: QDQIVPUB_E8	SFYK^R]@W2		U[EBWFQV]D_Y\rQ[YU^\`UCM^DCuWBW]@

kWD}]@WUJa@QJAUc	_T]S_VADuWBW]@c@Y@CUk}_\W__T]: ]SGJUNS^_K2		U[EBWFQV]@q_@\gCHSBC]mCg__T]U]TU8		_[MHUFY\_M: ]YEJ]DQ^W: YKZYRQF_FFW[TzSS[]\Tb]AE\LA}UJUUBcULgCUzS^P__TEC]PQ^: YKZYRQF_FK2 
QCXQPYDWDBy]H^oaUDmAUrY\MAURY\8   [CP[RYL]FM:	YAXYZ[D_N: C_@YWW@YUFW[TzSS[]\Tb]AE\LA}UJUUBcUL{]Q_W}UJUUB|[CDY\SU[^DVYCLS^S]: C_@YWW@YUK2  	KWBQU_BQW@q_@\gYUSWUg_UB_WBo\[CDY\SUTQADQVQU2  	KWBQU_BQWO:		QSG[XL[SX:	

[J[F_AN]YTpQSSW^TjWCETFC}]@WUJ
c]F}Q@bBU[SSX]Vq]WG^DT\_YF]YJo@JWSQ[ZUTgS]_M\DT\_YF]YJoQT^_G]Vo@JWSQ[ZUTgS]_M\D2Y[ESZDY[ZI:		QSG[XL[SX_QHgBBU[SSX]VoQU]E^Lm_QHgBBU[SSX]VoQU]E^L	:		QSG[XL[SXBy]H^o_QHgBBU[SSX]VoQU]E^Lm_QHgBBU[SSX]VoQU]E^L	: [BQD_IBy]H^o_QHgS\\WEUTgBBU[SSX]VoQU]E^Lm_QHgS\\WEUTgBBU[SSX]VoQU]E^L	:		QSG[XL[SXM2  	KWBQU_BQW:  S[JK]_NQ\DzSS[]\Tb]AE\LA}UJUUBwULUB_WTtWQCsWG^DSW\CD2
QS@I]WDI:	 	Y[BA__F@UDM@^H{]@TmUWBW]VoTWQCo[]E^Lm:  S[JK]_NE8	_[MHUFY\_:]SGJUNS^_YVFrYQ[UVVbUKG\DKUB_WB
uUDzS^^]Vt_[As_M\DS_VAD:	 ]YEJ]DQ^WC8	_[MHUFY\_JWDEJ\@q_@\gRY\^U\mT_[AoSWG^Dg	:]SGJUNS^_M2
YYC]^:	WCQ^]^_NQ\DzSS[]\Tb]AE\LA}UJUUBWULQHh@USYQXU\s]_M\DS_VAD:	WCQ^]^_NC8_KSV_V]FJWDEJ\@q_@\gW]F}Q@bBU[SSX]Vq]WG^D:	WCQ^]^_NE8_KSV_V]F2
 S@YFWK[^DpQSSW^TjWCETFC}]@WUJ
W]F`B]QQSPWTqU]E^LY^L^T\_YF]YJo@JWSQ[ZUTgS]_M\DT\_YF]YJoQT^_G]Vo@JWSQ[ZUTgS]_M\D2 U[EBWFQV]I: [BQD_I@UDM@^q_@\WULbBU[SSX]Vq]WG^D\USHoH@USYQXU\mQ]WG^D]Q@mQ\T]GU\m@B]QQSPWToY__EVF2 U[EBWFQV]O: ]SGJUNS^_:	]YEJ]DQ^WN]YTpQSSW^TjWCETFC}]@WUJ
c]F}Q@E\L[bUKG\DKY^L]Q@m]ETFYoJWCETFC2	U[EBWFQV]I: ]SGJUNS^_@UDM@^H{]@TmkWD}YJ}ETFYb]AE\LA]YJo]M^DYg@UCM^DC	: ]SGJUNS^_M2 U[EBWFQV]:  ]YWMAXUNM^Y_UCHSSU_UB_WB: