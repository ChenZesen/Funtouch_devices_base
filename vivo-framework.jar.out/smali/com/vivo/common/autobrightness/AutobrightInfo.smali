.class public Lcom/vivo/common/autobrightness/AutobrightInfo;
.super Ljava/lang/Object;
.source "AutobrightInfo.java"


# static fields
.field public static final KEY_BRIGHTNESS:Ljava/lang/String; = "brightness"

.field public static final KEY_CAMERA_LEVEL:Ljava/lang/String; = "cameralevel"

.field public static final KEY_DATE:Ljava/lang/String; = "date"

.field public static final KEY_DELAY_TIME:Ljava/lang/String; = "delaytime"

.field public static final KEY_LIGHT_LEVEL:Ljava/lang/String; = "lightlevel"

.field public static final KEY_LIGHT_LUX:Ljava/lang/String; = "lightlux"

.field public static final KEY_PROXIMITY:Ljava/lang/String; = "proximity"

.field public static final KEY_REASON:Ljava/lang/String; = "reason"

.field public static final KEY_SCREEN_LEVEL:Ljava/lang/String; = "screenlevel"

.field public static final KEY_SIMPLE_BRIGHTNESS:Ljava/lang/String; = "brl"

.field public static final KEY_SIMPLE_CAMERA_LEVEL:Ljava/lang/String; = "cal"

.field public static final KEY_SIMPLE_DATE:Ljava/lang/String; = "dat"

.field public static final KEY_SIMPLE_DELAY_TIME:Ljava/lang/String; = "det"

.field public static final KEY_SIMPLE_LIGHT_LEVEL:Ljava/lang/String; = "lil"

.field public static final KEY_SIMPLE_LIGHT_LUX:Ljava/lang/String; = "lux"

.field public static final KEY_SIMPLE_PROXIMITY:Ljava/lang/String; = "prox"

.field public static final KEY_SIMPLE_REASON:Ljava/lang/String; = "rea"

.field public static final KEY_SIMPLE_SCREEN_LEVEL:Ljava/lang/String; = "scl"

.field public static final KEY_SIMPLE_VERSION:Ljava/lang/String; = "ver"

.field public static final KEY_VERSION:Ljava/lang/String; = "version"

.field public static final REASON_FORCE:I = 0x2

.field public static final REASON_MANUAL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AutobrightInfo"

.field public static final VERSION_1ST:I = 0x1

.field public static final VERSION_2ND:I = 0x2


# instance fields
.field public mBrightness:I

.field public mCameraLevel:I

.field public mDate:Ljava/lang/String;

.field public mDelayTime:I

.field public mLightLevel:I

.field public mLightLux:I

.field public mProximity:Z

.field public mReason:I

.field public mScreenLevel:I

.field public mVersion:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput v1, p0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    .line 73
    iput v2, p0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mLightLevel:I

    .line 74
    const/4 v0, 0x3

    iput v0, p0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mCameraLevel:I

    .line 75
    const/4 v0, 0x7

    iput v0, p0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    .line 76
    const/16 v0, 0xa

    iput v0, p0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mLightLux:I

    .line 77
    const/16 v0, 0x9c4

    iput v0, p0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mDelayTime:I

    .line 78
    iput v1, p0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mReason:I

    .line 79
    invoke-direct {p0}, Lcom/vivo/common/autobrightness/AutobrightInfo;->getVersion()I

    move-result v0

    iput v0, p0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mVersion:I

    .line 80
    const-string v0, "unknown"

    iput-object v0, p0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mDate:Ljava/lang/String;

    .line 81
    iput-boolean v2, p0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mProximity:Z

    .line 82
    return-void
.end method

