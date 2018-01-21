.class public final Lcom/vivo/services/motion/PhoneAcrossService;
.super Ljava/lang/Object;
.source "PhoneAcrossService.java"

# interfaces
.implements Lcom/vivo/services/motion/IMotionRecognitionService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/services/motion/PhoneAcrossService$1;,
        Lcom/vivo/services/motion/PhoneAcrossService$PhoneAcrossServiceHandler;,
        Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;,
        Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;,
        Lcom/vivo/services/motion/PhoneAcrossService$motionPara;,
        Lcom/vivo/services/motion/PhoneAcrossService$MotionSensorEventListener;
    }
.end annotation


# static fields
.field private static final MSG_PHONE_AWAY_DET_TRIGER:I = 0x3

.field private static final MSG_PHONE_CLOSE_DET_TRIGER:I = 0x2

.field private static final MSG_PICK_UP_DET_TRIGER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PhoneAcrossService"

.field private static singlePhoneAcrossService:Lcom/vivo/services/motion/PhoneAcrossService;


# instance fields
.field private aFilterFlag:Z

.field private aPickUpFlag:Z

.field private aPickUpStaticFlag:Z

.field private accelerometerListener:Lcom/vivo/services/motion/PhoneAcrossService$MotionSensorEventListener;

.field private final alpha1:F

.field private final alpha2:F

.field private gFilterFlag:Z

.field private gPickUpFlag:Z

