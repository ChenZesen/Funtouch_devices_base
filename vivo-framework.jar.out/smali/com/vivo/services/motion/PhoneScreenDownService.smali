.class public final Lcom/vivo/services/motion/PhoneScreenDownService;
.super Ljava/lang/Object;
.source "PhoneScreenDownService.java"

# interfaces
.implements Lcom/vivo/services/motion/IMotionRecognitionService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/services/motion/PhoneScreenDownService$1;,
        Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;,
        Lcom/vivo/services/motion/PhoneScreenDownService$PhoneScreenDownServiceHandler;,
        Lcom/vivo/services/motion/PhoneScreenDownService$MotionSensorEventListener;
    }
.end annotation


# static fields
.field private static final EARTH_GRAVITY:D = -9.801

.field private static final LENGTH_SIDE_ANGLE:F = 15.0f

.field private static final MSG_PHONE_POSTURE_DET_START:I = 0x1

.field private static final MSG_PHONE_POSTURE_DET_STOP:I = 0x2

.field private static final MSG_PHONE_POSTURE_DET_TRIGER_NO:I = 0x4

.field private static final MSG_PHONE_POSTURE_DET_TRIGER_YES:I = 0x3

.field private static final TAG:Ljava/lang/String; = "PhoneScreenDownService"

.field private static final WIDTH_SIDE_ANGLE:F = 15.0f

.field private static mSinglePhoneScreenDownService:Lcom/vivo/services/motion/PhoneScreenDownService;


# instance fields
.field private accelerometerListener:Lcom/vivo/services/motion/PhoneScreenDownService$MotionSensorEventListener;

.field private isIdle:Z

.field private isPhoneScreenDownWorking:Z

.field private mCallBackHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mPhonePostureAnalyzer:Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mServiceHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/vivo/services/motion/PhoneScreenDownService;

    invoke-direct {v0}, Lcom/vivo/services/motion/PhoneScreenDownService;-><init>()V

    sput-object v0, Lcom/vivo/services/motion/PhoneScreenDownService;->mSinglePhoneScreenDownService:Lcom/vivo/services/motion/PhoneScreenDownService;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v1, p0, Lcom/vivo/services/motion/PhoneScreenDownService;->mCallBackHandler:Landroid/os/Handler;

    .line 29
    iput-object v1, p0, Lcom/vivo/services/motion/PhoneScreenDownService;->mServiceHandler:Landroid/os/Handler;

    .line 30
    iput-object v1, p0, Lcom/vivo/services/motion/PhoneScreenDownService;->mContext:Landroid/content/Context;

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/services/motion/PhoneScreenDownService;->isIdle:Z

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/services/motion/PhoneScreenDownService;->isPhoneScreenDownWorking:Z

    .line 389
    new-instance v0, Lcom/vivo/services/motion/PhoneScreenDownService$MotionSensorEventListener;

    invoke-direct {v0, p0, v1}, Lcom/vivo/services/motion/PhoneScreenDownService$MotionSensorEventListener;-><init>(Lcom/vivo/services/motion/PhoneScreenDownService;Lcom/vivo/services/motion/PhoneScreenDownService$1;)V

    iput-object v0, p0, Lcom/vivo/services/motion/PhoneScreenDownService;->accelerometerListener:Lcom/vivo/services/motion/PhoneScreenDownService$MotionSensorEventListener;

    .line 390
    new-instance v0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;

    invoke-direct {v0, p0}, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;-><init>(Lcom/vivo/services/motion/PhoneScreenDownService;)V

    iput-object v0, p0, Lcom/vivo/services/motion/PhoneScreenDownService;->mPhonePostureAnalyzer:Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;

    .line 391
    return-void
.end method

