.class public Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;
.super Ljava/lang/Object;
.source "RgbBrightnessCurveAlgo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo$AdjustBarHandler;
    }
.end annotation


# static fields
.field private static final AUTOBRIGHTNESS_PARAM:Ljava/lang/String; = "autobrighness_param"

.field private static final MSG_USER_MODIFY_AUTOBRIGHT_MODE:I = 0x2

.field private static final MSG_USER_MODIFY_BRIGHTNESS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "RgbBrightnessCurveAlgo"

.field private static morig_key_value:[[I

.field private static morig_param:[[D

.field private static mup_down_param:[[D


# instance fields
.field private bIsAutoBakclightAdjust:Z

.field private bUserSettingBrightness:Z

.field private mAdjustBarHandler:Landroid/os/Handler;

.field private mAdjustBrightnessFlag:I

.field private mAdjustBrightnessTimeStamp:J

.field private mAmbientLux:I

.field private mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

.field private mBacklightBrightness:I

.field private mBacklightMode:I

.field private mBrightnessDeta:D

.field private mContext:Landroid/content/Context;

.field private mModeRestore:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

.field private mParser:Lcom/vivo/common/autobrightness/ModifyArgumentParser;

.field private mSecondSettingBrightness:I

.field private mTimePeriod:Lcom/vivo/common/autobrightness/TimePeriod;

.field private mUserSettingBrightness_flag:Z

.field private mchange_down_gm:I

.field private mchange_sum:I

.field private mchange_up_gm:I

.field private mkey_point:[I

.field private nCurrentBrightness:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 48
    const/16 v0, 0x9

    filled-new-array {v0, v2}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    sput-object v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mup_down_param:[[D

    .line 50
    const/4 v0, 0x4

    filled-new-array {v0, v2}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    sput-object v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->morig_param:[[D

    .line 51
    const/4 v0, 0x5

    filled-new-array {v0, v2}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    sput-object v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->morig_key_value:[[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v1, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput v4, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mAdjustBrightnessFlag:I

    .line 28
    iput v4, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mAmbientLux:I

    .line 29
    iput v4, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->nCurrentBrightness:I

    .line 33
    iput-boolean v4, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->bUserSettingBrightness:Z

    .line 35
    iput v1, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mSecondSettingBrightness:I

    .line 36
    iput v1, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mBacklightBrightness:I

    .line 37
    iput v4, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mBacklightMode:I

    .line 38
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mAdjustBrightnessTimeStamp:J

    .line 40
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->bIsAutoBakclightAdjust:Z

    .line 42
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mBrightnessDeta:D

    .line 43
    iput-object v5, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mTimePeriod:Lcom/vivo/common/autobrightness/TimePeriod;

    .line 44
    iput-object v5, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mModeRestore:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    .line 57
    const/16 v1, 0x13

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mkey_point:[I

    .line 63
    iput-boolean v4, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mUserSettingBrightness_flag:Z

    .line 64
    new-instance v1, Lcom/vivo/common/autobrightness/ModifyArgument;

    invoke-direct {v1}, Lcom/vivo/common/autobrightness/ModifyArgument;-><init>()V

    iput-object v1, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    .line 65
    new-instance v1, Lcom/vivo/common/autobrightness/ModifyArgumentParser;

    invoke-direct {v1}, Lcom/vivo/common/autobrightness/ModifyArgumentParser;-><init>()V

    iput-object v1, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mParser:Lcom/vivo/common/autobrightness/ModifyArgumentParser;

    .line 66
    iput-object v5, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mContext:Landroid/content/Context;

    .line 70
    iput-object p1, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mContext:Landroid/content/Context;

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "autobrighness_param"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "jsonStr":Ljava/lang/String;
    sget-object v1, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->morig_param:[[D

    sget-object v2, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->morig_key_value:[[I

    sget-object v3, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mup_down_param:[[D

    invoke-static {v1, v2, v3}, Lcom/vivo/common/autobrightness/AutobrightOrigParam;->getAutoOrigParam([[D[[I[[D)V

    .line 73
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mParser:Lcom/vivo/common/autobrightness/ModifyArgumentParser;

    iget-object v2, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    invoke-virtual {v1, v0, v2}, Lcom/vivo/common/autobrightness/ModifyArgumentParser;->stringToArgument(Ljava/lang/String;Lcom/vivo/common/autobrightness/ModifyArgument;)Z

    .line 75
    iget-object v1, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-boolean v1, v1, Lcom/vivo/common/autobrightness/ModifyArgument;->bUserSettingBrightness:Z

    iput-boolean v1, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->bUserSettingBrightness:Z

    .line 76
    iget-boolean v1, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->bUserSettingBrightness:Z

    iput-boolean v1, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mUserSettingBrightness_flag:Z

    .line 78
    :cond_0
    new-instance v1, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo$AdjustBarHandler;

    invoke-direct {v1, p0, p2}, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo$AdjustBarHandler;-><init>(Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mAdjustBarHandler:Landroid/os/Handler;

    .line 79
    new-instance v1, Lcom/vivo/common/autobrightness/TimePeriod;

    invoke-direct {v1, p1, p2}, Lcom/vivo/common/autobrightness/TimePeriod;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mTimePeriod:Lcom/vivo/common/autobrightness/TimePeriod;

    .line 80
    return-void

    .line 57
    :array_0
    .array-data 4
        0x0
        0x5
        0x14
        0x1e
        0x41
        0x78
        0x190
        0x320
        0x4b0
        0x6a4
        0x960
        0xc80
        0xfa0
        0x1324
        0x170c
        0x1af4
        0x1edc
        0x22c4
        0x2710
    .end array-data
.end method

.method static synthetic access$000(Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->modifyBrightness()V

    return-void
.end method

.method static synthetic access$100(Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->modifyBrightnessMode()V

    return-void
.end method

.method private adjust_func(IIIJI)I
    .locals 20
    .param p1, "x"    # I
    .param p2, "deta_x"    # I
    .param p3, "x_gm"    # I
    .param p4, "c"    # J
    .param p6, "change_cneed"    # I

    .prologue
    .line 267
    if-gez p2, :cond_0

    .line 268
    move/from16 v0, p2

    int-to-double v12, v0

    const-wide v14, 0x4005bf0a8b145769L    # Math.E

    sub-int v16, p1, p3

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    sub-int v17, p1, p3

    mul-int v16, v16, v17

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x2

    mul-long v18, v18, p4

    mul-long v18, v18, p4

    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double v2, v12, v14

    .line 432
    .local v2, "output_args":D
    :goto_0
    double-to-int v4, v2

    .line 433
    .local v4, "result_output_args":I
    return v4

    .line 270
    .end local v2    # "output_args":D
    .end local v4    # "result_output_args":I
    :cond_0
    const/16 v12, 0xfa0

    move/from16 v0, p3

    if-lt v0, v12, :cond_1

    .line 271
    move/from16 v0, p2

    int-to-double v12, v0

    const-wide v14, 0x4005bf0a8b145769L    # Math.E

    sub-int v16, p1, p3

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    sub-int v17, p1, p3

    mul-int v16, v16, v17

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x2

    mul-long v18, v18, p4

    mul-long v18, v18, p4

    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double v2, v12, v14

    .restart local v2    # "output_args":D
    goto :goto_0

    .line 272
    .end local v2    # "output_args":D
    :cond_1
    const/16 v12, 0x7d0

    move/from16 v0, p3

    if-lt v0, v12, :cond_9

    .line 273
    move/from16 v0, p1

    move/from16 v1, p3

    if-lt v0, v1, :cond_2

    .line 274
    move/from16 v0, p2

    int-to-double v12, v0

    const-wide v14, 0x4005bf0a8b145769L    # Math.E

    sub-int v16, p1, p3

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    sub-int v17, p1, p3

    mul-int v16, v16, v17

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x2

    mul-long v18, v18, p4

    mul-long v18, v18, p4

    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double v2, v12, v14

    .restart local v2    # "output_args":D
    goto :goto_0

    .line 276
    .end local v2    # "output_args":D
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->vivo_calac_orig_brighntenss(I)I

    move-result v5

    .line 277
    .local v5, "temp_orig":I
    move/from16 v0, p6

    if-le v0, v5, :cond_8

    .line 278
    sub-int v12, v5, p6

    add-int v12, v12, p2

    mul-int/lit8 v12, v12, 0x32

    int-to-double v12, v12

    const-wide v14, 0x3ff2e147ae147ae1L    # 1.18

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    .line 279
    .local v8, "temp_c":D
    const-wide/16 v12, 0x0

    cmpl-double v12, v8, v12

    if-lez v12, :cond_3

    .line 280
    sub-int v12, v5, p6

    add-int v12, v12, p2

    int-to-double v12, v12

    const-wide v14, 0x4005bf0a8b145769L    # Math.E

    sub-int v16, p1, p3

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    sub-int v17, p1, p3

    mul-int v16, v16, v17

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    mul-double v18, v18, v8

    mul-double v18, v18, v8

    div-double v16, v16, v18

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double v10, v12, v14

    .line 284
    .local v10, "temp_output_args":D
    :goto_1
    const-wide/16 v12, 0x0

    cmpl-double v12, v10, v12

    if-nez v12, :cond_4

    .line 285
    move/from16 v0, p2

    int-to-double v12, v0

    const-wide/high16 v14, 0x4044000000000000L    # 40.0

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    .line 289
    .local v6, "temp":D
    :goto_2
    const-wide/high16 v12, 0x4010000000000000L    # 4.0

    cmpg-double v12, v6, v12

    if-gez v12, :cond_5

    .line 290
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    add-double v8, v6, v12

    .line 294
    :goto_3
    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    cmpg-double v12, v8, v12

    if-gez v12, :cond_6

    .line 295
    const-wide v12, 0x4075e00000000000L    # 350.0

    mul-double/2addr v12, v8

    const-wide v14, 0x3ff7ae147ae147aeL    # 1.48

    div-double v6, v12, v14

    .line 299
    :goto_4
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    .line 300
    const-wide/16 v12, 0x0

    cmpl-double v12, v10, v12

    if-nez v12, :cond_7

    .line 301
    move/from16 v0, p2

    int-to-double v12, v0

    const-wide v14, 0x4005bf0a8b145769L    # Math.E

    sub-int v16, p1, p3

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    sub-int v17, p1, p3

    mul-int v16, v16, v17

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    mul-double v18, v18, v8

    mul-double v18, v18, v8

    div-double v16, v16, v18

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double v2, v12, v14

    .restart local v2    # "output_args":D
    goto/16 :goto_0

    .line 282
    .end local v2    # "output_args":D
    .end local v6    # "temp":D
    .end local v10    # "temp_output_args":D
    :cond_3
    const-wide/16 v10, 0x0

    .restart local v10    # "temp_output_args":D
    goto :goto_1

    .line 287
    :cond_4
    sub-int v12, p6, v5

    int-to-double v12, v12

    const-wide/high16 v14, 0x4044000000000000L    # 40.0

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    .restart local v6    # "temp":D
    goto :goto_2

    .line 292
    :cond_5
    const-wide/high16 v12, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v12, v6

    mul-double/2addr v12, v6

    const-wide v14, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v14, v6

    add-double/2addr v12, v14

    const-wide v14, 0x3ff47ae147ae147bL    # 1.28

    add-double v8, v12, v14

    goto :goto_3

    .line 297
    :cond_6
    const-wide v12, 0x4072c00000000000L    # 300.0

    mul-double/2addr v12, v8

    const-wide v14, 0x3ff7ae147ae147aeL    # 1.48

    div-double v6, v12, v14

    goto :goto_4

    .line 303
    :cond_7
    sub-int v12, p6, v5

    int-to-double v12, v12

    const-wide v14, 0x4005bf0a8b145769L    # Math.E

    sub-int v16, p1, p3

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    sub-int v17, p1, p3

    mul-int v16, v16, v17

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    mul-double v18, v18, v8

    mul-double v18, v18, v8

    div-double v16, v16, v18

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double/2addr v12, v14

    add-double v2, v10, v12

    .restart local v2    # "output_args":D
    goto/16 :goto_0

    .line 305
    .end local v2    # "output_args":D
    .end local v6    # "temp":D
    .end local v8    # "temp_c":D
    .end local v10    # "temp_output_args":D
    :cond_8
    move/from16 v0, p2

    int-to-double v12, v0

    const-wide v14, 0x4005bf0a8b145769L    # Math.E

    sub-int v16, p1, p3

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    sub-int v17, p1, p3

    mul-int v16, v16, v17

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x2

    mul-long v18, v18, p4

    mul-long v18, v18, p4

    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double v2, v12, v14

    .restart local v2    # "output_args":D
    goto/16 :goto_0

    .line 307
    .end local v2    # "output_args":D
    .end local v5    # "temp_orig":I
    :cond_9
    const/16 v12, 0x1c2

    move/from16 v0, p3

    if-lt v0, v12, :cond_12

    .line 308
    move/from16 v0, p1

    move/from16 v1, p3

    if-lt v0, v1, :cond_a

    .line 309
    move/from16 v0, p2

    int-to-double v12, v0

    const-wide v14, 0x4005bf0a8b145769L    # Math.E

    sub-int v16, p1, p3

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    sub-int v17, p1, p3

    mul-int v16, v16, v17

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x2

    mul-long v18, v18, p4

    mul-long v18, v18, p4

    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double v2, v12, v14

    .restart local v2    # "output_args":D
    goto/16 :goto_0

    .line 311
    .end local v2    # "output_args":D
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->vivo_calac_orig_brighntenss(I)I

    move-result v5

    .line 312
    .restart local v5    # "temp_orig":I
    move/from16 v0, p6

    if-le v0, v5, :cond_11

    .line 313
    sub-int v12, v5, p6

    add-int v12, v12, p2

    mul-int/lit8 v12, v12, 0x32

    int-to-double v12, v12

    const-wide v14, 0x3ff2e147ae147ae1L    # 1.18

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    .line 314
    .restart local v8    # "temp_c":D
    const-wide/16 v12, 0x0

    cmpl-double v12, v8, v12

    if-lez v12, :cond_b

    .line 315
    sub-int v12, v5, p6

    add-int v12, v12, p2

    int-to-double v12, v12

    const-wide v14, 0x4005bf0a8b145769L    # Math.E

    sub-int v16, p1, p3

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    sub-int v17, p1, p3

    mul-int v16, v16, v17

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    mul-double v18, v18, v8

    mul-double v18, v18, v8

    div-double v16, v16, v18

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double v10, v12, v14

    .line 319
    .restart local v10    # "temp_output_args":D
    :goto_5
    const-wide/16 v12, 0x0

    cmpl-double v12, v10, v12

    if-nez v12, :cond_c

    .line 320
    move/from16 v0, p2

    int-to-double v12, v0

    const-wide/high16 v14, 0x403e000000000000L    # 30.0

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    .line 324
    .restart local v6    # "temp":D
    :goto_6
    const-wide/high16 v12, 0x401c000000000000L    # 7.0

    cmpg-double v12, v6, v12

    if-gez v12, :cond_d

    .line 325
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    add-double v8, v6, v12

    .line 329
    :goto_7
    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    cmpg-double v12, v8, v12

    if-gez v12, :cond_e

    .line 330
    const-wide/high16 v12, 0x4069000000000000L    # 200.0

    mul-double/2addr v12, v8

    const-wide v14, 0x3ff7ae147ae147aeL    # 1.48

    div-double v6, v12, v14

    .line 336
    :goto_8
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    .line 337
    const-wide/16 v12, 0x0

    cmpl-double v12, v10, v12

    if-nez v12, :cond_10

    .line 338
    move/from16 v0, p2

    int-to-double v12, v0

    const-wide v14, 0x4005bf0a8b145769L    # Math.E

    sub-int v16, p1, p3

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    sub-int v17, p1, p3

    mul-int v16, v16, v17

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    mul-double v18, v18, v8

    mul-double v18, v18, v8

    div-double v16, v16, v18

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double v2, v12, v14

    .restart local v2    # "output_args":D
    goto/16 :goto_0

    .line 317
    .end local v2    # "output_args":D
    .end local v6    # "temp":D
    .end local v10    # "temp_output_args":D
    :cond_b
    const-wide/16 v10, 0x0

    .restart local v10    # "temp_output_args":D
    goto :goto_5

    .line 322
    :cond_c
    sub-int v12, p6, v5

    int-to-double v12, v12

    const-wide/high16 v14, 0x403e000000000000L    # 30.0

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    .restart local v6    # "temp":D
    goto :goto_6

    .line 327
    :cond_d
    const-wide/high16 v12, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v12, v6

    mul-double/2addr v12, v6

    const-wide v14, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v14, v6

    add-double/2addr v12, v14

    const-wide v14, 0x3ff47ae147ae147bL    # 1.28

    add-double v8, v12, v14

    goto :goto_7

    .line 331
    :cond_e
    const-wide/high16 v12, 0x4014000000000000L    # 5.0

    cmpg-double v12, v8, v12

    if-gez v12, :cond_f

    .line 332
    const-wide v12, 0x4062c00000000000L    # 150.0

    mul-double/2addr v12, v8

    const-wide v14, 0x3ff7ae147ae147aeL    # 1.48

    div-double v6, v12, v14

    goto :goto_8

    .line 334
    :cond_f
    const-wide v12, 0x4060400000000000L    # 130.0

    mul-double/2addr v12, v8

    const-wide v14, 0x3ff7ae147ae147aeL    # 1.48

    div-double v6, v12, v14

    goto :goto_8

    .line 340
    :cond_10
    sub-int v12, p6, v5

    int-to-double v12, v12

    const-wide v14, 0x4005bf0a8b145769L    # Math.E

    sub-int v16, p1, p3

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    sub-int v17, p1, p3

    mul-int v16, v16, v17

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    mul-double v18, v18, v8

    mul-double v18, v18, v8

    div-double v16, v16, v18

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double/2addr v12, v14

    add-double v2, v10, v12

    .restart local v2    # "output_args":D
    goto/16 :goto_0

    .line 342
    .end local v2    # "output_args":D
    .end local v6    # "temp":D
    .end local v8    # "temp_c":D
    .end local v10    # "temp_output_args":D
    :cond_11
    move/from16 v0, p2

    int-to-double v12, v0

    const-wide v14, 0x4005bf0a8b145769L    # Math.E

    sub-int v16, p1, p3

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    sub-int v17, p1, p3

    mul-int v16, v16, v17

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x2

    mul-long v18, v18, p4

    mul-long v18, v18, p4

    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double v2, v12, v14

    .restart local v2    # "output_args":D
    goto/16 :goto_0

    .line 344
    .end local v2    # "output_args":D
    .end local v5    # "temp_orig":I
    :cond_12
    const/16 v12, 0xc8

    move/from16 v0, p3

    if-lt v0, v12, :cond_1b

    .line 345
    move/from16 v0, p1

    move/from16 v1, p3

    if-lt v0, v1, :cond_13

    .line 346
    move/from16 v0, p2

    int-to-double v12, v0

    const-wide v14, 0x4005bf0a8b145769L    # Math.E

    sub-int v16, p1, p3

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    sub-int v17, p1, p3

    mul-int v16, v16, v17

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x2

    mul-long v18, v18, p4

    mul-long v18, v18, p4

    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double v2, v12, v14

    .restart local v2    # "output_args":D
    goto/16 :goto_0

    .line 348
    .end local v2    # "output_args":D
    :cond_13
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->vivo_calac_orig_brighntenss(I)I

    move-result v5

    .line 349
    .restart local v5    # "temp_orig":I
    move/from16 v0, p6

    if-le v0, v5, :cond_1a

    .line 350
    sub-int v12, v5, p6

    add-int v12, v12, p2

    mul-int/lit8 v12, v12, 0x32

    int-to-double v12, v12

    const-wide v14, 0x3ff2e147ae147ae1L    # 1.18

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    .line 351
    .restart local v8    # "temp_c":D
    const-wide/16 v12, 0x0

    cmpl-double v12, v8, v12

    if-lez v12, :cond_14

    .line 352
    sub-int v12, v5, p6

    add-int v12, v12, p2

    int-to-double v12, v12

    const-wide v14, 0x4005bf0a8b145769L    # Math.E

    sub-int v16, p1, p3

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    sub-int v17, p1, p3

    mul-int v16, v16, v17

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    mul-double v18, v18, v8

    mul-double v18, v18, v8

    div-double v16, v16, v18

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double v10, v12, v14

    .line 356
    .restart local v10    # "temp_output_args":D
    :goto_9
    const-wide/16 v12, 0x0

    cmpl-double v12, v10, v12

    if-nez v12, :cond_15

    .line 357
    move/from16 v0, p2

    int-to-double v12, v0

    const-wide/high16 v14, 0x4039000000000000L    # 25.0

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    .line 361
    .restart local v6    # "temp":D
    :goto_a
    const-wide/high16 v12, 0x4022000000000000L    # 9.0

    cmpg-double v12, v6, v12

    if-gez v12, :cond_16

    .line 362
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    add-double v8, v6, v12

    .line 366
    :goto_b
    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    cmpg-double v12, v8, v12

    if-gez v12, :cond_17

    .line 367
    const-wide v12, 0x4062c00000000000L    # 150.0

    mul-double/2addr v12, v8

    const-wide v14, 0x3ff7ae147ae147aeL    # 1.48

    div-double v6, v12, v14

    .line 373
    :goto_c
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    .line 374
    const-wide/16 v12, 0x0

    cmpl-double v12, v10, v12

    if-nez v12, :cond_19

    .line 375
    move/from16 v0, p2

    int-to-double v12, v0

    const-wide v14, 0x4005bf0a8b145769L    # Math.E

    sub-int v16, p1, p3

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    sub-int v17, p1, p3

    mul-int v16, v16, v17

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    mul-double v18, v18, v8

    mul-double v18, v18, v8

    div-double v16, v16, v18

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double v2, v12, v14

    .restart local v2    # "output_args":D
    goto/16 :goto_0

    .line 354
    .end local v2    # "output_args":D
    .end local v6    # "temp":D
    .end local v10    # "temp_output_args":D
    :cond_14
    const-wide/16 v10, 0x0

    .restart local v10    # "temp_output_args":D
    goto :goto_9

    .line 359
    :cond_15
    sub-int v12, p6, v5

    int-to-double v12, v12

    const-wide/high16 v14, 0x4039000000000000L    # 25.0

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    .restart local v6    # "temp":D
    goto :goto_a

    .line 364
    :cond_16
    const-wide/high16 v12, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v12, v6

    mul-double/2addr v12, v6

    const-wide v14, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v14, v6

    add-double/2addr v12, v14

    const-wide v14, 0x3ff47ae147ae147bL    # 1.28

    add-double v8, v12, v14

    goto :goto_b

    .line 368
    :cond_17
    const-wide/high16 v12, 0x4018000000000000L    # 6.0

    cmpg-double v12, v8, v12

    if-gez v12, :cond_18

    .line 369
    const-wide v12, 0x405b800000000000L    # 110.0

    mul-double/2addr v12, v8

    const-wide v14, 0x3ff7ae147ae147aeL    # 1.48

    div-double v6, v12, v14

    goto :goto_c

    .line 371
    :cond_18
    const-wide v12, 0x4057c00000000000L    # 95.0

    mul-double/2addr v12, v8

    const-wide v14, 0x3ff7ae147ae147aeL    # 1.48

    div-double v6, v12, v14

    goto :goto_c

    .line 377
    :cond_19
    sub-int v12, p6, v5

    int-to-double v12, v12

    const-wide v14, 0x4005bf0a8b145769L    # Math.E

    sub-int v16, p1, p3

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    sub-int v17, p1, p3

    mul-int v16, v16, v17

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    mul-double v18, v18, v8

    mul-double v18, v18, v8

    div-double v16, v16, v18

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double/2addr v12, v14

    add-double v2, v10, v12

    .restart local v2    # "output_args":D
    goto/16 :goto_0

    .line 379
    .end local v2    # "output_args":D
    .end local v6    # "temp":D
    .end local v8    # "temp_c":D
    .end local v10    # "temp_output_args":D
    :cond_1a
    move/from16 v0, p2

    int-to-double v12, v0

    const-wide v14, 0x4005bf0a8b145769L    # Math.E

    sub-int v16, p1, p3

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    sub-int v17, p1, p3

    mul-int v16, v16, v17

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x2

    mul-long v18, v18, p4

    mul-long v18, v18, p4

    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double v2, v12, v14

    .restart local v2    # "output_args":D
    goto/16 :goto_0

    .line 381
    .end local v2    # "output_args":D
    .end local v5    # "temp_orig":I
    :cond_1b
    const/16 v12, 0x64

    move/from16 v0, p3

    if-lt v0, v12, :cond_24

    .line 382
    move/from16 v0, p1

    move/from16 v1, p3

    if-lt v0, v1, :cond_1c

    .line 383
    move/from16 v0, p2

    int-to-double v12, v0

    const-wide v14, 0x4005bf0a8b145769L    # Math.E

    sub-int v16, p1, p3

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    sub-int v17, p1, p3

    mul-int v16, v16, v17

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x2

    mul-long v18, v18, p4

    mul-long v18, v18, p4

    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double v2, v12, v14

    .restart local v2    # "output_args":D
    goto/16 :goto_0

    .line 385
    .end local v2    # "output_args":D
    :cond_1c
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->vivo_calac_orig_brighntenss(I)I

    move-result v5

    .line 386
    .restart local v5    # "temp_orig":I
    move/from16 v0, p6

    if-le v0, v5, :cond_23

    .line 387
    sub-int v12, v5, p6

    add-int v12, v12, p2

    mul-int/lit8 v12, v12, 0x32

    int-to-double v12, v12

    const-wide v14, 0x3ff2e147ae147ae1L    # 1.18

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    .line 388
    .restart local v8    # "temp_c":D
    const-wide/16 v12, 0x0

    cmpl-double v12, v8, v12

    if-lez v12, :cond_1d

    .line 389
    sub-int v12, v5, p6

    add-int v12, v12, p2

    int-to-double v12, v12

    const-wide v14, 0x4005bf0a8b145769L    # Math.E

    sub-int v16, p1, p3

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    sub-int v17, p1, p3

    mul-int v16, v16, v17

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x2

    mul-long v18, v18, p4

    mul-long v18, v18, p4

    div-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double v10, v12, v14

    .line 393
    .restart local v10    # "temp_output_args":D
    :goto_d
    const-wide/16 v12, 0x0

    cmpl-double v12, v10, v12

    if-nez v12, :cond_1e

    .line 394
    move/from16 v0, p2

    int-to-double v12, v0

    const-wide/high16 v14, 0x4034000000000000L    # 20.0

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    .line 398
    .restart local v6    # "temp":D
    :goto_e
    const-wide/high16 v12, 0x4026000000000000L    # 11.0

    cmpg-double v12, v6, v12

    if-gez v12, :cond_1f

    .line 399
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    add-double v8, v6, v12

    .line 403
    :goto_f
    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    cmpg-double v12, v8, v12

    if-gez v12, :cond_20

    .line 404
    const-wide/high16 v12, 0x4044000000000000L    # 40.0

    mul-double/2addr v12, v8

    const-wide v14, 0x3ff7ae147ae147aeL    # 1.48

    div-double v6, v12, v14

    .line 410
    :goto_10
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    .line 412
    const-wide/16 v12, 0x0

    cmpl-double v12, v10, v12

    if-nez v12, :cond_22

    .line 413
    move/from16 v0, p2

    int-to-double v12, v0

    const-wide v14, 0x4005bf0a8b145769L    # Math.E

    sub-int v16, p1, p3

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    sub-int v17, p1, p3

    mul-int v16, v16, v17

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    mul-double v18, v18, v8

    mul-double v18, v18, v8

    div-double v16, v16, v18

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double v2, v12, v14

    .restart local v2    # "output_args":D
    goto/16 :goto_0

    .line 391
    .end local v2    # "output_args":D
    .end local v6    # "temp":D
    .end local v10    # "temp_output_args":D
    :cond_1d
    const-wide/16 v10, 0x0

    .restart local v10    # "temp_output_args":D
    goto :goto_d

    .line 396
    :cond_1e
    sub-int v12, p6, v5

    int-to-double v12, v12

    const-wide/high16 v14, 0x4034000000000000L    # 20.0

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    .restart local v6    # "temp":D
    goto :goto_e

    .line 401
    :cond_1f
    const-wide/high16 v12, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v12, v6

    mul-double/2addr v12, v6

    const-wide v14, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v14, v6

    add-double/2addr v12, v14

    const-wide v14, 0x3ff47ae147ae147bL    # 1.28

    add-double v8, v12, v14

    goto :goto_f

    .line 405
    :cond_20
    const-wide/high16 v12, 0x4018000000000000L    # 6.0

    cmpg-double v12, v8, v12

    if-gez v12, :cond_21

    .line 406
    const-wide/high16 v12, 0x403e000000000000L    # 30.0

    mul-double/2addr v12, v8

    const-wide v14, 0x3ff7ae147ae147aeL    # 1.48

    div-double v6, v12, v14

    goto :goto_10

    .line 408
    :cond_21
    const-wide/high16 v12, 0x403a000000000000L    # 26.0

    mul-double/2addr v12, v8

    const-wide v14, 0x3ff7ae147ae147aeL    # 1.48

    div-double v6, v12, v14

    goto :goto_10

    .line 415
    :cond_22
    sub-int v12, p6, v5

    int-to-double v12, v12

    const-wide v14, 0x4005bf0a8b145769L    # Math.E

    sub-int v16, p1, p3

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    sub-int v17, p1, p3

    mul-int v16, v16, v17

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    mul-double v18, v18, v8

    mul-double v18, v18, v8

    div-double v16, v16, v18

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double/2addr v12, v14

    add-double v2, v10, v12

    .restart local v2    # "output_args":D
    goto/16 :goto_0

    .line 417
    .end local v2    # "output_args":D
    .end local v6    # "temp":D
    .end local v8    # "temp_c":D
    .end local v10    # "temp_output_args":D
    :cond_23
    move/from16 v0, p2

    int-to-double v12, v0

    const-wide v14, 0x4005bf0a8b145769L    # Math.E

    sub-int v16, p1, p3

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    sub-int v17, p1, p3

    mul-int v16, v16, v17

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x2

    mul-long v18, v18, p4

    mul-long v18, v18, p4

    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double v2, v12, v14

    .restart local v2    # "output_args":D
    goto/16 :goto_0

    .line 419
    .end local v2    # "output_args":D
    .end local v5    # "temp_orig":I
    :cond_24
    const/16 v12, 0x1e

    move/from16 v0, p3

    if-lt v0, v12, :cond_27

    .line 420
    move/from16 v0, p1

    move/from16 v1, p3

    if-lt v0, v1, :cond_25

    .line 421
    move/from16 v0, p2

    int-to-double v12, v0

    const-wide v14, 0x4005bf0a8b145769L    # Math.E

    sub-int v16, p1, p3

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    sub-int v17, p1, p3

    mul-int v16, v16, v17

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x2

    mul-long v18, v18, p4

    mul-long v18, v18, p4

    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double v2, v12, v14

    .restart local v2    # "output_args":D
    goto/16 :goto_0

    .line 423
    .end local v2    # "output_args":D
    :cond_25
    move/from16 v0, p3

    int-to-double v12, v0

    const-wide/high16 v14, 0x4024000000000000L    # 10.0

    move/from16 v0, p2

    int-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4024000000000000L    # 10.0

    div-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->floor(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    const-wide v14, 0x3ff7ae147ae147aeL    # 1.48

    div-double v8, v12, v14

    .line 424
    .restart local v8    # "temp_c":D
    const-wide/16 v12, 0x0

    cmpl-double v12, v8, v12

    if-lez v12, :cond_26

    .line 425
    move/from16 v0, p2

    int-to-double v12, v0

    const-wide v14, 0x4005bf0a8b145769L    # Math.E

    sub-int v16, p1, p3

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    sub-int v17, p1, p3

    mul-int v16, v16, v17

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    mul-double v18, v18, v8

    mul-double v18, v18, v8

    div-double v16, v16, v18

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double v2, v12, v14

    .restart local v2    # "output_args":D
    goto/16 :goto_0

    .line 427
    .end local v2    # "output_args":D
    :cond_26
    const-wide/16 v2, 0x0

    .restart local v2    # "output_args":D
    goto/16 :goto_0

    .line 430
    .end local v2    # "output_args":D
    .end local v8    # "temp_c":D
    :cond_27
    move/from16 v0, p2

    int-to-double v12, v0

    const-wide v14, 0x4005bf0a8b145769L    # Math.E

    sub-int v16, p1, p3

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    sub-int v17, p1, p3

    mul-int v16, v16, v17

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x2

    mul-long v18, v18, p4

    mul-long v18, v18, p4

    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double v2, v12, v14

    .restart local v2    # "output_args":D
    goto/16 :goto_0
.end method

.method private calcBrightness(I)I
    .locals 4
    .param p1, "lux"    # I

    .prologue
    .line 113
    const/4 v0, 0x0

    .line 115
    .local v0, "brightness":I
    iget-boolean v2, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->bUserSettingBrightness:Z

    if-nez v2, :cond_3

    .line 116
    invoke-direct {p0, p1}, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->vivo_calac_orig_brighntenss(I)I

    move-result v0

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calcBrightness brightness="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->log(Ljava/lang/String;)V

    .line 118
    iget-object v2, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mTimePeriod:Lcom/vivo/common/autobrightness/TimePeriod;

    invoke-virtual {v2}, Lcom/vivo/common/autobrightness/TimePeriod;->getTimePeriod()Lcom/vivo/common/autobrightness/TimePeriod$PeriodType;

    move-result-object v2

    sget-object v3, Lcom/vivo/common/autobrightness/TimePeriod$PeriodType;->DAY_TIME:Lcom/vivo/common/autobrightness/TimePeriod$PeriodType;

    if-ne v2, v3, :cond_2

    const/16 v2, 0x14

    if-ge p1, v2, :cond_2

    .line 119
    move v1, v0

    .line 120
    .local v1, "temp":I
    add-int/lit8 v0, v0, 0x1

    .line 121
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 122
    const/4 v0, 0x4

    .line 124
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calcBrightness brightness="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " force as "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cause daytime and lux="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->log(Ljava/lang/String;)V

    .line 132
    .end local v1    # "temp":I
    :goto_0
    const/4 v2, 0x1

    if-gt v0, v2, :cond_4

    .line 133
    const/4 v0, 0x2

    .line 138
    :cond_1
    :goto_1
    return v0

    .line 126
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calcBrightness lux="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bright="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " period="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mTimePeriod:Lcom/vivo/common/autobrightness/TimePeriod;

    invoke-virtual {v3}, Lcom/vivo/common/autobrightness/TimePeriod;->timePeriodToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 129
    :cond_3
    invoke-direct {p0, p1}, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->vivo_calac_brighntenss_finnal(I)I

    move-result v0

    goto :goto_0

    .line 134
    :cond_4
    const/16 v2, 0xff

    if-le v0, v2, :cond_1

    .line 135
    const/16 v0, 0xff

    goto :goto_1
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    const-string v0, "RgbBrightnessCurveAlgo"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_0
    return-void
.end method

.method private modifyBrightness()V
    .locals 4

    .prologue
    .line 912
    const-string v1, "RgbBrightnessCurveAlgo"

    const-string v2, "modifyBrightness"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    iget-object v1, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-boolean v2, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->bUserSettingBrightness:Z

    iput-boolean v2, v1, Lcom/vivo/common/autobrightness/ModifyArgument;->bUserSettingBrightness:Z

    .line 914
    iget v1, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mAmbientLux:I

    iget v2, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mSecondSettingBrightness:I

    invoke-direct {p0, v1, v2}, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->vivo_adjust_bar(II)V

    .line 915
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->bIsAutoBakclightAdjust:Z

    .line 916
    iget-object v1, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mParser:Lcom/vivo/common/autobrightness/ModifyArgumentParser;

    iget-object v2, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    invoke-virtual {v1, v2}, Lcom/vivo/common/autobrightness/ModifyArgumentParser;->argumentToJsonString(Lcom/vivo/common/autobrightness/ModifyArgument;)Ljava/lang/String;

    move-result-object v0

    .line 917
    .local v0, "jsonStr":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 918
    iget-object v1, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "autobrighness_param"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 919
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 920
    const-string v1, "RgbBrightnessCurveAlgo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "modifyBrightness jsonStr = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    :cond_0
    return-void
.end method

.method private modifyBrightnessMode()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 926
    iget-object v1, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iput v2, v1, Lcom/vivo/common/autobrightness/ModifyArgument;->mchange_count:I

    .line 927
    iget-object v1, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iput v2, v1, Lcom/vivo/common/autobrightness/ModifyArgument;->mchange_stop:I

    .line 929
    iget-object v1, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v1, v1, Lcom/vivo/common/autobrightness/ModifyArgument;->mchange_gm:[I

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->setParamToZeros([I)V

    .line 930
    iget-object v1, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v1, v1, Lcom/vivo/common/autobrightness/ModifyArgument;->mchange_bar:[I

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->setParamToZeros([I)V

    .line 931
    iget-object v1, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v1, v1, Lcom/vivo/common/autobrightness/ModifyArgument;->mchange_cneed:[I

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->setParamToZeros([I)V

    .line 932
    iget-object v1, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v1, v1, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_point_value:[I

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->setParamToZeros([I)V

    .line 933
    iget-object v1, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v1, v1, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_parameter:[[D

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->setParamToZeros([[D)V

    .line 934
    iget-object v1, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-boolean v2, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->bUserSettingBrightness:Z

    iput-boolean v2, v1, Lcom/vivo/common/autobrightness/ModifyArgument;->bUserSettingBrightness:Z

    .line 935
    iget-object v1, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mParser:Lcom/vivo/common/autobrightness/ModifyArgumentParser;

    iget-object v2, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    invoke-virtual {v1, v2}, Lcom/vivo/common/autobrightness/ModifyArgumentParser;->argumentToJsonString(Lcom/vivo/common/autobrightness/ModifyArgument;)Ljava/lang/String;

    move-result-object v0

    .line 936
    .local v0, "jsonString":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 937
    iget-object v1, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "autobrighness_param"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 938
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 939
    const-string v1, "RgbBrightnessCurveAlgo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "modifyBrightnessMode jsonString = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    :cond_0
    return-void
.end method

.method private setParamToZeros([I)V
    .locals 3
    .param p1, "param"    # [I

    .prologue
    .line 897
    array-length v1, p1

    .line 898
    .local v1, "m":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 899
    const/4 v2, 0x0

    aput v2, p1, v0

    .line 898
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 900
    :cond_0
    return-void
.end method

.method private setParamToZeros([[D)V
    .locals 8
    .param p1, "param"    # [[D

    .prologue
    .line 904
    const/4 v4, 0x0

    aget-object v4, p1, v4

    array-length v2, v4

    .line 905
    .local v2, "m":I
    array-length v3, p1

    .line 906
    .local v3, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 907
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 908
    aget-object v4, p1, v0

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v1

    .line 907
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 906
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 909
    .end local v1    # "j":I
    :cond_1
    return-void
.end method

.method private vivo_adjust_bar(II)V
    .locals 16
    .param p1, "x_gm"    # I
    .param p2, "cneed_brightness"    # I

    .prologue
    .line 615
    if-ltz p1, :cond_1

    const/16 v9, 0xa

    move/from16 v0, p1

    if-gt v0, v9, :cond_1

    .line 616
    const/4 v8, 0x5

    .line 644
    .local v8, "temp_x_gm":I
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->bUserSettingBrightness:Z

    if-eqz v9, :cond_d

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mUserSettingBrightness_flag:Z

    if-eqz v9, :cond_d

    .line 645
    invoke-direct/range {p0 .. p1}, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->vivo_calac_brighntenss_finnal(I)I

    move-result v6

    .line 651
    .local v6, "temp_brightness":I
    :goto_1
    const/16 v9, 0xff

    if-le v6, v9, :cond_e

    const/16 v9, 0xf0

    move/from16 v0, p2

    if-le v0, v9, :cond_e

    .line 652
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget v9, v9, Lcom/vivo/common/autobrightness/ModifyArgument;->mchange_count:I

    if-nez v9, :cond_0

    .line 653
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mUserSettingBrightness_flag:Z

    .line 654
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->bUserSettingBrightness:Z

    .line 697
    :cond_0
    :goto_2
    return-void

    .line 617
    .end local v6    # "temp_brightness":I
    .end local v8    # "temp_x_gm":I
    :cond_1
    const/16 v9, 0xa

    move/from16 v0, p1

    if-le v0, v9, :cond_2

    const/16 v9, 0x1e

    move/from16 v0, p1

    if-gt v0, v9, :cond_2

    .line 618
    const/16 v8, 0x14

    .restart local v8    # "temp_x_gm":I
    goto :goto_0

    .line 619
    .end local v8    # "temp_x_gm":I
    :cond_2
    const/16 v9, 0x1e

    move/from16 v0, p1

    if-le v0, v9, :cond_3

    const/16 v9, 0x64

    move/from16 v0, p1

    if-gt v0, v9, :cond_3

    .line 620
    const/16 v8, 0x41

    .restart local v8    # "temp_x_gm":I
    goto :goto_0

    .line 621
    .end local v8    # "temp_x_gm":I
    :cond_3
    const/16 v9, 0x64

    move/from16 v0, p1

    if-le v0, v9, :cond_4

    const/16 v9, 0xc8

    move/from16 v0, p1

    if-gt v0, v9, :cond_4

    .line 622
    const/16 v8, 0x78

    .restart local v8    # "temp_x_gm":I
    goto :goto_0

    .line 623
    .end local v8    # "temp_x_gm":I
    :cond_4
    const/16 v9, 0xc8

    move/from16 v0, p1

    if-le v0, v9, :cond_5

    const/16 v9, 0x258

    move/from16 v0, p1

    if-gt v0, v9, :cond_5

    .line 624
    const/16 v8, 0x190

    .restart local v8    # "temp_x_gm":I
    goto :goto_0

    .line 625
    .end local v8    # "temp_x_gm":I
    :cond_5
    const/16 v9, 0x258

    move/from16 v0, p1

    if-le v0, v9, :cond_6

    const/16 v9, 0x3e8

    move/from16 v0, p1

    if-gt v0, v9, :cond_6

    .line 626
    const/16 v8, 0x320

    .restart local v8    # "temp_x_gm":I
    goto :goto_0

    .line 627
    .end local v8    # "temp_x_gm":I
    :cond_6
    const/16 v9, 0x578

    move/from16 v0, p1

    if-gt v0, v9, :cond_7

    .line 628
    const/16 v8, 0x4b0

    .restart local v8    # "temp_x_gm":I
    goto :goto_0

    .line 629
    .end local v8    # "temp_x_gm":I
    :cond_7
    const/16 v9, 0x7d0

    move/from16 v0, p1

    if-gt v0, v9, :cond_8

    .line 630
    const/16 v8, 0x6a4

    .restart local v8    # "temp_x_gm":I
    goto/16 :goto_0

    .line 631
    .end local v8    # "temp_x_gm":I
    :cond_8
    const/16 v9, 0xaf0

    move/from16 v0, p1

    if-gt v0, v9, :cond_9

    .line 632
    const/16 v8, 0x960

    .restart local v8    # "temp_x_gm":I
    goto/16 :goto_0

    .line 633
    .end local v8    # "temp_x_gm":I
    :cond_9
    const/16 v9, 0xe10

    move/from16 v0, p1

    if-gt v0, v9, :cond_a

    .line 634
    const/16 v8, 0xc80

    .restart local v8    # "temp_x_gm":I
    goto/16 :goto_0

    .line 635
    .end local v8    # "temp_x_gm":I
    :cond_a
    const/16 v9, 0x1130

    move/from16 v0, p1

    if-gt v0, v9, :cond_b

    .line 636
    const/16 v8, 0xfa0

    .restart local v8    # "temp_x_gm":I
    goto/16 :goto_0

    .line 637
    .end local v8    # "temp_x_gm":I
    :cond_b
    const/16 v9, 0x20d0

    move/from16 v0, p1

    if-gt v0, v9, :cond_c

    .line 638
    move/from16 v0, p1

    add-int/lit16 v9, v0, -0x191

    div-int/lit16 v9, v9, 0x3e8

    int-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    .line 639
    .local v4, "temp":D
    const-wide v10, 0x408f400000000000L    # 1000.0

    mul-double/2addr v10, v4

    const-wide v12, 0x408c200000000000L    # 900.0

    add-double/2addr v10, v12

    double-to-int v8, v10

    .restart local v8    # "temp_x_gm":I
    goto/16 :goto_0

    .line 641
    .end local v4    # "temp":D
    .end local v8    # "temp_x_gm":I
    :cond_c
    const/16 v8, 0x23f0

    .restart local v8    # "temp_x_gm":I
    goto/16 :goto_0

    .line 647
    :cond_d
    invoke-direct/range {p0 .. p1}, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->vivo_calac_orig_brighntenss(I)I

    move-result v6

    .line 648
    .restart local v6    # "temp_brightness":I
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->bUserSettingBrightness:Z

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mUserSettingBrightness_flag:Z

    goto/16 :goto_1

    .line 658
    :cond_e
    const/4 v2, 0x0

    .line 659
    .local v2, "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget v9, v9, Lcom/vivo/common/autobrightness/ModifyArgument;->mchange_count:I

    if-ge v2, v9, :cond_f

    .line 660
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v9, v9, Lcom/vivo/common/autobrightness/ModifyArgument;->mchange_gm:[I

    aget v9, v9, v2

    if-ne v9, v8, :cond_12

    .line 664
    :cond_f
    move/from16 v7, p2

    .line 665
    .local v7, "temp_current_brightness":I
    sget-object v9, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->morig_key_value:[[I

    const/4 v10, 0x1

    aget-object v9, v9, v10

    const/4 v10, 0x0

    aget v9, v9, v10

    move/from16 v0, p1

    if-gt v0, v9, :cond_13

    .line 666
    int-to-double v10, v7

    sub-int v9, v8, p1

    int-to-double v12, v9

    sget-object v9, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->morig_param:[[D

    const/4 v14, 0x0

    aget-object v9, v9, v14

    const/4 v14, 0x0

    aget-wide v14, v9, v14

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    double-to-int v7, v10

    .line 676
    :goto_4
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget v9, v9, Lcom/vivo/common/autobrightness/ModifyArgument;->mchange_count:I

    if-ne v2, v9, :cond_16

    .line 677
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v9, v9, Lcom/vivo/common/autobrightness/ModifyArgument;->mchange_bar:[I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget v10, v10, Lcom/vivo/common/autobrightness/ModifyArgument;->mchange_stop:I

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->vivo_calac_brighntenss(I)D

    move-result-wide v12

    double-to-int v11, v12

    sub-int v11, v7, v11

    aput v11, v9, v10

    .line 678
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v9, v9, Lcom/vivo/common/autobrightness/ModifyArgument;->mchange_gm:[I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget v10, v10, Lcom/vivo/common/autobrightness/ModifyArgument;->mchange_stop:I

    aput v8, v9, v10

    .line 679
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v9, v9, Lcom/vivo/common/autobrightness/ModifyArgument;->mchange_cneed:[I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget v10, v10, Lcom/vivo/common/autobrightness/ModifyArgument;->mchange_stop:I

    aput v7, v9, v10

    .line 680
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget v10, v10, Lcom/vivo/common/autobrightness/ModifyArgument;->mchange_count:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Lcom/vivo/common/autobrightness/ModifyArgument;->mchange_count:I

    .line 681
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget v10, v10, Lcom/vivo/common/autobrightness/ModifyArgument;->mchange_stop:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Lcom/vivo/common/autobrightness/ModifyArgument;->mchange_stop:I

    .line 682
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget v9, v9, Lcom/vivo/common/autobrightness/ModifyArgument;->mchange_count:I

    const/16 v10, 0x10

    if-lt v9, v10, :cond_10

    .line 683
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    const/16 v10, 0x10

    iput v10, v9, Lcom/vivo/common/autobrightness/ModifyArgument;->mchange_count:I

    .line 685
    :cond_10
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget v9, v9, Lcom/vivo/common/autobrightness/ModifyArgument;->mchange_stop:I

    const/16 v10, 0xf

    if-le v9, v10, :cond_11

    .line 686
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    const/4 v10, 0x0

    iput v10, v9, Lcom/vivo/common/autobrightness/ModifyArgument;->mchange_stop:I

    .line 692
    :cond_11
    :goto_5
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mkey_point:[I

    array-length v3, v9

    .line 693
    .local v3, "n":I
    const/4 v2, 0x0

    :goto_6
    if-ge v2, v3, :cond_17

    .line 694
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v9, v9, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_point_value:[I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mkey_point:[I

    aget v10, v10, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->vivo_calac_brighntenss(I)D

    move-result-wide v10

    double-to-int v10, v10

    aput v10, v9, v2

    .line 693
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 662
    .end local v3    # "n":I
    .end local v7    # "temp_current_brightness":I
    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    .line 667
    .restart local v7    # "temp_current_brightness":I
    :cond_13
    sget-object v9, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->morig_key_value:[[I

    const/4 v10, 0x2

    aget-object v9, v9, v10

    const/4 v10, 0x0

    aget v9, v9, v10

    move/from16 v0, p1

    if-gt v0, v9, :cond_14

    .line 668
    int-to-double v10, v7

    sub-int v9, v8, p1

    int-to-double v12, v9

    sget-object v9, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->morig_param:[[D

    const/4 v14, 0x1

    aget-object v9, v9, v14

    const/4 v14, 0x0

    aget-wide v14, v9, v14

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    double-to-int v7, v10

    goto/16 :goto_4

    .line 669
    :cond_14
    sget-object v9, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->morig_key_value:[[I

    const/4 v10, 0x3

    aget-object v9, v9, v10

    const/4 v10, 0x0

    aget v9, v9, v10

    move/from16 v0, p1

    if-gt v0, v9, :cond_15

    .line 670
    int-to-double v10, v7

    sub-int v9, v8, p1

    int-to-double v12, v9

    sget-object v9, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->morig_param:[[D

    const/4 v14, 0x2

    aget-object v9, v9, v14

    const/4 v14, 0x0

    aget-wide v14, v9, v14

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    double-to-int v7, v10

    goto/16 :goto_4

    .line 672
    :cond_15
    int-to-double v10, v7

    sub-int v9, v8, p1

    int-to-double v12, v9

    sget-object v9, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->morig_param:[[D

    const/4 v14, 0x3

    aget-object v9, v9, v14

    const/4 v14, 0x0

    aget-wide v14, v9, v14

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    double-to-int v7, v10

    goto/16 :goto_4

    .line 688
    :cond_16
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v9, v9, Lcom/vivo/common/autobrightness/ModifyArgument;->mchange_bar:[I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v10, v10, Lcom/vivo/common/autobrightness/ModifyArgument;->mchange_bar:[I

    aget v10, v10, v2

    add-int/2addr v10, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->vivo_calac_brighntenss(I)D

    move-result-wide v12

    double-to-int v11, v12

    sub-int/2addr v10, v11

    aput v10, v9, v2

    .line 689
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v9, v9, Lcom/vivo/common/autobrightness/ModifyArgument;->mchange_cneed:[I

    aput v7, v9, v2

    goto/16 :goto_5

    .line 695
    .restart local v3    # "n":I
    :cond_17
    invoke-direct/range {p0 .. p2}, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->vivo_adjust_func(II)V

    .line 696
    invoke-direct/range {p0 .. p2}, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->vivo_calac_up_down_gm(II)V

    goto/16 :goto_2
.end method

.method private vivo_adjust_func(II)V
    .locals 20
    .param p1, "x_gm"    # I
    .param p2, "cneed_brightness"    # I

    .prologue
    .line 442
    const/4 v5, -0x1

    .line 443
    .local v5, "m_max":I
    const/4 v6, -0x1

    .line 448
    .local v6, "m_min":I
    const/4 v2, 0x1

    .line 449
    .local v2, "flag":Z
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mkey_point:[I

    array-length v7, v9

    .line 453
    .local v7, "n":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    add-int/lit8 v9, v7, -0x1

    if-ge v3, v9, :cond_1

    .line 454
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v9, v9, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_point_value:[I

    aget v9, v9, v3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v12, v12, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_point_value:[I

    add-int/lit8 v13, v3, 0x1

    aget v12, v12, v13

    if-ge v9, v12, :cond_0

    .line 453
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 457
    :cond_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v9, v9, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_point_value:[I

    add-int/lit8 v12, v3, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v13, v13, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_point_value:[I

    aget v13, v13, v3

    aput v13, v9, v12

    goto :goto_1

    .line 460
    :cond_1
    const/4 v8, -0x1

    .line 461
    .local v8, "positive_mark":I
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v7, :cond_2

    .line 462
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v9, v9, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_point_value:[I

    aget v9, v9, v3

    if-gez v9, :cond_2

    .line 463
    move v8, v3

    .line 461
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 467
    :cond_2
    add-int/lit8 v8, v8, 0x1

    .line 469
    const/4 v9, 0x1

    if-lt v8, v9, :cond_b

    if-ge v8, v7, :cond_b

    .line 470
    const/16 v9, 0xfa0

    move/from16 v0, p1

    if-lt v0, v9, :cond_5

    const/16 v9, 0x3c

    move/from16 v0, p2

    if-ge v0, v9, :cond_5

    .line 471
    move/from16 v0, p2

    int-to-double v10, v0

    .line 479
    .local v10, "temp":D
    :goto_3
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v9, v9, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_point_value:[I

    aget v9, v9, v8

    int-to-double v12, v9

    cmpl-double v9, v10, v12

    if-eqz v9, :cond_9

    .line 480
    const/4 v3, 0x0

    :goto_4
    add-int/lit8 v9, v7, -0x1

    if-ge v3, v9, :cond_3

    .line 481
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v9, v9, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_point_value:[I

    aget v9, v9, v3

    int-to-double v12, v9

    cmpg-double v9, v10, v12

    if-gez v9, :cond_8

    .line 482
    move v8, v3

    .line 492
    :cond_3
    :goto_5
    const/4 v3, 0x0

    :goto_6
    add-int/lit8 v9, v8, -0x1

    if-gt v3, v9, :cond_b

    .line 493
    add-int/lit8 v9, v8, -0x1

    if-ne v3, v9, :cond_a

    .line 494
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v9, v9, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_point_value:[I

    const-wide v12, 0x3fef5c28f5c28f5cL    # 0.98

    mul-double/2addr v12, v10

    double-to-int v12, v12

    aput v12, v9, v3

    .line 497
    :goto_7
    const/4 v9, 0x1

    if-ne v3, v9, :cond_4

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v9, v9, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_point_value:[I

    aget v9, v9, v3

    const/4 v12, 0x7

    if-lt v9, v12, :cond_4

    .line 498
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v9, v9, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_point_value:[I

    const/4 v12, 0x6

    aput v12, v9, v3

    .line 492
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 472
    .end local v10    # "temp":D
    :cond_5
    const/16 v9, 0x5dc

    move/from16 v0, p1

    if-lt v0, v9, :cond_6

    const/16 v9, 0x28

    move/from16 v0, p2

    if-ge v0, v9, :cond_6

    .line 473
    move/from16 v0, p2

    int-to-double v10, v0

    .restart local v10    # "temp":D
    goto :goto_3

    .line 474
    .end local v10    # "temp":D
    :cond_6
    const/16 v9, 0x14

    move/from16 v0, p2

    if-ge v0, v9, :cond_7

    .line 475
    move/from16 v0, p2

    int-to-double v10, v0

    .restart local v10    # "temp":D
    goto :goto_3

    .line 477
    .end local v10    # "temp":D
    :cond_7
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v9, v9, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_point_value:[I

    aget v9, v9, v8

    int-to-double v10, v9

    .restart local v10    # "temp":D
    goto :goto_3

    .line 480
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 487
    :cond_9
    mul-int/lit8 v9, p2, 0x2

    div-int/lit8 v9, v9, 0x3

    int-to-double v12, v9

    cmpg-double v9, v10, v12

    if-gez v9, :cond_3

    add-int/lit8 v9, v7, -0x1

    if-ge v8, v9, :cond_3

    .line 488
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v9, v9, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_point_value:[I

    aget v9, v9, v8

    int-to-double v12, v9

    const-wide/high16 v14, 0x4008000000000000L    # 3.0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v9, v9, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_point_value:[I

    add-int/lit8 v16, v8, 0x1

    aget v9, v9, v16

    int-to-double v0, v9

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    const-wide/high16 v14, 0x4010000000000000L    # 4.0

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    .line 489
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_5

    .line 496
    :cond_a
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v9, v9, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_point_value:[I

    int-to-double v12, v3

    int-to-double v14, v3

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    add-double v14, v14, v16

    div-double/2addr v12, v14

    mul-double/2addr v12, v10

    double-to-int v12, v12

    aput v12, v9, v3

    goto/16 :goto_7

    .line 502
    .end local v10    # "temp":D
    :cond_b
    const/4 v3, 0x0

    :goto_8
    add-int/lit8 v9, v7, -0x1

    if-ge v3, v9, :cond_c

    .line 503
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v9, v9, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_parameter:[[D

    aget-object v9, v9, v3

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v13, v13, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_point_value:[I

    add-int/lit8 v14, v3, 0x1

    aget v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v14, v14, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_point_value:[I

    aget v14, v14, v3

    sub-int/2addr v13, v14

    int-to-double v14, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mkey_point:[I

    add-int/lit8 v16, v3, 0x1

    aget v13, v13, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mkey_point:[I

    move-object/from16 v16, v0

    aget v16, v16, v3

    sub-int v13, v13, v16

    int-to-double v0, v13

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    aput-wide v14, v9, v12

    .line 504
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v9, v9, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_parameter:[[D

    aget-object v9, v9, v3

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v13, v13, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_point_value:[I

    aget v13, v13, v3

    int-to-double v14, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v13, v13, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_parameter:[[D

    aget-object v13, v13, v3

    const/16 v16, 0x0

    aget-wide v16, v13, v16

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mkey_point:[I

    aget v13, v13, v3

    int-to-double v0, v13

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    sub-double v14, v14, v16

    aput-wide v14, v9, v12

    .line 502
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 507
    :cond_c
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mkey_point:[I

    const/16 v12, 0x190

    invoke-static {v9, v12}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v5

    .line 508
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mkey_point:[I

    const/16 v12, 0x1e

    invoke-static {v9, v12}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v6

    .line 509
    const-string v9, "RgbBrightnessCurveAlgo"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "vivo_adjust_bar m_max= "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " m_min"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    if-ltz v5, :cond_10

    if-ltz v6, :cond_10

    .line 511
    sub-int v4, v5, v6

    .line 512
    .local v4, "m":I
    const/4 v3, 0x0

    :goto_9
    if-ge v3, v4, :cond_10

    .line 513
    const/4 v2, 0x0

    .line 514
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v9, v9, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_parameter:[[D

    sub-int v12, v5, v3

    add-int/lit8 v12, v12, -0x1

    aget-object v9, v9, v12

    const/4 v12, 0x0

    aget-wide v12, v9, v12

    const-wide v14, 0x3fc3333333333333L    # 0.15

    cmpl-double v9, v12, v14

    if-lez v9, :cond_f

    if-nez v3, :cond_f

    .line 515
    const/4 v2, 0x1

    .line 516
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v9, v9, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_parameter:[[D

    sub-int v12, v5, v3

    add-int/lit8 v12, v12, -0x1

    aget-object v9, v9, v12

    const/4 v12, 0x0

    const-wide v14, 0x3fc3333333333333L    # 0.15

    aput-wide v14, v9, v12

    .line 517
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v9, v9, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_parameter:[[D

    sub-int v12, v5, v3

    add-int/lit8 v12, v12, -0x1

    aget-object v9, v9, v12

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v13, v13, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_point_value:[I

    sub-int v14, v5, v3

    aget v13, v13, v14

    int-to-double v14, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v13, v13, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_parameter:[[D

    sub-int v16, v5, v3

    add-int/lit8 v16, v16, -0x1

    aget-object v13, v13, v16

    const/16 v16, 0x0

    aget-wide v16, v13, v16

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mkey_point:[I

    sub-int v18, v5, v3

    aget v13, v13, v18

    int-to-double v0, v13

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    sub-double v14, v14, v16

    aput-wide v14, v9, v12

    .line 523
    :cond_d
    :goto_a
    const/4 v9, 0x1

    if-ne v2, v9, :cond_e

    .line 524
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v9, v9, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_point_value:[I

    sub-int v12, v5, v3

    add-int/lit8 v12, v12, -0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v13, v13, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_parameter:[[D

    sub-int v14, v5, v3

    add-int/lit8 v14, v14, -0x1

    aget-object v13, v13, v14

    const/4 v14, 0x0

    aget-wide v14, v13, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mkey_point:[I

    sub-int v16, v5, v3

    add-int/lit8 v16, v16, -0x1

    aget v13, v13, v16

    int-to-double v0, v13

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v13, v13, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_parameter:[[D

    sub-int v16, v5, v3

    add-int/lit8 v16, v16, -0x1

    aget-object v13, v13, v16

    const/16 v16, 0x1

    aget-wide v16, v13, v16

    add-double v14, v14, v16

    double-to-int v13, v14

    aput v13, v9, v12

    .line 525
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v9, v9, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_parameter:[[D

    sub-int v12, v5, v3

    add-int/lit8 v12, v12, -0x2

    aget-object v9, v9, v12

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v13, v13, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_point_value:[I

    sub-int v14, v5, v3

    add-int/lit8 v14, v14, -0x1

    aget v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v14, v14, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_point_value:[I

    sub-int v15, v5, v3

    add-int/lit8 v15, v15, -0x2

    aget v14, v14, v15

    sub-int/2addr v13, v14

    int-to-double v14, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mkey_point:[I

    sub-int v16, v5, v3

    add-int/lit8 v16, v16, -0x1

    aget v13, v13, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mkey_point:[I

    move-object/from16 v16, v0

    sub-int v17, v5, v3

    add-int/lit8 v17, v17, -0x2

    aget v16, v16, v17

    sub-int v13, v13, v16

    int-to-double v0, v13

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    aput-wide v14, v9, v12

    .line 526
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v9, v9, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_parameter:[[D

    sub-int v12, v5, v3

    add-int/lit8 v12, v12, -0x2

    aget-object v9, v9, v12

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v13, v13, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_point_value:[I

    sub-int v14, v5, v3

    add-int/lit8 v14, v14, -0x2

    aget v13, v13, v14

    int-to-double v14, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v13, v13, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_parameter:[[D

    sub-int v16, v5, v3

    add-int/lit8 v16, v16, -0x2

    aget-object v13, v13, v16

    const/16 v16, 0x0

    aget-wide v16, v13, v16

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mkey_point:[I

    sub-int v18, v5, v3

    add-int/lit8 v18, v18, -0x2

    aget v13, v13, v18

    int-to-double v0, v13

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    sub-double v14, v14, v16

    aput-wide v14, v9, v12

    .line 512
    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_9

    .line 518
    :cond_f
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v9, v9, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_parameter:[[D

    sub-int v12, v5, v3

    add-int/lit8 v12, v12, -0x1

    aget-object v9, v9, v12

    const/4 v12, 0x0

    aget-wide v12, v9, v12

    const-wide v14, 0x3fb999999999999aL    # 0.1

    cmpl-double v9, v12, v14

    if-lez v9, :cond_d

    if-eqz v3, :cond_d

    .line 519
    const/4 v2, 0x1

    .line 520
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v9, v9, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_parameter:[[D

    sub-int v12, v5, v3

    add-int/lit8 v12, v12, -0x1

    aget-object v9, v9, v12

    const/4 v12, 0x0

    const-wide v14, 0x3fb999999999999aL    # 0.1

    aput-wide v14, v9, v12

    .line 521
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v9, v9, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_parameter:[[D

    sub-int v12, v5, v3

    add-int/lit8 v12, v12, -0x1

    aget-object v9, v9, v12

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v13, v13, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_point_value:[I

    sub-int v14, v5, v3

    aget v13, v13, v14

    int-to-double v14, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v13, v13, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_parameter:[[D

    sub-int v16, v5, v3

    add-int/lit8 v16, v16, -0x1

    aget-object v13, v13, v16

    const/16 v16, 0x0

    aget-wide v16, v13, v16

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mkey_point:[I

    sub-int v18, v5, v3

    aget v13, v13, v18

    int-to-double v0, v13

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    sub-double v14, v14, v16

    aput-wide v14, v9, v12

    goto/16 :goto_a

    .line 530
    .end local v4    # "m":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v9, v9, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_parameter:[[D

    add-int/lit8 v12, v6, -0x1

    aget-object v9, v9, v12

    const/4 v12, 0x0

    aget-wide v12, v9, v12

    const-wide/high16 v14, 0x4008000000000000L    # 3.0

    cmpl-double v9, v12, v14

    if-ltz v9, :cond_11

    .line 531
    const/4 v3, 0x0

    :goto_b
    if-ge v3, v6, :cond_11

    .line 532
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v9, v9, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_parameter:[[D

    aget-object v9, v9, v3

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v13, v13, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_point_value:[I

    aget v13, v13, v6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v14, v14, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_point_value:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    sub-int/2addr v13, v14

    int-to-double v14, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mkey_point:[I

    aget v13, v13, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mkey_point:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget v16, v16, v17

    sub-int v13, v13, v16

    int-to-double v0, v13

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    aput-wide v14, v9, v12

    .line 533
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v9, v9, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_parameter:[[D

    aget-object v9, v9, v3

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v13, v13, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_point_value:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    int-to-double v14, v13

    aput-wide v14, v9, v12

    .line 534
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v9, v9, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_point_value:[I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v12, v12, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_parameter:[[D

    aget-object v12, v12, v3

    const/4 v13, 0x0

    aget-wide v12, v12, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mkey_point:[I

    aget v14, v14, v3

    int-to-double v14, v14

    mul-double/2addr v12, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v14, v14, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_parameter:[[D

    aget-object v14, v14, v3

    const/4 v15, 0x1

    aget-wide v14, v14, v15

    add-double/2addr v12, v14

    double-to-int v12, v12

    aput v12, v9, v3

    .line 531
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 537
    :cond_11
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isDebug()Z

    move-result v9

    if-eqz v9, :cond_12

    .line 538
    const/4 v3, 0x0

    :goto_c
    add-int/lit8 v9, v7, -0x1

    if-ge v3, v9, :cond_12

    .line 539
    const-string v9, "RgbBrightnessCurveAlgo"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "vivo_adjust_bar mArg.mkey_point_value[i]= "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v13, v13, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_point_value:[I

    aget v13, v13, v3

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " mArg.mkey_point_value[i+1]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v13, v13, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_point_value:[I

    add-int/lit8 v14, v3, 0x1

    aget v13, v13, v14

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " i="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    const-string v9, "RgbBrightnessCurveAlgo"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "vivo_adjust_bar mArg.mkey_parameter[i][0]= "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v13, v13, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_parameter:[[D

    aget-object v13, v13, v3

    const/4 v14, 0x0

    aget-wide v14, v13, v14

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " mArg.mkey_parameter[i][1]= "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v13, v13, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_parameter:[[D

    aget-object v13, v13, v3

    const/4 v14, 0x1

    aget-wide v14, v13, v14

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " i="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_c

    .line 543
    :cond_12
    return-void
.end method

.method private vivo_calac_brighntenss(I)D
    .locals 12
    .param p1, "x_gm"    # I

    .prologue
    .line 573
    invoke-direct {p0, p1}, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->vivo_calac_orig_brighntenss(I)I

    move-result v0

    int-to-double v10, v0

    .line 574
    .local v10, "temp_brightness":D
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v0, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget v0, v0, Lcom/vivo/common/autobrightness/ModifyArgument;->mchange_stop:I

    if-ge v7, v0, :cond_1

    .line 575
    iget-object v0, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v0, v0, Lcom/vivo/common/autobrightness/ModifyArgument;->mchange_bar:[I

    aget v0, v0, v7

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x32

    int-to-double v0, v0

    const-wide v2, 0x3ff2e147ae147ae1L    # 1.18

    div-double/2addr v0, v2

    double-to-long v4, v0

    .line 576
    .local v4, "c":J
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v0, v0, Lcom/vivo/common/autobrightness/ModifyArgument;->mchange_bar:[I

    aget v2, v0, v7

    iget-object v0, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v0, v0, Lcom/vivo/common/autobrightness/ModifyArgument;->mchange_gm:[I

    aget v3, v0, v7

    iget-object v0, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v0, v0, Lcom/vivo/common/autobrightness/ModifyArgument;->mchange_cneed:[I

    aget v6, v0, v7

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->adjust_func(IIIJI)I

    move-result v0

    int-to-double v0, v0

    add-double/2addr v10, v0

    .line 574
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 579
    .end local v4    # "c":J
    :cond_1
    move-wide v8, v10

    .line 580
    .local v8, "brightness":D
    return-wide v8
.end method

.method private vivo_calac_brighntenss_finnal(I)I
    .locals 8
    .param p1, "x_gm"    # I

    .prologue
    .line 589
    iget-object v4, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v4, v4, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_parameter:[[D

    array-length v1, v4

    .line 590
    .local v1, "n":I
    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    .line 591
    .local v2, "temp_brightness":D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 592
    iget-object v4, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mkey_point:[I

    aget v4, v4, v0

    if-lt p1, v4, :cond_1

    iget-object v4, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mkey_point:[I

    add-int/lit8 v5, v0, 0x1

    aget v4, v4, v5

    if-gt p1, v4, :cond_1

    .line 593
    iget-object v4, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v4, v4, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_parameter:[[D

    aget-object v4, v4, v0

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    int-to-double v6, p1

    mul-double/2addr v4, v6

    iget-object v6, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v6, v6, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_parameter:[[D

    aget-object v6, v6, v0

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    .line 597
    :cond_0
    double-to-int v4, v2

    return v4

    .line 591
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private vivo_calac_orig_brighntenss(I)I
    .locals 12
    .param p1, "x_gm"    # I

    .prologue
    const/4 v4, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 552
    sget-object v1, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->morig_key_value:[[I

    aget-object v1, v1, v9

    aget v1, v1, v8

    if-gt p1, v1, :cond_0

    .line 553
    sget-object v1, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->morig_param:[[D

    aget-object v1, v1, v8

    aget-wide v4, v1, v8

    int-to-double v6, p1

    mul-double/2addr v4, v6

    sget-object v1, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->morig_param:[[D

    aget-object v1, v1, v8

    aget-wide v6, v1, v9

    add-double v2, v4, v6

    .line 562
    .local v2, "temp":D
    :goto_0
    double-to-int v0, v2

    .line 563
    .local v0, "brightness":I
    return v0

    .line 554
    .end local v0    # "brightness":I
    .end local v2    # "temp":D
    :cond_0
    sget-object v1, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->morig_key_value:[[I

    aget-object v1, v1, v10

    aget v1, v1, v8

    if-gt p1, v1, :cond_1

    .line 555
    sget-object v1, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->morig_param:[[D

    aget-object v1, v1, v9

    aget-wide v4, v1, v8

    int-to-double v6, p1

    mul-double/2addr v4, v6

    sget-object v1, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->morig_param:[[D

    aget-object v1, v1, v9

    aget-wide v6, v1, v9

    add-double v2, v4, v6

    .restart local v2    # "temp":D
    goto :goto_0

    .line 556
    .end local v2    # "temp":D
    :cond_1
    sget-object v1, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->morig_key_value:[[I

    aget-object v1, v1, v11

    aget v1, v1, v8

    if-gt p1, v1, :cond_2

    .line 557
    sget-object v1, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->morig_param:[[D

    aget-object v1, v1, v10

    aget-wide v4, v1, v8

    int-to-double v6, p1

    mul-double/2addr v4, v6

    sget-object v1, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->morig_param:[[D

    aget-object v1, v1, v10

    aget-wide v6, v1, v9

    add-double v2, v4, v6

    .restart local v2    # "temp":D
    goto :goto_0

    .line 558
    .end local v2    # "temp":D
    :cond_2
    sget-object v1, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->morig_key_value:[[I

    aget-object v1, v1, v4

    aget v1, v1, v8

    if-gt p1, v1, :cond_3

    .line 559
    sget-object v1, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->morig_param:[[D

    aget-object v1, v1, v11

    aget-wide v4, v1, v8

    int-to-double v6, p1

    mul-double/2addr v4, v6

    sget-object v1, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->morig_param:[[D

    aget-object v1, v1, v11

    aget-wide v6, v1, v9

    add-double v2, v4, v6

    .restart local v2    # "temp":D
    goto :goto_0

    .line 561
    .end local v2    # "temp":D
    :cond_3
    sget-object v1, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->morig_key_value:[[I

    aget-object v1, v1, v4

    aget v1, v1, v9

    int-to-double v2, v1

    .restart local v2    # "temp":D
    goto :goto_0
.end method

.method private vivo_calac_up_down_gm(II)V
    .locals 12
    .param p1, "x_gm"    # I
    .param p2, "current_brightness"    # I

    .prologue
    .line 720
    const/4 v5, 0x1

    .line 721
    .local v5, "temp_flag_up":Z
    const/4 v4, 0x1

    .line 726
    .local v4, "temp_flag_down":Z
    const/16 v8, 0xf

    if-ge p2, v8, :cond_b

    .line 727
    sget-object v8, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mup_down_param:[[D

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x0

    aget-wide v8, v8, v9

    int-to-double v10, p2

    mul-double/2addr v8, v10

    sget-object v10, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mup_down_param:[[D

    const/4 v11, 0x0

    aget-object v10, v10, v11

    const/4 v11, 0x1

    aget-wide v10, v10, v11

    add-double/2addr v8, v10

    double-to-int v7, v8

    .line 734
    .local v7, "temp_up_brightness":I
    :goto_0
    const/16 v8, 0x19

    if-ge p2, v8, :cond_e

    .line 735
    sget-object v8, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mup_down_param:[[D

    const/4 v9, 0x4

    aget-object v8, v8, v9

    const/4 v9, 0x0

    aget-wide v8, v8, v9

    int-to-double v10, p2

    mul-double/2addr v8, v10

    sget-object v10, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mup_down_param:[[D

    const/4 v11, 0x4

    aget-object v10, v10, v11

    const/4 v11, 0x1

    aget-wide v10, v10, v11

    add-double/2addr v8, v10

    double-to-int v3, v8

    .line 751
    .local v3, "temp_down_brighness":I
    :goto_1
    const/16 v8, 0xff

    if-le v7, v8, :cond_0

    .line 752
    const/16 v7, 0xff

    .line 755
    :cond_0
    const/16 v8, 0xff

    if-le v3, v8, :cond_1

    .line 756
    const/16 v3, 0xff

    .line 760
    :cond_1
    iget-boolean v8, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->bUserSettingBrightness:Z

    if-eqz v8, :cond_1d

    .line 761
    iget-object v8, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v8, v8, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_point_value:[I

    array-length v1, v8

    .line 762
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    add-int/lit8 v8, v1, -0x1

    if-ge v0, v8, :cond_6

    .line 763
    const/16 v8, 0xff

    if-ne p2, v8, :cond_2

    .line 764
    const/4 v5, 0x0

    .line 765
    const/16 v8, 0x2711

    iput v8, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mchange_up_gm:I

    .line 767
    :cond_2
    const/4 v8, 0x2

    if-ge v3, v8, :cond_3

    .line 768
    const/4 v4, 0x0

    .line 769
    const/4 v8, -0x1

    iput v8, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mchange_down_gm:I

    .line 771
    :cond_3
    iget-object v8, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v8, v8, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_point_value:[I

    aget v8, v8, v0

    if-lt v7, v8, :cond_4

    iget-object v8, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v8, v8, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_point_value:[I

    add-int/lit8 v9, v0, 0x1

    aget v8, v8, v9

    if-gt v7, v8, :cond_4

    if-eqz v5, :cond_4

    .line 772
    iget-object v8, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v8, v8, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_parameter:[[D

    aget-object v8, v8, v0

    const/4 v9, 0x0

    aget-wide v8, v8, v9

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-eqz v8, :cond_12

    .line 773
    int-to-double v8, v7

    iget-object v10, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v10, v10, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_parameter:[[D

    aget-object v10, v10, v0

    const/4 v11, 0x1

    aget-wide v10, v10, v11

    sub-double/2addr v8, v10

    iget-object v10, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v10, v10, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_parameter:[[D

    aget-object v10, v10, v0

    const/4 v11, 0x0

    aget-wide v10, v10, v11

    div-double/2addr v8, v10

    double-to-int v8, v8

    iput v8, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mchange_up_gm:I

    .line 776
    :goto_3
    const/4 v5, 0x0

    .line 778
    :cond_4
    iget-object v8, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v8, v8, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_point_value:[I

    aget v8, v8, v0

    if-lt v3, v8, :cond_5

    iget-object v8, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v8, v8, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_point_value:[I

    add-int/lit8 v9, v0, 0x1

    aget v8, v8, v9

    if-gt v3, v8, :cond_5

    if-eqz v4, :cond_5

    .line 779
    const/4 v4, 0x0

    .line 780
    iget-object v8, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v8, v8, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_parameter:[[D

    aget-object v8, v8, v0

    const/4 v9, 0x0

    aget-wide v8, v8, v9

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-eqz v8, :cond_13

    const/4 v8, 0x1

    if-lt v3, v8, :cond_13

    .line 781
    int-to-double v8, v3

    iget-object v10, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v10, v10, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_parameter:[[D

    aget-object v10, v10, v0

    const/4 v11, 0x1

    aget-wide v10, v10, v11

    sub-double/2addr v8, v10

    iget-object v10, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v10, v10, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_parameter:[[D

    aget-object v10, v10, v0

    const/4 v11, 0x0

    aget-wide v10, v10, v11

    div-double/2addr v8, v10

    double-to-int v8, v8

    iput v8, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mchange_down_gm:I

    .line 786
    :goto_4
    iget v8, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mchange_down_gm:I

    if-nez v8, :cond_5

    .line 787
    const/4 v8, 0x1

    iput v8, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mchange_down_gm:I

    .line 789
    :cond_5
    if-nez v5, :cond_15

    if-nez v4, :cond_15

    .line 792
    :cond_6
    add-int/lit8 v8, v1, -0x1

    if-ne v0, v8, :cond_7

    if-eqz v5, :cond_7

    .line 793
    const/16 v8, 0x2711

    iput v8, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mchange_up_gm:I

    .line 794
    :cond_7
    add-int/lit8 v8, v1, -0x1

    if-ne v0, v8, :cond_8

    if-eqz v4, :cond_8

    .line 795
    const/4 v8, -0x1

    iput v8, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mchange_down_gm:I

    .line 797
    :cond_8
    const/16 v8, 0xfa0

    if-le p1, v8, :cond_16

    .line 798
    const/4 v8, 0x5

    new-array v6, v8, [I

    fill-array-data v6, :array_0

    .line 799
    .local v6, "temp_gm":[I
    const/4 v8, 0x5

    new-array v2, v8, [I

    fill-array-data v2, :array_1

    .line 800
    .local v2, "temp_diff_compare":[I
    invoke-direct {p0, v6, v2, p2}, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->vivo_calac_up_down_gm_branch([I[II)V

    .line 834
    .end local v2    # "temp_diff_compare":[I
    .end local v6    # "temp_gm":[I
    :cond_9
    :goto_5
    const/4 v8, 0x5

    if-ge p1, v8, :cond_1b

    .line 835
    iget v8, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mchange_up_gm:I

    const/16 v9, 0x1e

    if-le v8, v9, :cond_a

    .line 836
    const/16 v8, 0x1e

    iput v8, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mchange_up_gm:I

    .line 877
    :cond_a
    :goto_6
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isDebug()Z

    move-result v8

    if-eqz v8, :cond_28

    .line 878
    iget-object v8, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v8, v8, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_point_value:[I

    array-length v1, v8

    .line 879
    const/4 v0, 0x0

    :goto_7
    if-ge v0, v1, :cond_25

    .line 880
    const-string v8, "RgbBrightnessCurveAlgo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "vivo_adjust_bar mArg.mkey_point_value= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v10, v10, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_point_value:[I

    aget v10, v10, v0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " i="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 728
    .end local v0    # "i":I
    .end local v1    # "n":I
    .end local v3    # "temp_down_brighness":I
    .end local v7    # "temp_up_brightness":I
    :cond_b
    const/16 v8, 0x23

    if-ge p2, v8, :cond_c

    .line 729
    sget-object v8, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mup_down_param:[[D

    const/4 v9, 0x1

    aget-object v8, v8, v9

    const/4 v9, 0x0

    aget-wide v8, v8, v9

    int-to-double v10, p2

    mul-double/2addr v8, v10

    sget-object v10, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mup_down_param:[[D

    const/4 v11, 0x1

    aget-object v10, v10, v11

    const/4 v11, 0x1

    aget-wide v10, v10, v11

    add-double/2addr v8, v10

    double-to-int v7, v8

    .restart local v7    # "temp_up_brightness":I
    goto/16 :goto_0

    .line 730
    .end local v7    # "temp_up_brightness":I
    :cond_c
    const/16 v8, 0x50

    if-ge p2, v8, :cond_d

    .line 731
    sget-object v8, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mup_down_param:[[D

    const/4 v9, 0x2

    aget-object v8, v8, v9

    const/4 v9, 0x0

    aget-wide v8, v8, v9

    int-to-double v10, p2

    mul-double/2addr v8, v10

    sget-object v10, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mup_down_param:[[D

    const/4 v11, 0x2

    aget-object v10, v10, v11

    const/4 v11, 0x1

    aget-wide v10, v10, v11

    add-double/2addr v8, v10

    double-to-int v7, v8

    .restart local v7    # "temp_up_brightness":I
    goto/16 :goto_0

    .line 733
    .end local v7    # "temp_up_brightness":I
    :cond_d
    sget-object v8, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mup_down_param:[[D

    const/4 v9, 0x3

    aget-object v8, v8, v9

    const/4 v9, 0x0

    aget-wide v8, v8, v9

    int-to-double v10, p2

    mul-double/2addr v8, v10

    sget-object v10, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mup_down_param:[[D

    const/4 v11, 0x3

    aget-object v10, v10, v11

    const/4 v11, 0x1

    aget-wide v10, v10, v11

    add-double/2addr v8, v10

    double-to-int v7, v8

    .restart local v7    # "temp_up_brightness":I
    goto/16 :goto_0

    .line 736
    :cond_e
    const/16 v8, 0x23

    if-ge p2, v8, :cond_f

    .line 737
    sget-object v8, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mup_down_param:[[D

    const/4 v9, 0x5

    aget-object v8, v8, v9

    const/4 v9, 0x0

    aget-wide v8, v8, v9

    int-to-double v10, p2

    mul-double/2addr v8, v10

    sget-object v10, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mup_down_param:[[D

    const/4 v11, 0x5

    aget-object v10, v10, v11

    const/4 v11, 0x1

    aget-wide v10, v10, v11

    add-double/2addr v8, v10

    double-to-int v3, v8

    .restart local v3    # "temp_down_brighness":I
    goto/16 :goto_1

    .line 738
    .end local v3    # "temp_down_brighness":I
    :cond_f
    const/16 v8, 0x50

    if-ge p2, v8, :cond_10

    .line 739
    sget-object v8, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mup_down_param:[[D

    const/4 v9, 0x6

    aget-object v8, v8, v9

    const/4 v9, 0x0

    aget-wide v8, v8, v9

    int-to-double v10, p2

    mul-double/2addr v8, v10

    sget-object v10, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mup_down_param:[[D

    const/4 v11, 0x6

    aget-object v10, v10, v11

    const/4 v11, 0x1

    aget-wide v10, v10, v11

    add-double/2addr v8, v10

    double-to-int v3, v8

    .restart local v3    # "temp_down_brighness":I
    goto/16 :goto_1

    .line 740
    .end local v3    # "temp_down_brighness":I
    :cond_10
    const/16 v8, 0x78

    if-ge p2, v8, :cond_11

    .line 741
    sget-object v8, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mup_down_param:[[D

    const/4 v9, 0x7

    aget-object v8, v8, v9

    const/4 v9, 0x0

    aget-wide v8, v8, v9

    int-to-double v10, p2

    mul-double/2addr v8, v10

    sget-object v10, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mup_down_param:[[D

    const/4 v11, 0x7

    aget-object v10, v10, v11

    const/4 v11, 0x1

    aget-wide v10, v10, v11

    add-double/2addr v8, v10

    double-to-int v3, v8

    .restart local v3    # "temp_down_brighness":I
    goto/16 :goto_1

    .line 743
    .end local v3    # "temp_down_brighness":I
    :cond_11
    sget-object v8, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mup_down_param:[[D

    const/16 v9, 0x8

    aget-object v8, v8, v9

    const/4 v9, 0x0

    aget-wide v8, v8, v9

    int-to-double v10, p2

    mul-double/2addr v8, v10

    sget-object v10, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mup_down_param:[[D

    const/16 v11, 0x8

    aget-object v10, v10, v11

    const/4 v11, 0x1

    aget-wide v10, v10, v11

    add-double/2addr v8, v10

    double-to-int v3, v8

    .restart local v3    # "temp_down_brighness":I
    goto/16 :goto_1

    .line 775
    .restart local v0    # "i":I
    .restart local v1    # "n":I
    :cond_12
    iget-object v8, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mkey_point:[I

    aget v8, v8, v0

    iput v8, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mchange_up_gm:I

    goto/16 :goto_3

    .line 782
    :cond_13
    if-lez v3, :cond_14

    .line 783
    iget-object v8, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mkey_point:[I

    add-int/lit8 v9, v0, 0x1

    aget v8, v8, v9

    iput v8, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mchange_down_gm:I

    goto/16 :goto_4

    .line 785
    :cond_14
    const/4 v8, -0x1

    iput v8, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mchange_down_gm:I

    goto/16 :goto_4

    .line 762
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 802
    :cond_16
    const/16 v8, 0x7d0

    if-le p1, v8, :cond_17

    .line 803
    const/4 v8, 0x4

    new-array v6, v8, [I

    fill-array-data v6, :array_2

    .line 804
    .restart local v6    # "temp_gm":[I
    const/4 v8, 0x4

    new-array v2, v8, [I

    fill-array-data v2, :array_3

    .line 805
    .restart local v2    # "temp_diff_compare":[I
    invoke-direct {p0, v6, v2, p2}, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->vivo_calac_up_down_gm_branch([I[II)V

    goto/16 :goto_5

    .line 807
    .end local v2    # "temp_diff_compare":[I
    .end local v6    # "temp_gm":[I
    :cond_17
    const/16 v8, 0x3e8

    if-le p1, v8, :cond_18

    .line 808
    const/4 v8, 0x3

    new-array v6, v8, [I

    fill-array-data v6, :array_4

    .line 809
    .restart local v6    # "temp_gm":[I
    const/4 v8, 0x3

    new-array v2, v8, [I

    fill-array-data v2, :array_5

    .line 810
    .restart local v2    # "temp_diff_compare":[I
    invoke-direct {p0, v6, v2, p2}, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->vivo_calac_up_down_gm_branch([I[II)V

    goto/16 :goto_5

    .line 812
    .end local v2    # "temp_diff_compare":[I
    .end local v6    # "temp_gm":[I
    :cond_18
    const/16 v8, 0x1f4

    if-le p1, v8, :cond_19

    .line 813
    const/4 v8, 0x1

    new-array v6, v8, [I

    const/4 v8, 0x0

    const/16 v9, 0x14

    aput v9, v6, v8

    .line 814
    .restart local v6    # "temp_gm":[I
    const/4 v8, 0x1

    new-array v2, v8, [I

    const/4 v8, 0x0

    const/16 v9, 0xa

    aput v9, v2, v8

    .line 815
    .restart local v2    # "temp_diff_compare":[I
    invoke-direct {p0, v6, v2, p2}, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->vivo_calac_up_down_gm_branch([I[II)V

    goto/16 :goto_5

    .line 817
    .end local v2    # "temp_diff_compare":[I
    .end local v6    # "temp_gm":[I
    :cond_19
    const/16 v8, 0xc8

    if-le p1, v8, :cond_1a

    .line 818
    const/4 v8, 0x1

    new-array v6, v8, [I

    const/4 v8, 0x0

    const/16 v9, 0xe

    aput v9, v6, v8

    .line 819
    .restart local v6    # "temp_gm":[I
    const/4 v8, 0x1

    new-array v2, v8, [I

    const/4 v8, 0x0

    const/16 v9, 0xa

    aput v9, v2, v8

    .line 820
    .restart local v2    # "temp_diff_compare":[I
    invoke-direct {p0, v6, v2, p2}, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->vivo_calac_up_down_gm_branch([I[II)V

    .line 821
    iget v8, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mchange_down_gm:I

    const/16 v9, 0x17

    if-le v8, v9, :cond_9

    .line 822
    const/16 v8, 0x13

    iput v8, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mchange_down_gm:I

    goto/16 :goto_5

    .line 826
    .end local v2    # "temp_diff_compare":[I
    .end local v6    # "temp_gm":[I
    :cond_1a
    const/16 v8, 0x32

    if-le p1, v8, :cond_9

    .line 827
    const/4 v8, 0x1

    new-array v6, v8, [I

    const/4 v8, 0x0

    const/16 v9, 0xa

    aput v9, v6, v8

    .line 828
    .restart local v6    # "temp_gm":[I
    const/4 v8, 0x1

    new-array v2, v8, [I

    const/4 v8, 0x0

    const/16 v9, 0xa

    aput v9, v2, v8

    .line 829
    .restart local v2    # "temp_diff_compare":[I
    invoke-direct {p0, v6, v2, p2}, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->vivo_calac_up_down_gm_branch([I[II)V

    .line 830
    iget v8, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mchange_down_gm:I

    const/16 v9, 0xf

    if-le v8, v9, :cond_9

    .line 831
    const/16 v8, 0xe

    iput v8, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mchange_down_gm:I

    goto/16 :goto_5

    .line 838
    .end local v2    # "temp_diff_compare":[I
    .end local v6    # "temp_gm":[I
    :cond_1b
    const/16 v8, 0xa

    if-gt p1, v8, :cond_1c

    .line 839
    iget v8, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mchange_up_gm:I

    const/16 v9, 0x78

    if-le v8, v9, :cond_a

    .line 840
    const/16 v8, 0x78

    iput v8, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mchange_up_gm:I

    goto/16 :goto_6

    .line 842
    :cond_1c
    const/16 v8, 0xf

    if-gt p1, v8, :cond_a

    .line 843
    iget v8, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mchange_up_gm:I

    const/16 v9, 0x12c

    if-le v8, v9, :cond_a

    .line 844
    const/16 v8, 0x12c

    iput v8, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mchange_up_gm:I

    goto/16 :goto_6

    .line 847
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_1d
    const/4 v1, 0x5

    .line 848
    .restart local v1    # "n":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_8
    const/4 v8, 0x4

    if-ge v0, v8, :cond_22

    .line 849
    const/16 v8, 0xff

    if-ne p2, v8, :cond_1e

    .line 850
    const/4 v5, 0x0

    .line 851
    const/16 v8, 0x2711

    iput v8, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mchange_up_gm:I

    .line 853
    :cond_1e
    const/4 v8, 0x2

    if-ge v3, v8, :cond_1f

    .line 854
    const/4 v4, 0x0

    .line 855
    const/4 v8, -0x1

    iput v8, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mchange_down_gm:I

    .line 857
    :cond_1f
    sget-object v8, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->morig_key_value:[[I

    aget-object v8, v8, v0

    const/4 v9, 0x1

    aget v8, v8, v9

    if-lt v7, v8, :cond_20

    sget-object v8, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->morig_key_value:[[I

    add-int/lit8 v9, v0, 0x1

    aget-object v8, v8, v9

    const/4 v9, 0x1

    aget v8, v8, v9

    if-gt v7, v8, :cond_20

    if-eqz v5, :cond_20

    .line 858
    int-to-double v8, v7

    sget-object v10, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->morig_param:[[D

    aget-object v10, v10, v0

    const/4 v11, 0x1

    aget-wide v10, v10, v11

    sub-double/2addr v8, v10

    sget-object v10, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->morig_param:[[D

    aget-object v10, v10, v0

    const/4 v11, 0x0

    aget-wide v10, v10, v11

    div-double/2addr v8, v10

    double-to-int v8, v8

    iput v8, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mchange_up_gm:I

    .line 859
    const/4 v5, 0x0

    .line 861
    :cond_20
    sget-object v8, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->morig_key_value:[[I

    aget-object v8, v8, v0

    const/4 v9, 0x1

    aget v8, v8, v9

    if-lt v3, v8, :cond_21

    sget-object v8, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->morig_key_value:[[I

    add-int/lit8 v9, v0, 0x1

    aget-object v8, v8, v9

    const/4 v9, 0x1

    aget v8, v8, v9

    if-gt v3, v8, :cond_21

    if-eqz v4, :cond_21

    .line 862
    const/4 v4, 0x0

    .line 863
    if-ltz v3, :cond_23

    .line 864
    int-to-double v8, v3

    sget-object v10, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->morig_param:[[D

    aget-object v10, v10, v0

    const/4 v11, 0x1

    aget-wide v10, v10, v11

    sub-double/2addr v8, v10

    sget-object v10, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->morig_param:[[D

    aget-object v10, v10, v0

    const/4 v11, 0x0

    aget-wide v10, v10, v11

    div-double/2addr v8, v10

    double-to-int v8, v8

    iput v8, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mchange_down_gm:I

    .line 865
    iget v8, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mchange_down_gm:I

    if-nez v8, :cond_21

    .line 866
    const/4 v8, 0x1

    iput v8, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mchange_down_gm:I

    .line 871
    :cond_21
    :goto_9
    if-nez v5, :cond_24

    if-nez v4, :cond_24

    .line 874
    :cond_22
    const/4 v8, 0x4

    if-ne v0, v8, :cond_a

    if-eqz v5, :cond_a

    .line 875
    const/16 v8, 0x2711

    iput v8, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mchange_up_gm:I

    goto/16 :goto_6

    .line 869
    :cond_23
    const/4 v8, -0x1

    iput v8, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mchange_down_gm:I

    goto :goto_9

    .line 848
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_8

    .line 881
    :cond_25
    const/4 v0, 0x0

    :goto_a
    iget-object v8, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget v8, v8, Lcom/vivo/common/autobrightness/ModifyArgument;->mchange_stop:I

    if-ge v0, v8, :cond_26

    .line 882
    const-string v8, "RgbBrightnessCurveAlgo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "vivo_adjust_bar mArg.mchange_gm[i]= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v10, v10, Lcom/vivo/common/autobrightness/ModifyArgument;->mchange_gm:[I

    aget v10, v10, v0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mArg.mchange_bar[i]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v10, v10, Lcom/vivo/common/autobrightness/ModifyArgument;->mchange_bar:[I

    aget v10, v10, v0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mArg.mchange_cneed[i]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v10, v10, Lcom/vivo/common/autobrightness/ModifyArgument;->mchange_cneed:[I

    aget v10, v10, v0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " i="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 883
    :cond_26
    add-int/lit8 v1, v1, -0x1

    .line 884
    const/4 v0, 0x0

    :goto_b
    if-ge v0, v1, :cond_27

    .line 885
    const-string v8, "RgbBrightnessCurveAlgo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "vivo_adjust_bar mArg.mkey_parameter[i][0]= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v10, v10, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_parameter:[[D

    aget-object v10, v10, v0

    const/4 v11, 0x0

    aget-wide v10, v10, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mArg.mkey_parameter[i][1]= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget-object v10, v10, Lcom/vivo/common/autobrightness/ModifyArgument;->mkey_parameter:[[D

    aget-object v10, v10, v0

    const/4 v11, 0x1

    aget-wide v10, v10, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " i="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 886
    :cond_27
    const-string v8, "RgbBrightnessCurveAlgo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "vivo_adjust_bar mArg.mchange_count "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget v10, v10, Lcom/vivo/common/autobrightness/ModifyArgument;->mchange_count:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mArg.mchange_stop"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    iget v10, v10, Lcom/vivo/common/autobrightness/ModifyArgument;->mchange_stop:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    const-string v8, "RgbBrightnessCurveAlgo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "vivo_adjust_bar mchange_down_gm "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mchange_down_gm:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mchange_up_gm"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mchange_up_gm:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    const-string v8, "RgbBrightnessCurveAlgo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "vivo_adjust_bar mchange_down_gm "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mchange_down_gm:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mchange_up_gm"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mchange_up_gm:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    const-string v8, "RgbBrightnessCurveAlgo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "vivo_adjust_bar temp_up_brighness "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " current_brightness"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " temp_down_brighness "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    :cond_28
    return-void

    .line 798
    :array_0
    .array-data 4
        0x5dc
        0x212
        0x96
        0x32
        0x14
    .end array-data

    .line 799
    :array_1
    .array-data 4
        0x32
        0x1e
        0x14
        0xa
        0xa
    .end array-data

    .line 803
    :array_2
    .array-data 4
        0x212
        0x96
        0x32
        0x14
    .end array-data

    .line 804
    :array_3
    .array-data 4
        0x1e
        0x14
        0xa
        0xa
    .end array-data

    .line 808
    :array_4
    .array-data 4
        0x96
        0x32
        0x14
    .end array-data

    .line 809
    :array_5
    .array-data 4
        0x14
        0xa
        0xa
    .end array-data
.end method

.method private vivo_calac_up_down_gm_branch([I[II)V
    .locals 6
    .param p1, "temp_gm"    # [I
    .param p2, "temp_diff_compare"    # [I
    .param p3, "current_brightness"    # I

    .prologue
    .line 702
    array-length v1, p1

    .line 703
    .local v1, "m":I
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    if-ge v0, v1, :cond_0

    iget v4, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mchange_down_gm:I

    aget v5, p1, v0

    if-ge v4, v5, :cond_0

    .line 704
    aget v4, p1, v0

    invoke-direct {p0, v4}, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->vivo_calac_brighntenss_finnal(I)I

    move-result v2

    .line 705
    .local v2, "temp_brightness":I
    sub-int v3, p3, v2

    .line 706
    .local v3, "temp_diff":I
    aget v4, p2, v0

    if-le v3, v4, :cond_1

    .line 707
    aget v4, p1, v0

    iput v4, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mchange_down_gm:I

    .line 711
    .end local v2    # "temp_brightness":I
    .end local v3    # "temp_diff":I
    :cond_0
    return-void

    .line 703
    .restart local v2    # "temp_brightness":I
    .restart local v3    # "temp_diff":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public brightnessBeenApplied(Lcom/vivo/common/autobrightness/AutobrightInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/vivo/common/autobrightness/AutobrightInfo;

    .prologue
    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "brightnessBeenApplied vivo_calac_up_down_gm lux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/vivo/common/autobrightness/AutobrightInfo;->mLightLux:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->log(Ljava/lang/String;)V

    .line 250
    iget v0, p1, Lcom/vivo/common/autobrightness/AutobrightInfo;->mLightLux:I

    iget v1, p1, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    invoke-direct {p0, v0, v1}, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->vivo_calac_up_down_gm(II)V

    .line 251
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1006
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1007
    const-string v0, "  ======== RgbBrightnessCurveAlgo"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1008
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mArgs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mParser:Lcom/vivo/common/autobrightness/ModifyArgumentParser;

    iget-object v2, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    invoke-virtual {v1, v2}, Lcom/vivo/common/autobrightness/ModifyArgumentParser;->argumentToJsonString(Lcom/vivo/common/autobrightness/ModifyArgument;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1009
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  autobrighness_param = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "autobrighness_param"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1010
    const-string v0, "  ========"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1012
    :cond_0
    return-void
.end method

.method public getAutoBrightness(ZZILcom/vivo/common/autobrightness/AutobrightInfo;)Lcom/vivo/common/autobrightness/AutobrightInfo;
    .locals 10
    .param p1, "waitFirst"    # Z
    .param p2, "mProximityStatus"    # Z
    .param p3, "lux"    # I
    .param p4, "info"    # Lcom/vivo/common/autobrightness/AutobrightInfo;

    .prologue
    .line 175
    const-wide/16 v4, 0x0

    .line 177
    .local v4, "t":J
    new-instance v0, Lcom/vivo/common/autobrightness/AutobrightInfo;

    invoke-direct {v0}, Lcom/vivo/common/autobrightness/AutobrightInfo;-><init>()V

    .line 178
    .local v0, "abInfo":Lcom/vivo/common/autobrightness/AutobrightInfo;
    invoke-virtual {v0, p4}, Lcom/vivo/common/autobrightness/AutobrightInfo;->copyFrom(Lcom/vivo/common/autobrightness/AutobrightInfo;)V

    .line 181
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 182
    const/16 v3, 0x2710

    if-le p3, v3, :cond_0

    .line 183
    const/16 p3, 0x2710

    .line 185
    :cond_0
    iput p3, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mAmbientLux:I

    .line 187
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isDebug()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 188
    invoke-direct {p0, p3}, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->calcBrightness(I)I

    move-result v1

    .line 189
    .local v1, "brightness":I
    const-string v3, "debug.sys.calc.brightness"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .end local v1    # "brightness":I
    :cond_1
    if-eqz p1, :cond_2

    .line 192
    invoke-direct {p0, p3}, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->calcBrightness(I)I

    move-result v1

    .line 193
    .restart local v1    # "brightness":I
    iput v1, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->nCurrentBrightness:I

    .line 194
    iget v3, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->nCurrentBrightness:I

    invoke-direct {p0, p3, v3}, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->vivo_calac_up_down_gm(II)V

    .line 195
    const/4 v3, 0x0

    iput v3, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mAdjustBrightnessFlag:I

    .line 233
    .end local v1    # "brightness":I
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AutoBakclight lux="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " nCurrentBrightness="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->nCurrentBrightness:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " mchange_up_gm="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mchange_up_gm:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " mchange_down_gm="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mchange_down_gm:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " info.mScreenLevel="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, p4, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " bUserSettingBrightness="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v6, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->bUserSettingBrightness:Z

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " waitFirst="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " nCurrentBrightness="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->nCurrentBrightness:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->log(Ljava/lang/String;)V

    .line 237
    iget v3, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->nCurrentBrightness:I

    iput v3, v0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    .line 238
    iput p3, v0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mLightLux:I

    .line 239
    return-object v0

    .line 197
    :cond_2
    iget v3, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mchange_up_gm:I

    if-lt p3, v3, :cond_6

    .line 198
    iget v3, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mAdjustBrightnessFlag:I

    const/4 v6, 0x2

    if-eq v3, v6, :cond_3

    .line 199
    const/4 v3, 0x2

    iput v3, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mAdjustBrightnessFlag:I

    .line 200
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mAdjustBrightnessTimeStamp:J

    .line 202
    :cond_3
    const/16 v2, 0x190

    .line 204
    .local v2, "delayTime":I
    const/16 v3, 0x14

    if-ge p3, v3, :cond_4

    .line 205
    const/16 v2, 0x5dc

    .line 207
    :cond_4
    iget-wide v6, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mAdjustBrightnessTimeStamp:J

    sub-long v6, v4, v6

    int-to-long v8, v2

    cmp-long v3, v6, v8

    if-lez v3, :cond_5

    .line 208
    invoke-direct {p0, p3}, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->calcBrightness(I)I

    move-result v1

    .line 209
    .restart local v1    # "brightness":I
    iput v1, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->nCurrentBrightness:I

    .line 211
    const/4 v3, 0x0

    iput v3, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mAdjustBrightnessFlag:I

    .line 214
    .end local v1    # "brightness":I
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AutoBakclight  nUpBrightness mAdjustBrightnessTimeStamp ="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v6, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mAdjustBrightnessTimeStamp:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "t ="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 216
    .end local v2    # "delayTime":I
    :cond_6
    iget v3, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mchange_down_gm:I

    if-gt p3, v3, :cond_9

    if-nez p2, :cond_9

    .line 217
    iget v3, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mAdjustBrightnessFlag:I

    const/4 v6, 0x1

    if-eq v3, v6, :cond_7

    .line 218
    const/4 v3, 0x1

    iput v3, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mAdjustBrightnessFlag:I

    .line 219
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mAdjustBrightnessTimeStamp:J

    .line 221
    :cond_7
    iget-wide v6, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mAdjustBrightnessTimeStamp:J

    sub-long v6, v4, v6

    const-wide/16 v8, 0x157c

    cmp-long v3, v6, v8

    if-lez v3, :cond_8

    .line 222
    invoke-direct {p0, p3}, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->calcBrightness(I)I

    move-result v1

    .line 223
    .restart local v1    # "brightness":I
    iput v1, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->nCurrentBrightness:I

    .line 225
    const/4 v3, 0x0

    iput v3, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mAdjustBrightnessFlag:I

    .line 227
    .end local v1    # "brightness":I
    :cond_8
    const/4 v3, 0x1

    iput v3, v0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    .line 228
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AutoBakclight  nDownBrightness mAdjustBrightnessTimeStamp ="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v6, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mAdjustBrightnessTimeStamp:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "t ="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 230
    :cond_9
    const/4 v3, 0x0

    iput v3, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mAdjustBrightnessFlag:I

    goto/16 :goto_0
.end method

.method public isAutoBakclightAdjust()Z
    .locals 1

    .prologue
    .line 1002
    iget-boolean v0, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->bIsAutoBakclightAdjust:Z

    return v0
.end method

.method public notifyStateChanged(I)V
    .locals 5
    .param p1, "state"    # I

    .prologue
    const/4 v4, 0x1

    .line 955
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isUseRgbSensor()Z

    move-result v0

    if-nez v0, :cond_1

    .line 970
    :cond_0
    :goto_0
    return-void

    .line 959
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 961
    :pswitch_0
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 962
    const-string v0, "RgbBrightnessCurveAlgo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyStateChanged SCREEN_OFF: bIsAutoBakclightAdjust="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->bIsAutoBakclightAdjust:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    :cond_2
    iget-boolean v0, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->bIsAutoBakclightAdjust:Z

    if-nez v0, :cond_0

    .line 965
    iget-object v0, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mAdjustBarHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 966
    iget-object v0, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mAdjustBarHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 959
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public onGetSettings(IILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "brightness"    # I
    .param p2, "mode"    # I
    .param p3, "offBy"    # Ljava/lang/String;
    .param p4, "changeBy"    # Ljava/lang/String;

    .prologue
    .line 973
    const-string v0, "com.vivo.upslide"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.settings"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.settings"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.systemui"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 974
    :cond_0
    invoke-virtual {p0, p2}, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->setBacklightMode(I)V

    .line 976
    :cond_1
    return-void
.end method

.method public saveModifyRecord(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 4
    .param p1, "obj"    # Lorg/json/JSONObject;

    .prologue
    .line 160
    iget-object v2, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mArg:Lcom/vivo/common/autobrightness/ModifyArgument;

    invoke-static {v2}, Lcom/vivo/common/autobrightness/ModifyArgumentParser;->argumentToJsonObject(Lcom/vivo/common/autobrightness/ModifyArgument;)Lorg/json/JSONObject;

    move-result-object v0

    .line 161
    .local v0, "arg":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 163
    :try_start_0
    const-string v2, "arg"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :cond_0
    :goto_0
    return-object p1

    .line 164
    :catch_0
    move-exception v1

    .line 166
    .local v1, "e":Lorg/json/JSONException;
    const-string v2, "RgbBrightnessCurveAlgo"

    const-string v3, "saveModifyRecord put ARGUMENT:"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 167
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public setBacklightMode(I)V
    .locals 5
    .param p1, "mode"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 979
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isUseRgbSensor()Z

    move-result v0

    if-nez v0, :cond_1

    .line 999
    :cond_0
    :goto_0
    return-void

    .line 982
    :cond_1
    iput p1, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mBacklightMode:I

    .line 983
    if-nez p1, :cond_2

    .line 985
    iput v2, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mSecondSettingBrightness:I

    .line 986
    iput-boolean v3, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->bIsAutoBakclightAdjust:Z

    .line 987
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mBrightnessDeta:D

    .line 988
    iput-boolean v2, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->bUserSettingBrightness:Z

    .line 989
    iput-boolean v2, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mUserSettingBrightness_flag:Z

    .line 990
    iget-object v0, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mAdjustBarHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 991
    iget-object v0, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mAdjustBarHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 992
    iget-object v0, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mAdjustBarHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 996
    :cond_2
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 997
    const-string v0, "RgbBrightnessCurveAlgo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBacklightMode bUserSettingBrightness = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->bUserSettingBrightness:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setLigtSensorEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, 0x1

    .line 945
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isUseRgbSensor()Z

    move-result v0

    if-nez v0, :cond_1

    .line 952
    :cond_0
    :goto_0
    return-void

    .line 948
    :cond_1
    if-eqz p1, :cond_0

    .line 949
    iput-boolean v1, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->bIsAutoBakclightAdjust:Z

    .line 950
    iput v1, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mBacklightMode:I

    goto :goto_0
.end method

.method public setProximityPositiveToNegative(Z)V
    .locals 1
    .param p1, "to"    # Z

    .prologue
    .line 243
    if-eqz p1, :cond_0

    .line 244
    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mAdjustBrightnessFlag:I

    .line 246
    :cond_0
    return-void
.end method

.method public setSecondUserBrightness(II)V
    .locals 5
    .param p1, "backlight"    # I
    .param p2, "screenState"    # I

    .prologue
    const/4 v4, 0x1

    .line 142
    iget v0, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mBacklightMode:I

    if-ne v0, v4, :cond_0

    sget v0, Lcom/vivo/common/autobrightness/ScreenState;->STATE_SCREEN_BRIGHT:I

    if-ne p2, v0, :cond_0

    .line 143
    iput p1, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mSecondSettingBrightness:I

    .line 144
    iput-boolean v4, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->bUserSettingBrightness:Z

    .line 149
    :cond_0
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    const-string v0, "RgbBrightnessCurveAlgo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSecondUserBrightness mSecondSettingBrightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mSecondSettingBrightness:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bUserSettingBrightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->bUserSettingBrightness:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mScreenState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_1
    iput p1, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->nCurrentBrightness:I

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->bIsAutoBakclightAdjust:Z

    .line 155
    iget-object v0, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mAdjustBarHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 156
    iget-object v0, p0, Lcom/vivo/common/autobrightness/RgbBrightnessCurveAlgo;->mAdjustBarHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 157
    return-void
.end method
