.class public final Lcom/vivo/services/motion/MoveService;
.super Ljava/lang/Object;
.source "MoveService.java"

# interfaces
.implements Lcom/vivo/services/motion/IMotionRecognitionService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/services/motion/MoveService$1;,
        Lcom/vivo/services/motion/MoveService$MoveAnalyzer;,
        Lcom/vivo/services/motion/MoveService$MoveServiceHandler;,
        Lcom/vivo/services/motion/MoveService$MotionSensorEventListener;
    }
.end annotation


# static fields
.field private static final MSG_MOVE_DET_START:I = 0x1

.field private static final MSG_MOVE_DET_STOP:I = 0x2

.field private static final MSG_MOVE_DET_TRIGER:I = 0x3

.field private static final TAG:Ljava/lang/String; = "MoveService"

.field private static mSingleMoveService:Lcom/vivo/services/motion/MoveService;


# instance fields
.field private accelerometerListener:Lcom/vivo/services/motion/MoveService$MotionSensorEventListener;

.field private final alpha:F

.field private filterFlag:Z

.field private gravityValues:[F

.field private isMoveWorking:Z

.field private mCallBackHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mMoveAnalyzer:Lcom/vivo/services/motion/MoveService$MoveAnalyzer;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mServiceHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/vivo/services/motion/MoveService;

    invoke-direct {v0}, Lcom/vivo/services/motion/MoveService;-><init>()V

    sput-object v0, Lcom/vivo/services/motion/MoveService;->mSingleMoveService:Lcom/vivo/services/motion/MoveService;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/services/motion/MoveService;->filterFlag:Z

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/services/motion/MoveService;->isMoveWorking:Z

    .line 31
    iput-object v1, p0, Lcom/vivo/services/motion/MoveService;->mCallBackHandler:Landroid/os/Handler;

    .line 32
    iput-object v1, p0, Lcom/vivo/services/motion/MoveService;->mServiceHandler:Landroid/os/Handler;

    .line 33
    iput-object v1, p0, Lcom/vivo/services/motion/MoveService;->mContext:Landroid/content/Context;

    .line 45
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/vivo/services/motion/MoveService;->gravityValues:[F

    .line 47
    const v0, 0x3f7d70a4    # 0.99f

    iput v0, p0, Lcom/vivo/services/motion/MoveService;->alpha:F

    .line 246
    new-instance v0, Lcom/vivo/services/motion/MoveService$MotionSensorEventListener;

    invoke-direct {v0, p0, v1}, Lcom/vivo/services/motion/MoveService$MotionSensorEventListener;-><init>(Lcom/vivo/services/motion/MoveService;Lcom/vivo/services/motion/MoveService$1;)V

    iput-object v0, p0, Lcom/vivo/services/motion/MoveService;->accelerometerListener:Lcom/vivo/services/motion/MoveService$MotionSensorEventListener;

    .line 247
    new-instance v0, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;

    invoke-direct {v0, p0}, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;-><init>(Lcom/vivo/services/motion/MoveService;)V

    iput-object v0, p0, Lcom/vivo/services/motion/MoveService;->mMoveAnalyzer:Lcom/vivo/services/motion/MoveService$MoveAnalyzer;

    .line 248
    return-void
.end method

.method static synthetic access$000(Lcom/vivo/services/motion/MoveService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/MoveService;

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/vivo/services/motion/MoveService;->filterFlag:Z

    return v0
.end method

.method static synthetic access$002(Lcom/vivo/services/motion/MoveService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/motion/MoveService;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/vivo/services/motion/MoveService;->filterFlag:Z

    return p1
.end method

.method static synthetic access$100(Lcom/vivo/services/motion/MoveService;)[F
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/MoveService;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/vivo/services/motion/MoveService;->gravityValues:[F

    return-object v0
.end method

.method static synthetic access$200(Lcom/vivo/services/motion/MoveService;)Lcom/vivo/services/motion/MoveService$MoveAnalyzer;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/MoveService;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/vivo/services/motion/MoveService;->mMoveAnalyzer:Lcom/vivo/services/motion/MoveService$MoveAnalyzer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vivo/services/motion/MoveService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/MoveService;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/vivo/services/motion/MoveService;->mCallBackHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vivo/services/motion/MoveService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/MoveService;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/vivo/services/motion/MoveService;->mServiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getInstance()Lcom/vivo/services/motion/MoveService;
    .locals 1

    .prologue
    .line 241
    sget-object v0, Lcom/vivo/services/motion/MoveService;->mSingleMoveService:Lcom/vivo/services/motion/MoveService;

    return-object v0
.end method


# virtual methods
.method public startMotionRecognitionService(Landroid/content/Context;Landroid/os/Handler;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v5, 0x1

    .line 253
    const-string v1, "MoveService"

    const-string v2, "startMotionRecognitionService "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-boolean v1, p0, Lcom/vivo/services/motion/MoveService;->isMoveWorking:Z

    if-nez v1, :cond_0

    .line 256
    iput-object p1, p0, Lcom/vivo/services/motion/MoveService;->mContext:Landroid/content/Context;

    .line 257
    iput-boolean v5, p0, Lcom/vivo/services/motion/MoveService;->filterFlag:Z

    .line 258
    iput-boolean v5, p0, Lcom/vivo/services/motion/MoveService;->isMoveWorking:Z

    .line 259
    iput-object p2, p0, Lcom/vivo/services/motion/MoveService;->mCallBackHandler:Landroid/os/Handler;

    .line 260
    iget-object v1, p0, Lcom/vivo/services/motion/MoveService;->mMoveAnalyzer:Lcom/vivo/services/motion/MoveService$MoveAnalyzer;

    invoke-virtual {v1}, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->reset()V

    .line 261
    new-instance v1, Lcom/vivo/services/motion/MoveService$MoveServiceHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/vivo/services/motion/MoveService$MoveServiceHandler;-><init>(Lcom/vivo/services/motion/MoveService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/vivo/services/motion/MoveService;->mServiceHandler:Landroid/os/Handler;

    .line 262
    iget-object v1, p0, Lcom/vivo/services/motion/MoveService;->mContext:Landroid/content/Context;

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/vivo/services/motion/MoveService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 263
    iget-object v1, p0, Lcom/vivo/services/motion/MoveService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v1, :cond_0

    .line 265
    iget-object v1, p0, Lcom/vivo/services/motion/MoveService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/vivo/services/motion/MoveService;->accelerometerListener:Lcom/vivo/services/motion/MoveService$MotionSensorEventListener;

    iget-object v3, p0, Lcom/vivo/services/motion/MoveService;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iget-object v4, p0, Lcom/vivo/services/motion/MoveService;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v5, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 269
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 270
    .local v0, "msg":Landroid/os/Message;
    iput v5, v0, Landroid/os/Message;->what:I

    .line 271
    iget-object v1, p0, Lcom/vivo/services/motion/MoveService;->mServiceHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 273
    iget-object v1, p0, Lcom/vivo/services/motion/MoveService;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 275
    :cond_1
    return v5
.end method

.method public stopMotionRecognitionService()Z
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 281
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 282
    .local v0, "msg":Landroid/os/Message;
    iput v7, v0, Landroid/os/Message;->what:I

    .line 283
    iget-object v1, p0, Lcom/vivo/services/motion/MoveService;->mServiceHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/vivo/services/motion/MoveService;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 287
    :cond_0
    const-string v1, "MoveService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopMotionRecognitionService "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/vivo/services/motion/MoveService;->isMoveWorking:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-boolean v1, p0, Lcom/vivo/services/motion/MoveService;->isMoveWorking:Z

    if-ne v1, v6, :cond_2

    .line 290
    iput-boolean v5, p0, Lcom/vivo/services/motion/MoveService;->filterFlag:Z

    .line 291
    iput-boolean v5, p0, Lcom/vivo/services/motion/MoveService;->isMoveWorking:Z

    .line 292
    iget-object v1, p0, Lcom/vivo/services/motion/MoveService;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 293
    iput-object v4, p0, Lcom/vivo/services/motion/MoveService;->mCallBackHandler:Landroid/os/Handler;

    .line 294
    iput-object v4, p0, Lcom/vivo/services/motion/MoveService;->mServiceHandler:Landroid/os/Handler;

    .line 295
    iget-object v1, p0, Lcom/vivo/services/motion/MoveService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v1, :cond_1

    .line 297
    iget-object v1, p0, Lcom/vivo/services/motion/MoveService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/vivo/services/motion/MoveService;->accelerometerListener:Lcom/vivo/services/motion/MoveService$MotionSensorEventListener;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 299
    :cond_1
    iput-object v4, p0, Lcom/vivo/services/motion/MoveService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 301
    :cond_2
    return v6
.end method
