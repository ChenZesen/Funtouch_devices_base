.class public final Lcom/vivo/services/motion/PhoneScreenDownPickUpService;
.super Ljava/lang/Object;
.source "PhoneScreenDownPickUpService.java"

# interfaces
.implements Lcom/vivo/services/motion/IMotionRecognitionService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/services/motion/PhoneScreenDownPickUpService$1;,
        Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;,
        Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhoneScreenDownPickUpServiceHandler;,
        Lcom/vivo/services/motion/PhoneScreenDownPickUpService$MotionSensorEventListener;
    }
.end annotation


# static fields
.field private static final MSG_PHONE_SCREEN_DOWN_PICK_UP_DET_START:I = 0x1

.field private static final MSG_PHONE_SCREEN_DOWN_PICK_UP_DET_STOP:I = 0x2

.field private static final MSG_PHONE_SCREEN_DOWN_PICK_UP_DET_TRIGER:I = 0x3

.field private static final TAG:Ljava/lang/String; = "PhoneScreenDownPickUpService"

.field private static mSinglePhoneScreenDownPickUpService:Lcom/vivo/services/motion/PhoneScreenDownPickUpService;


# instance fields
.field private gyroScopeListener:Lcom/vivo/services/motion/PhoneScreenDownPickUpService$MotionSensorEventListener;

.field private isIdle:Z

.field private isPhoneScreenDownPickUpWorking:Z

.field private mCallBackHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mPhonePickUpAnalyzer:Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mServiceHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService;

    invoke-direct {v0}, Lcom/vivo/services/motion/PhoneScreenDownPickUpService;-><init>()V

    sput-object v0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService;->mSinglePhoneScreenDownPickUpService:Lcom/vivo/services/motion/PhoneScreenDownPickUpService;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v1, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService;->mCallBackHandler:Landroid/os/Handler;

    .line 29
    iput-object v1, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService;->mServiceHandler:Landroid/os/Handler;

    .line 30
    iput-object v1, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService;->mContext:Landroid/content/Context;

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService;->isIdle:Z

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService;->isPhoneScreenDownPickUpWorking:Z

    .line 314
    new-instance v0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$MotionSensorEventListener;

    invoke-direct {v0, p0, v1}, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$MotionSensorEventListener;-><init>(Lcom/vivo/services/motion/PhoneScreenDownPickUpService;Lcom/vivo/services/motion/PhoneScreenDownPickUpService$1;)V

    iput-object v0, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService;->gyroScopeListener:Lcom/vivo/services/motion/PhoneScreenDownPickUpService$MotionSensorEventListener;

    .line 315
    new-instance v0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;

    invoke-direct {v0, p0}, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;-><init>(Lcom/vivo/services/motion/PhoneScreenDownPickUpService;)V

    iput-object v0, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService;->mPhonePickUpAnalyzer:Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;

    .line 316
    return-void
.end method

.method static synthetic access$000(Lcom/vivo/services/motion/PhoneScreenDownPickUpService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/PhoneScreenDownPickUpService;

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService;->isIdle:Z

    return v0
.end method

.method static synthetic access$002(Lcom/vivo/services/motion/PhoneScreenDownPickUpService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/motion/PhoneScreenDownPickUpService;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService;->isIdle:Z

    return p1
.end method

.method static synthetic access$100(Lcom/vivo/services/motion/PhoneScreenDownPickUpService;)Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/PhoneScreenDownPickUpService;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService;->mPhonePickUpAnalyzer:Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vivo/services/motion/PhoneScreenDownPickUpService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/PhoneScreenDownPickUpService;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService;->mCallBackHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vivo/services/motion/PhoneScreenDownPickUpService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/PhoneScreenDownPickUpService;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService;->mServiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getInstance()Lcom/vivo/services/motion/PhoneScreenDownPickUpService;
    .locals 1

    .prologue
    .line 309
    sget-object v0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService;->mSinglePhoneScreenDownPickUpService:Lcom/vivo/services/motion/PhoneScreenDownPickUpService;

    return-object v0
.end method


# virtual methods
.method public startMotionRecognitionService(Landroid/content/Context;Landroid/os/Handler;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v6, 0x1

    .line 321
    const-string v1, "PhoneScreenDownPickUpService"

    const-string v2, "startMotionRecognitionService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-boolean v1, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService;->isPhoneScreenDownPickUpWorking:Z

    if-nez v1, :cond_0

    .line 324
    iput-object p1, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService;->mContext:Landroid/content/Context;

    .line 325
    iput-boolean v6, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService;->isPhoneScreenDownPickUpWorking:Z

    .line 326
    iput-object p2, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService;->mCallBackHandler:Landroid/os/Handler;

    .line 327
    iget-object v1, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService;->mPhonePickUpAnalyzer:Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;

    invoke-virtual {v1}, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->reset()V

    .line 328
    new-instance v1, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhoneScreenDownPickUpServiceHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhoneScreenDownPickUpServiceHandler;-><init>(Lcom/vivo/services/motion/PhoneScreenDownPickUpService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService;->mServiceHandler:Landroid/os/Handler;

    .line 329
    iget-object v1, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService;->mContext:Landroid/content/Context;

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 330
    iget-object v1, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v1, :cond_0

    .line 332
    iget-object v1, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService;->gyroScopeListener:Lcom/vivo/services/motion/PhoneScreenDownPickUpService$MotionSensorEventListener;

    iget-object v3, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 335
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 336
    .local v0, "msg":Landroid/os/Message;
    iput v6, v0, Landroid/os/Message;->what:I

    .line 337
    iget-object v1, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService;->mServiceHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 339
    iget-object v1, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 341
    :cond_1
    return v6
.end method

.method public stopMotionRecognitionService()Z
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 347
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 348
    .local v0, "msg":Landroid/os/Message;
    iput v6, v0, Landroid/os/Message;->what:I

    .line 349
    iget-object v1, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService;->mServiceHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 351
    iget-object v1, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 353
    :cond_0
    const-string v1, "PhoneScreenDownPickUpService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopMotionRecognitionService "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService;->isPhoneScreenDownPickUpWorking:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-boolean v1, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService;->isPhoneScreenDownPickUpWorking:Z

    if-ne v1, v5, :cond_2

    .line 356
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService;->isPhoneScreenDownPickUpWorking:Z

    .line 357
    iget-object v1, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 358
    iput-object v4, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService;->mCallBackHandler:Landroid/os/Handler;

    .line 359
    iput-object v4, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService;->mServiceHandler:Landroid/os/Handler;

    .line 360
    iget-object v1, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v1, :cond_1

    .line 362
    iget-object v1, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService;->gyroScopeListener:Lcom/vivo/services/motion/PhoneScreenDownPickUpService$MotionSensorEventListener;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 364
    :cond_1
    iput-object v4, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 366
    :cond_2
    return v5
.end method