.method public constructor <init>(Lcom/vivo/common/autobrightness/AutobrightInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/vivo/common/autobrightness/AutobrightInfo;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-virtual {p0, p1}, Lcom/vivo/common/autobrightness/AutobrightInfo;->copyFrom(Lcom/vivo/common/autobrightness/AutobrightInfo;)V

    .line 85
    return-void
.end method

.method private getVersion()I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 147
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->getAlsMemorySolution()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 148
    const/4 v0, 0x2

    .line 150
    :cond_0
    return v0
.end method

.method public static stringToObject(Ljava/lang/String;)Lcom/vivo/common/autobrightness/AutobrightInfo;
    .locals 15
    .param p0, "info"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x0

    .line 218
    if-eqz p0, :cond_0

    const-string v14, ""

    invoke-virtual {v14, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    :cond_0
    move-object v0, v13

    .line 332
    :goto_0
    return-object v0

    .line 221
    :cond_1
    new-instance v2, Lcom/vivo/common/autobrightness/ParamParser;

    invoke-direct {v2, p0}, Lcom/vivo/common/autobrightness/ParamParser;-><init>(Ljava/lang/String;)V

    .line 222
    .local v2, "parser":Lcom/vivo/common/autobrightness/ParamParser;
    new-instance v0, Lcom/vivo/common/autobrightness/AutobrightInfo;

    invoke-direct {v0}, Lcom/vivo/common/autobrightness/AutobrightInfo;-><init>()V

    .line 223
    .local v0, "abInfo":Lcom/vivo/common/autobrightness/AutobrightInfo;
    const-string v14, "brightness"

    invoke-virtual {v2, v14}, Lcom/vivo/common/autobrightness/ParamParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 224
    .local v3, "strBri":Ljava/lang/String;
    const-string v14, "lightlevel"

    invoke-virtual {v2, v14}, Lcom/vivo/common/autobrightness/ParamParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 225
    .local v7, "strLightLv":Ljava/lang/String;
    const-string v14, "cameralevel"

    invoke-virtual {v2, v14}, Lcom/vivo/common/autobrightness/ParamParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 226
    .local v4, "strCamLv":Ljava/lang/String;
    const-string v14, "screenlevel"

    invoke-virtual {v2, v14}, Lcom/vivo/common/autobrightness/ParamParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 227
    .local v11, "strScrLv":Ljava/lang/String;
    const-string v14, "lightlux"

    invoke-virtual {v2, v14}, Lcom/vivo/common/autobrightness/ParamParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 228
    .local v8, "strLightLx":Ljava/lang/String;
    const-string v14, "delaytime"

    invoke-virtual {v2, v14}, Lcom/vivo/common/autobrightness/ParamParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 229
    .local v6, "strDelay":Ljava/lang/String;
    const-string v14, "reason"

    invoke-virtual {v2, v14}, Lcom/vivo/common/autobrightness/ParamParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 230
    .local v10, "strReason":Ljava/lang/String;
    const-string v14, "version"

    invoke-virtual {v2, v14}, Lcom/vivo/common/autobrightness/ParamParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 231
    .local v12, "strVersion":Ljava/lang/String;
    const-string v14, "date"

    invoke-virtual {v2, v14}, Lcom/vivo/common/autobrightness/ParamParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 232
    .local v5, "strDate":Ljava/lang/String;
    const-string v14, "proximity"

    invoke-virtual {v2, v14}, Lcom/vivo/common/autobrightness/ParamParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 234
    .local v9, "strProximity":Ljava/lang/String;
    if-eqz v3, :cond_2

    const-string v14, ""

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 236
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    iput v14, v0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    if-eqz v7, :cond_3

    const-string v14, ""

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 247
    :try_start_1
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    iput v14, v0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mLightLevel:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 255
    if-eqz v4, :cond_4

    const-string v14, ""

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 257
    :try_start_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    iput v14, v0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mCameraLevel:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 265
    if-eqz v11, :cond_5

    const-string v14, ""

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 267
    :try_start_3
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    iput v14, v0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 276
    if-eqz v8, :cond_6

    const-string v14, ""

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6

    .line 278
    :try_start_4
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    iput v14, v0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mLightLux:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 287
    if-eqz v6, :cond_7

    const-string v14, ""

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7

    .line 289
    :try_start_5
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    iput v14, v0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mDelayTime:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 298
    if-eqz v10, :cond_8

    const-string v14, ""

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8

    .line 300
    :try_start_6
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    iput v14, v0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mReason:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 309
    if-eqz v12, :cond_9

    const-string v14, ""

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_9

    .line 311
    :try_start_7
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    iput v14, v0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mVersion:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 320
    if-eqz v5, :cond_a

    const-string v14, ""

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a

    .line 321
    iput-object v5, v0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mDate:Ljava/lang/String;

    .line 326
    if-eqz v9, :cond_b

    const-string v13, "true"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 327
    const/4 v13, 0x1

    iput-boolean v13, v0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mProximity:Z

    goto/16 :goto_0

    .line 237
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    move-object v0, v13

    .line 239
    goto/16 :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    move-object v0, v13

    .line 242
    goto/16 :goto_0

    .line 248
    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    move-object v0, v13

    .line 250
    goto/16 :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    move-object v0, v13

    .line 253
    goto/16 :goto_0

    .line 258
    :catch_2
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    move-object v0, v13

    .line 260
    goto/16 :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    move-object v0, v13

    .line 263
    goto/16 :goto_0

    .line 268
    :catch_3
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    move-object v0, v13

    .line 270
    goto/16 :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    move-object v0, v13

    .line 273
    goto/16 :goto_0

    .line 279
    :catch_4
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    move-object v0, v13

    .line 281
    goto/16 :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_6
    move-object v0, v13

    .line 284
    goto/16 :goto_0

    .line 290
    :catch_5
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    move-object v0, v13

    .line 292
    goto/16 :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_7
    move-object v0, v13

    .line 295
    goto/16 :goto_0

    .line 301
    :catch_6
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    move-object v0, v13

    .line 303
    goto/16 :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_8
    move-object v0, v13

    .line 306
    goto/16 :goto_0

    .line 312
    :catch_7
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    move-object v0, v13

    .line 314
    goto/16 :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_9
    move-object v0, v13

    .line 317
    goto/16 :goto_0

    :cond_a
    move-object v0, v13

    .line 323
    goto/16 :goto_0

    .line 329
    :cond_b
    const/4 v13, 0x0

    iput-boolean v13, v0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mProximity:Z

    goto/16 :goto_0
.end method


# virtual methods
.method public compare(Lcom/vivo/common/autobrightness/AutobrightInfo;)Z
    .locals 3
    .param p1, "other"    # Lcom/vivo/common/autobrightness/AutobrightInfo;

    .prologue
    .line 93
    const/4 v0, 0x1

    .line 94
    .local v0, "ret":Z
    if-nez p1, :cond_0

    .line 95
    const/4 v1, 0x0

    .line 108
    :goto_0
    return v1

    .line 97
    :cond_0
    iget v1, p1, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    iget v2, p0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    if-ne v1, v2, :cond_1

    iget v1, p1, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    iget v2, p0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    if-eq v1, v2, :cond_3

    .line 98
    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_1
    move v1, v0

    .line 108
    goto :goto_0

    .line 99
    :cond_3
    iget v1, p1, Lcom/vivo/common/autobrightness/AutobrightInfo;->mDelayTime:I

    iget v2, p0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mDelayTime:I

    if-lt v1, v2, :cond_4

    iget v1, p1, Lcom/vivo/common/autobrightness/AutobrightInfo;->mDelayTime:I

    if-nez v1, :cond_5

    .line 102
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 103
    :cond_5
    iget-boolean v1, p0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mProximity:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p1, Lcom/vivo/common/autobrightness/AutobrightInfo;->mProximity:Z

    if-nez v1, :cond_2

    .line 106
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public copyFrom(Lcom/vivo/common/autobrightness/AutobrightInfo;)V
    .locals 1
    .param p1, "a"    # Lcom/vivo/common/autobrightness/AutobrightInfo;

    .prologue
    .line 132
    if-nez p1, :cond_0

    .line 145
    :goto_0
    return-void

    .line 135
    :cond_0
    iget v0, p1, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    iput v0, p0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    .line 136
    iget v0, p1, Lcom/vivo/common/autobrightness/AutobrightInfo;->mLightLevel:I

    iput v0, p0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mLightLevel:I

    .line 137
    iget v0, p1, Lcom/vivo/common/autobrightness/AutobrightInfo;->mCameraLevel:I

    iput v0, p0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mCameraLevel:I

    .line 138
    iget v0, p1, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    iput v0, p0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    .line 139
    iget v0, p1, Lcom/vivo/common/autobrightness/AutobrightInfo;->mLightLux:I

    iput v0, p0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mLightLux:I

    .line 140
    iget v0, p1, Lcom/vivo/common/autobrightness/AutobrightInfo;->mDelayTime:I

    iput v0, p0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mDelayTime:I

    .line 141
    iget v0, p1, Lcom/vivo/common/autobrightness/AutobrightInfo;->mReason:I

    iput v0, p0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mReason:I

    .line 142
    iget v0, p1, Lcom/vivo/common/autobrightness/AutobrightInfo;->mVersion:I

    iput v0, p0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mVersion:I

    .line 143
    iget-object v0, p1, Lcom/vivo/common/autobrightness/AutobrightInfo;->mDate:Ljava/lang/String;

    iput-object v0, p0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mDate:Ljava/lang/String;

    .line 144
    iget-boolean v0, p1, Lcom/vivo/common/autobrightness/AutobrightInfo;->mProximity:Z

    iput-boolean v0, p0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mProximity:Z

    goto :goto_0
.end method

.method public equals(Lcom/vivo/common/autobrightness/AutobrightInfo;)Z
    .locals 3
    .param p1, "other"    # Lcom/vivo/common/autobrightness/AutobrightInfo;

    .prologue
    const/4 v0, 0x0

    .line 116
    if-nez p1, :cond_1

    .line 127
    :cond_0
    :goto_0
    return v0

    .line 120
    :cond_1
    iget v1, p0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    iget v2, p1, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    iget v2, p1, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mLightLux:I

    iget v2, p1, Lcom/vivo/common/autobrightness/AutobrightInfo;->mLightLux:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mReason:I

    iget v2, p1, Lcom/vivo/common/autobrightness/AutobrightInfo;->mReason:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mDate:Ljava/lang/String;

    iget-object v2, p1, Lcom/vivo/common/autobrightness/AutobrightInfo;->mDate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public reasonToString(I)Ljava/lang/String;
    .locals 2
    .param p1, "reason"    # I

    .prologue
    .line 206
    packed-switch p1, :pswitch_data_0

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "REASON_UNKOWN:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 208
    :pswitch_0
    const-string v0, "REASON_MANUAL"

    goto :goto_0

    .line 210
    :pswitch_1
    const-string v0, "REASON_FORCE"

    goto :goto_0

    .line 206
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 153
    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    .line 154
    iput v1, p0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mLightLevel:I

    .line 155
    const/4 v0, 0x3

    iput v0, p0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mCameraLevel:I

    .line 156
    const/4 v0, 0x7

    iput v0, p0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    .line 157
    const/16 v0, 0xa

    iput v0, p0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mLightLux:I

    .line 158
    const/16 v0, 0x9c4

    iput v0, p0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mDelayTime:I

    .line 159
    iput-boolean v1, p0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mProximity:Z

    .line 160
    return-void
.end method

.method public toSimpleString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "brl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lil"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mLightLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "cal"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mCameraLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "scl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lux"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mLightLux:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "det"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mDelayTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "rea"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mReason:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ver"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mDate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "prox"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mProximity:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "tmp":Ljava/lang/String;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "brightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mBrightness:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lightlevel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mLightLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "cameralevel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mCameraLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "screenlevel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lightlux"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mLightLux:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "delaytime"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mDelayTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "reason"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mReason:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "version"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "date"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mDate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "proximity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/vivo/common/autobrightness/AutobrightInfo;->mProximity:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "tmp":Ljava/lang/String;
    return-object v0
.end method

.method public versionToString(I)Ljava/lang/String;
    .locals 2
    .param p1, "ver"    # I

    .prologue
    .line 195
    packed-switch p1, :pswitch_data_0

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UN_SURPPORT:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 197
    :pswitch_0
    const-string v0, "VERSION_1ST"

    goto :goto_0

    .line 199
    :pswitch_1
    const-string v0, "VERSION_2ND"

    goto :goto_0

    .line 195
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
