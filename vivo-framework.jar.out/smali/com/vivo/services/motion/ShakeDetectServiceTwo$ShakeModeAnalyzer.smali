.class Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;
.super Ljava/lang/Object;
.source "ShakeDetectServiceTwo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/motion/ShakeDetectServiceTwo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShakeModeAnalyzer"
.end annotation


# static fields
.field private static final BALANCE_COEFFICIENT:F = 0.2f

.field private static final EXTREME_COEFFICIENT:F = 0.2f

.field private static final EXTREME_COUNT:I = 0x5

.field private static final EXTREME_COUNT_THRESHOLD:I = 0x3

.field private static final EXTREME_NUM_THRESHOLD_MODE_0:I = 0xc

.field private static final EXTREME_NUM_THRESHOLD_MODE_1:I = 0xd

.field private static final EXTREME_NUM_THRESHOLD_MODE_2:I = 0xb

.field private static final EXTREME_NUM_THRESHOLD_MODE_A:I = 0x19

.field private static final EXTREME_SPEED_THRESHOLD_MODE_0:F = 0.5f

.field private static final EXTREME_SPEED_THRESHOLD_MODE_1:F = 0.8f

.field private static final EXTREME_SPEED_THRESHOLD_MODE_2:F = 1.2f

.field private static final EXTREME_SPEED_THRESHOLD_MODE_A:F = 0.2f

.field private static final EXTREME_ZERO_NUM_THRESHOLD_MODE_0:I = 0xa

.field private static final EXTREME_ZERO_NUM_THRESHOLD_MODE_1:I = 0x7

.field private static final EXTREME_ZERO_NUM_THRESHOLD_MODE_2:I = 0x6

.field private static final EXTREME_ZERO_NUM_THRESHOLD_MODE_A:I = 0xa

.field private static final GRAVITY_M_M_THRESHOLD_MODE_1:I = 0xa

.field private static final GRAVITY_M_M_THRESHOLD_MODE_2:I = 0xc

.field private static final NUM_THRESHOLD:I = 0x3c

.field private static final POSTURE_EFFECTIVE_THRESHOLD:I = 0x5

.field private static final POSTURE_THRESHOLD:I = 0x8

.field private static final SHAKE_THRESHOLD:F = 3.0f

.field private static final SPEED_PROCESS_INTERVAL:F = 10.0f

.field private static final STATIC_NUM_THRESHOLD:I = 0xa

.field private static final STATIC_THRESHOLD:F = 2.0f

.field private static final TIME_INTERVAL:F = 25000.0f


# instance fields
.field private extremeCount:I

.field private firstFlag:Z

