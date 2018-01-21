.class public final Lcom/vivo/services/motion/ShakeDetectService;
.super Ljava/lang/Object;
.source "ShakeDetectService.java"

# interfaces
.implements Lcom/vivo/services/motion/IMotionRecognitionService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;,
        Lcom/vivo/services/motion/ShakeDetectService$ShakeDetectServiceHandler;,
        Lcom/vivo/services/motion/ShakeDetectService$SensorData;
    }
.end annotation


# static fields
.field private static final DATA_NUM:I = 0x28

.field private static DBG:Z = false

.field private static final MM_NUM:I = 0x1

.field private static final MM_THRESHOLD:F = 20.0f

.field private static final MSG_SHAKE_DET_START:I = 0x1

.field private static final MSG_SHAKE_DET_STOP:I = 0x3

.field private static final MSG_SHAKE_DET_SWITCH:I = 0x2

.field private static final MSG_SHAKE_DET_TRIGER:I = 0x4

.field private static final STATIC_NUM:I = 0x3c

.field private static final STATIC_THRESHOLD:F = 5.0f

.field private static final TAG:Ljava/lang/String; = "ShakeDetectService"

.field private static final THRESHOLD:F = 8.0f

.field private static mSingleShakeDetectService:Lcom/vivo/services/motion/ShakeDetectService;


# instance fields
.field private accDataTime:J

.field private accTime:J

.field private enableMode_0:Z

.field private enableMode_1:Z

.field private flag:Z

.field private flagX:Z

.field private isShakeModeWorking:Z

.field private judgeflag:Z

.field private lastXvalue:F

.field private mAccelerometerListener:Landroid/hardware/SensorEventListener;

.field private mAccelerometerListener1:Landroid/hardware/SensorEventListener;

