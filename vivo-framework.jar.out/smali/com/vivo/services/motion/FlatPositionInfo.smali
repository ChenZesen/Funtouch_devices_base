.class public Lcom/vivo/services/motion/FlatPositionInfo;
.super Ljava/lang/Object;
.source "FlatPositionInfo.java"


# static fields
.field private static MTK_PLATFORM:Ljava/lang/String; = null

.field private static PLATFORM_TAG:Ljava/lang/String; = null

.field private static QCOM_PLATFORM:Ljava/lang/String; = null

.field static final TAG:Ljava/lang/String; = "FlatPositionInfo"

.field static last_acc_x:J

.field static last_acc_y:J

.field static last_acc_z:J

.field private static mVivoSensorTest:Lcom/sensoroperate/VivoSensorTest;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-wide/32 v0, 0xffff

    .line 21
    sput-wide v0, Lcom/vivo/services/motion/FlatPositionInfo;->last_acc_x:J

    sput-wide v0, Lcom/vivo/services/motion/FlatPositionInfo;->last_acc_y:J

    sput-wide v0, Lcom/vivo/services/motion/FlatPositionInfo;->last_acc_z:J

    .line 22
    const-string v0, "QCOM"

    sput-object v0, Lcom/vivo/services/motion/FlatPositionInfo;->QCOM_PLATFORM:Ljava/lang/String;

    .line 23
    const-string v0, "MTK"

    sput-object v0, Lcom/vivo/services/motion/FlatPositionInfo;->MTK_PLATFORM:Ljava/lang/String;

    .line 24
    const-string v0, "ro.vivo.product.solution"

    sput-object v0, Lcom/vivo/services/motion/FlatPositionInfo;->PLATFORM_TAG:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/vivo/services/motion/FlatPositionInfo;->mVivoSensorTest:Lcom/sensoroperate/VivoSensorTest;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-string v1, "ro.product.model.bbk"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "prop":Ljava/lang/String;
    if-eqz v0, :cond_0

    sget-boolean v1, Lcom/vivo/services/motion/AllConfig;->mIsArchADSP:Z

    if-eqz v1, :cond_0

    .line 61
    invoke-static {}, Lcom/sensoroperate/VivoSensorTest;->getInstance()Lcom/sensoroperate/VivoSensorTest;

    move-result-object v1

    sput-object v1, Lcom/vivo/services/motion/FlatPositionInfo;->mVivoSensorTest:Lcom/sensoroperate/VivoSensorTest;

    .line 63
    :cond_0
    return-void
.end method