.field private gravityValues:[F

.field private gyroscopeListener:Lcom/vivo/services/motion/PhoneAcrossService$MotionSensorEventListener;

.field private gyroscopeValues:[F

.field private isPhoneAcrossServiceWorking:Z

.field private linearAccelerationListener:Lcom/vivo/services/motion/PhoneAcrossService$MotionSensorEventListener;

.field private mCallBackHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mDataAnalysis:Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;

.field private mMoveAnalyzer:Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mServiceHandler:Landroid/os/Handler;

.field private pickUpTriger:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/vivo/services/motion/PhoneAcrossService;

    invoke-direct {v0}, Lcom/vivo/services/motion/PhoneAcrossService;-><init>()V

    sput-object v0, Lcom/vivo/services/motion/PhoneAcrossService;->singlePhoneAcrossService:Lcom/vivo/services/motion/PhoneAcrossService;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 684
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-boolean v3, p0, Lcom/vivo/services/motion/PhoneAcrossService;->aFilterFlag:Z

    .line 27
    iput-boolean v3, p0, Lcom/vivo/services/motion/PhoneAcrossService;->gFilterFlag:Z

    .line 28
    iput-boolean v2, p0, Lcom/vivo/services/motion/PhoneAcrossService;->isPhoneAcrossServiceWorking:Z

    .line 29
    iput-object v1, p0, Lcom/vivo/services/motion/PhoneAcrossService;->mCallBackHandler:Landroid/os/Handler;

    .line 30
    iput-object v1, p0, Lcom/vivo/services/motion/PhoneAcrossService;->mServiceHandler:Landroid/os/Handler;

    .line 38
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/vivo/services/motion/PhoneAcrossService;->gravityValues:[F

    .line 39
    const v0, 0x3f7d70a4    # 0.99f

    iput v0, p0, Lcom/vivo/services/motion/PhoneAcrossService;->alpha1:F

    .line 40
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/vivo/services/motion/PhoneAcrossService;->gyroscopeValues:[F

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/services/motion/PhoneAcrossService;->alpha2:F

    .line 47
    iput-boolean v2, p0, Lcom/vivo/services/motion/PhoneAcrossService;->aPickUpFlag:Z

    .line 48
    iput-boolean v2, p0, Lcom/vivo/services/motion/PhoneAcrossService;->aPickUpStaticFlag:Z

    .line 49
    iput-boolean v2, p0, Lcom/vivo/services/motion/PhoneAcrossService;->gPickUpFlag:Z

    .line 50
    iput-boolean v3, p0, Lcom/vivo/services/motion/PhoneAcrossService;->pickUpTriger:Z

    .line 55
    iput-object v1, p0, Lcom/vivo/services/motion/PhoneAcrossService;->mContext:Landroid/content/Context;

    .line 685
    new-instance v0, Lcom/vivo/services/motion/PhoneAcrossService$MotionSensorEventListener;

    invoke-direct {v0, p0, v1}, Lcom/vivo/services/motion/PhoneAcrossService$MotionSensorEventListener;-><init>(Lcom/vivo/services/motion/PhoneAcrossService;Lcom/vivo/services/motion/PhoneAcrossService$1;)V

    iput-object v0, p0, Lcom/vivo/services/motion/PhoneAcrossService;->accelerometerListener:Lcom/vivo/services/motion/PhoneAcrossService$MotionSensorEventListener;

    .line 686
    new-instance v0, Lcom/vivo/services/motion/PhoneAcrossService$MotionSensorEventListener;

    invoke-direct {v0, p0, v1}, Lcom/vivo/services/motion/PhoneAcrossService$MotionSensorEventListener;-><init>(Lcom/vivo/services/motion/PhoneAcrossService;Lcom/vivo/services/motion/PhoneAcrossService$1;)V

    iput-object v0, p0, Lcom/vivo/services/motion/PhoneAcrossService;->linearAccelerationListener:Lcom/vivo/services/motion/PhoneAcrossService$MotionSensorEventListener;

    .line 687
    new-instance v0, Lcom/vivo/services/motion/PhoneAcrossService$MotionSensorEventListener;

    invoke-direct {v0, p0, v1}, Lcom/vivo/services/motion/PhoneAcrossService$MotionSensorEventListener;-><init>(Lcom/vivo/services/motion/PhoneAcrossService;Lcom/vivo/services/motion/PhoneAcrossService$1;)V

    iput-object v0, p0, Lcom/vivo/services/motion/PhoneAcrossService;->gyroscopeListener:Lcom/vivo/services/motion/PhoneAcrossService$MotionSensorEventListener;

    .line 689
    new-instance v0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;

    invoke-direct {v0, p0}, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;-><init>(Lcom/vivo/services/motion/PhoneAcrossService;)V

    iput-object v0, p0, Lcom/vivo/services/motion/PhoneAcrossService;->mMoveAnalyzer:Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;

    .line 690
    new-instance v0, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;

    invoke-direct {v0, p0, v1}, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;-><init>(Lcom/vivo/services/motion/PhoneAcrossService;Lcom/vivo/services/motion/PhoneAcrossService$1;)V

    iput-object v0, p0, Lcom/vivo/services/motion/PhoneAcrossService;->mDataAnalysis:Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;

    .line 691
    return-void
.end method

.method static synthetic access$000(Lcom/vivo/services/motion/PhoneAcrossService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/PhoneAcrossService;

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/vivo/services/motion/PhoneAcrossService;->aPickUpFlag:Z

    return v0
.end method

.method static synthetic access$002(Lcom/vivo/services/motion/PhoneAcrossService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/motion/PhoneAcrossService;
    .param p1, "x1"    # Z

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/vivo/services/motion/PhoneAcrossService;->aPickUpFlag:Z

    return p1
.end method

.method static synthetic access$100(Lcom/vivo/services/motion/PhoneAcrossService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/PhoneAcrossService;

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/vivo/services/motion/PhoneAcrossService;->gPickUpFlag:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/vivo/services/motion/PhoneAcrossService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/PhoneAcrossService;

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/vivo/services/motion/PhoneAcrossService;->gFilterFlag:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/vivo/services/motion/PhoneAcrossService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/motion/PhoneAcrossService;
    .param p1, "x1"    # Z

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/vivo/services/motion/PhoneAcrossService;->gFilterFlag:Z

    return p1
.end method

.method static synthetic access$102(Lcom/vivo/services/motion/PhoneAcrossService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/motion/PhoneAcrossService;
    .param p1, "x1"    # Z

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/vivo/services/motion/PhoneAcrossService;->gPickUpFlag:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/vivo/services/motion/PhoneAcrossService;)[F
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/PhoneAcrossService;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/vivo/services/motion/PhoneAcrossService;->gyroscopeValues:[F

    return-object v0
.end method

.method static synthetic access$1400(Lcom/vivo/services/motion/PhoneAcrossService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/PhoneAcrossService;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/vivo/services/motion/PhoneAcrossService;->mCallBackHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vivo/services/motion/PhoneAcrossService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/PhoneAcrossService;

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/vivo/services/motion/PhoneAcrossService;->pickUpTriger:Z

    return v0
.end method

.method static synthetic access$202(Lcom/vivo/services/motion/PhoneAcrossService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/motion/PhoneAcrossService;
    .param p1, "x1"    # Z

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/vivo/services/motion/PhoneAcrossService;->pickUpTriger:Z

    return p1
.end method

.method static synthetic access$300(Lcom/vivo/services/motion/PhoneAcrossService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/PhoneAcrossService;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/vivo/services/motion/PhoneAcrossService;->mServiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vivo/services/motion/PhoneAcrossService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/PhoneAcrossService;

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/vivo/services/motion/PhoneAcrossService;->aFilterFlag:Z

    return v0
.end method

.method static synthetic access$402(Lcom/vivo/services/motion/PhoneAcrossService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/motion/PhoneAcrossService;
    .param p1, "x1"    # Z

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/vivo/services/motion/PhoneAcrossService;->aFilterFlag:Z

    return p1
.end method

.method static synthetic access$500(Lcom/vivo/services/motion/PhoneAcrossService;)[F
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/PhoneAcrossService;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/vivo/services/motion/PhoneAcrossService;->gravityValues:[F

    return-object v0
.end method

.method static synthetic access$600(Lcom/vivo/services/motion/PhoneAcrossService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/PhoneAcrossService;

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/vivo/services/motion/PhoneAcrossService;->aPickUpStaticFlag:Z

    return v0
.end method

.method static synthetic access$602(Lcom/vivo/services/motion/PhoneAcrossService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/motion/PhoneAcrossService;
    .param p1, "x1"    # Z

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/vivo/services/motion/PhoneAcrossService;->aPickUpStaticFlag:Z

    return p1
.end method

.method static synthetic access$700(Lcom/vivo/services/motion/PhoneAcrossService;)Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/PhoneAcrossService;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/vivo/services/motion/PhoneAcrossService;->mMoveAnalyzer:Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;

    return-object v0
.end method

.method static synthetic access$900(Lcom/vivo/services/motion/PhoneAcrossService;)Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/PhoneAcrossService;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/vivo/services/motion/PhoneAcrossService;->mDataAnalysis:Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;

    return-object v0
.end method

.method public static getInstance()Lcom/vivo/services/motion/PhoneAcrossService;
    .locals 1

    .prologue
    .line 680
    sget-object v0, Lcom/vivo/services/motion/PhoneAcrossService;->singlePhoneAcrossService:Lcom/vivo/services/motion/PhoneAcrossService;

    return-object v0
.end method


# virtual methods
.method public startMotionRecognitionService(Landroid/content/Context;Landroid/os/Handler;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 696
    iget-boolean v0, p0, Lcom/vivo/services/motion/PhoneAcrossService;->isPhoneAcrossServiceWorking:Z

    if-nez v0, :cond_0

    .line 698
    iput-boolean v4, p0, Lcom/vivo/services/motion/PhoneAcrossService;->aFilterFlag:Z

    .line 699
    iput-boolean v4, p0, Lcom/vivo/services/motion/PhoneAcrossService;->gFilterFlag:Z

    .line 700
    iput-boolean v1, p0, Lcom/vivo/services/motion/PhoneAcrossService;->aPickUpFlag:Z

    .line 701
    iput-boolean v1, p0, Lcom/vivo/services/motion/PhoneAcrossService;->aPickUpStaticFlag:Z

    .line 702
    iput-boolean v1, p0, Lcom/vivo/services/motion/PhoneAcrossService;->gPickUpFlag:Z

    .line 703
    iput-boolean v4, p0, Lcom/vivo/services/motion/PhoneAcrossService;->pickUpTriger:Z

    .line 704
    iput-boolean v4, p0, Lcom/vivo/services/motion/PhoneAcrossService;->isPhoneAcrossServiceWorking:Z

    .line 705
    iget-object v0, p0, Lcom/vivo/services/motion/PhoneAcrossService;->mMoveAnalyzer:Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;

    invoke-virtual {v0}, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->reset()V

    .line 706
    iget-object v0, p0, Lcom/vivo/services/motion/PhoneAcrossService;->mDataAnalysis:Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;

    invoke-virtual {v0}, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->reset()V

    .line 707
    iput-object p2, p0, Lcom/vivo/services/motion/PhoneAcrossService;->mCallBackHandler:Landroid/os/Handler;

    .line 708
    iput-object p1, p0, Lcom/vivo/services/motion/PhoneAcrossService;->mContext:Landroid/content/Context;

    .line 709
    new-instance v0, Lcom/vivo/services/motion/PhoneAcrossService$PhoneAcrossServiceHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vivo/services/motion/PhoneAcrossService$PhoneAcrossServiceHandler;-><init>(Lcom/vivo/services/motion/PhoneAcrossService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vivo/services/motion/PhoneAcrossService;->mServiceHandler:Landroid/os/Handler;

    .line 710
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/vivo/services/motion/PhoneAcrossService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 711
    iget-object v0, p0, Lcom/vivo/services/motion/PhoneAcrossService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/vivo/services/motion/PhoneAcrossService;->accelerometerListener:Lcom/vivo/services/motion/PhoneAcrossService$MotionSensorEventListener;

    iget-object v2, p0, Lcom/vivo/services/motion/PhoneAcrossService;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    const/16 v3, 0x61a8

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 713
    iget-object v0, p0, Lcom/vivo/services/motion/PhoneAcrossService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/vivo/services/motion/PhoneAcrossService;->linearAccelerationListener:Lcom/vivo/services/motion/PhoneAcrossService$MotionSensorEventListener;

    iget-object v2, p0, Lcom/vivo/services/motion/PhoneAcrossService;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 715
    iget-object v0, p0, Lcom/vivo/services/motion/PhoneAcrossService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/vivo/services/motion/PhoneAcrossService;->gyroscopeListener:Lcom/vivo/services/motion/PhoneAcrossService$MotionSensorEventListener;

    iget-object v2, p0, Lcom/vivo/services/motion/PhoneAcrossService;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 718
    :cond_0
    const-string v0, "PhoneAcrossService"

    const-string v1, "startMotionRecognitionService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    return v4
.end method

.method public stopMotionRecognitionService()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 725
    iget-boolean v0, p0, Lcom/vivo/services/motion/PhoneAcrossService;->isPhoneAcrossServiceWorking:Z

    if-ne v0, v4, :cond_0

    .line 727
    iput-boolean v2, p0, Lcom/vivo/services/motion/PhoneAcrossService;->aFilterFlag:Z

    .line 728
    iput-boolean v2, p0, Lcom/vivo/services/motion/PhoneAcrossService;->gFilterFlag:Z

    .line 729
    iget-object v0, p0, Lcom/vivo/services/motion/PhoneAcrossService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/vivo/services/motion/PhoneAcrossService;->accelerometerListener:Lcom/vivo/services/motion/PhoneAcrossService$MotionSensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 730
    iget-object v0, p0, Lcom/vivo/services/motion/PhoneAcrossService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/vivo/services/motion/PhoneAcrossService;->linearAccelerationListener:Lcom/vivo/services/motion/PhoneAcrossService$MotionSensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 731
    iget-object v0, p0, Lcom/vivo/services/motion/PhoneAcrossService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/vivo/services/motion/PhoneAcrossService;->gyroscopeListener:Lcom/vivo/services/motion/PhoneAcrossService$MotionSensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 732
    iput-boolean v2, p0, Lcom/vivo/services/motion/PhoneAcrossService;->isPhoneAcrossServiceWorking:Z

    .line 733
    iput-object v3, p0, Lcom/vivo/services/motion/PhoneAcrossService;->mCallBackHandler:Landroid/os/Handler;

    .line 734
    iput-object v3, p0, Lcom/vivo/services/motion/PhoneAcrossService;->mServiceHandler:Landroid/os/Handler;

    .line 735
    iput-object v3, p0, Lcom/vivo/services/motion/PhoneAcrossService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 737
    :cond_0
    const-string v0, "PhoneAcrossService"

    const-string v1, "stopMotionRecognitionService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    return v4
.end method