.field private gravityBuf:[[F

.field private lastXvalue:F

.field private originalXspeedBuf:[F

.field private phoneMode:I

.field private postureBuf:[[F

.field private postureData:[F

.field private presentXvalue:F

.field private processXspeedBuf:[F

.field private shakeResult:Z

.field private shakeState:Z

.field private shakeTag:Z

.field private staticInfoBuf:[I

.field private staticState:Z

.field final synthetic this$0:Lcom/vivo/services/motion/ShakeDetectServiceTwo;

.field private xlinearaccBuf:[F


# direct methods
.method public constructor <init>(Lcom/vivo/services/motion/ShakeDetectServiceTwo;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    const/4 v4, 0x3

    const/16 v3, 0x3c

    const/4 v2, 0x0

    .line 273
    iput-object p1, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->this$0:Lcom/vivo/services/motion/ShakeDetectServiceTwo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    iput v2, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->phoneMode:I

    .line 236
    iput v2, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->extremeCount:I

    .line 237
    iput v0, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->lastXvalue:F

    .line 238
    iput v0, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->presentXvalue:F

    .line 240
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->xlinearaccBuf:[F

    .line 241
    filled-new-array {v4, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->gravityBuf:[[F

    .line 242
    const/16 v0, 0x8

    filled-new-array {v4, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->postureBuf:[[F

    .line 243
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->originalXspeedBuf:[F

    .line 244
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->processXspeedBuf:[F

    .line 245
    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->staticInfoBuf:[I

    .line 247
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->postureData:[F

    .line 249
    iput-boolean v5, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->firstFlag:Z

    .line 250
    iput-boolean v5, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->staticState:Z

    .line 251
    iput-boolean v2, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->shakeState:Z

    .line 252
    iput-boolean v2, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->shakeTag:Z

    .line 253
    iput-boolean v2, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->shakeResult:Z

    .line 274
    return-void
.end method

.method private GravityListenerWindow(FFF)V
    .locals 10
    .param p1, "xValue"    # F
    .param p2, "yValue"    # F
    .param p3, "zValue"    # F

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x7

    const/4 v5, 0x0

    .line 326
    const/16 v0, 0x3b

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_1

    .line 328
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v9, :cond_0

    .line 330
    iget-object v2, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->gravityBuf:[[F

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->gravityBuf:[[F

    aget-object v3, v3, v1

    add-int/lit8 v4, v0, -0x1

    aget v3, v3, v4

    aput v3, v2, v0

    .line 328
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 326
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 333
    .end local v1    # "j":I
    :cond_1
    iget-object v2, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->gravityBuf:[[F

    aget-object v2, v2, v5

    aput p1, v2, v5

    .line 334
    iget-object v2, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->gravityBuf:[[F

    aget-object v2, v2, v7

    aput p2, v2, v5

    .line 335
    iget-object v2, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->gravityBuf:[[F

    aget-object v2, v2, v8

    aput p3, v2, v5

    .line 338
    iget-boolean v2, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->staticState:Z

    if-eqz v2, :cond_3

    .line 340
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v6, :cond_3

    .line 342
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_3
    if-ge v1, v9, :cond_2

    .line 344
    iget-object v2, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->postureBuf:[[F

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->postureBuf:[[F

    aget-object v3, v3, v1

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    aput v3, v2, v0

    .line 342
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 346
    :cond_2
    iget-object v2, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->postureBuf:[[F

    aget-object v2, v2, v5

    aput p1, v2, v6

    .line 347
    iget-object v2, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->postureBuf:[[F

    aget-object v2, v2, v7

    aput p2, v2, v6

    .line 348
    iget-object v2, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->postureBuf:[[F

    aget-object v2, v2, v8

    aput p3, v2, v6

    .line 340
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 351
    .end local v1    # "j":I
    :cond_3
    return-void
.end method

.method private ShakeAnalysis(FFF)V
    .locals 12
    .param p1, "xValue"    # F
    .param p2, "yValue"    # F
    .param p3, "zValue"    # F

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 912
    const/4 v1, 0x0

    .line 913
    .local v1, "extremeSpeedThreshold":F
    const/4 v0, 0x0

    .line 914
    .local v0, "extremeNumThreshold":I
    const/4 v2, 0x0

    .line 915
    .local v2, "extremeZeroNumThreshold":I
    const/4 v5, 0x1

    .line 916
    .local v5, "tiltValue":I
    # getter for: Lcom/vivo/services/motion/ShakeDetectServiceTwo;->Debug:Z
    invoke-static {}, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->access$1200()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 918
    const-string v6, "ShakeDetectServiceTwo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "gsensor_data_for_shake x: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " y: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " z: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    :cond_0
    iput p1, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->presentXvalue:F

    .line 923
    iget-boolean v6, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->firstFlag:Z

    if-eqz v6, :cond_2

    .line 925
    iget v6, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->presentXvalue:F

    iput v6, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->lastXvalue:F

    .line 926
    iput-boolean v9, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->firstFlag:Z

    .line 1012
    :cond_1
    :goto_0
    return-void

    .line 931
    :cond_2
    iget-boolean v6, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->staticState:Z

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->this$0:Lcom/vivo/services/motion/ShakeDetectServiceTwo;

    # getter for: Lcom/vivo/services/motion/ShakeDetectServiceTwo;->trigerFlag:Z
    invoke-static {v6}, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->access$000(Lcom/vivo/services/motion/ShakeDetectServiceTwo;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 933
    iget v6, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->presentXvalue:F

    iget v7, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->lastXvalue:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v7, 0x40400000    # 3.0f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    .line 935
    iput-boolean v10, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->shakeState:Z

    .line 936
    iput-boolean v9, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->staticState:Z

    .line 943
    :cond_3
    :goto_1
    iget v6, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->presentXvalue:F

    iput v6, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->lastXvalue:F

    .line 945
    iget-boolean v6, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->shakeState:Z

    if-eqz v6, :cond_a

    .line 947
    invoke-direct {p0, p1, p2, p3}, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->linearaccelerationListenerWindow(FFF)V

    .line 948
    invoke-direct {p0, p1, p2, p3}, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->originalSpeedWindow(FFF)V

    .line 949
    invoke-direct {p0, p1, p2, p3}, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->processSpeedWindow(FFF)V

    .line 952
    invoke-direct {p0}, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->getPostureData()V

    .line 953
    invoke-direct {p0}, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->phonePostureJudge()I

    move-result v6

    iput v6, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->phoneMode:I

    .line 955
    iput v9, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->phoneMode:I

    .line 957
    iget v6, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->phoneMode:I

    if-nez v6, :cond_8

    .line 959
    const/high16 v1, 0x3f000000    # 0.5f

    .line 960
    const/16 v0, 0xc

    .line 961
    const/16 v2, 0xa

    .line 977
    :cond_4
    :goto_2
    invoke-direct {p0, v1, v0, v2}, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->shakeJudge(FII)V

    .line 985
    :goto_3
    iget-boolean v6, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->shakeResult:Z

    if-eqz v6, :cond_1

    .line 987
    iput-boolean v9, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->shakeResult:Z

    .line 988
    invoke-direct {p0}, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->phoneDirectionJudge()Z

    move-result v6

    if-nez v6, :cond_1

    .line 993
    invoke-direct {p0}, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->tiltModeJudge()I

    move-result v5

    .line 995
    iget-object v6, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->this$0:Lcom/vivo/services/motion/ShakeDetectServiceTwo;

    # getter for: Lcom/vivo/services/motion/ShakeDetectServiceTwo;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->access$1300(Lcom/vivo/services/motion/ShakeDetectServiceTwo;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "bbk_application_settings"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v11, :cond_5

    .line 997
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 998
    .local v3, "intent":Landroid/content/Intent;
    const-string v6, "android.action.multifloatingtask.showsmallwindowvalue"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 999
    const-string v6, "showsmallwindowvalue"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1000
    iget-object v6, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->this$0:Lcom/vivo/services/motion/ShakeDetectServiceTwo;

    # getter for: Lcom/vivo/services/motion/ShakeDetectServiceTwo;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->access$1300(Lcom/vivo/services/motion/ShakeDetectServiceTwo;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1001
    const-string v6, "ShakeDetectServiceTwo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "tiltValue:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_5
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 1005
    .local v4, "msg":Landroid/os/Message;
    iput v11, v4, Landroid/os/Message;->what:I

    .line 1006
    iget-object v6, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->this$0:Lcom/vivo/services/motion/ShakeDetectServiceTwo;

    # getter for: Lcom/vivo/services/motion/ShakeDetectServiceTwo;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->access$1400(Lcom/vivo/services/motion/ShakeDetectServiceTwo;)Landroid/os/Handler;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 1008
    iget-object v6, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->this$0:Lcom/vivo/services/motion/ShakeDetectServiceTwo;

    # getter for: Lcom/vivo/services/motion/ShakeDetectServiceTwo;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->access$1400(Lcom/vivo/services/motion/ShakeDetectServiceTwo;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1010
    :cond_6
    const-string v6, "ShakeDetectServiceTwo"

    const-string v7, "shake to open apps motion analysis success!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 941
    .end local v4    # "msg":Landroid/os/Message;
    :cond_7
    iget v6, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->lastXvalue:F

    iget v7, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->presentXvalue:F

    invoke-direct {p0, v6, v7}, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->staticJudge(FF)V

    goto/16 :goto_1

    .line 963
    :cond_8
    iget v6, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->phoneMode:I

    if-ne v6, v10, :cond_9

    .line 965
    const v1, 0x3f4ccccd    # 0.8f

    .line 966
    const/16 v0, 0xd

    .line 967
    const/4 v2, 0x7

    goto/16 :goto_2

    .line 969
    :cond_9
    iget v6, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->phoneMode:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    .line 971
    const v1, 0x3f99999a    # 1.2f

    .line 972
    const/16 v0, 0xb

    .line 973
    const/4 v2, 0x6

    goto/16 :goto_2

    .line 982
    :cond_a
    invoke-direct {p0, p1, p2, p3}, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->originalSpeedWindow(FFF)V

    goto/16 :goto_3
.end method

.method static synthetic access$800(Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;FFF)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # F

    .prologue
    .line 200
    invoke-direct {p0, p1, p2, p3}, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->ShakeAnalysis(FFF)V

    return-void
.end method

.method static synthetic access$900(Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;FFF)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # F

    .prologue
    .line 200
    invoke-direct {p0, p1, p2, p3}, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->GravityListenerWindow(FFF)V

    return-void
.end method

.method private crestJudge()V
    .locals 0

    .prologue
    .line 391
    return-void
.end method

.method private getPostureData()V
    .locals 15

    .prologue
    const/4 v14, 0x5

    const/4 v9, 0x3

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 799
    const/4 v4, 0x0

    .line 800
    .local v4, "standardNum":I
    const/4 v3, 0x0

    .line 801
    .local v3, "minValue":F
    new-array v6, v9, [F

    .line 802
    .local v6, "sumValues":[F
    new-array v5, v9, [F

    .line 803
    .local v5, "standardValues":[F
    new-array v0, v14, [F

    .line 804
    .local v0, "diffValues":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v14, :cond_1

    .line 806
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v9, :cond_0

    .line 808
    aget v7, v6, v2

    iget-object v8, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->postureBuf:[[F

    aget-object v8, v8, v2

    aget v8, v8, v1

    add-float/2addr v7, v8

    aput v7, v6, v2

    .line 806
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 804
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 812
    .end local v2    # "j":I
    :cond_1
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v9, :cond_2

    .line 814
    aget v7, v6, v1

    const/high16 v8, 0x40a00000    # 5.0f

    div-float/2addr v7, v8

    aput v7, v5, v1

    .line 812
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 817
    :cond_2
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v14, :cond_3

    .line 819
    iget-object v7, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->postureBuf:[[F

    aget-object v7, v7, v11

    aget v7, v7, v1

    aget v8, v5, v11

    sub-float/2addr v7, v8

    iget-object v8, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->postureBuf:[[F

    aget-object v8, v8, v11

    aget v8, v8, v1

    aget v9, v5, v11

    sub-float/2addr v8, v9

    mul-float/2addr v7, v8

    iget-object v8, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->postureBuf:[[F

    aget-object v8, v8, v12

    aget v8, v8, v1

    aget v9, v5, v12

    sub-float/2addr v8, v9

    iget-object v9, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->postureBuf:[[F

    aget-object v9, v9, v12

    aget v9, v9, v1

    aget v10, v5, v12

    sub-float/2addr v9, v10

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->postureBuf:[[F

    aget-object v8, v8, v13

    aget v8, v8, v1

    aget v9, v5, v13

    sub-float/2addr v8, v9

    iget-object v9, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->postureBuf:[[F

    aget-object v9, v9, v13

    aget v9, v9, v1

    aget v10, v5, v13

    sub-float/2addr v9, v10

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    aput v7, v0, v1

    .line 817
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 824
    :cond_3
    aget v3, v0, v11

    .line 826
    const/4 v1, 0x4

    :goto_4
    if-lez v1, :cond_5

    .line 828
    aget v7, v0, v1

    cmpl-float v7, v3, v7

    if-lez v7, :cond_4

    .line 830
    aget v3, v0, v1

    .line 831
    move v4, v1

    .line 826
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 835
    :cond_5
    iget-object v7, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->postureData:[F

    iget-object v8, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->postureBuf:[[F

    aget-object v8, v8, v11

    aget v8, v8, v4

    aput v8, v7, v11

    .line 836
    iget-object v7, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->postureData:[F

    iget-object v8, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->postureBuf:[[F

    aget-object v8, v8, v12

    aget v8, v8, v4

    aput v8, v7, v12

    .line 837
    iget-object v7, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->postureData:[F

    iget-object v8, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->postureBuf:[[F

    aget-object v8, v8, v13

    aget v8, v8, v4

    aput v8, v7, v13

    .line 838
    return-void
.end method

.method private linearaccelerationListenerWindow(FFF)V
    .locals 4
    .param p1, "xValue"    # F
    .param p2, "yValue"    # F
    .param p3, "zValue"    # F

    .prologue
    .line 317
    const/16 v0, 0x3b

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 319
    iget-object v1, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->xlinearaccBuf:[F

    iget-object v2, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->xlinearaccBuf:[F

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    aput v2, v1, v0

    .line 317
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 321
    :cond_0
    iget-object v1, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->xlinearaccBuf:[F

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 322
    return-void
.end method

.method private modeJudge()I
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 752
    const/4 v5, 0x0

    .line 753
    .local v5, "result":I
    const/4 v0, 0x0

    .line 754
    .local v0, "gravityMM":F
    new-array v2, v10, [F

    .line 755
    .local v2, "gravityMin":[F
    new-array v1, v10, [F

    .line 757
    .local v1, "gravityMax":[F
    iget-object v6, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->gravityBuf:[[F

    aget-object v6, v6, v7

    aget v6, v6, v7

    aput v6, v2, v7

    .line 758
    iget-object v6, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->gravityBuf:[[F

    aget-object v6, v6, v8

    aget v6, v6, v7

    aput v6, v2, v8

    .line 759
    iget-object v6, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->gravityBuf:[[F

    aget-object v6, v6, v9

    aget v6, v6, v7

    aput v6, v2, v9

    .line 761
    iget-object v6, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->gravityBuf:[[F

    aget-object v6, v6, v7

    aget v6, v6, v7

    aput v6, v1, v7

    .line 762
    iget-object v6, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->gravityBuf:[[F

    aget-object v6, v6, v8

    aget v6, v6, v7

    aput v6, v1, v8

    .line 763
    iget-object v6, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->gravityBuf:[[F

    aget-object v6, v6, v9

    aget v6, v6, v7

    aput v6, v1, v9

    .line 764
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    const/16 v6, 0x3c

    if-ge v3, v6, :cond_3

    .line 766
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v10, :cond_2

    .line 768
    iget-object v6, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->gravityBuf:[[F

    aget-object v6, v6, v4

    aget v6, v6, v3

    aget v7, v1, v4

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    .line 770
    iget-object v6, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->gravityBuf:[[F

    aget-object v6, v6, v4

    aget v6, v6, v3

    aput v6, v1, v4

    .line 772
    :cond_0
    iget-object v6, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->gravityBuf:[[F

    aget-object v6, v6, v4

    aget v6, v6, v3

    aget v7, v2, v4

    cmpg-float v6, v6, v7

    if-gez v6, :cond_1

    .line 774
    iget-object v6, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->gravityBuf:[[F

    aget-object v6, v6, v4

    aget v6, v6, v3

    aput v6, v2, v4

    .line 766
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 764
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 779
    .end local v4    # "j":I
    :cond_3
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v10, :cond_5

    .line 781
    aget v6, v1, v3

    aget v7, v2, v3

    sub-float/2addr v6, v7

    cmpl-float v6, v6, v0

    if-lez v6, :cond_4

    .line 783
    aget v6, v1, v3

    aget v7, v2, v3

    sub-float v0, v6, v7

    .line 779
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 786
    :cond_5
    const/high16 v6, 0x41200000    # 10.0f

    cmpl-float v6, v0, v6

    if-lez v6, :cond_6

    .line 788
    const/4 v5, 0x1

    .line 790
    :cond_6
    const/high16 v6, 0x41400000    # 12.0f

    cmpl-float v6, v0, v6

    if-lez v6, :cond_7

    .line 792
    const/4 v5, 0x2

    .line 794
    :cond_7
    return v5
.end method

.method private originalSpeedWindow(FFF)V
    .locals 6
    .param p1, "xValue"    # F
    .param p2, "yValue"    # F
    .param p3, "zValue"    # F

    .prologue
    const/high16 v5, 0x447a0000    # 1000.0f

    .line 355
    const/16 v0, 0x3b

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 357
    iget-object v1, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->originalXspeedBuf:[F

    iget-object v2, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->originalXspeedBuf:[F

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    aput v2, v1, v0

    .line 355
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 359
    :cond_0
    iget-object v1, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->originalXspeedBuf:[F

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->originalXspeedBuf:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    const v4, 0x46c35000    # 25000.0f

    mul-float/2addr v4, p1

    div-float/2addr v4, v5

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    aput v3, v1, v2

    .line 361
    return-void
.end method

.method private phoneDirectionJudge()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 842
    const/4 v5, 0x0

    .line 843
    .local v5, "result":Z
    const/4 v2, 0x0

    .line 844
    .local v2, "gravityYSum":F
    const/4 v0, 0x0

    .line 845
    .local v0, "gravityYAve":F
    const/4 v1, 0x0

    .line 846
    .local v1, "gravityYCount":I
    const/4 v3, 0x0

    .line 847
    .local v3, "gravityYZeroCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/16 v6, 0x1e

    if-ge v4, v6, :cond_0

    .line 849
    iget-object v6, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->gravityBuf:[[F

    aget-object v6, v6, v8

    aget v6, v6, v4

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_2

    .line 851
    const/4 v3, 0x0

    .line 857
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 858
    iget-object v6, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->gravityBuf:[[F

    aget-object v6, v6, v8

    aget v6, v6, v4

    add-float/2addr v2, v6

    .line 859
    if-le v3, v8, :cond_3

    .line 864
    :cond_0
    int-to-float v6, v1

    div-float v0, v2, v6

    .line 865
    const-string v6, "ShakeDetectServiceTwo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "gravityYAve:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    const/high16 v6, -0x3f600000    # -5.0f

    cmpg-float v6, v0, v6

    if-gez v6, :cond_1

    .line 868
    const/4 v5, 0x1

    .line 870
    :cond_1
    const-string v6, "ShakeDetectServiceTwo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "phone direction is not right,result:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    return v5

    .line 855
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 847
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private phonePostureJudge()I
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x40400000    # 3.0f

    const/4 v3, 0x2

    .line 876
    const/4 v0, 0x0

    .line 881
    .local v0, "result":I
    iget-object v1, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->postureData:[F

    aget v1, v1, v5

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v2, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->postureData:[F

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float/2addr v2, v4

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->postureData:[F

    aget v1, v1, v6

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v2, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->postureData:[F

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float/2addr v2, v4

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 883
    :cond_0
    const/4 v0, 0x2

    .line 893
    :goto_0
    return v0

    .line 885
    :cond_1
    iget-object v1, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->postureData:[F

    aget v1, v1, v5

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v2, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->postureData:[F

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_2

    iget-object v1, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->postureData:[F

    aget v1, v1, v6

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v2, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->postureData:[F

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    .line 887
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 891
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processSpeedWindow(FFF)V
    .locals 7
    .param p1, "xValue"    # F
    .param p2, "yValue"    # F
    .param p3, "zValue"    # F

    .prologue
    const/high16 v6, 0x41200000    # 10.0f

    const/4 v5, 0x0

    .line 365
    const/4 v1, 0x0

    .line 367
    .local v1, "sum_speed":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    int-to-float v2, v0

    cmpg-float v2, v2, v6

    if-gez v2, :cond_0

    .line 369
    iget-object v2, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->originalXspeedBuf:[F

    aget v2, v2, v0

    add-float/2addr v1, v2

    .line 367
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 371
    :cond_0
    const/16 v0, 0x3b

    :goto_1
    if-lez v0, :cond_1

    .line 373
    iget-object v2, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->processXspeedBuf:[F

    iget-object v3, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->processXspeedBuf:[F

    add-int/lit8 v4, v0, -0x1

    aget v3, v3, v4

    aput v3, v2, v0

    .line 371
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 375
    :cond_1
    iget-object v2, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->processXspeedBuf:[F

    iget-object v3, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->originalXspeedBuf:[F

    aget v3, v3, v5

    div-float v4, v1, v6

    sub-float/2addr v3, v4

    aput v3, v2, v5

    .line 386
    const-string v2, "ShakeDetectServiceTwo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " processXspeedBuf: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->processXspeedBuf:[F

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    return-void
.end method

.method private shakeJudge(FII)V
    .locals 24
    .param p1, "extremeSpeedThreshold"    # F
    .param p2, "extremeNumThreshold"    # I
    .param p3, "extremeZeroNumThreshold"    # I

    .prologue
    .line 426
    const/4 v12, 0x0

    .line 427
    .local v12, "shakeCount":I
    const/16 v18, 0x0

    .line 428
    .local v18, "zeroNum":I
    const/4 v5, 0x0

    .line 429
    .local v5, "crestNum":I
    const/16 v16, 0x0

    .line 430
    .local v16, "troughNum":I
    const/4 v7, 0x0

    .line 431
    .local v7, "extremeNum":I
    const/4 v3, 0x0

    .line 432
    .local v3, "crestCount":I
    const/4 v14, 0x0

    .line 433
    .local v14, "troughCount":I
    const/4 v2, 0x0

    .line 435
    .local v2, "balanceUpFlag":I
    const/16 v19, 0x0

    .line 436
    .local v19, "zeroSpeed":F
    const/4 v6, 0x0

    .line 437
    .local v6, "crestSpeed":F
    const/4 v10, 0x0

    .line 438
    .local v10, "lastCrestSpeed":F
    const/16 v17, 0x0

    .line 439
    .local v17, "troughSpeed":F
    const/4 v11, 0x0

    .line 441
    .local v11, "lastTroughSpeed":F
    const/4 v4, 0x0

    .line 442
    .local v4, "crestFlag":Z
    const/4 v15, 0x0

    .line 443
    .local v15, "troughFlag":Z
    const/4 v13, 0x0

    .line 445
    .local v13, "thresholdFlag":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    const/16 v20, 0x39

    move/from16 v0, v20

    if-ge v8, v0, :cond_0

    .line 447
    if-eqz v4, :cond_7

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->processXspeedBuf:[F

    move-object/from16 v20, v0

    aget v20, v20, v8

    cmpg-float v20, v20, v6

    if-gez v20, :cond_5

    .line 451
    add-int/lit8 v12, v12, 0x1

    .line 503
    :cond_0
    :goto_1
    if-eqz v4, :cond_1

    .line 505
    move v10, v6

    .line 507
    :cond_1
    if-eqz v15, :cond_2

    .line 509
    move/from16 v11, v17

    .line 512
    :cond_2
    add-int/lit8 v8, v7, 0x1

    :goto_2
    const/16 v20, 0x3c

    move/from16 v0, v20

    if-ge v8, v0, :cond_3

    .line 514
    const/16 v20, 0x3

    move/from16 v0, v20

    if-lt v12, v0, :cond_c

    .line 516
    const p1, 0x3e4ccccd    # 0.2f

    .line 517
    const/16 p2, 0x19

    .line 518
    const/16 p3, 0xa

    .line 519
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->shakeTag:Z

    .line 695
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->shakeTag:Z

    move/from16 v20, v0

    if-eqz v20, :cond_25

    .line 699
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->shakeResult:Z

    .line 701
    # getter for: Lcom/vivo/services/motion/ShakeDetectServiceTwo;->Debug:Z
    invoke-static {}, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->access$1200()Z

    move-result v20

    if-eqz v20, :cond_4

    .line 703
    const-string v20, "ShakeDetectServiceTwo"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " ++shakeCount:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    :cond_4
    :goto_3
    return-void

    .line 456
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->processXspeedBuf:[F

    move-object/from16 v20, v0

    aget v6, v20, v8

    .line 457
    move v5, v8

    .line 458
    move v7, v8

    .line 445
    :cond_6
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 463
    :cond_7
    if-eqz v15, :cond_9

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->processXspeedBuf:[F

    move-object/from16 v20, v0

    aget v20, v20, v8

    cmpl-float v20, v20, v17

    if-lez v20, :cond_8

    .line 467
    add-int/lit8 v12, v12, 0x1

    .line 468
    goto :goto_1

    .line 472
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->processXspeedBuf:[F

    move-object/from16 v20, v0

    aget v17, v20, v8

    .line 473
    move/from16 v16, v8

    .line 474
    move v7, v8

    .line 475
    goto :goto_4

    .line 479
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->processXspeedBuf:[F

    move-object/from16 v20, v0

    aget v20, v20, v8

    const v21, 0x3e4ccccd    # 0.2f

    const/high16 v22, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->processXspeedBuf:[F

    move-object/from16 v23, v0

    aget v23, v23, v8

    mul-float v22, v22, v23

    mul-float v21, v21, v22

    sub-float v21, p1, v21

    cmpl-float v20, v20, v21

    if-lez v20, :cond_a

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->processXspeedBuf:[F

    move-object/from16 v20, v0

    aget v6, v20, v8

    .line 483
    move v5, v8

    .line 484
    move v7, v8

    .line 485
    const/4 v4, 0x1

    .line 486
    goto :goto_4

    .line 488
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->processXspeedBuf:[F

    move-object/from16 v20, v0

    aget v20, v20, v8

    move/from16 v0, v20

    neg-float v0, v0

    move/from16 v20, v0

    const v21, 0x3e4ccccd    # 0.2f

    const/high16 v22, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->processXspeedBuf:[F

    move-object/from16 v23, v0

    aget v23, v23, v8

    mul-float v22, v22, v23

    mul-float v21, v21, v22

    add-float v21, v21, p1

    cmpl-float v20, v20, v21

    if-lez v20, :cond_b

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->processXspeedBuf:[F

    move-object/from16 v20, v0

    aget v17, v20, v8

    .line 492
    move/from16 v16, v8

    .line 493
    move v7, v8

    .line 494
    const/4 v15, 0x1

    .line 495
    goto :goto_4

    .line 497
    :cond_b
    const/16 v20, 0x39

    move/from16 v0, v20

    if-ne v8, v0, :cond_6

    goto/16 :goto_3

    .line 524
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->processXspeedBuf:[F

    move-object/from16 v20, v0

    aget v20, v20, v8

    move/from16 v0, v20

    neg-float v0, v0

    move/from16 v20, v0

    const v21, 0x3e4ccccd    # 0.2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->processXspeedBuf:[F

    move-object/from16 v22, v0

    aget v22, v22, v8

    sub-float v22, v6, v22

    mul-float v21, v21, v22

    sub-float v21, p1, v21

    cmpl-float v20, v20, v21

    if-lez v20, :cond_10

    .line 526
    add-int/lit8 v3, v3, 0x1

    .line 533
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->processXspeedBuf:[F

    move-object/from16 v20, v0

    aget v20, v20, v8

    const v21, 0x3e4ccccd    # 0.2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->processXspeedBuf:[F

    move-object/from16 v22, v0

    aget v22, v22, v8

    sub-float v22, v22, v17

    mul-float v21, v21, v22

    sub-float v21, p1, v21

    cmpl-float v20, v20, v21

    if-lez v20, :cond_11

    .line 535
    add-int/lit8 v14, v14, 0x1

    .line 541
    :goto_6
    const/16 v20, 0x5

    move/from16 v0, v20

    if-le v3, v0, :cond_d

    .line 543
    const/4 v12, 0x1

    .line 544
    const/4 v3, 0x0

    .line 545
    const-string v20, "ShakeDetectServiceTwo"

    const-string v21, " extremeCount crestCount is not satify"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :cond_d
    const/16 v20, 0x5

    move/from16 v0, v20

    if-le v14, v0, :cond_e

    .line 550
    const/4 v12, 0x1

    .line 551
    const/4 v14, 0x0

    .line 552
    const-string v20, "ShakeDetectServiceTwo"

    const-string v21, " extremeCount troughCount is not satify"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :cond_e
    if-eqz v4, :cond_13

    .line 557
    if-nez v13, :cond_12

    .line 559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->processXspeedBuf:[F

    move-object/from16 v20, v0

    aget v20, v20, v8

    move/from16 v0, v20

    neg-float v0, v0

    move/from16 v20, v0

    const v21, 0x3e4ccccd    # 0.2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->processXspeedBuf:[F

    move-object/from16 v22, v0

    aget v22, v22, v8

    sub-float v22, v6, v22

    mul-float v21, v21, v22

    sub-float v21, p1, v21

    cmpl-float v20, v20, v21

    if-lez v20, :cond_f

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->processXspeedBuf:[F

    move-object/from16 v20, v0

    aget v17, v20, v8

    .line 562
    move/from16 v16, v8

    .line 563
    const/4 v13, 0x1

    .line 512
    :cond_f
    :goto_7
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 530
    :cond_10
    const/4 v3, 0x0

    goto :goto_5

    .line 539
    :cond_11
    const/4 v14, 0x0

    goto :goto_6

    .line 567
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->processXspeedBuf:[F

    move-object/from16 v20, v0

    aget v20, v20, v8

    cmpl-float v20, v20, v17

    if-lez v20, :cond_1b

    .line 569
    const/4 v15, 0x1

    .line 570
    const/4 v4, 0x0

    .line 571
    const/4 v13, 0x0

    .line 572
    sub-float v20, v6, v17

    const/high16 v21, 0x40000000    # 2.0f

    mul-float v21, v21, p1

    cmpg-float v20, v20, v21

    if-gez v20, :cond_14

    .line 574
    const/4 v12, 0x1

    .line 575
    const-string v20, "ShakeDetectServiceTwo"

    const-string v21, " extreme speed threshold is not satify 1"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    :cond_13
    :goto_8
    if-eqz v15, :cond_f

    .line 626
    if-nez v13, :cond_1c

    .line 628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->processXspeedBuf:[F

    move-object/from16 v20, v0

    aget v20, v20, v8

    const v21, 0x3e4ccccd    # 0.2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->processXspeedBuf:[F

    move-object/from16 v22, v0

    aget v22, v22, v8

    sub-float v22, v22, v17

    mul-float v21, v21, v22

    sub-float v21, p1, v21

    cmpl-float v20, v20, v21

    if-lez v20, :cond_f

    .line 630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->processXspeedBuf:[F

    move-object/from16 v20, v0

    aget v6, v20, v8

    .line 631
    move v5, v8

    .line 632
    const/4 v13, 0x1

    goto :goto_7

    .line 579
    :cond_14
    const/16 v20, 0x1

    move/from16 v0, v20

    if-le v12, v0, :cond_16

    .line 581
    sub-float v20, v17, v11

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v20

    const v21, 0x3e4ccccd    # 0.2f

    sub-float v22, v6, v17

    mul-float v21, v21, v22

    cmpl-float v20, v20, v21

    if-lez v20, :cond_15

    .line 583
    const/4 v12, 0x1

    .line 584
    move/from16 v11, v17

    .line 585
    goto :goto_7

    .line 587
    :cond_15
    move/from16 v11, v17

    .line 589
    :cond_16
    sub-int v20, v16, v5

    move/from16 v0, v20

    move/from16 v1, p2

    if-ge v0, v1, :cond_1a

    .line 591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->processXspeedBuf:[F

    move-object/from16 v20, v0

    aget v19, v20, v16

    .line 592
    move v9, v5

    .local v9, "j":I
    :goto_9
    move/from16 v0, v16

    if-ge v9, v0, :cond_18

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->processXspeedBuf:[F

    move-object/from16 v20, v0

    aget v20, v20, v9

    add-float v21, v6, v17

    const/high16 v22, 0x40000000    # 2.0f

    div-float v21, v21, v22

    sub-float v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v20

    add-float v21, v6, v17

    const/high16 v22, 0x40000000    # 2.0f

    div-float v21, v21, v22

    sub-float v21, v19, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v21

    cmpg-float v20, v20, v21

    if-gez v20, :cond_17

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->processXspeedBuf:[F

    move-object/from16 v20, v0

    aget v19, v20, v9

    .line 597
    move/from16 v18, v9

    .line 592
    :cond_17
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 600
    :cond_18
    sub-int v20, v16, v18

    move/from16 v0, v20

    move/from16 v1, p3

    if-ge v0, v1, :cond_19

    sub-int v20, v18, v5

    move/from16 v0, v20

    move/from16 v1, p3

    if-ge v0, v1, :cond_19

    .line 602
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_8

    .line 606
    :cond_19
    const/4 v12, 0x1

    .line 607
    const-string v20, "ShakeDetectServiceTwo"

    const-string v21, " extreme speed to zero speed num interval is not satify 1"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 612
    .end local v9    # "j":I
    :cond_1a
    const/4 v12, 0x1

    .line 613
    const-string v20, "ShakeDetectServiceTwo"

    const-string v21, " extreme speed num interval is not satify 1"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 619
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->processXspeedBuf:[F

    move-object/from16 v20, v0

    aget v17, v20, v8

    .line 620
    move/from16 v16, v8

    .line 621
    goto/16 :goto_7

    .line 636
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->processXspeedBuf:[F

    move-object/from16 v20, v0

    aget v20, v20, v8

    cmpg-float v20, v20, v6

    if-gez v20, :cond_24

    .line 638
    const/4 v4, 0x1

    .line 639
    const/4 v15, 0x0

    .line 640
    const/4 v13, 0x0

    .line 641
    sub-float v20, v6, v17

    const/high16 v21, 0x40000000    # 2.0f

    mul-float v21, v21, p1

    cmpg-float v20, v20, v21

    if-gez v20, :cond_1d

    .line 643
    const/4 v12, 0x1

    .line 644
    const-string v20, "ShakeDetectServiceTwo"

    const-string v21, " extreme speed threshold is not satify 2 "

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 648
    :cond_1d
    const/16 v20, 0x1

    move/from16 v0, v20

    if-le v12, v0, :cond_1f

    .line 650
    sub-float v20, v6, v10

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v20

    const v21, 0x3e4ccccd    # 0.2f

    sub-float v22, v6, v17

    mul-float v21, v21, v22

    cmpl-float v20, v20, v21

    if-lez v20, :cond_1e

    .line 652
    const/4 v12, 0x1

    .line 653
    move v10, v6

    .line 654
    goto/16 :goto_7

    .line 656
    :cond_1e
    move v10, v6

    .line 658
    :cond_1f
    sub-int v20, v5, v16

    move/from16 v0, v20

    move/from16 v1, p2

    if-ge v0, v1, :cond_23

    .line 660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->processXspeedBuf:[F

    move-object/from16 v20, v0

    aget v19, v20, v5

    .line 661
    move/from16 v9, v16

    .restart local v9    # "j":I
    :goto_a
    if-ge v9, v5, :cond_21

    .line 663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->processXspeedBuf:[F

    move-object/from16 v20, v0

    aget v20, v20, v9

    add-float v21, v6, v17

    const/high16 v22, 0x40000000    # 2.0f

    div-float v21, v21, v22

    sub-float v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v20

    add-float v21, v6, v17

    const/high16 v22, 0x40000000    # 2.0f

    div-float v21, v21, v22

    sub-float v21, v19, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v21

    cmpg-float v20, v20, v21

    if-gez v20, :cond_20

    .line 665
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->processXspeedBuf:[F

    move-object/from16 v20, v0

    aget v19, v20, v9

    .line 666
    move/from16 v18, v9

    .line 661
    :cond_20
    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    .line 669
    :cond_21
    sub-int v20, v5, v18

    move/from16 v0, v20

    move/from16 v1, p3

    if-ge v0, v1, :cond_22

    sub-int v20, v18, v16

    move/from16 v0, v20

    move/from16 v1, p3

    if-ge v0, v1, :cond_22

    .line 671
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_7

    .line 675
    :cond_22
    const/4 v12, 0x1

    .line 676
    const-string v20, "ShakeDetectServiceTwo"

    const-string v21, " extreme speed to zero speed num interval is not satify 2"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 681
    .end local v9    # "j":I
    :cond_23
    const/4 v12, 0x1

    .line 682
    const-string v20, "ShakeDetectServiceTwo"

    const-string v21, " extreme speed num interval is not satify 2"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 688
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->processXspeedBuf:[F

    move-object/from16 v20, v0

    aget v6, v20, v8

    .line 689
    move v5, v8

    goto/16 :goto_7

    .line 708
    :cond_25
    # getter for: Lcom/vivo/services/motion/ShakeDetectServiceTwo;->Debug:Z
    invoke-static {}, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->access$1200()Z

    move-result v20

    if-eqz v20, :cond_4

    .line 710
    const-string v20, "ShakeDetectServiceTwo"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " --shakeCount:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private staticJudge(FF)V
    .locals 6
    .param p1, "lastXvalue"    # F
    .param p2, "presentXvalue"    # F

    .prologue
    const/4 v5, 0x0

    .line 717
    const/4 v1, 0x0

    .line 719
    .local v1, "staticCount":I
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 721
    const/16 v0, 0x9

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 723
    iget-object v2, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->staticInfoBuf:[I

    iget-object v3, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->staticInfoBuf:[I

    add-int/lit8 v4, v0, -0x1

    aget v3, v3, v4

    aput v3, v2, v0

    .line 721
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 725
    :cond_0
    iget-object v2, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->staticInfoBuf:[I

    const/4 v3, 0x1

    aput v3, v2, v5

    .line 735
    :goto_1
    const/4 v0, 0x0

    :goto_2
    const/16 v2, 0xa

    if-ge v0, v2, :cond_3

    .line 737
    iget-object v2, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->staticInfoBuf:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    .line 735
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 729
    .end local v0    # "i":I
    :cond_1
    const/16 v0, 0x9

    .restart local v0    # "i":I
    :goto_3
    if-lez v0, :cond_2

    .line 731
    iget-object v2, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->staticInfoBuf:[I

    iget-object v3, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->staticInfoBuf:[I

    add-int/lit8 v4, v0, -0x1

    aget v3, v3, v4

    aput v3, v2, v0

    .line 729
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 733
    :cond_2
    iget-object v2, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->staticInfoBuf:[I

    aput v5, v2, v5

    goto :goto_1

    .line 739
    :cond_3
    # getter for: Lcom/vivo/services/motion/ShakeDetectServiceTwo;->Debug:Z
    invoke-static {}, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->access$1200()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 741
    const-string v2, "ShakeDetectServiceTwo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " staticCount:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    :cond_4
    const/4 v2, 0x5

    if-le v1, v2, :cond_5

    .line 745
    iget-object v2, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->this$0:Lcom/vivo/services/motion/ShakeDetectServiceTwo;

    # setter for: Lcom/vivo/services/motion/ShakeDetectServiceTwo;->trigerFlag:Z
    invoke-static {v2, v5}, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->access$002(Lcom/vivo/services/motion/ShakeDetectServiceTwo;Z)Z

    .line 746
    invoke-virtual {p0}, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->reset()V

    .line 748
    :cond_5
    return-void
.end method

.method private tiltModeJudge()I
    .locals 3

    .prologue
    .line 898
    const/4 v0, 0x1

    .line 899
    .local v0, "result":I
    iget-object v1, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->postureData:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 901
    const/4 v0, 0x0

    .line 907
    :goto_0
    return v0

    .line 905
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private troughJudge()V
    .locals 0

    .prologue
    .line 394
    return-void
.end method


# virtual methods
.method public getDegree(FF)I
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v3, 0x0

    .line 399
    cmpl-float v2, p1, v3

    if-nez v2, :cond_0

    cmpl-float v2, p2, v3

    if-nez v2, :cond_0

    .line 401
    const/4 v2, -0x1

    .line 410
    :goto_0
    return v2

    .line 404
    :cond_0
    float-to-double v2, p2

    float-to-double v4, p1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    .line 405
    .local v0, "angle":D
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    .line 406
    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_1

    .line 408
    const-wide v2, 0x4076800000000000L    # 360.0

    add-double/2addr v0, v2

    .line 410
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    goto :goto_0
.end method

.method public reset()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 278
    iput v4, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->phoneMode:I

    .line 279
    iput v4, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->extremeCount:I

    .line 281
    iput v3, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->lastXvalue:F

    .line 282
    iput v3, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->presentXvalue:F

    .line 284
    iput-boolean v2, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->firstFlag:Z

    .line 285
    iput-boolean v2, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->staticState:Z

    .line 286
    iput-boolean v4, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->shakeState:Z

    .line 287
    iput-boolean v4, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->shakeTag:Z

    .line 288
    iput-boolean v4, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->shakeResult:Z

    .line 290
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x3c

    if-ge v0, v2, :cond_1

    .line 292
    iget-object v2, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->xlinearaccBuf:[F

    aput v3, v2, v0

    .line 293
    iget-object v2, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->originalXspeedBuf:[F

    aput v3, v2, v0

    .line 294
    iget-object v2, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->processXspeedBuf:[F

    aput v3, v2, v0

    .line 295
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v5, :cond_0

    .line 297
    iget-object v2, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->gravityBuf:[[F

    aget-object v2, v2, v1

    aput v3, v2, v0

    .line 295
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 290
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 301
    .end local v1    # "j":I
    :cond_1
    const/4 v0, 0x0

    :goto_2
    const/16 v2, 0xa

    if-ge v0, v2, :cond_2

    .line 303
    iget-object v2, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->staticInfoBuf:[I

    aput v4, v2, v0

    .line 301
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 306
    :cond_2
    const/4 v0, 0x0

    :goto_3
    const/4 v2, 0x7

    if-ge v0, v2, :cond_4

    .line 308
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_4
    if-ge v1, v5, :cond_3

    .line 310
    iget-object v2, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->postureBuf:[[F

    aget-object v2, v2, v1

    aput v3, v2, v0

    .line 308
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 306
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 313
    .end local v1    # "j":I
    :cond_4
    return-void
.end method

.method public transformDegree(I)I
    .locals 1
    .param p1, "degree"    # I

    .prologue
    .line 414
    if-ltz p1, :cond_1

    const/16 v0, 0x5a

    if-ge p1, v0, :cond_1

    .line 415
    rsub-int/lit8 p1, p1, 0x5a

    .line 418
    :goto_0
    const/16 v0, 0x168

    if-ne p1, v0, :cond_0

    .line 419
    const/4 p1, 0x0

    .line 421
    :cond_0
    return p1

    .line 417
    :cond_1
    rsub-int p1, p1, 0x1c2

    goto :goto_0
.end method