.method static synthetic access$000(Lcom/vivo/services/motion/PhoneScreenDownService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/PhoneScreenDownService;

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/vivo/services/motion/PhoneScreenDownService;->isIdle:Z

    return v0
.end method

.method static synthetic access$002(Lcom/vivo/services/motion/PhoneScreenDownService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/motion/PhoneScreenDownService;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/vivo/services/motion/PhoneScreenDownService;->isIdle:Z

    return p1
.end method

.method static synthetic access$100(Lcom/vivo/services/motion/PhoneScreenDownService;)Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/PhoneScreenDownService;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/vivo/services/motion/PhoneScreenDownService;->mPhonePostureAnalyzer:Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vivo/services/motion/PhoneScreenDownService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/PhoneScreenDownService;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/vivo/services/motion/PhoneScreenDownService;->mCallBackHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vivo/services/motion/PhoneScreenDownService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/PhoneScreenDownService;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/vivo/services/motion/PhoneScreenDownService;->mServiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getInstance()Lcom/vivo/services/motion/PhoneScreenDownService;
    .locals 1

    .prologue
    .line 384
    sget-object v0, Lcom/vivo/services/motion/PhoneScreenDownService;->mSinglePhoneScreenDownService:Lcom/vivo/services/motion/PhoneScreenDownService;

    return-object v0
.end method


# virtual methods
.method public startMotionRecognitionService(Landroid/content/Context;Landroid/os/Handler;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v6, 0x1

    .line 396
    const-string v1, "PhoneScreenDownService"

    const-string v2, "startMotionRecognitionService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-boolean v1, p0, Lcom/vivo/services/motion/PhoneScreenDownService;->isPhoneScreenDownWorking:Z

    if-nez v1, :cond_0

    .line 399
    iput-object p1, p0, Lcom/vivo/services/motion/PhoneScreenDownService;->mContext:Landroid/content/Context;

    .line 400
    iput-boolean v6, p0, Lcom/vivo/services/motion/PhoneScreenDownService;->isPhoneScreenDownWorking:Z

    .line 401
    iput-object p2, p0, Lcom/vivo/services/motion/PhoneScreenDownService;->mCallBackHandler:Landroid/os/Handler;

    .line 402
    iget-object v1, p0, Lcom/vivo/services/motion/PhoneScreenDownService;->mPhonePostureAnalyzer:Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;

    invoke-virtual {v1}, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->reset()V

    .line 403
    new-instance v1, Lcom/vivo/services/motion/PhoneScreenDownService$PhoneScreenDownServiceHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/vivo/services/motion/PhoneScreenDownService$PhoneScreenDownServiceHandler;-><init>(Lcom/vivo/services/motion/PhoneScreenDownService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/vivo/services/motion/PhoneScreenDownService;->mServiceHandler:Landroid/os/Handler;

    .line 404
    iget-object v1, p0, Lcom/vivo/services/motion/PhoneScreenDownService;->mContext:Landroid/content/Context;

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/vivo/services/motion/PhoneScreenDownService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 405
    iget-object v1, p0, Lcom/vivo/services/motion/PhoneScreenDownService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v1, :cond_0

    .line 407
    iget-object v1, p0, Lcom/vivo/services/motion/PhoneScreenDownService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/vivo/services/motion/PhoneScreenDownService;->accelerometerListener:Lcom/vivo/services/motion/PhoneScreenDownService$MotionSensorEventListener;

    iget-object v3, p0, Lcom/vivo/services/motion/PhoneScreenDownService;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/vivo/services/motion/PhoneScreenDownService;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 410
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 411
    .local v0, "msg":Landroid/os/Message;
    iput v6, v0, Landroid/os/Message;->what:I

    .line 412
    iget-object v1, p0, Lcom/vivo/services/motion/PhoneScreenDownService;->mServiceHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 414
    iget-object v1, p0, Lcom/vivo/services/motion/PhoneScreenDownService;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 416
    :cond_1
    return v6
.end method

.method public stopMotionRecognitionService()Z
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 422
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 423
    .local v0, "msg":Landroid/os/Message;
    iput v6, v0, Landroid/os/Message;->what:I

    .line 424
    iget-object v1, p0, Lcom/vivo/services/motion/PhoneScreenDownService;->mServiceHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 426
    iget-object v1, p0, Lcom/vivo/services/motion/PhoneScreenDownService;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 428
    :cond_0
    const-string v1, "PhoneScreenDownService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopMotionRecognitionService "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/vivo/services/motion/PhoneScreenDownService;->isPhoneScreenDownWorking:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-boolean v1, p0, Lcom/vivo/services/motion/PhoneScreenDownService;->isPhoneScreenDownWorking:Z

    if-ne v1, v5, :cond_2

    .line 431
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/vivo/services/motion/PhoneScreenDownService;->isPhoneScreenDownWorking:Z

    .line 432
    iget-object v1, p0, Lcom/vivo/services/motion/PhoneScreenDownService;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 433
    iput-object v4, p0, Lcom/vivo/services/motion/PhoneScreenDownService;->mCallBackHandler:Landroid/os/Handler;

    .line 434
    iput-object v4, p0, Lcom/vivo/services/motion/PhoneScreenDownService;->mServiceHandler:Landroid/os/Handler;

    .line 435
    iget-object v1, p0, Lcom/vivo/services/motion/PhoneScreenDownService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v1, :cond_1

    .line 437
    iget-object v1, p0, Lcom/vivo/services/motion/PhoneScreenDownService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/vivo/services/motion/PhoneScreenDownService;->accelerometerListener:Lcom/vivo/services/motion/PhoneScreenDownService$MotionSensorEventListener;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 439
    :cond_1
    iput-object v4, p0, Lcom/vivo/services/motion/PhoneScreenDownService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 441
    :cond_2
    return v5
.end method