.method public static IsDevInStaticState()Z
    .locals 18

    .prologue
    .line 339
    const/4 v13, 0x0

    .line 340
    .local v13, "result":Z
    const/4 v1, 0x0

    .line 342
    .local v1, "data":Ljava/lang/String;
    :try_start_0
    sget-object v14, Lcom/vivo/services/motion/FlatPositionInfo;->PLATFORM_TAG:Ljava/lang/String;

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, "PLATFORM_INFO":Ljava/lang/String;
    const-string v14, "ro.product.model.bbk"

    const/4 v15, 0x0

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 344
    .local v12, "prop":Ljava/lang/String;
    sget-boolean v14, Lcom/vivo/services/motion/AllConfig;->mIsArchADSP:Z

    if-nez v14, :cond_1

    .line 346
    const-string v14, "/sys/bus/platform/drivers/gsensor/data"

    invoke-static {v14}, Lcom/vivo/services/motion/FlatPositionInfo;->readFile(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 355
    .end local v0    # "PLATFORM_INFO":Ljava/lang/String;
    .end local v12    # "prop":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_5

    .line 359
    const-wide/16 v2, 0x0

    .line 360
    .local v2, "acc_x":J
    const-wide/16 v4, 0x0

    .line 361
    .local v4, "acc_y":J
    const-wide/16 v6, 0x0

    .line 362
    .local v6, "acc_z":J
    const-string v14, " "

    invoke-virtual {v1, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 363
    .local v11, "out":[Ljava/lang/String;
    sget-object v14, Lcom/vivo/services/motion/FlatPositionInfo;->PLATFORM_TAG:Ljava/lang/String;

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 364
    .restart local v0    # "PLATFORM_INFO":Ljava/lang/String;
    const-string v14, "ro.product.model.bbk"

    const/4 v15, 0x0

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 365
    .restart local v12    # "prop":Ljava/lang/String;
    sget-boolean v14, Lcom/vivo/services/motion/AllConfig;->mIsArchADSP:Z

    if-nez v14, :cond_3

    .line 367
    if-eqz v11, :cond_2

    .line 370
    const/4 v14, 0x0

    :try_start_1
    aget-object v14, v11, v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    int-to-long v2, v14

    .line 371
    const/4 v14, 0x1

    aget-object v14, v11, v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    int-to-long v4, v14

    .line 372
    const/4 v14, 0x2

    aget-object v14, v11, v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v14

    int-to-long v6, v14

    .line 405
    :goto_1
    mul-long v14, v2, v2

    mul-long v16, v4, v4

    add-long v14, v14, v16

    mul-long v16, v6, v6

    add-long v8, v14, v16

    .line 406
    .local v8, "comp_sum":J
    const-wide/32 v14, 0x7365040

    cmp-long v14, v8, v14

    if-gez v14, :cond_0

    const-wide/32 v14, 0x44e7290

    cmp-long v14, v8, v14

    if-lez v14, :cond_0

    .line 409
    const/4 v13, 0x1

    .line 411
    :cond_0
    const-string v14, "FlatPositionInfo"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "IsDevInStaticState--"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    .end local v0    # "PLATFORM_INFO":Ljava/lang/String;
    .end local v2    # "acc_x":J
    .end local v4    # "acc_y":J
    .end local v6    # "acc_z":J
    .end local v8    # "comp_sum":J
    .end local v11    # "out":[Ljava/lang/String;
    .end local v12    # "prop":Ljava/lang/String;
    .end local v13    # "result":Z
    :goto_2
    return v13

    .line 350
    .restart local v0    # "PLATFORM_INFO":Ljava/lang/String;
    .restart local v12    # "prop":Ljava/lang/String;
    .restart local v13    # "result":Z
    :cond_1
    :try_start_2
    const-string v14, "/sys/class/input/input2/data"

    invoke-static {v14}, Lcom/vivo/services/motion/FlatPositionInfo;->readFile(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v1

    goto/16 :goto_0

    .line 352
    .end local v0    # "PLATFORM_INFO":Ljava/lang/String;
    .end local v12    # "prop":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 353
    .local v10, "e":Ljava/lang/Exception;
    const-string v14, "FlatPositionInfo"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "readFile:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 373
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v0    # "PLATFORM_INFO":Ljava/lang/String;
    .restart local v2    # "acc_x":J
    .restart local v4    # "acc_y":J
    .restart local v6    # "acc_z":J
    .restart local v11    # "out":[Ljava/lang/String;
    .restart local v12    # "prop":Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 374
    .restart local v10    # "e":Ljava/lang/Exception;
    const-string v14, "FlatPositionInfo"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "acc_x"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "acc_y"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "acc_z"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const-string v14, "FlatPositionInfo"

    const-string v15, "data error"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const/4 v13, 0x0

    goto :goto_2

    .line 381
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_2
    const-string v14, "FlatPositionInfo"

    const-string v15, "out null"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const/4 v13, 0x0

    goto :goto_2

    .line 387
    :cond_3
    if-eqz v11, :cond_4

    .line 390
    const/4 v14, 0x0

    :try_start_3
    aget-object v14, v11, v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    div-int/lit8 v14, v14, 0x64

    int-to-long v2, v14

    .line 391
    const/4 v14, 0x1

    aget-object v14, v11, v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    div-int/lit8 v14, v14, 0x64

    int-to-long v4, v14

    .line 392
    const/4 v14, 0x2

    aget-object v14, v11, v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    div-int/lit8 v14, v14, 0x64
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    int-to-long v6, v14

    goto/16 :goto_1

    .line 393
    :catch_2
    move-exception v10

    .line 394
    .restart local v10    # "e":Ljava/lang/Exception;
    const-string v14, "FlatPositionInfo"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "acc_x"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "acc_y"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "acc_z"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const-string v14, "FlatPositionInfo"

    const-string v15, "data error"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 401
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_4
    const-string v14, "FlatPositionInfo"

    const-string v15, "out null"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 415
    .end local v0    # "PLATFORM_INFO":Ljava/lang/String;
    .end local v2    # "acc_x":J
    .end local v4    # "acc_y":J
    .end local v6    # "acc_z":J
    .end local v11    # "out":[Ljava/lang/String;
    .end local v12    # "prop":Ljava/lang/String;
    :cond_5
    const-string v14, "FlatPositionInfo"

    const-string v15, "IsDevInStaticState Data Error!!"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public static IsProxAcrossInFlatState()Z
    .locals 28

    .prologue
    .line 206
    const/16 v22, 0x0

    .line 207
    .local v22, "result":Z
    const/4 v15, 0x0

    .line 208
    .local v15, "data":Ljava/lang/String;
    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [F

    move-object/from16 v19, v0

    .line 209
    .local v19, "mAccSensorVal":[F
    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v4, v0, [F

    .line 210
    .local v4, "DefBase_digit":[F
    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v6, v0, [F

    .line 211
    .local v6, "MinBase_digit":[F
    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v5, v0, [F

    .line 213
    .local v5, "MaxBase_digit":[F
    :try_start_0
    const-string v24, "ro.product.model.bbk"

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 214
    .local v21, "prop":Ljava/lang/String;
    sget-object v24, Lcom/vivo/services/motion/FlatPositionInfo;->PLATFORM_TAG:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 215
    .local v7, "PLATFORM_INFO":Ljava/lang/String;
    sget-boolean v24, Lcom/vivo/services/motion/AllConfig;->mIsArchADSP:Z

    if-nez v24, :cond_4

    .line 217
    const-string v24, "/sys/bus/platform/drivers/gsensor/data"

    invoke-static/range {v24 .. v24}, Lcom/vivo/services/motion/FlatPositionInfo;->readFile(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 247
    .end local v7    # "PLATFORM_INFO":Ljava/lang/String;
    .end local v21    # "prop":Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v15, :cond_a

    .line 251
    const-wide/16 v8, 0x0

    .line 252
    .local v8, "acc_x":J
    const-wide/16 v10, 0x0

    .line 253
    .local v10, "acc_y":J
    const-wide/16 v12, 0x0

    .line 254
    .local v12, "acc_z":J
    const-string v24, " "

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 255
    .local v20, "out":[Ljava/lang/String;
    const-string v24, "ro.product.model.bbk"

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 256
    .restart local v21    # "prop":Ljava/lang/String;
    sget-object v24, Lcom/vivo/services/motion/FlatPositionInfo;->PLATFORM_TAG:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 257
    .restart local v7    # "PLATFORM_INFO":Ljava/lang/String;
    sget-boolean v24, Lcom/vivo/services/motion/AllConfig;->mIsArchADSP:Z

    if-nez v24, :cond_7

    .line 259
    if-eqz v20, :cond_6

    .line 262
    const/16 v24, 0x0

    :try_start_1
    aget-object v24, v20, v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    move/from16 v0, v24

    int-to-long v8, v0

    .line 263
    const/16 v24, 0x1

    aget-object v24, v20, v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    move/from16 v0, v24

    int-to-long v10, v0

    .line 264
    const/16 v24, 0x2

    aget-object v24, v20, v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v24

    move/from16 v0, v24

    int-to-long v12, v0

    .line 288
    :goto_1
    mul-long v24, v8, v8

    mul-long v26, v10, v10

    add-long v24, v24, v26

    mul-long v26, v12, v12

    add-long v16, v24, v26

    .line 289
    .local v16, "comp_sum":J
    const-wide/32 v24, 0xe4e1c00

    cmp-long v24, v16, v24

    if-gez v24, :cond_8

    const-wide/32 v24, 0x1c9c380

    cmp-long v24, v16, v24

    if-lez v24, :cond_8

    .line 292
    sput-wide v8, Lcom/vivo/services/motion/FlatPositionInfo;->last_acc_x:J

    .line 293
    sput-wide v10, Lcom/vivo/services/motion/FlatPositionInfo;->last_acc_y:J

    .line 294
    sput-wide v12, Lcom/vivo/services/motion/FlatPositionInfo;->last_acc_z:J

    .line 295
    const/16 v22, 0x1

    .line 304
    :goto_2
    const/16 v24, 0x1

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    .line 306
    sget-wide v24, Lcom/vivo/services/motion/FlatPositionInfo;->last_acc_x:J

    const-wide/32 v26, 0xffff

    cmp-long v24, v24, v26

    if-eqz v24, :cond_2

    sget-wide v24, Lcom/vivo/services/motion/FlatPositionInfo;->last_acc_y:J

    const-wide/32 v26, 0xffff

    cmp-long v24, v24, v26

    if-eqz v24, :cond_2

    sget-wide v24, Lcom/vivo/services/motion/FlatPositionInfo;->last_acc_z:J

    const-wide/32 v26, 0xffff

    cmp-long v24, v24, v26

    if-eqz v24, :cond_2

    .line 308
    sget-wide v24, Lcom/vivo/services/motion/FlatPositionInfo;->last_acc_x:J

    sub-long v24, v8, v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->abs(J)J

    move-result-wide v24

    const-wide/16 v26, 0x1388

    cmp-long v24, v24, v26

    if-gtz v24, :cond_1

    sget-wide v24, Lcom/vivo/services/motion/FlatPositionInfo;->last_acc_y:J

    sub-long v24, v10, v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->abs(J)J

    move-result-wide v24

    const-wide/16 v26, 0x1388

    cmp-long v24, v24, v26

    if-gtz v24, :cond_1

    sget-wide v24, Lcom/vivo/services/motion/FlatPositionInfo;->last_acc_z:J

    sub-long v24, v12, v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->abs(J)J

    move-result-wide v24

    const-wide/16 v26, 0x1388

    cmp-long v24, v24, v26

    if-lez v24, :cond_9

    .line 312
    :cond_1
    const/16 v22, 0x0

    .line 320
    :cond_2
    :goto_3
    if-nez v22, :cond_3

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v24

    const-wide/16 v26, 0xbb8

    cmp-long v24, v24, v26

    if-gez v24, :cond_3

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v24

    const-wide/16 v26, 0xbb8

    cmp-long v24, v24, v26

    if-gez v24, :cond_3

    const-wide/16 v24, -0xbb8

    cmp-long v24, v12, v24

    if-lez v24, :cond_3

    .line 322
    const-wide/32 v24, 0xffff

    sput-wide v24, Lcom/vivo/services/motion/FlatPositionInfo;->last_acc_x:J

    .line 323
    const-wide/32 v24, 0xffff

    sput-wide v24, Lcom/vivo/services/motion/FlatPositionInfo;->last_acc_y:J

    .line 324
    const-wide/32 v24, 0xffff

    sput-wide v24, Lcom/vivo/services/motion/FlatPositionInfo;->last_acc_z:J

    .line 325
    const/16 v22, 0x1

    .line 327
    :cond_3
    const-string v24, "FlatPositionInfo"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "IsDevInFlatState--"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ","

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ","

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ","

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ","

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    sget-wide v26, Lcom/vivo/services/motion/FlatPositionInfo;->last_acc_x:J

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ","

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    sget-wide v26, Lcom/vivo/services/motion/FlatPositionInfo;->last_acc_y:J

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ","

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    sget-wide v26, Lcom/vivo/services/motion/FlatPositionInfo;->last_acc_z:J

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ","

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    .end local v7    # "PLATFORM_INFO":Ljava/lang/String;
    .end local v8    # "acc_x":J
    .end local v10    # "acc_y":J
    .end local v12    # "acc_z":J
    .end local v16    # "comp_sum":J
    .end local v20    # "out":[Ljava/lang/String;
    .end local v21    # "prop":Ljava/lang/String;
    .end local v22    # "result":Z
    :goto_4
    return v22

    .line 223
    .restart local v7    # "PLATFORM_INFO":Ljava/lang/String;
    .restart local v21    # "prop":Ljava/lang/String;
    .restart local v22    # "result":Z
    :cond_4
    :try_start_2
    new-instance v23, Lcom/sensoroperate/SensorTestResult;

    invoke-direct/range {v23 .. v23}, Lcom/sensoroperate/SensorTestResult;-><init>()V

    .line 224
    .local v23, "vivo_result":Lcom/sensoroperate/SensorTestResult;
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v14, v0, [I

    .line 225
    .local v14, "arg":[I
    const/16 v24, 0x0

    const/16 v25, 0x1

    aput v25, v14, v24

    .line 228
    sget-object v24, Lcom/vivo/services/motion/FlatPositionInfo;->mVivoSensorTest:Lcom/sensoroperate/VivoSensorTest;

    if-eqz v24, :cond_0

    .line 232
    sget-object v24, Lcom/vivo/services/motion/FlatPositionInfo;->mVivoSensorTest:Lcom/sensoroperate/VivoSensorTest;

    const/16 v25, 0x31

    const/16 v26, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v23

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v14, v3}, Lcom/sensoroperate/VivoSensorTest;->vivoSensorTest(ILcom/sensoroperate/SensorTestResult;[II)I

    move-result v24

    if-nez v24, :cond_5

    .line 234
    const-string v15, "1"

    .line 236
    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v4, v6, v5}, Lcom/sensoroperate/SensorTestResult;->getAllTestResult([F[F[F[F)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 244
    .end local v7    # "PLATFORM_INFO":Ljava/lang/String;
    .end local v14    # "arg":[I
    .end local v21    # "prop":Ljava/lang/String;
    .end local v23    # "vivo_result":Lcom/sensoroperate/SensorTestResult;
    :catch_0
    move-exception v18

    .line 245
    .local v18, "e":Ljava/lang/Exception;
    const-string v24, "FlatPositionInfo"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "readFile:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 240
    .end local v18    # "e":Ljava/lang/Exception;
    .restart local v7    # "PLATFORM_INFO":Ljava/lang/String;
    .restart local v14    # "arg":[I
    .restart local v21    # "prop":Ljava/lang/String;
    .restart local v23    # "vivo_result":Lcom/sensoroperate/SensorTestResult;
    :cond_5
    :try_start_3
    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sensoroperate/SensorTestResult;->getTestResult([F)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 265
    .end local v14    # "arg":[I
    .end local v23    # "vivo_result":Lcom/sensoroperate/SensorTestResult;
    .restart local v8    # "acc_x":J
    .restart local v10    # "acc_y":J
    .restart local v12    # "acc_z":J
    .restart local v20    # "out":[Ljava/lang/String;
    :catch_1
    move-exception v18

    .line 266
    .restart local v18    # "e":Ljava/lang/Exception;
    const-string v24, "FlatPositionInfo"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "acc_x"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "acc_y"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "acc_z"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const-string v24, "FlatPositionInfo"

    const-string v25, "data error"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const/16 v22, 0x0

    goto/16 :goto_4

    .line 273
    .end local v18    # "e":Ljava/lang/Exception;
    :cond_6
    const-string v24, "FlatPositionInfo"

    const-string v25, "out null"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const/16 v22, 0x0

    goto/16 :goto_4

    .line 282
    :cond_7
    const/16 v24, 0x0

    aget v24, v19, v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    mul-int/lit8 v24, v24, 0xa

    move/from16 v0, v24

    int-to-long v8, v0

    .line 283
    const/16 v24, 0x1

    aget v24, v19, v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    mul-int/lit8 v24, v24, 0xa

    move/from16 v0, v24

    int-to-long v10, v0

    .line 284
    const/16 v24, 0x2

    aget v24, v19, v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    mul-int/lit8 v24, v24, 0xa

    move/from16 v0, v24

    int-to-long v12, v0

    .line 285
    const-string v24, "FlatPositionInfo"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "++++++++++++acc_x"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "acc_y"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "acc_z"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 299
    .restart local v16    # "comp_sum":J
    :cond_8
    const-wide/32 v24, 0xffff

    sput-wide v24, Lcom/vivo/services/motion/FlatPositionInfo;->last_acc_x:J

    .line 300
    const-wide/32 v24, 0xffff

    sput-wide v24, Lcom/vivo/services/motion/FlatPositionInfo;->last_acc_y:J

    .line 301
    const-wide/32 v24, 0xffff

    sput-wide v24, Lcom/vivo/services/motion/FlatPositionInfo;->last_acc_z:J

    .line 302
    const/16 v22, 0x0

    goto/16 :goto_2

    .line 314
    :cond_9
    const-wide/16 v24, -0x1f40

    cmp-long v24, v10, v24

    if-gez v24, :cond_2

    .line 316
    const/16 v22, 0x0

    goto/16 :goto_3

    .line 332
    .end local v7    # "PLATFORM_INFO":Ljava/lang/String;
    .end local v8    # "acc_x":J
    .end local v10    # "acc_y":J
    .end local v12    # "acc_z":J
    .end local v16    # "comp_sum":J
    .end local v20    # "out":[Ljava/lang/String;
    .end local v21    # "prop":Ljava/lang/String;
    :cond_a
    const-string v24, "FlatPositionInfo"

    const-string v25, "IsProxAcrossInFlatState Data Error!!"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4
.end method

.method private static readFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 31
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    .local v2, "file":Ljava/io/File;
    const/4 v3, 0x0

    .line 33
    .local v3, "reader":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 35
    .local v5, "tempString":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 38
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 45
    :goto_0
    if-eqz v4, :cond_2

    .line 47
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v3, v4

    .line 53
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :cond_0
    :goto_1
    return-object v5

    .line 39
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v6, "FlatPositionInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "reader.readLine():"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 42
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    move-object v3, v4

    .line 43
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :goto_2
    :try_start_4
    const-string v6, "FlatPositionInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "the readFile is:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 45
    if-eqz v3, :cond_0

    .line 47
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 48
    :catch_2
    move-exception v1

    .line 49
    .local v1, "e1":Ljava/io/IOException;
    const-string v6, "FlatPositionInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "the readFile is:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 48
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "e1":Ljava/io/IOException;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v1

    .line 49
    .restart local v1    # "e1":Ljava/io/IOException;
    const-string v6, "FlatPositionInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "the readFile is:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 50
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_1

    .line 45
    .end local v1    # "e1":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v3, :cond_1

    .line 47
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 50
    :cond_1
    :goto_4
    throw v6

    .line 48
    :catch_4
    move-exception v1

    .line 49
    .restart local v1    # "e1":Ljava/io/IOException;
    const-string v7, "FlatPositionInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "the readFile is:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 45
    .end local v1    # "e1":Ljava/io/IOException;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 42
    :catch_5
    move-exception v0

    goto/16 :goto_2

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :cond_2
    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_1
.end method


# virtual methods
.method public IsDevInFlatState()Z
    .locals 28

    .prologue
    .line 67
    const/16 v22, 0x0

    .line 68
    .local v22, "result":Z
    const/4 v15, 0x0

    .line 71
    .local v15, "data":Ljava/lang/String;
    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [F

    move-object/from16 v19, v0

    .line 72
    .local v19, "mAccSensorVal":[F
    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v4, v0, [F

    .line 73
    .local v4, "DefBase_digit":[F
    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v6, v0, [F

    .line 74
    .local v6, "MinBase_digit":[F
    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v5, v0, [F

    .line 79
    .local v5, "MaxBase_digit":[F
    :try_start_0
    const-string v24, "ro.product.model.bbk"

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 81
    .local v21, "prop":Ljava/lang/String;
    sget-boolean v24, Lcom/vivo/services/motion/AllConfig;->mIsArchADSP:Z

    if-nez v24, :cond_4

    .line 83
    const-string v24, "/sys/bus/platform/drivers/gsensor/data"

    invoke-static/range {v24 .. v24}, Lcom/vivo/services/motion/FlatPositionInfo;->readFile(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 116
    .end local v21    # "prop":Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v15, :cond_9

    .line 120
    const-wide/16 v8, 0x0

    .line 121
    .local v8, "acc_x":J
    const-wide/16 v10, 0x0

    .line 122
    .local v10, "acc_y":J
    const-wide/16 v12, 0x0

    .line 123
    .local v12, "acc_z":J
    const-string v24, " "

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 125
    .local v20, "out":[Ljava/lang/String;
    const-string v24, "ro.product.model.bbk"

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 126
    .restart local v21    # "prop":Ljava/lang/String;
    sget-object v24, Lcom/vivo/services/motion/FlatPositionInfo;->PLATFORM_TAG:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 127
    .local v7, "PLATFORM_INFO":Ljava/lang/String;
    sget-boolean v24, Lcom/vivo/services/motion/AllConfig;->mIsArchADSP:Z

    if-nez v24, :cond_7

    .line 129
    if-eqz v20, :cond_6

    .line 132
    const/16 v24, 0x0

    :try_start_1
    aget-object v24, v20, v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    move/from16 v0, v24

    int-to-long v8, v0

    .line 133
    const/16 v24, 0x1

    aget-object v24, v20, v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    move/from16 v0, v24

    int-to-long v10, v0

    .line 134
    const/16 v24, 0x2

    aget-object v24, v20, v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v24

    move/from16 v0, v24

    int-to-long v12, v0

    .line 159
    :goto_1
    mul-long v24, v8, v8

    mul-long v26, v10, v10

    add-long v24, v24, v26

    mul-long v26, v12, v12

    add-long v16, v24, v26

    .line 160
    .local v16, "comp_sum":J
    const-wide/32 v24, 0xe4e1c00

    cmp-long v24, v16, v24

    if-gez v24, :cond_8

    const-wide/32 v24, 0x1c9c380

    cmp-long v24, v16, v24

    if-lez v24, :cond_8

    .line 163
    sput-wide v8, Lcom/vivo/services/motion/FlatPositionInfo;->last_acc_x:J

    .line 164
    sput-wide v10, Lcom/vivo/services/motion/FlatPositionInfo;->last_acc_y:J

    .line 165
    sput-wide v12, Lcom/vivo/services/motion/FlatPositionInfo;->last_acc_z:J

    .line 166
    const/16 v22, 0x1

    .line 175
    :goto_2
    const/16 v24, 0x1

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    .line 177
    sget-wide v24, Lcom/vivo/services/motion/FlatPositionInfo;->last_acc_x:J

    const-wide/32 v26, 0xffff

    cmp-long v24, v24, v26

    if-eqz v24, :cond_2

    sget-wide v24, Lcom/vivo/services/motion/FlatPositionInfo;->last_acc_y:J

    const-wide/32 v26, 0xffff

    cmp-long v24, v24, v26

    if-eqz v24, :cond_2

    sget-wide v24, Lcom/vivo/services/motion/FlatPositionInfo;->last_acc_z:J

    const-wide/32 v26, 0xffff

    cmp-long v24, v24, v26

    if-eqz v24, :cond_2

    .line 179
    sget-wide v24, Lcom/vivo/services/motion/FlatPositionInfo;->last_acc_x:J

    sub-long v24, v8, v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->abs(J)J

    move-result-wide v24

    const-wide/16 v26, 0x1388

    cmp-long v24, v24, v26

    if-gtz v24, :cond_1

    sget-wide v24, Lcom/vivo/services/motion/FlatPositionInfo;->last_acc_y:J

    sub-long v24, v10, v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->abs(J)J

    move-result-wide v24

    const-wide/16 v26, 0x1388

    cmp-long v24, v24, v26

    if-gtz v24, :cond_1

    sget-wide v24, Lcom/vivo/services/motion/FlatPositionInfo;->last_acc_z:J

    sub-long v24, v12, v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->abs(J)J

    move-result-wide v24

    const-wide/16 v26, 0x1388

    cmp-long v24, v24, v26

    if-lez v24, :cond_2

    .line 183
    :cond_1
    const/16 v22, 0x0

    .line 187
    :cond_2
    if-nez v22, :cond_3

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v24

    const-wide/16 v26, 0xbb8

    cmp-long v24, v24, v26

    if-gez v24, :cond_3

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v24

    const-wide/16 v26, 0xbb8

    cmp-long v24, v24, v26

    if-gez v24, :cond_3

    const-wide/16 v24, -0xbb8

    cmp-long v24, v12, v24

    if-lez v24, :cond_3

    .line 189
    const-wide/32 v24, 0xffff

    sput-wide v24, Lcom/vivo/services/motion/FlatPositionInfo;->last_acc_x:J

    .line 190
    const-wide/32 v24, 0xffff

    sput-wide v24, Lcom/vivo/services/motion/FlatPositionInfo;->last_acc_y:J

    .line 191
    const-wide/32 v24, 0xffff

    sput-wide v24, Lcom/vivo/services/motion/FlatPositionInfo;->last_acc_z:J

    .line 192
    const/16 v22, 0x1

    .line 194
    :cond_3
    const-string v24, "FlatPositionInfo"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "IsDevInFlatState--"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ","

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ","

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ","

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ","

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    sget-wide v26, Lcom/vivo/services/motion/FlatPositionInfo;->last_acc_x:J

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ","

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    sget-wide v26, Lcom/vivo/services/motion/FlatPositionInfo;->last_acc_y:J

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ","

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    sget-wide v26, Lcom/vivo/services/motion/FlatPositionInfo;->last_acc_z:J

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ","

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v7    # "PLATFORM_INFO":Ljava/lang/String;
    .end local v8    # "acc_x":J
    .end local v10    # "acc_y":J
    .end local v12    # "acc_z":J
    .end local v16    # "comp_sum":J
    .end local v20    # "out":[Ljava/lang/String;
    .end local v21    # "prop":Ljava/lang/String;
    :goto_3
    move/from16 v24, v22

    .line 201
    :goto_4
    return v24

    .line 90
    .restart local v21    # "prop":Ljava/lang/String;
    :cond_4
    :try_start_2
    new-instance v23, Lcom/sensoroperate/SensorTestResult;

    invoke-direct/range {v23 .. v23}, Lcom/sensoroperate/SensorTestResult;-><init>()V

    .line 91
    .local v23, "vivo_result":Lcom/sensoroperate/SensorTestResult;
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v14, v0, [I

    .line 92
    .local v14, "arg":[I
    const/16 v24, 0x0

    const/16 v25, 0x1

    aput v25, v14, v24

    .line 96
    sget-object v24, Lcom/vivo/services/motion/FlatPositionInfo;->mVivoSensorTest:Lcom/sensoroperate/VivoSensorTest;

    if-eqz v24, :cond_0

    .line 100
    sget-object v24, Lcom/vivo/services/motion/FlatPositionInfo;->mVivoSensorTest:Lcom/sensoroperate/VivoSensorTest;

    const/16 v25, 0x31

    const/16 v26, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v23

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v14, v3}, Lcom/sensoroperate/VivoSensorTest;->vivoSensorTest(ILcom/sensoroperate/SensorTestResult;[II)I

    move-result v24

    if-nez v24, :cond_5

    .line 102
    const-string v15, "1"

    .line 104
    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v4, v6, v5}, Lcom/sensoroperate/SensorTestResult;->getAllTestResult([F[F[F[F)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 113
    .end local v14    # "arg":[I
    .end local v21    # "prop":Ljava/lang/String;
    .end local v23    # "vivo_result":Lcom/sensoroperate/SensorTestResult;
    :catch_0
    move-exception v18

    .line 114
    .local v18, "e":Ljava/lang/Exception;
    const-string v24, "FlatPositionInfo"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "readFile:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 108
    .end local v18    # "e":Ljava/lang/Exception;
    .restart local v14    # "arg":[I
    .restart local v21    # "prop":Ljava/lang/String;
    .restart local v23    # "vivo_result":Lcom/sensoroperate/SensorTestResult;
    :cond_5
    :try_start_3
    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sensoroperate/SensorTestResult;->getTestResult([F)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 135
    .end local v14    # "arg":[I
    .end local v23    # "vivo_result":Lcom/sensoroperate/SensorTestResult;
    .restart local v7    # "PLATFORM_INFO":Ljava/lang/String;
    .restart local v8    # "acc_x":J
    .restart local v10    # "acc_y":J
    .restart local v12    # "acc_z":J
    .restart local v20    # "out":[Ljava/lang/String;
    :catch_1
    move-exception v18

    .line 136
    .restart local v18    # "e":Ljava/lang/Exception;
    const-string v24, "FlatPositionInfo"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "acc_x"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "acc_y"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "acc_z"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const-string v24, "FlatPositionInfo"

    const-string v25, "data error"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const/16 v24, 0x0

    goto/16 :goto_4

    .line 143
    .end local v18    # "e":Ljava/lang/Exception;
    :cond_6
    const-string v24, "FlatPositionInfo"

    const-string v25, "out null"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/16 v24, 0x0

    goto/16 :goto_4

    .line 153
    :cond_7
    const/16 v24, 0x0

    aget v24, v19, v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    mul-int/lit8 v24, v24, 0xa

    move/from16 v0, v24

    int-to-long v8, v0

    .line 154
    const/16 v24, 0x1

    aget v24, v19, v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    mul-int/lit8 v24, v24, 0xa

    move/from16 v0, v24

    int-to-long v10, v0

    .line 155
    const/16 v24, 0x2

    aget v24, v19, v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    mul-int/lit8 v24, v24, 0xa

    move/from16 v0, v24

    int-to-long v12, v0

    .line 156
    const-string v24, "FlatPositionInfo"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "++++++++++++acc_x"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "acc_y"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "acc_z"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 170
    .restart local v16    # "comp_sum":J
    :cond_8
    const-wide/32 v24, 0xffff

    sput-wide v24, Lcom/vivo/services/motion/FlatPositionInfo;->last_acc_x:J

    .line 171
    const-wide/32 v24, 0xffff

    sput-wide v24, Lcom/vivo/services/motion/FlatPositionInfo;->last_acc_y:J

    .line 172
    const-wide/32 v24, 0xffff

    sput-wide v24, Lcom/vivo/services/motion/FlatPositionInfo;->last_acc_z:J

    .line 173
    const/16 v22, 0x0

    goto/16 :goto_2

    .line 199
    .end local v7    # "PLATFORM_INFO":Ljava/lang/String;
    .end local v8    # "acc_x":J
    .end local v10    # "acc_y":J
    .end local v12    # "acc_z":J
    .end local v16    # "comp_sum":J
    .end local v20    # "out":[Ljava/lang/String;
    .end local v21    # "prop":Ljava/lang/String;
    :cond_9
    const-string v24, "FlatPositionInfo"

    const-string v25, "IsDevInFlatState Data Error!!"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method
