.class public final Lcom/vivo/services/motion/PhonePickUpService;
.super Ljava/lang/Object;
.source "PhonePickUpService.java"

# interfaces
.implements Lcom/vivo/services/motion/IMotionRecognitionService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/services/motion/PhonePickUpService$1;,
        Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;,
        Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpServiceHandler;,
        Lcom/vivo/services/motion/PhonePickUpService$MotionSensorEventListener;
    }
.end annotation


# static fields
.field private static final GYRO_DATA_BUF:I = 0x19

.field private static final MSG_PHONE_PICK_UP_DET_START:I = 0x1

.field private static final MSG_PHONE_PICK_UP_DET_STOP:I = 0x2

.field private static final MSG_PHONE_PICK_UP_DET_TRIGER:I = 0x3

.field private static final TAG:Ljava/lang/String; = "PhonePickUpService"

.field private static mSinglePhonePickUpService:Lcom/vivo/services/motion/PhonePickUpService;


# instance fields
.field private accelerometerListener:Lcom/vivo/services/motion/PhonePickUpService$MotionSensorEventListener;

.field private final alpha:F

.field private filterFlag:Z

.field private gravityValues:[F

.field private gyroDataBuf:[[F

.field private gyroscopeListener:Lcom/vivo/services/motion/PhonePickUpService$MotionSensorEventListener;

.field private isPhonePickUpWorking:Z

.field private isSensorOn:Z

.field private mCallBackHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mPhonePickUpAnalyzer:Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mServiceHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/vivo/services/motion/PhonePickUpService;

    invoke-direct {v0}, Lcom/vivo/services/motion/PhonePickUpService;-><init>()V

    sput-object v0, Lcom/vivo/services/motion/PhonePickUpService;->mSinglePhonePickUpService:Lcom/vivo/services/motion/PhonePickUpService;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/services/motion/PhonePickUpService;->filterFlag:Z

    .line 29
    iput-boolean v1, p0, Lcom/vivo/services/motion/PhonePickUpService;->isSensorOn:Z

    .line 30
    iput-boolean v1, p0, Lcom/vivo/services/motion/PhonePickUpService;->isPhonePickUpWorking:Z

    .line 31
    iput-object v2, p0, Lcom/vivo/services/motion/PhonePickUpService;->mCallBackHandler:Landroid/os/Handler;

    .line 32
    iput-object v2, p0, Lcom/vivo/services/motion/PhonePickUpService;->mServiceHandler:Landroid/os/Handler;

    .line 33
    iput-object v2, p0, Lcom/vivo/services/motion/PhonePickUpService;->mContext:Landroid/content/Context;

    .line 46
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/vivo/services/motion/PhonePickUpService;->gravityValues:[F

    .line 48
    const v0, 0x3f7d70a4    # 0.99f

    iput v0, p0, Lcom/vivo/services/motion/PhonePickUpService;->alpha:F

    .line 51
    const/4 v0, 0x4

    const/16 v1, 0x19

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/vivo/services/motion/PhonePickUpService;->gyroDataBuf:[[F

    .line 311
    new-instance v0, Lcom/vivo/services/motion/PhonePickUpService$MotionSensorEventListener;

    invoke-direct {v0, p0, v2}, Lcom/vivo/services/motion/PhonePickUpService$MotionSensorEventListener;-><init>(Lcom/vivo/services/motion/PhonePickUpService;Lcom/vivo/services/motion/PhonePickUpService$1;)V

    iput-object v0, p0, Lcom/vivo/services/motion/PhonePickUpService;->gyroscopeListener:Lcom/vivo/services/motion/PhonePickUpService$MotionSensorEventListener;

    .line 312
    new-instance v0, Lcom/vivo/services/motion/PhonePickUpService$MotionSensorEventListener;

    invoke-direct {v0, p0, v2}, Lcom/vivo/services/motion/PhonePickUpService$MotionSensorEventListener;-><init>(Lcom/vivo/services/motion/PhonePickUpService;Lcom/vivo/services/motion/PhonePickUpService$1;)V

    iput-object v0, p0, Lcom/vivo/services/motion/PhonePickUpService;->accelerometerListener:Lcom/vivo/services/motion/PhonePickUpService$MotionSensorEventListener;

    .line 313
    new-instance v0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;

    invoke-direct {v0, p0}, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;-><init>(Lcom/vivo/services/motion/PhonePickUpService;)V

    iput-object v0, p0, Lcom/vivo/services/motion/PhonePickUpService;->mPhonePickUpAnalyzer:Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;

    .line 314
    return-void
.end method

.method static synthetic access$000(Lcom/vivo/services/motion/PhonePickUpService;)Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/PhonePickUpService;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/vivo/services/motion/PhonePickUpService;->mPhonePickUpAnalyzer:Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vivo/services/motion/PhonePickUpService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/PhonePickUpService;

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/vivo/services/motion/PhonePickUpService;->filterFlag:Z

    return v0
.end method

.method static synthetic access$202(Lcom/vivo/services/motion/PhonePickUpService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/motion/PhonePickUpService;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/vivo/services/motion/PhonePickUpService;->filterFlag:Z

    return p1
.end method

.method static synthetic access$300(Lcom/vivo/services/motion/PhonePickUpService;)[F
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/PhonePickUpService;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/vivo/services/motion/PhonePickUpService;->gravityValues:[F

    return-object v0
.end method

.method static synthetic access$500(Lcom/vivo/services/motion/PhonePickUpService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/PhonePickUpService;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/vivo/services/motion/PhonePickUpService;->mCallBackHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/vivo/services/motion/PhonePickUpService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/PhonePickUpService;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/vivo/services/motion/PhonePickUpService;->mServiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getInstance()Lcom/vivo/services/motion/PhonePickUpService;
    .locals 1

    .prologue
    .line 306
    sget-object v0, Lcom/vivo/services/motion/PhonePickUpService;->mSinglePhonePickUpService:Lcom/vivo/services/motion/PhonePickUpService;

    return-object v0
.end method

.method public static isAccelerometerSupported(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 318
    const-string v3, "sensor"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    .line 319
    .local v1, "sm":Landroid/hardware/SensorManager;
    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 321
    .local v0, "sensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isGyroscopeSupported(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 326
    const-string v2, "sensor"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    .line 327
    .local v1, "sm":Landroid/hardware/SensorManager;
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 329
    .local v0, "sensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public startMotionRecognitionService(Landroid/content/Context;Landroid/os/Handler;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v2, 0x1

    .line 335
    const-string v1, "PhonePickUpService"

    const-string v3, "startMotionRecognitionService "

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-boolean v1, p0, Lcom/vivo/services/motion/PhonePickUpService;->isPhonePickUpWorking:Z

    if-nez v1, :cond_0

    .line 338
    iput-object p1, p0, Lcom/vivo/services/motion/PhonePickUpService;->mContext:Landroid/content/Context;

    .line 339
    iput-boolean v2, p0, Lcom/vivo/services/motion/PhonePickUpService;->filterFlag:Z

    .line 340
    iput-boolean v2, p0, Lcom/vivo/services/motion/PhonePickUpService;->isPhonePickUpWorking:Z

    .line 341
    iput-object p2, p0, Lcom/vivo/services/motion/PhonePickUpService;->mCallBackHandler:Landroid/os/Handler;

    .line 342
    iget-object v1, p0, Lcom/vivo/services/motion/PhonePickUpService;->mPhonePickUpAnalyzer:Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;

    invoke-virtual {v1}, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->reset()V

    .line 343
    new-instance v1, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpServiceHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpServiceHandler;-><init>(Lcom/vivo/services/motion/PhonePickUpService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/vivo/services/motion/PhonePickUpService;->mServiceHandler:Landroid/os/Handler;

    .line 344
    iget-object v1, p0, Lcom/vivo/services/motion/PhonePickUpService;->mContext:Landroid/content/Context;

    const-string v3, "sensor"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/vivo/services/motion/PhonePickUpService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 345
    iget-object v1, p0, Lcom/vivo/services/motion/PhonePickUpService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v1, :cond_0

    .line 347
    iget-object v1, p0, Lcom/vivo/services/motion/PhonePickUpService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/vivo/services/motion/PhonePickUpService;->isGyroscopeSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 349
    iget-object v1, p0, Lcom/vivo/services/motion/PhonePickUpService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/vivo/services/motion/PhonePickUpService;->gyroscopeListener:Lcom/vivo/services/motion/PhonePickUpService$MotionSensorEventListener;

    iget-object v4, p0, Lcom/vivo/services/motion/PhonePickUpService;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v4

    iget-object v5, p0, Lcom/vivo/services/motion/PhonePickUpService;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, v4, v2, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 351
    iput-boolean v2, p0, Lcom/vivo/services/motion/PhonePickUpService;->isSensorOn:Z

    .line 366
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 367
    .local v0, "msg":Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 368
    iget-object v1, p0, Lcom/vivo/services/motion/PhonePickUpService;->mServiceHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 370
    iget-object v1, p0, Lcom/vivo/services/motion/PhonePickUpService;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    move v1, v2

    .line 372
    .end local v0    # "msg":Landroid/os/Message;
    :goto_1
    return v1

    .line 353
    :cond_2
    iget-object v1, p0, Lcom/vivo/services/motion/PhonePickUpService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/vivo/services/motion/PhonePickUpService;->isAccelerometerSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 355
    iget-object v1, p0, Lcom/vivo/services/motion/PhonePickUpService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/vivo/services/motion/PhonePickUpService;->accelerometerListener:Lcom/vivo/services/motion/PhonePickUpService$MotionSensorEventListener;

    iget-object v4, p0, Lcom/vivo/services/motion/PhonePickUpService;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v4, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v4

    iget-object v5, p0, Lcom/vivo/services/motion/PhonePickUpService;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, v4, v2, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 357
    iput-boolean v2, p0, Lcom/vivo/services/motion/PhonePickUpService;->isSensorOn:Z

    goto :goto_0

    .line 361
    :cond_3
    const-string v1, "PhonePickUpService"

    const-string v2, "sensor not support this function"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public stopMotionRecognitionService()Z
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 378
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 379
    .local v0, "msg":Landroid/os/Message;
    iput v7, v0, Landroid/os/Message;->what:I

    .line 380
    iget-object v1, p0, Lcom/vivo/services/motion/PhonePickUpService;->mServiceHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 382
    iget-object v1, p0, Lcom/vivo/services/motion/PhonePickUpService;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 384
    :cond_0
    const-string v1, "PhonePickUpService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopMotionRecognitionService "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/vivo/services/motion/PhonePickUpService;->isPhonePickUpWorking:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-boolean v1, p0, Lcom/vivo/services/motion/PhonePickUpService;->isPhonePickUpWorking:Z

    if-ne v1, v5, :cond_3

    .line 387
    iput-boolean v4, p0, Lcom/vivo/services/motion/PhonePickUpService;->filterFlag:Z

    .line 388
    iput-boolean v4, p0, Lcom/vivo/services/motion/PhonePickUpService;->isPhonePickUpWorking:Z

    .line 389
    iget-object v1, p0, Lcom/vivo/services/motion/PhonePickUpService;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 390
    iget-object v1, p0, Lcom/vivo/services/motion/PhonePickUpService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v1, :cond_2

    .line 392
    iget-boolean v1, p0, Lcom/vivo/services/motion/PhonePickUpService;->isSensorOn:Z

    if-ne v1, v5, :cond_1

    .line 394
    iget-object v1, p0, Lcom/vivo/services/motion/PhonePickUpService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/vivo/services/motion/PhonePickUpService;->isGyroscopeSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 396
    iget-object v1, p0, Lcom/vivo/services/motion/PhonePickUpService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/vivo/services/motion/PhonePickUpService;->gyroscopeListener:Lcom/vivo/services/motion/PhonePickUpService$MotionSensorEventListener;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 397
    iput-boolean v4, p0, Lcom/vivo/services/motion/PhonePickUpService;->isSensorOn:Z

    .line 405
    :cond_1
    :goto_0
    iput-object v6, p0, Lcom/vivo/services/motion/PhonePickUpService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 407
    :cond_2
    iput-object v6, p0, Lcom/vivo/services/motion/PhonePickUpService;->mCallBackHandler:Landroid/os/Handler;

    .line 408
    iput-object v6, p0, Lcom/vivo/services/motion/PhonePickUpService;->mServiceHandler:Landroid/os/Handler;

    .line 410
    :cond_3
    return v5

    .line 399
    :cond_4
    iget-object v1, p0, Lcom/vivo/services/motion/PhonePickUpService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/vivo/services/motion/PhonePickUpService;->isAccelerometerSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 401
    iget-object v1, p0, Lcom/vivo/services/motion/PhonePickUpService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/vivo/services/motion/PhonePickUpService;->accelerometerListener:Lcom/vivo/services/motion/PhonePickUpService$MotionSensorEventListener;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 402
    iput-boolean v4, p0, Lcom/vivo/services/motion/PhonePickUpService;->isSensorOn:Z

    goto :goto_0
.end method
