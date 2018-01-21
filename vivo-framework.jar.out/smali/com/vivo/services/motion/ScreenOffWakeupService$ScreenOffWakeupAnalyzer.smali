.class Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupAnalyzer;
.super Ljava/lang/Object;
.source "ScreenOffWakeupService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/motion/ScreenOffWakeupService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenOffWakeupAnalyzer"
.end annotation


# instance fields
.field private authCnt:I

.field public authStep:I

.field private mFinalStateCnt:I

.field final synthetic this$0:Lcom/vivo/services/motion/ScreenOffWakeupService;


# direct methods
.method public constructor <init>(Lcom/vivo/services/motion/ScreenOffWakeupService;)V
    .locals 1

    .prologue
    .line 263
    iput-object p1, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupAnalyzer;->this$0:Lcom/vivo/services/motion/ScreenOffWakeupService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupAnalyzer;->mFinalStateCnt:I

    .line 264
    return-void
.end method

.method static synthetic access$1200(Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupAnalyzer;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupAnalyzer;

    .prologue
    .line 257
    invoke-direct {p0}, Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupAnalyzer;->judge()V

    return-void
.end method

.method static synthetic access$300(Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupAnalyzer;Landroid/hardware/SensorEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupAnalyzer;
    .param p1, "x1"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 257
    invoke-direct {p0, p1}, Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupAnalyzer;->judge(Landroid/hardware/SensorEvent;)V

    return-void
.end method

.method private judge()V
    .locals 22

    .prologue
    .line 277
    const/16 v16, 0x0

    .line 278
    .local v16, "xyTotalValue":F
    const/4 v15, 0x0

    .local v15, "x":F
    const/16 v17, 0x0

    .local v17, "y":F
    const/16 v18, 0x0

    .line 280
    .local v18, "z":F
    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v11, v0, [F

    .line 281
    .local v11, "mAccSensorVal":[F
    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v4, v0, [F

    .line 282
    .local v4, "DefBase_digit":[F
    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v6, v0, [F

    .line 283
    .local v6, "MinBase_digit":[F
    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v5, v0, [F

    .line 285
    .local v5, "MaxBase_digit":[F
    const/4 v9, 0x0

    .line 288
    .local v9, "data":Ljava/lang/String;
    const-string v19, "ro.product.model.bbk"

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 289
    .local v13, "prop":Ljava/lang/String;
    sget-boolean v19, Lcom/vivo/services/motion/AllConfig;->mIsArchADSP:Z

    if-eqz v19, :cond_3

    .line 291
    new-instance v14, Lcom/sensoroperate/SensorTestResult;

    invoke-direct {v14}, Lcom/sensoroperate/SensorTestResult;-><init>()V

    .line 292
    .local v14, "vivo_result":Lcom/sensoroperate/SensorTestResult;
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v8, v0, [I

    .line 293
    .local v8, "arg":[I
    const/16 v19, 0x0

    const/16 v20, 0x1

    aput v20, v8, v19

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupAnalyzer;->this$0:Lcom/vivo/services/motion/ScreenOffWakeupService;

    move-object/from16 v19, v0

    # getter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->mVivoSensorTest:Lcom/sensoroperate/VivoSensorTest;
    invoke-static/range {v19 .. v19}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$1400(Lcom/vivo/services/motion/ScreenOffWakeupService;)Lcom/sensoroperate/VivoSensorTest;

    move-result-object v19

    if-eqz v19, :cond_0

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupAnalyzer;->this$0:Lcom/vivo/services/motion/ScreenOffWakeupService;

    move-object/from16 v19, v0

    # getter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->mVivoSensorTest:Lcom/sensoroperate/VivoSensorTest;
    invoke-static/range {v19 .. v19}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$1400(Lcom/vivo/services/motion/ScreenOffWakeupService;)Lcom/sensoroperate/VivoSensorTest;

    move-result-object v19

    const/16 v20, 0x31

    const/16 v21, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v14, v8, v2}, Lcom/sensoroperate/VivoSensorTest;->vivoSensorTest(ILcom/sensoroperate/SensorTestResult;[II)I

    move-result v19

    if-nez v19, :cond_0

    .line 298
    const-string v9, "1"

    .line 299
    invoke-virtual {v14, v11, v4, v6, v5}, Lcom/sensoroperate/SensorTestResult;->getAllTestResult([F[F[F[F)I

    .line 302
    :cond_0
    if-eqz v9, :cond_1

    .line 304
    const/16 v19, 0x0

    aget v19, v11, v19

    const/high16 v20, 0x42c80000    # 100.0f

    div-float v15, v19, v20

    .line 305
    const/16 v19, 0x1

    aget v19, v11, v19

    const/high16 v20, 0x42c80000    # 100.0f

    div-float v17, v19, v20

    .line 306
    const/16 v19, 0x2

    aget v19, v11, v19

    const/high16 v20, 0x42c80000    # 100.0f

    div-float v18, v19, v20

    .line 360
    .end local v8    # "arg":[I
    .end local v14    # "vivo_result":Lcom/sensoroperate/SensorTestResult;
    :cond_1
    :goto_0
    const-string v19, "ScreenOffWakeupService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "x:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "y:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "z:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupAnalyzer;->authStep:I

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_0

    .line 414
    :cond_2
    :goto_1
    const-string v19, "ScreenOffWakeupService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "authStep"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupAnalyzer;->authStep:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ",cnt:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupAnalyzer;->authCnt:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    return-void

    .line 312
    :cond_3
    # getter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->PLATFORM_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$1500()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 314
    .local v7, "PLATFORM_INFO":Ljava/lang/String;
    :try_start_0
    sget-boolean v19, Lcom/vivo/services/motion/AllConfig;->mIsArchADSP:Z

    if-nez v19, :cond_4

    .line 316
    const-string v19, "/sys/bus/platform/drivers/gsensor/data"

    invoke-static/range {v19 .. v19}, Lcom/vivo/services/motion/ScreenOffWakeupService;->readFileByline(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 321
    :cond_4
    :goto_2
    if-eqz v9, :cond_1

    .line 323
    const-string v19, " "

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 324
    .local v12, "out":[Ljava/lang/String;
    sget-boolean v19, Lcom/vivo/services/motion/AllConfig;->mIsArchADSP:Z

    if-nez v19, :cond_6

    .line 326
    if-eqz v12, :cond_5

    .line 329
    const/16 v19, 0x0

    :try_start_1
    aget-object v19, v12, v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v19

    const/high16 v20, 0x447a0000    # 1000.0f

    div-float v15, v19, v20

    .line 330
    const/16 v19, 0x1

    aget-object v19, v12, v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v19

    const/high16 v20, 0x447a0000    # 1000.0f

    div-float v17, v19, v20

    .line 331
    const/16 v19, 0x2

    aget-object v19, v12, v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v19

    const/high16 v20, 0x447a0000    # 1000.0f

    div-float v18, v19, v20

    goto/16 :goto_0

    .line 318
    .end local v12    # "out":[Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 319
    .local v10, "e":Ljava/lang/Exception;
    const-string v19, "ScreenOffWakeupService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "readFileByline:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 332
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v12    # "out":[Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 333
    .restart local v10    # "e":Ljava/lang/Exception;
    const-string v19, "ScreenOffWakeupService"

    const-string v20, "data error"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 338
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_5
    const-string v19, "ScreenOffWakeupService"

    const-string v20, "out null"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 343
    :cond_6
    if-eqz v12, :cond_7

    .line 346
    const/16 v19, 0x0

    :try_start_2
    aget-object v19, v12, v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v19

    const v20, 0x47c35000    # 100000.0f

    div-float v15, v19, v20

    .line 347
    const/16 v19, 0x1

    aget-object v19, v12, v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v19

    const v20, 0x47c35000    # 100000.0f

    div-float v17, v19, v20

    .line 348
    const/16 v19, 0x2

    aget-object v19, v12, v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v19

    const v20, 0x47c35000    # 100000.0f

    div-float v18, v19, v20

    goto/16 :goto_0

    .line 349
    :catch_2
    move-exception v10

    .line 350
    .restart local v10    # "e":Ljava/lang/Exception;
    const-string v19, "ScreenOffWakeupService"

    const-string v20, "data error"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 355
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_7
    const-string v19, "ScreenOffWakeupService"

    const-string v20, "out null"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 364
    .end local v7    # "PLATFORM_INFO":Ljava/lang/String;
    .end local v12    # "out":[Ljava/lang/String;
    :pswitch_0
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v19

    const/high16 v20, 0x40800000    # 4.0f

    cmpg-float v19, v19, v20

    if-gez v19, :cond_8

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v19

    const/high16 v20, 0x40800000    # 4.0f

    cmpg-float v19, v19, v20

    if-gez v19, :cond_8

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v19

    const/high16 v20, 0x41000000    # 8.0f

    cmpl-float v19, v19, v20

    if-lez v19, :cond_8

    .line 368
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupAnalyzer;->authCnt:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupAnalyzer;->authCnt:I

    .line 374
    :goto_3
    const-string v19, "ScreenOffWakeupService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "==============authCnt:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupAnalyzer;->authCnt:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupAnalyzer;->authCnt:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_2

    .line 377
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupAnalyzer;->authStep:I

    .line 378
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupAnalyzer;->authCnt:I

    goto/16 :goto_1

    .line 372
    :cond_8
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupAnalyzer;->authCnt:I

    goto :goto_3

    .line 383
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupAnalyzer;->this$0:Lcom/vivo/services/motion/ScreenOffWakeupService;

    move-object/from16 v19, v0

    # getter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->mServiceHandler:Landroid/os/Handler;
    invoke-static/range {v19 .. v19}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$500(Lcom/vivo/services/motion/ScreenOffWakeupService;)Landroid/os/Handler;

    move-result-object v19

    if-eqz v19, :cond_b

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupAnalyzer;->this$0:Lcom/vivo/services/motion/ScreenOffWakeupService;

    move-object/from16 v19, v0

    # getter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->mBWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static/range {v19 .. v19}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$1600(Lcom/vivo/services/motion/ScreenOffWakeupService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v19

    if-eqz v19, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupAnalyzer;->this$0:Lcom/vivo/services/motion/ScreenOffWakeupService;

    move-object/from16 v19, v0

    # getter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->mBWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static/range {v19 .. v19}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$1600(Lcom/vivo/services/motion/ScreenOffWakeupService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v19

    if-nez v19, :cond_9

    .line 387
    const-string v19, "ScreenOffWakeupService"

    const-string v20, "mBWakeLock acquire"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupAnalyzer;->this$0:Lcom/vivo/services/motion/ScreenOffWakeupService;

    move-object/from16 v19, v0

    # getter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->mBWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static/range {v19 .. v19}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$1600(Lcom/vivo/services/motion/ScreenOffWakeupService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v19

    const-wide/16 v20, 0xbb8

    invoke-virtual/range {v19 .. v21}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 390
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupAnalyzer;->this$0:Lcom/vivo/services/motion/ScreenOffWakeupService;

    move-object/from16 v19, v0

    # getter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static/range {v19 .. v19}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$1000(Lcom/vivo/services/motion/ScreenOffWakeupService;)Landroid/hardware/SensorManager;

    move-result-object v19

    if-eqz v19, :cond_a

    # getter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->registerstate:I
    invoke-static {}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$000()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupAnalyzer;->this$0:Lcom/vivo/services/motion/ScreenOffWakeupService;

    move-object/from16 v19, v0

    # getter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static/range {v19 .. v19}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$1000(Lcom/vivo/services/motion/ScreenOffWakeupService;)Landroid/hardware/SensorManager;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupAnalyzer;->this$0:Lcom/vivo/services/motion/ScreenOffWakeupService;

    move-object/from16 v20, v0

    # getter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->mAcceleromererListener:Lcom/vivo/services/motion/ScreenOffWakeupService$MotionSensorEventListener;
    invoke-static/range {v20 .. v20}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$1100(Lcom/vivo/services/motion/ScreenOffWakeupService;)Lcom/vivo/services/motion/ScreenOffWakeupService$MotionSensorEventListener;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 393
    const/16 v19, 0x0

    # setter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->registerstate:I
    invoke-static/range {v19 .. v19}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$002(I)I

    .line 395
    :cond_a
    const-string v19, "ScreenOffWakeupService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "isScreenOffWakeupWorking=====1:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupAnalyzer;->this$0:Lcom/vivo/services/motion/ScreenOffWakeupService;

    move-object/from16 v21, v0

    # getter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->isScreenOffWakeupWorking:Z
    invoke-static/range {v21 .. v21}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$900(Lcom/vivo/services/motion/ScreenOffWakeupService;)Z

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    # getter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->mObjectLock:Ljava/lang/Object;
    invoke-static {}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$400()Ljava/lang/Object;

    move-result-object v20

    monitor-enter v20

    .line 397
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupAnalyzer;->this$0:Lcom/vivo/services/motion/ScreenOffWakeupService;

    move-object/from16 v19, v0

    # getter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->mServiceHandler:Landroid/os/Handler;
    invoke-static/range {v19 .. v19}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$500(Lcom/vivo/services/motion/ScreenOffWakeupService;)Landroid/os/Handler;

    move-result-object v19

    if-eqz v19, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupAnalyzer;->this$0:Lcom/vivo/services/motion/ScreenOffWakeupService;

    move-object/from16 v19, v0

    # getter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->isScreenOffWakeupWorking:Z
    invoke-static/range {v19 .. v19}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$900(Lcom/vivo/services/motion/ScreenOffWakeupService;)Z

    move-result v19

    const/16 v21, 0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_c

    .line 399
    const-string v19, "ScreenOffWakeupService"

    const-string v21, "mServiceHandler can  TRIGER"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupAnalyzer;->this$0:Lcom/vivo/services/motion/ScreenOffWakeupService;

    move-object/from16 v19, v0

    # getter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->mServiceHandler:Landroid/os/Handler;
    invoke-static/range {v19 .. v19}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$500(Lcom/vivo/services/motion/ScreenOffWakeupService;)Landroid/os/Handler;

    move-result-object v19

    const/16 v21, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 406
    :goto_4
    monitor-exit v20
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 408
    :cond_b
    const/16 v19, 0x2

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupAnalyzer;->authStep:I

    goto/16 :goto_1

    .line 404
    :cond_c
    :try_start_4
    const-string v19, "ScreenOffWakeupService"

    const-string v21, "mServiceHandler is NULL"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 406
    :catchall_0
    move-exception v19

    monitor-exit v20
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v19

    .line 361
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private judge(Landroid/hardware/SensorEvent;)V
    .locals 11
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/high16 v7, 0x40800000    # 4.0f

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 419
    const/4 v1, 0x0

    .line 420
    .local v1, "xyTotalValue":F
    const/4 v0, 0x0

    .local v0, "x":F
    const/4 v2, 0x0

    .local v2, "y":F
    const/4 v3, 0x0

    .line 421
    .local v3, "z":F
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v4, v8

    .line 422
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v4, v9

    .line 423
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v4, v10

    .line 425
    const-string v4, "ScreenOffWakeupService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "x:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "y:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "z:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget v4, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupAnalyzer;->authStep:I

    packed-switch v4, :pswitch_data_0

    .line 479
    :cond_0
    :goto_0
    const-string v4, "ScreenOffWakeupService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "authStep"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupAnalyzer;->authStep:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",cnt:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupAnalyzer;->authCnt:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    return-void

    .line 429
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v7

    if-gez v4, :cond_1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v7

    if-gez v4, :cond_1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x41000000    # 8.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 433
    iget v4, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupAnalyzer;->authCnt:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupAnalyzer;->authCnt:I

    .line 439
    :goto_1
    const-string v4, "ScreenOffWakeupService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "authCnt:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupAnalyzer;->authCnt:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget v4, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupAnalyzer;->authCnt:I

    if-lt v4, v10, :cond_0

    .line 442
    iput v9, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupAnalyzer;->authStep:I

    .line 443
    iput v8, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupAnalyzer;->authCnt:I

    goto :goto_0

    .line 437
    :cond_1
    iput v8, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupAnalyzer;->authCnt:I

    goto :goto_1

    .line 448
    :pswitch_1
    iget-object v4, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupAnalyzer;->this$0:Lcom/vivo/services/motion/ScreenOffWakeupService;

    # getter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$500(Lcom/vivo/services/motion/ScreenOffWakeupService;)Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 450
    iget-object v4, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupAnalyzer;->this$0:Lcom/vivo/services/motion/ScreenOffWakeupService;

    # getter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->mBWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v4}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$1600(Lcom/vivo/services/motion/ScreenOffWakeupService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupAnalyzer;->this$0:Lcom/vivo/services/motion/ScreenOffWakeupService;

    # getter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->mBWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v4}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$1600(Lcom/vivo/services/motion/ScreenOffWakeupService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-nez v4, :cond_2

    .line 452
    const-string v4, "ScreenOffWakeupService"

    const-string v5, "mBWakeLock acquire"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object v4, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupAnalyzer;->this$0:Lcom/vivo/services/motion/ScreenOffWakeupService;

    # getter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->mBWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v4}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$1600(Lcom/vivo/services/motion/ScreenOffWakeupService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    const-wide/16 v6, 0xbb8

    invoke-virtual {v4, v6, v7}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 455
    :cond_2
    iget-object v4, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupAnalyzer;->this$0:Lcom/vivo/services/motion/ScreenOffWakeupService;

    # getter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v4}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$1000(Lcom/vivo/services/motion/ScreenOffWakeupService;)Landroid/hardware/SensorManager;

    move-result-object v4

    if-eqz v4, :cond_3

    # getter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->registerstate:I
    invoke-static {}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$000()I

    move-result v4

    if-ne v4, v9, :cond_3

    .line 457
    iget-object v4, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupAnalyzer;->this$0:Lcom/vivo/services/motion/ScreenOffWakeupService;

    # getter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v4}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$1000(Lcom/vivo/services/motion/ScreenOffWakeupService;)Landroid/hardware/SensorManager;

    move-result-object v4

    iget-object v5, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupAnalyzer;->this$0:Lcom/vivo/services/motion/ScreenOffWakeupService;

    # getter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->mAcceleromererListener:Lcom/vivo/services/motion/ScreenOffWakeupService$MotionSensorEventListener;
    invoke-static {v5}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$1100(Lcom/vivo/services/motion/ScreenOffWakeupService;)Lcom/vivo/services/motion/ScreenOffWakeupService$MotionSensorEventListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 458
    # setter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->registerstate:I
    invoke-static {v8}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$002(I)I

    .line 460
    :cond_3
    const-string v4, "ScreenOffWakeupService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isScreenOffWakeupWorking:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupAnalyzer;->this$0:Lcom/vivo/services/motion/ScreenOffWakeupService;

    # getter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->isScreenOffWakeupWorking:Z
    invoke-static {v6}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$900(Lcom/vivo/services/motion/ScreenOffWakeupService;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    # getter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->mObjectLock:Ljava/lang/Object;
    invoke-static {}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$400()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 462
    :try_start_0
    iget-object v4, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupAnalyzer;->this$0:Lcom/vivo/services/motion/ScreenOffWakeupService;

    # getter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$500(Lcom/vivo/services/motion/ScreenOffWakeupService;)Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupAnalyzer;->this$0:Lcom/vivo/services/motion/ScreenOffWakeupService;

    # getter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->isScreenOffWakeupWorking:Z
    invoke-static {v4}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$900(Lcom/vivo/services/motion/ScreenOffWakeupService;)Z

    move-result v4

    if-ne v4, v9, :cond_5

    .line 464
    const-string v4, "ScreenOffWakeupService"

    const-string v6, "mServiceHandler can  TRIGER"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-object v4, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupAnalyzer;->this$0:Lcom/vivo/services/motion/ScreenOffWakeupService;

    # getter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$500(Lcom/vivo/services/motion/ScreenOffWakeupService;)Landroid/os/Handler;

    move-result-object v4

    const/4 v6, 0x3

    invoke-virtual {v4, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 471
    :goto_2
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    :cond_4
    iput v10, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupAnalyzer;->authStep:I

    goto/16 :goto_0

    .line 469
    :cond_5
    :try_start_1
    const-string v4, "ScreenOffWakeupService"

    const-string v6, "mServiceHandler is NULL"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 471
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 426
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 268
    iput v1, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupAnalyzer;->mFinalStateCnt:I

    .line 269
    iput v1, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupAnalyzer;->authCnt:I

    .line 270
    iput v1, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupAnalyzer;->authStep:I

    .line 271
    iget-object v0, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupAnalyzer;->this$0:Lcom/vivo/services/motion/ScreenOffWakeupService;

    # setter for: Lcom/vivo/services/motion/ScreenOffWakeupService;->isAuthWorking:Z
    invoke-static {v0, v1}, Lcom/vivo/services/motion/ScreenOffWakeupService;->access$1302(Lcom/vivo/services/motion/ScreenOffWakeupService;Z)Z

    .line 272
    return-void
.end method