.field private mCallBackHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mData:[Lcom/vivo/services/motion/ShakeDetectService$SensorData;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mServiceHandler:Landroid/os/Handler;

.field private mShakeModeAnalyzer:Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;

.field private numflag:Z

.field private presentXvalue:F

.field private snum:I

.field private staticnum:I

.field private staticstate:Z

.field private tileflag:Z

.field private tiltnum0:I

.field private tiltnum1:I

.field private timeCount:I

.field private timeMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/vivo/services/motion/ShakeDetectService;

    invoke-direct {v0}, Lcom/vivo/services/motion/ShakeDetectService;-><init>()V

    sput-object v0, Lcom/vivo/services/motion/ShakeDetectService;->mSingleShakeDetectService:Lcom/vivo/services/motion/ShakeDetectService;

    .line 38
    const/4 v0, 0x1

    sput-boolean v0, Lcom/vivo/services/motion/ShakeDetectService;->DBG:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 714
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-boolean v6, p0, Lcom/vivo/services/motion/ShakeDetectService;->isShakeModeWorking:Z

    .line 34
    iput-object v0, p0, Lcom/vivo/services/motion/ShakeDetectService;->mCallBackHandler:Landroid/os/Handler;

    .line 35
    iput-object v0, p0, Lcom/vivo/services/motion/ShakeDetectService;->mServiceHandler:Landroid/os/Handler;

    .line 36
    iput-object v0, p0, Lcom/vivo/services/motion/ShakeDetectService;->mContext:Landroid/content/Context;

    .line 44
    const/high16 v0, 0x40c00000    # 6.0f

    iput v0, p0, Lcom/vivo/services/motion/ShakeDetectService;->lastXvalue:F

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/services/motion/ShakeDetectService;->presentXvalue:F

    .line 51
    iput v6, p0, Lcom/vivo/services/motion/ShakeDetectService;->snum:I

    .line 52
    iput v6, p0, Lcom/vivo/services/motion/ShakeDetectService;->staticnum:I

    .line 53
    iput v6, p0, Lcom/vivo/services/motion/ShakeDetectService;->tiltnum0:I

    .line 54
    iput v6, p0, Lcom/vivo/services/motion/ShakeDetectService;->tiltnum1:I

    .line 55
    iput-boolean v3, p0, Lcom/vivo/services/motion/ShakeDetectService;->tileflag:Z

    .line 63
    iput-boolean v6, p0, Lcom/vivo/services/motion/ShakeDetectService;->flagX:Z

    .line 66
    iput-boolean v6, p0, Lcom/vivo/services/motion/ShakeDetectService;->flag:Z

    .line 67
    iput-boolean v3, p0, Lcom/vivo/services/motion/ShakeDetectService;->numflag:Z

    .line 68
    iput-boolean v3, p0, Lcom/vivo/services/motion/ShakeDetectService;->judgeflag:Z

    .line 69
    iput-boolean v6, p0, Lcom/vivo/services/motion/ShakeDetectService;->timeMode:Z

    .line 70
    iput-boolean v6, p0, Lcom/vivo/services/motion/ShakeDetectService;->enableMode_0:Z

    .line 71
    iput-boolean v6, p0, Lcom/vivo/services/motion/ShakeDetectService;->enableMode_1:Z

    .line 72
    iput v6, p0, Lcom/vivo/services/motion/ShakeDetectService;->timeCount:I

    .line 73
    iput-wide v4, p0, Lcom/vivo/services/motion/ShakeDetectService;->accTime:J

    .line 74
    iput-wide v4, p0, Lcom/vivo/services/motion/ShakeDetectService;->accDataTime:J

    .line 76
    iput-boolean v6, p0, Lcom/vivo/services/motion/ShakeDetectService;->staticstate:Z

    .line 152
    new-instance v0, Lcom/vivo/services/motion/ShakeDetectService$1;

    invoke-direct {v0, p0}, Lcom/vivo/services/motion/ShakeDetectService$1;-><init>(Lcom/vivo/services/motion/ShakeDetectService;)V

    iput-object v0, p0, Lcom/vivo/services/motion/ShakeDetectService;->mAccelerometerListener:Landroid/hardware/SensorEventListener;

    .line 169
    new-instance v0, Lcom/vivo/services/motion/ShakeDetectService$2;

    invoke-direct {v0, p0}, Lcom/vivo/services/motion/ShakeDetectService$2;-><init>(Lcom/vivo/services/motion/ShakeDetectService;)V

    iput-object v0, p0, Lcom/vivo/services/motion/ShakeDetectService;->mAccelerometerListener1:Landroid/hardware/SensorEventListener;

    .line 715
    new-instance v0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;

    const/16 v2, 0x28

    const/high16 v4, 0x41a00000    # 20.0f

    const/high16 v5, 0x40a00000    # 5.0f

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;-><init>(Lcom/vivo/services/motion/ShakeDetectService;IIFF)V

    iput-object v0, p0, Lcom/vivo/services/motion/ShakeDetectService;->mShakeModeAnalyzer:Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;

    .line 716
    iput v6, p0, Lcom/vivo/services/motion/ShakeDetectService;->snum:I

    .line 717
    iput v6, p0, Lcom/vivo/services/motion/ShakeDetectService;->staticnum:I

    .line 718
    iput-boolean v6, p0, Lcom/vivo/services/motion/ShakeDetectService;->staticstate:Z

    .line 719
    iget-object v0, p0, Lcom/vivo/services/motion/ShakeDetectService;->mShakeModeAnalyzer:Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;

    invoke-virtual {v0}, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->reset()V

    .line 720
    iget-object v0, p0, Lcom/vivo/services/motion/ShakeDetectService;->mShakeModeAnalyzer:Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;

    iput-boolean v6, v0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->wavestate:Z

    .line 721
    return-void
.end method

.method private WaveAnalysis(FFF)V
    .locals 10
    .param p1, "xValue"    # F
    .param p2, "yValue"    # F
    .param p3, "zValue"    # F

    .prologue
    .line 201
    move v2, p1

    .line 204
    .local v2, "presentXvalue":F
    iget-boolean v3, p0, Lcom/vivo/services/motion/ShakeDetectService;->flag:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/vivo/services/motion/ShakeDetectService;->mShakeModeAnalyzer:Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;

    iget-boolean v3, v3, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->wavestate:Z

    if-nez v3, :cond_4

    .line 207
    iget v3, p0, Lcom/vivo/services/motion/ShakeDetectService;->lastXvalue:F

    const/high16 v4, 0x41000000    # 8.0f

    add-float/2addr v3, v4

    cmpl-float v3, v2, v3

    if-gtz v3, :cond_0

    iget v3, p0, Lcom/vivo/services/motion/ShakeDetectService;->lastXvalue:F

    const/high16 v4, 0x41000000    # 8.0f

    sub-float/2addr v3, v4

    cmpg-float v3, v2, v3

    if-gez v3, :cond_10

    :cond_0
    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Lcom/vivo/services/motion/ShakeDetectService;->flagX:Z

    .line 210
    float-to-double v4, v2

    iget v3, p0, Lcom/vivo/services/motion/ShakeDetectService;->lastXvalue:F

    float-to-double v6, v3

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    add-double/2addr v6, v8

    cmpl-double v3, v4, v6

    if-gtz v3, :cond_1

    float-to-double v4, v2

    iget v3, p0, Lcom/vivo/services/motion/ShakeDetectService;->lastXvalue:F

    float-to-double v6, v3

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    sub-double/2addr v6, v8

    cmpg-double v3, v4, v6

    if-gez v3, :cond_2

    .line 212
    :cond_1
    iget-boolean v3, p0, Lcom/vivo/services/motion/ShakeDetectService;->enableMode_1:Z

    if-nez v3, :cond_2

    .line 214
    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/vivo/services/motion/ShakeDetectService;->enableAccelerometer(ZI)V

    .line 217
    :cond_2
    iget-boolean v3, p0, Lcom/vivo/services/motion/ShakeDetectService;->timeMode:Z

    if-eqz v3, :cond_4

    .line 219
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/vivo/services/motion/ShakeDetectService;->timeMode:Z

    .line 220
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 221
    .local v1, "msg":Landroid/os/Message;
    const/4 v3, 0x3

    iput v3, v1, Landroid/os/Message;->what:I

    .line 222
    iget-object v3, p0, Lcom/vivo/services/motion/ShakeDetectService;->mServiceHandler:Landroid/os/Handler;

    if-eqz v3, :cond_3

    .line 224
    iget-object v3, p0, Lcom/vivo/services/motion/ShakeDetectService;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 226
    :cond_3
    iget-object v3, p0, Lcom/vivo/services/motion/ShakeDetectService;->mServiceHandler:Landroid/os/Handler;

    if-eqz v3, :cond_4

    .line 228
    iget-object v3, p0, Lcom/vivo/services/motion/ShakeDetectService;->mServiceHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    const-wide/16 v6, 0x64

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 236
    .end local v1    # "msg":Landroid/os/Message;
    :cond_4
    iget-boolean v3, p0, Lcom/vivo/services/motion/ShakeDetectService;->flagX:Z

    if-eqz v3, :cond_5

    .line 237
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/vivo/services/motion/ShakeDetectService;->flag:Z

    .line 238
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/vivo/services/motion/ShakeDetectService;->flagX:Z

    .line 239
    const-string v3, "ShakeDetectService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "flag:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/vivo/services/motion/ShakeDetectService;->flag:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "flagX:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/vivo/services/motion/ShakeDetectService;->flagX:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_5
    iget-boolean v3, p0, Lcom/vivo/services/motion/ShakeDetectService;->flag:Z

    if-eqz v3, :cond_6

    .line 244
    iget-object v3, p0, Lcom/vivo/services/motion/ShakeDetectService;->mShakeModeAnalyzer:Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;

    invoke-virtual {v3, v2}, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->eat(F)V

    .line 245
    const-string v3, "ShakeDetectService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "xValue: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " yValue: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " zValue: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mShakeModeAnalyzer.xData[mShakeModeAnalyzer.dataNum-1]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/vivo/services/motion/ShakeDetectService;->mShakeModeAnalyzer:Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;

    iget-object v5, v5, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->xData:[F

    iget-object v6, p0, Lcom/vivo/services/motion/ShakeDetectService;->mShakeModeAnalyzer:Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;

    iget v6, v6, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->dataNum:I

    add-int/lit8 v6, v6, -0x1

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_6
    iget-object v3, p0, Lcom/vivo/services/motion/ShakeDetectService;->mShakeModeAnalyzer:Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;

    iget-boolean v3, v3, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->wavestate:Z

    if-eqz v3, :cond_c

    .line 249
    const-string v3, "ShakeDetectService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "xValue1: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " yValue: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget v3, p0, Lcom/vivo/services/motion/ShakeDetectService;->snum:I

    const/16 v4, 0x3c

    if-gt v3, v4, :cond_12

    .line 252
    iget v3, p0, Lcom/vivo/services/motion/ShakeDetectService;->snum:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/vivo/services/motion/ShakeDetectService;->snum:I

    .line 253
    iget v3, p0, Lcom/vivo/services/motion/ShakeDetectService;->lastXvalue:F

    sub-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x40400000    # 3.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_11

    const/high16 v3, -0x3f000000    # -8.0f

    cmpl-float v3, p2, v3

    if-lez v3, :cond_11

    .line 254
    iget v3, p0, Lcom/vivo/services/motion/ShakeDetectService;->staticnum:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/vivo/services/motion/ShakeDetectService;->staticnum:I

    .line 257
    :goto_1
    const/high16 v3, -0x3fc00000    # -3.0f

    cmpg-float v3, p1, v3

    if-gez v3, :cond_7

    .line 258
    iget v3, p0, Lcom/vivo/services/motion/ShakeDetectService;->tiltnum0:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/vivo/services/motion/ShakeDetectService;->tiltnum0:I

    .line 261
    :cond_7
    const/high16 v3, 0x40400000    # 3.0f

    cmpl-float v3, p1, v3

    if-lez v3, :cond_8

    .line 262
    iget v3, p0, Lcom/vivo/services/motion/ShakeDetectService;->tiltnum1:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/vivo/services/motion/ShakeDetectService;->tiltnum1:I

    .line 265
    :cond_8
    const-string v3, "ShakeDetectService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tiltnum0:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/vivo/services/motion/ShakeDetectService;->tiltnum0:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "tiltnum1:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/vivo/services/motion/ShakeDetectService;->tiltnum1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget v3, p0, Lcom/vivo/services/motion/ShakeDetectService;->tiltnum0:I

    const/16 v4, 0xc

    if-lt v3, v4, :cond_9

    iget v3, p0, Lcom/vivo/services/motion/ShakeDetectService;->tiltnum0:I

    iget v4, p0, Lcom/vivo/services/motion/ShakeDetectService;->tiltnum1:I

    if-le v3, v4, :cond_9

    iget-boolean v3, p0, Lcom/vivo/services/motion/ShakeDetectService;->tileflag:Z

    if-eqz v3, :cond_9

    .line 268
    iget-object v3, p0, Lcom/vivo/services/motion/ShakeDetectService;->mShakeModeAnalyzer:Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;

    const/4 v4, 0x0

    # setter for: Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->value:I
    invoke-static {v3, v4}, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->access$902(Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;I)I

    .line 269
    const/4 v3, 0x0

    iput v3, p0, Lcom/vivo/services/motion/ShakeDetectService;->tiltnum0:I

    .line 270
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/vivo/services/motion/ShakeDetectService;->tileflag:Z

    .line 272
    :cond_9
    iget v3, p0, Lcom/vivo/services/motion/ShakeDetectService;->tiltnum1:I

    const/16 v4, 0xc

    if-lt v3, v4, :cond_a

    iget v3, p0, Lcom/vivo/services/motion/ShakeDetectService;->tiltnum1:I

    iget v4, p0, Lcom/vivo/services/motion/ShakeDetectService;->tiltnum0:I

    if-le v3, v4, :cond_a

    iget-boolean v3, p0, Lcom/vivo/services/motion/ShakeDetectService;->tileflag:Z

    if-eqz v3, :cond_a

    .line 274
    iget-object v3, p0, Lcom/vivo/services/motion/ShakeDetectService;->mShakeModeAnalyzer:Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;

    const/4 v4, 0x1

    # setter for: Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->value:I
    invoke-static {v3, v4}, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->access$902(Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;I)I

    .line 275
    const/4 v3, 0x0

    iput v3, p0, Lcom/vivo/services/motion/ShakeDetectService;->tiltnum1:I

    .line 276
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/vivo/services/motion/ShakeDetectService;->tileflag:Z

    .line 278
    :cond_a
    iget v3, p0, Lcom/vivo/services/motion/ShakeDetectService;->staticnum:I

    const/16 v4, 0xa

    if-lt v3, v4, :cond_c

    .line 279
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/vivo/services/motion/ShakeDetectService;->staticstate:Z

    .line 280
    const/4 v3, 0x0

    iput v3, p0, Lcom/vivo/services/motion/ShakeDetectService;->snum:I

    .line 281
    const/4 v3, 0x0

    iput v3, p0, Lcom/vivo/services/motion/ShakeDetectService;->staticnum:I

    .line 282
    const/4 v3, 0x0

    iput v3, p0, Lcom/vivo/services/motion/ShakeDetectService;->tiltnum0:I

    .line 283
    const/4 v3, 0x0

    iput v3, p0, Lcom/vivo/services/motion/ShakeDetectService;->tiltnum1:I

    .line 284
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/vivo/services/motion/ShakeDetectService;->tileflag:Z

    .line 285
    const-string v3, "ShakeDetectService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "staticstate:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/vivo/services/motion/ShakeDetectService;->staticstate:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mShakeModeAnalyzer.value:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/vivo/services/motion/ShakeDetectService;->mShakeModeAnalyzer:Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;

    # getter for: Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->value:I
    invoke-static {v5}, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->access$900(Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v3, p0, Lcom/vivo/services/motion/ShakeDetectService;->mShakeModeAnalyzer:Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;

    # getter for: Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->value:I
    invoke-static {v3}, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->access$900(Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;)I

    move-result v3

    if-gez v3, :cond_b

    .line 288
    iget-object v3, p0, Lcom/vivo/services/motion/ShakeDetectService;->mShakeModeAnalyzer:Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;

    const/4 v4, 0x1

    # setter for: Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->value:I
    invoke-static {v3, v4}, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->access$902(Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;I)I

    .line 290
    :cond_b
    iget-object v3, p0, Lcom/vivo/services/motion/ShakeDetectService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "bbk_application_settings"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_c

    .line 292
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 293
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "android.action.multifloatingtask.showsmallwindowvalue"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    const-string v3, "showsmallwindowvalue"

    iget-object v4, p0, Lcom/vivo/services/motion/ShakeDetectService;->mShakeModeAnalyzer:Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;

    # getter for: Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->value:I
    invoke-static {v4}, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->access$900(Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 295
    iget-object v3, p0, Lcom/vivo/services/motion/ShakeDetectService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 296
    const-string v3, "ShakeDetectService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "++++++++++++++++value:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/vivo/services/motion/ShakeDetectService;->mShakeModeAnalyzer:Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;

    # getter for: Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->value:I
    invoke-static {v5}, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->access$900(Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_c
    :goto_2
    iput v2, p0, Lcom/vivo/services/motion/ShakeDetectService;->lastXvalue:F

    .line 312
    iget-boolean v3, p0, Lcom/vivo/services/motion/ShakeDetectService;->staticstate:Z

    if-eqz v3, :cond_e

    .line 313
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/vivo/services/motion/ShakeDetectService;->staticstate:Z

    .line 314
    iget-object v3, p0, Lcom/vivo/services/motion/ShakeDetectService;->mShakeModeAnalyzer:Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->wavestate:Z

    .line 315
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 316
    .restart local v1    # "msg":Landroid/os/Message;
    const/4 v3, 0x4

    iput v3, v1, Landroid/os/Message;->what:I

    .line 317
    iget-object v3, p0, Lcom/vivo/services/motion/ShakeDetectService;->mServiceHandler:Landroid/os/Handler;

    if-eqz v3, :cond_d

    .line 319
    iget-object v3, p0, Lcom/vivo/services/motion/ShakeDetectService;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 321
    :cond_d
    const-string v3, "ShakeDetectService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "staticstate:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/vivo/services/motion/ShakeDetectService;->staticstate:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    .end local v1    # "msg":Landroid/os/Message;
    :cond_e
    iget-object v3, p0, Lcom/vivo/services/motion/ShakeDetectService;->mShakeModeAnalyzer:Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;

    iget-object v3, v3, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->xData:[F

    iget-object v4, p0, Lcom/vivo/services/motion/ShakeDetectService;->mShakeModeAnalyzer:Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;

    iget v4, v4, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->dataNum:I

    add-int/lit8 v4, v4, -0x1

    aget v3, v3, v4

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_f

    .line 324
    iget-object v3, p0, Lcom/vivo/services/motion/ShakeDetectService;->mShakeModeAnalyzer:Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;

    invoke-virtual {v3}, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->reset()V

    .line 325
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/vivo/services/motion/ShakeDetectService;->flag:Z

    .line 327
    :cond_f
    return-void

    .line 207
    :cond_10
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 256
    :cond_11
    const/4 v3, 0x0

    iput v3, p0, Lcom/vivo/services/motion/ShakeDetectService;->staticnum:I

    goto/16 :goto_1

    .line 301
    :cond_12
    const/4 v3, 0x0

    iput v3, p0, Lcom/vivo/services/motion/ShakeDetectService;->snum:I

    .line 302
    const/4 v3, 0x0

    iput v3, p0, Lcom/vivo/services/motion/ShakeDetectService;->staticnum:I

    .line 303
    const/4 v3, 0x0

    iput v3, p0, Lcom/vivo/services/motion/ShakeDetectService;->tiltnum0:I

    .line 304
    const/4 v3, 0x0

    iput v3, p0, Lcom/vivo/services/motion/ShakeDetectService;->tiltnum1:I

    .line 305
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/vivo/services/motion/ShakeDetectService;->tileflag:Z

    .line 306
    iget-object v3, p0, Lcom/vivo/services/motion/ShakeDetectService;->mShakeModeAnalyzer:Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->wavestate:Z

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/vivo/services/motion/ShakeDetectService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/ShakeDetectService;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/vivo/services/motion/ShakeDetectService;->enableMode_0:Z

    return v0
.end method

.method static synthetic access$100(Lcom/vivo/services/motion/ShakeDetectService;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/motion/ShakeDetectService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/vivo/services/motion/ShakeDetectService;->enableAccelerometer(ZI)V

    return-void
.end method

.method static synthetic access$1002(Lcom/vivo/services/motion/ShakeDetectService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/motion/ShakeDetectService;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/vivo/services/motion/ShakeDetectService;->numflag:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/vivo/services/motion/ShakeDetectService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/ShakeDetectService;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/vivo/services/motion/ShakeDetectService;->judgeflag:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/vivo/services/motion/ShakeDetectService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/motion/ShakeDetectService;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/vivo/services/motion/ShakeDetectService;->judgeflag:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/vivo/services/motion/ShakeDetectService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/ShakeDetectService;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/vivo/services/motion/ShakeDetectService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vivo/services/motion/ShakeDetectService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/ShakeDetectService;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/vivo/services/motion/ShakeDetectService;->enableMode_1:Z

    return v0
.end method

.method static synthetic access$300(Lcom/vivo/services/motion/ShakeDetectService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/ShakeDetectService;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/vivo/services/motion/ShakeDetectService;->mCallBackHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vivo/services/motion/ShakeDetectService;)J
    .locals 2
    .param p0, "x0"    # Lcom/vivo/services/motion/ShakeDetectService;

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/vivo/services/motion/ShakeDetectService;->accDataTime:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/vivo/services/motion/ShakeDetectService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/ShakeDetectService;
    .param p1, "x1"    # J

    .prologue
    .line 27
    iput-wide p1, p0, Lcom/vivo/services/motion/ShakeDetectService;->accDataTime:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/vivo/services/motion/ShakeDetectService;FFF)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/motion/ShakeDetectService;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # F

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/vivo/services/motion/ShakeDetectService;->WaveAnalysis(FFF)V

    return-void
.end method

.method static synthetic access$600(Lcom/vivo/services/motion/ShakeDetectService;)J
    .locals 2
    .param p0, "x0"    # Lcom/vivo/services/motion/ShakeDetectService;

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/vivo/services/motion/ShakeDetectService;->accTime:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/vivo/services/motion/ShakeDetectService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/ShakeDetectService;
    .param p1, "x1"    # J

    .prologue
    .line 27
    iput-wide p1, p0, Lcom/vivo/services/motion/ShakeDetectService;->accTime:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/vivo/services/motion/ShakeDetectService;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/ShakeDetectService;

    .prologue
    .line 27
    iget v0, p0, Lcom/vivo/services/motion/ShakeDetectService;->timeCount:I

    return v0
.end method

.method static synthetic access$702(Lcom/vivo/services/motion/ShakeDetectService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/motion/ShakeDetectService;
    .param p1, "x1"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/vivo/services/motion/ShakeDetectService;->timeCount:I

    return p1
.end method

.method static synthetic access$802(Lcom/vivo/services/motion/ShakeDetectService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/motion/ShakeDetectService;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/vivo/services/motion/ShakeDetectService;->timeMode:Z

    return p1
.end method

.method private enableAccelerometer(ZI)V
    .locals 6
    .param p1, "enable"    # Z
    .param p2, "mode"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 725
    if-eqz p1, :cond_2

    .line 727
    if-nez p2, :cond_1

    .line 729
    iget-object v0, p0, Lcom/vivo/services/motion/ShakeDetectService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 731
    iget-object v0, p0, Lcom/vivo/services/motion/ShakeDetectService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/vivo/services/motion/ShakeDetectService;->mAccelerometerListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/vivo/services/motion/ShakeDetectService;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    const v3, 0x1046b

    iget-object v4, p0, Lcom/vivo/services/motion/ShakeDetectService;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 732
    iput-boolean v5, p0, Lcom/vivo/services/motion/ShakeDetectService;->enableMode_0:Z

    .line 763
    :cond_0
    :goto_0
    return-void

    .line 735
    :cond_1
    if-ne p2, v5, :cond_0

    .line 737
    iget-object v0, p0, Lcom/vivo/services/motion/ShakeDetectService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 739
    iget-object v0, p0, Lcom/vivo/services/motion/ShakeDetectService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/vivo/services/motion/ShakeDetectService;->mAccelerometerListener1:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/vivo/services/motion/ShakeDetectService;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    const/16 v3, 0x61a8

    iget-object v4, p0, Lcom/vivo/services/motion/ShakeDetectService;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 740
    iput-boolean v5, p0, Lcom/vivo/services/motion/ShakeDetectService;->enableMode_1:Z

    goto :goto_0

    .line 746
    :cond_2
    if-nez p2, :cond_3

    .line 748
    iget-object v0, p0, Lcom/vivo/services/motion/ShakeDetectService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 750
    iget-object v0, p0, Lcom/vivo/services/motion/ShakeDetectService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/vivo/services/motion/ShakeDetectService;->mAccelerometerListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 751
    iput-boolean v2, p0, Lcom/vivo/services/motion/ShakeDetectService;->enableMode_0:Z

    goto :goto_0

    .line 754
    :cond_3
    if-ne p2, v5, :cond_0

    .line 756
    iget-object v0, p0, Lcom/vivo/services/motion/ShakeDetectService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 758
    iget-object v0, p0, Lcom/vivo/services/motion/ShakeDetectService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/vivo/services/motion/ShakeDetectService;->mAccelerometerListener1:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 759
    iput-boolean v2, p0, Lcom/vivo/services/motion/ShakeDetectService;->enableMode_1:Z

    goto :goto_0
.end method

.method public static getInstance()Lcom/vivo/services/motion/ShakeDetectService;
    .locals 1

    .prologue
    .line 710
    sget-object v0, Lcom/vivo/services/motion/ShakeDetectService;->mSingleShakeDetectService:Lcom/vivo/services/motion/ShakeDetectService;

    return-object v0
.end method


# virtual methods
.method public startMotionRecognitionService(Landroid/content/Context;Landroid/os/Handler;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 768
    const-string v1, "ShakeDetectService"

    const-string v2, "startMotionRecognitionService "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    iget-boolean v1, p0, Lcom/vivo/services/motion/ShakeDetectService;->isShakeModeWorking:Z

    if-nez v1, :cond_0

    .line 771
    iput-object p1, p0, Lcom/vivo/services/motion/ShakeDetectService;->mContext:Landroid/content/Context;

    .line 772
    iput-boolean v4, p0, Lcom/vivo/services/motion/ShakeDetectService;->isShakeModeWorking:Z

    .line 773
    iput-object p2, p0, Lcom/vivo/services/motion/ShakeDetectService;->mCallBackHandler:Landroid/os/Handler;

    .line 774
    new-instance v1, Lcom/vivo/services/motion/ShakeDetectService$ShakeDetectServiceHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/vivo/services/motion/ShakeDetectService$ShakeDetectServiceHandler;-><init>(Lcom/vivo/services/motion/ShakeDetectService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/vivo/services/motion/ShakeDetectService;->mServiceHandler:Landroid/os/Handler;

    .line 775
    iget-object v1, p0, Lcom/vivo/services/motion/ShakeDetectService;->mContext:Landroid/content/Context;

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/vivo/services/motion/ShakeDetectService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 776
    iget-object v1, p0, Lcom/vivo/services/motion/ShakeDetectService;->mServiceHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 778
    iput v3, p0, Lcom/vivo/services/motion/ShakeDetectService;->snum:I

    .line 779
    iput v3, p0, Lcom/vivo/services/motion/ShakeDetectService;->staticnum:I

    .line 780
    iput-boolean v3, p0, Lcom/vivo/services/motion/ShakeDetectService;->staticstate:Z

    .line 781
    iget-object v1, p0, Lcom/vivo/services/motion/ShakeDetectService;->mShakeModeAnalyzer:Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;

    invoke-virtual {v1}, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->reset()V

    .line 782
    iget-object v1, p0, Lcom/vivo/services/motion/ShakeDetectService;->mShakeModeAnalyzer:Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;

    iput-boolean v3, v1, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->wavestate:Z

    .line 785
    iget-boolean v1, p0, Lcom/vivo/services/motion/ShakeDetectService;->enableMode_0:Z

    if-nez v1, :cond_0

    .line 787
    invoke-direct {p0, v4, v3}, Lcom/vivo/services/motion/ShakeDetectService;->enableAccelerometer(ZI)V

    .line 791
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 792
    .local v0, "msg":Landroid/os/Message;
    iput v4, v0, Landroid/os/Message;->what:I

    .line 793
    iget-object v1, p0, Lcom/vivo/services/motion/ShakeDetectService;->mServiceHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 795
    iget-object v1, p0, Lcom/vivo/services/motion/ShakeDetectService;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 797
    :cond_1
    return v4
.end method

.method public stopMotionRecognitionService()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 811
    const-string v0, "ShakeDetectService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopMotionRecognitionService "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/vivo/services/motion/ShakeDetectService;->isShakeModeWorking:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    iget-boolean v0, p0, Lcom/vivo/services/motion/ShakeDetectService;->isShakeModeWorking:Z

    if-ne v0, v3, :cond_4

    .line 814
    iput-boolean v4, p0, Lcom/vivo/services/motion/ShakeDetectService;->isShakeModeWorking:Z

    .line 817
    iget-boolean v0, p0, Lcom/vivo/services/motion/ShakeDetectService;->enableMode_0:Z

    if-ne v0, v3, :cond_0

    .line 819
    invoke-direct {p0, v4, v4}, Lcom/vivo/services/motion/ShakeDetectService;->enableAccelerometer(ZI)V

    .line 821
    :cond_0
    iget-boolean v0, p0, Lcom/vivo/services/motion/ShakeDetectService;->enableMode_1:Z

    if-ne v0, v3, :cond_1

    .line 823
    invoke-direct {p0, v4, v3}, Lcom/vivo/services/motion/ShakeDetectService;->enableAccelerometer(ZI)V

    .line 826
    :cond_1
    iget-boolean v0, p0, Lcom/vivo/services/motion/ShakeDetectService;->enableMode_0:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/vivo/services/motion/ShakeDetectService;->enableMode_1:Z

    if-nez v0, :cond_5

    .line 828
    iput-object v5, p0, Lcom/vivo/services/motion/ShakeDetectService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 834
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/vivo/services/motion/ShakeDetectService;->enableMode_1:Z

    if-ne v0, v3, :cond_3

    .line 836
    invoke-direct {p0, v4, v3}, Lcom/vivo/services/motion/ShakeDetectService;->enableAccelerometer(ZI)V

    .line 839
    :cond_3
    iput-object v5, p0, Lcom/vivo/services/motion/ShakeDetectService;->mCallBackHandler:Landroid/os/Handler;

    .line 840
    iput-object v5, p0, Lcom/vivo/services/motion/ShakeDetectService;->mServiceHandler:Landroid/os/Handler;

    .line 841
    iput-object v5, p0, Lcom/vivo/services/motion/ShakeDetectService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 843
    :cond_4
    return v3

    .line 830
    :cond_5
    iget-boolean v0, p0, Lcom/vivo/services/motion/ShakeDetectService;->enableMode_0:Z

    if-ne v0, v3, :cond_2

    .line 832
    invoke-direct {p0, v4, v4}, Lcom/vivo/services/motion/ShakeDetectService;->enableAccelerometer(ZI)V

    goto :goto_0
.end method
