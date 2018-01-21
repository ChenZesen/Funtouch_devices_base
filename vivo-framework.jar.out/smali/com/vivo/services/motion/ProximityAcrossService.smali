.class public final Lcom/vivo/services/motion/ProximityAcrossService;
.super Ljava/lang/Object;
.source "ProximityAcrossService.java"

# interfaces
.implements Lcom/vivo/services/motion/IMotionRecognitionService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/services/motion/ProximityAcrossService$1;,
        Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;,
        Lcom/vivo/services/motion/ProximityAcrossService$ProximityAcrossServiceHandler;,
        Lcom/vivo/services/motion/ProximityAcrossService$MotionSensorEventListener;,
        Lcom/vivo/services/motion/ProximityAcrossService$SensorData;
    }
.end annotation


# static fields
.field private static DBG:Z = false

.field private static final MSG_PROX_ACROSS_DET_START:I = 0x1

.field private static final MSG_PROX_ACROSS_DET_STOP:I = 0x2

.field private static final MSG_PROX_ACROSS_DET_TRIGER:I = 0x3

.field private static final PROX_ACROSS_PATH:Ljava/lang/String; = "/sys/bus/platform/drivers/als_ps/prox_across"

.field private static final TAG:Ljava/lang/String; = "ProximityAcrossService"

.field private static final TYPICAL_PROXIMITY_THRESHOLD:F = 5.0f

.field private static acc_data_x:F

.field private static acc_data_y:F

.field private static acc_data_z:F

.field private static last_acc_x:J

.field private static last_acc_y:J

.field private static last_acc_z:J

.field private static final mObjectLock:Ljava/lang/Object;

.field private static mSingleProximityAcrossService:Lcom/vivo/services/motion/ProximityAcrossService;


# instance fields
.field private TYPE_PROXIMITY_ACROSS:I

.field private isACC_z:Z

.field private isProximityAcrossWorking:Z

.field private isSupportAcross:Z

.field private mAcceleromererListener:Lcom/vivo/services/motion/ProximityAcrossService$MotionSensorEventListener;

.field private mAcrossAnalyzer:Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;

.field private mCallBackHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mData:[Lcom/vivo/services/motion/ProximityAcrossService$SensorData;

.field private mNeedUpdateWorkingState:Z

.field private mProximityAcrossListener:Lcom/vivo/services/motion/ProximityAcrossService$MotionSensorEventListener;

.field private mProximityListener:Lcom/vivo/services/motion/ProximityAcrossService$MotionSensorEventListener;

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mServiceHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-wide/32 v2, 0xffff

    .line 38
    new-instance v0, Lcom/vivo/services/motion/ProximityAcrossService;

    invoke-direct {v0}, Lcom/vivo/services/motion/ProximityAcrossService;-><init>()V

    sput-object v0, Lcom/vivo/services/motion/ProximityAcrossService;->mSingleProximityAcrossService:Lcom/vivo/services/motion/ProximityAcrossService;

    .line 47
    const/4 v0, 0x1

    sput-boolean v0, Lcom/vivo/services/motion/ProximityAcrossService;->DBG:Z

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/vivo/services/motion/ProximityAcrossService;->mObjectLock:Ljava/lang/Object;

    .line 77
    sput v1, Lcom/vivo/services/motion/ProximityAcrossService;->acc_data_x:F

    .line 78
    sput v1, Lcom/vivo/services/motion/ProximityAcrossService;->acc_data_y:F

    .line 79
    const v0, 0x411ccccd    # 9.8f

    sput v0, Lcom/vivo/services/motion/ProximityAcrossService;->acc_data_z:F

    .line 80
    sput-wide v2, Lcom/vivo/services/motion/ProximityAcrossService;->last_acc_x:J

    sput-wide v2, Lcom/vivo/services/motion/ProximityAcrossService;->last_acc_y:J

    sput-wide v2, Lcom/vivo/services/motion/ProximityAcrossService;->last_acc_z:J

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 654
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-boolean v2, p0, Lcom/vivo/services/motion/ProximityAcrossService;->isProximityAcrossWorking:Z

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/services/motion/ProximityAcrossService;->isACC_z:Z

    .line 43
    iput-object v1, p0, Lcom/vivo/services/motion/ProximityAcrossService;->mCallBackHandler:Landroid/os/Handler;

    .line 44
    iput-object v1, p0, Lcom/vivo/services/motion/ProximityAcrossService;->mServiceHandler:Landroid/os/Handler;

    .line 45
    iput-object v1, p0, Lcom/vivo/services/motion/ProximityAcrossService;->mContext:Landroid/content/Context;

    .line 58
    iput-boolean v2, p0, Lcom/vivo/services/motion/ProximityAcrossService;->mNeedUpdateWorkingState:Z

    .line 61
    iput-boolean v2, p0, Lcom/vivo/services/motion/ProximityAcrossService;->isSupportAcross:Z

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/services/motion/ProximityAcrossService;->TYPE_PROXIMITY_ACROSS:I

    .line 655
    new-instance v0, Lcom/vivo/services/motion/ProximityAcrossService$MotionSensorEventListener;

    invoke-direct {v0, p0, v1}, Lcom/vivo/services/motion/ProximityAcrossService$MotionSensorEventListener;-><init>(Lcom/vivo/services/motion/ProximityAcrossService;Lcom/vivo/services/motion/ProximityAcrossService$1;)V

    iput-object v0, p0, Lcom/vivo/services/motion/ProximityAcrossService;->mAcceleromererListener:Lcom/vivo/services/motion/ProximityAcrossService$MotionSensorEventListener;

    .line 657
    new-instance v0, Lcom/vivo/services/motion/ProximityAcrossService$MotionSensorEventListener;

    invoke-direct {v0, p0, v1}, Lcom/vivo/services/motion/ProximityAcrossService$MotionSensorEventListener;-><init>(Lcom/vivo/services/motion/ProximityAcrossService;Lcom/vivo/services/motion/ProximityAcrossService$1;)V

    iput-object v0, p0, Lcom/vivo/services/motion/ProximityAcrossService;->mProximityAcrossListener:Lcom/vivo/services/motion/ProximityAcrossService$MotionSensorEventListener;

    .line 658
    new-instance v0, Lcom/vivo/services/motion/ProximityAcrossService$MotionSensorEventListener;

    invoke-direct {v0, p0, v1}, Lcom/vivo/services/motion/ProximityAcrossService$MotionSensorEventListener;-><init>(Lcom/vivo/services/motion/ProximityAcrossService;Lcom/vivo/services/motion/ProximityAcrossService$1;)V

    iput-object v0, p0, Lcom/vivo/services/motion/ProximityAcrossService;->mProximityListener:Lcom/vivo/services/motion/ProximityAcrossService$MotionSensorEventListener;

    .line 660
    new-instance v0, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;

    invoke-direct {v0, p0}, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;-><init>(Lcom/vivo/services/motion/ProximityAcrossService;)V

    iput-object v0, p0, Lcom/vivo/services/motion/ProximityAcrossService;->mAcrossAnalyzer:Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;

    .line 661
    invoke-static {}, Lcom/vivo/services/motion/ProximityAcrossService;->jugdeNeedUpdateWorkingState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/vivo/services/motion/ProximityAcrossService;->mNeedUpdateWorkingState:Z

    .line 662
    return-void
.end method

.method static synthetic access$000(Lcom/vivo/services/motion/ProximityAcrossService;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/ProximityAcrossService;

    .prologue
    .line 35
    iget v0, p0, Lcom/vivo/services/motion/ProximityAcrossService;->TYPE_PROXIMITY_ACROSS:I

    return v0
.end method

.method static synthetic access$100(Lcom/vivo/services/motion/ProximityAcrossService;)Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/ProximityAcrossService;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vivo/services/motion/ProximityAcrossService;->mAcrossAnalyzer:Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/vivo/services/motion/ProximityAcrossService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/ProximityAcrossService;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vivo/services/motion/ProximityAcrossService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/vivo/services/motion/ProximityAcrossService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/ProximityAcrossService;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vivo/services/motion/ProximityAcrossService;->mCallBackHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300()J
    .locals 2

    .prologue
    .line 35
    sget-wide v0, Lcom/vivo/services/motion/ProximityAcrossService;->last_acc_x:J

    return-wide v0
.end method

.method static synthetic access$1302(J)J
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 35
    sput-wide p0, Lcom/vivo/services/motion/ProximityAcrossService;->last_acc_x:J

    return-wide p0
.end method

.method static synthetic access$1400()J
    .locals 2

    .prologue
    .line 35
    sget-wide v0, Lcom/vivo/services/motion/ProximityAcrossService;->last_acc_y:J

    return-wide v0
.end method

.method static synthetic access$1402(J)J
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 35
    sput-wide p0, Lcom/vivo/services/motion/ProximityAcrossService;->last_acc_y:J

    return-wide p0
.end method

.method static synthetic access$1500()J
    .locals 2

    .prologue
    .line 35
    sget-wide v0, Lcom/vivo/services/motion/ProximityAcrossService;->last_acc_z:J

    return-wide v0
.end method

.method static synthetic access$1502(J)J
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 35
    sput-wide p0, Lcom/vivo/services/motion/ProximityAcrossService;->last_acc_z:J

    return-wide p0
.end method

.method static synthetic access$1600(Lcom/vivo/services/motion/ProximityAcrossService;)Landroid/hardware/SensorManager;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/ProximityAcrossService;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vivo/services/motion/ProximityAcrossService;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/vivo/services/motion/ProximityAcrossService;Landroid/hardware/SensorManager;)Landroid/hardware/SensorManager;
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/motion/ProximityAcrossService;
    .param p1, "x1"    # Landroid/hardware/SensorManager;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/vivo/services/motion/ProximityAcrossService;->mSensorManager:Landroid/hardware/SensorManager;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/vivo/services/motion/ProximityAcrossService;)Landroid/hardware/Sensor;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/ProximityAcrossService;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vivo/services/motion/ProximityAcrossService;->mProximitySensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/vivo/services/motion/ProximityAcrossService;Landroid/hardware/Sensor;)Landroid/hardware/Sensor;
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/motion/ProximityAcrossService;
    .param p1, "x1"    # Landroid/hardware/Sensor;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/vivo/services/motion/ProximityAcrossService;->mProximitySensor:Landroid/hardware/Sensor;

    return-object p1
.end method

.method static synthetic access$200(Lcom/vivo/services/motion/ProximityAcrossService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/ProximityAcrossService;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/vivo/services/motion/ProximityAcrossService;->isProximityAcrossWorking:Z

    return v0
.end method

.method static synthetic access$300(Lcom/vivo/services/motion/ProximityAcrossService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/ProximityAcrossService;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/vivo/services/motion/ProximityAcrossService;->callNotice()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/vivo/services/motion/ProximityAcrossService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/ProximityAcrossService;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/vivo/services/motion/ProximityAcrossService;->isACC_z:Z

    return v0
.end method

.method static synthetic access$402(Lcom/vivo/services/motion/ProximityAcrossService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/motion/ProximityAcrossService;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/vivo/services/motion/ProximityAcrossService;->isACC_z:Z

    return p1
.end method

.method static synthetic access$500()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/vivo/services/motion/ProximityAcrossService;->mObjectLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lcom/vivo/services/motion/ProximityAcrossService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/ProximityAcrossService;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vivo/services/motion/ProximityAcrossService;->mServiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700()F
    .locals 1

    .prologue
    .line 35
    sget v0, Lcom/vivo/services/motion/ProximityAcrossService;->acc_data_x:F

    return v0
.end method

.method static synthetic access$702(F)F
    .locals 0
    .param p0, "x0"    # F

    .prologue
    .line 35
    sput p0, Lcom/vivo/services/motion/ProximityAcrossService;->acc_data_x:F

    return p0
.end method

.method static synthetic access$800()F
    .locals 1

    .prologue
    .line 35
    sget v0, Lcom/vivo/services/motion/ProximityAcrossService;->acc_data_y:F

    return v0
.end method

.method static synthetic access$802(F)F
    .locals 0
    .param p0, "x0"    # F

    .prologue
    .line 35
    sput p0, Lcom/vivo/services/motion/ProximityAcrossService;->acc_data_y:F

    return p0
.end method

.method static synthetic access$900()F
    .locals 1

    .prologue
    .line 35
    sget v0, Lcom/vivo/services/motion/ProximityAcrossService;->acc_data_z:F

    return v0
.end method

.method static synthetic access$902(F)F
    .locals 0
    .param p0, "x0"    # F

    .prologue
    .line 35
    sput p0, Lcom/vivo/services/motion/ProximityAcrossService;->acc_data_z:F

    return p0
.end method

.method private callNotice()Z
    .locals 6

    .prologue
    .line 281
    const/4 v0, 0x0

    .line 283
    .local v0, "CallState":I
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 284
    .local v2, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 285
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getCallState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 290
    .end local v2    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 291
    const-string v3, "ProximityAcrossService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CallState:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const/4 v3, 0x1

    .line 294
    :goto_1
    return v3

    .line 287
    :catch_0
    move-exception v1

    .line 288
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v3, "ProximityAcrossService"

    const-string v4, "RemoteException from getPhoneInterface()"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 294
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static getInstance()Lcom/vivo/services/motion/ProximityAcrossService;
    .locals 1

    .prologue
    .line 650
    sget-object v0, Lcom/vivo/services/motion/ProximityAcrossService;->mSingleProximityAcrossService:Lcom/vivo/services/motion/ProximityAcrossService;

    return-object v0
.end method

.method private isSupportProximityAcross()Z
    .locals 5

    .prologue
    .line 807
    iget-object v3, p0, Lcom/vivo/services/motion/ProximityAcrossService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v3, :cond_1

    .line 808
    iget-object v3, p0, Lcom/vivo/services/motion/ProximityAcrossService;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 809
    .local v0, "allSensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    .line 810
    .local v1, "i":Landroid/hardware/Sensor;
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BBK-proxacross"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 812
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    iput v3, p0, Lcom/vivo/services/motion/ProximityAcrossService;->TYPE_PROXIMITY_ACROSS:I

    .line 813
    const/4 v3, 0x1

    .line 817
    .end local v0    # "allSensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .end local v1    # "i":Landroid/hardware/Sensor;
    .end local v2    # "i$":Ljava/util/Iterator;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static jugdeNeedUpdateWorkingState()Z
    .locals 8

    .prologue
    .line 761
    const/4 v4, 0x4

    new-array v1, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "PD1421"

    aput-object v5, v1, v4

    const/4 v4, 0x1

    const-string v5, "PD1421L"

    aput-object v5, v1, v4

    const/4 v4, 0x2

    const-string v5, "PD1421LG4"

    aput-object v5, v1, v4

    const/4 v4, 0x3

    const-string v5, "PD1421V"

    aput-object v5, v1, v4

    .line 762
    .local v1, "mNeedUpdateWorkingStateProjects":[Ljava/lang/String;
    const-string v4, "ro.product.model.bbk"

    const-string v5, "unkown"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 763
    .local v2, "model":Ljava/lang/String;
    const-string v5, "ProximityAcrossService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mNeedUpdateWorkingStateProjects="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v1, :cond_1

    const-string v4, "null"

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    const/4 v3, 0x0

    .line 765
    .local v3, "need":Z
    if-eqz v1, :cond_0

    .line 766
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 767
    const-string v4, "ProximityAcrossService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "model:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " i="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    aget-object v4, v1, v0

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 769
    const/4 v3, 0x1

    .line 775
    .end local v0    # "i":I
    :cond_0
    return v3

    .line 763
    .end local v3    # "need":Z
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "not_Null length:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v7, v1

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 766
    .restart local v0    # "i":I
    .restart local v3    # "need":Z
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private updateWorkingState(Z)V
    .locals 3
    .param p1, "working"    # Z

    .prologue
    .line 778
    const-string v0, "ProximityAcrossService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateWorkingState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    if-eqz p1, :cond_0

    .line 780
    const-string v0, "/sys/bus/platform/drivers/als_ps/prox_across"

    const-string v1, "1"

    invoke-direct {p0, v0, v1}, Lcom/vivo/services/motion/ProximityAcrossService;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    :goto_0
    return-void

    .line 782
    :cond_0
    const-string v0, "/sys/bus/platform/drivers/als_ps/prox_across"

    const-string v1, "0"

    invoke-direct {p0, v0, v1}, Lcom/vivo/services/motion/ProximityAcrossService;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private writeFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 788
    const/4 v1, 0x0

    .line 790
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 791
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 795
    if-eqz v2, :cond_2

    .line 797
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 802
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 798
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    move-object v1, v2

    .line 799
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 792
    :catch_1
    move-exception v0

    .line 793
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v3, "ProximityAcrossService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to write "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 795
    if-eqz v1, :cond_0

    .line 797
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 798
    :catch_2
    move-exception v3

    goto :goto_0

    .line 795
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_2
    if-eqz v1, :cond_1

    .line 797
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 799
    :cond_1
    :goto_3
    throw v3

    .line 798
    :catch_3
    move-exception v4

    goto :goto_3

    .line 795
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 792
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :cond_2
    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0
.end method


# virtual methods
.method public startMotionRecognitionService(Landroid/content/Context;Landroid/os/Handler;)Z
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v8, 0x1

    .line 667
    const-string v2, "ProximityAcrossService"

    const-string v3, "startMotionRecognitionService "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    iget-boolean v2, p0, Lcom/vivo/services/motion/ProximityAcrossService;->isProximityAcrossWorking:Z

    if-nez v2, :cond_1

    .line 670
    iput-object p1, p0, Lcom/vivo/services/motion/ProximityAcrossService;->mContext:Landroid/content/Context;

    .line 671
    iput-boolean v8, p0, Lcom/vivo/services/motion/ProximityAcrossService;->isProximityAcrossWorking:Z

    .line 672
    iput-object p2, p0, Lcom/vivo/services/motion/ProximityAcrossService;->mCallBackHandler:Landroid/os/Handler;

    .line 673
    iget-object v2, p0, Lcom/vivo/services/motion/ProximityAcrossService;->mAcrossAnalyzer:Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;

    invoke-virtual {v2}, Lcom/vivo/services/motion/ProximityAcrossService$AcrossAnalyzer;->reset()V

    .line 674
    const-string v2, "ro.product.model.bbk"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 675
    .local v1, "prop":Ljava/lang/String;
    new-instance v2, Lcom/vivo/services/motion/ProximityAcrossService$ProximityAcrossServiceHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/vivo/services/motion/ProximityAcrossService$ProximityAcrossServiceHandler;-><init>(Lcom/vivo/services/motion/ProximityAcrossService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/vivo/services/motion/ProximityAcrossService;->mServiceHandler:Landroid/os/Handler;

    .line 677
    iget-object v2, p0, Lcom/vivo/services/motion/ProximityAcrossService;->mContext:Landroid/content/Context;

    const-string v3, "sensor"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    iput-object v2, p0, Lcom/vivo/services/motion/ProximityAcrossService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 679
    invoke-direct {p0}, Lcom/vivo/services/motion/ProximityAcrossService;->isSupportProximityAcross()Z

    move-result v2

    iput-boolean v2, p0, Lcom/vivo/services/motion/ProximityAcrossService;->isSupportAcross:Z

    .line 680
    const-string v2, "ProximityAcrossService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "is the project support across "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/vivo/services/motion/ProximityAcrossService;->isSupportAcross:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    sget-object v3, Lcom/vivo/services/motion/ProximityAcrossService;->mObjectLock:Ljava/lang/Object;

    monitor-enter v3

    .line 683
    :try_start_0
    iget-object v2, p0, Lcom/vivo/services/motion/ProximityAcrossService;->mServiceHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 685
    iget-object v2, p0, Lcom/vivo/services/motion/ProximityAcrossService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/vivo/services/motion/ProximityAcrossService;->mAcceleromererListener:Lcom/vivo/services/motion/ProximityAcrossService$MotionSensorEventListener;

    iget-object v5, p0, Lcom/vivo/services/motion/ProximityAcrossService;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v5

    const/16 v6, 0x61a8

    iget-object v7, p0, Lcom/vivo/services/motion/ProximityAcrossService;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 688
    iget-boolean v2, p0, Lcom/vivo/services/motion/ProximityAcrossService;->isSupportAcross:Z

    if-ne v2, v8, :cond_3

    .line 689
    iget-object v2, p0, Lcom/vivo/services/motion/ProximityAcrossService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/vivo/services/motion/ProximityAcrossService;->mProximityAcrossListener:Lcom/vivo/services/motion/ProximityAcrossService$MotionSensorEventListener;

    iget-object v5, p0, Lcom/vivo/services/motion/ProximityAcrossService;->mSensorManager:Landroid/hardware/SensorManager;

    iget v6, p0, Lcom/vivo/services/motion/ProximityAcrossService;->TYPE_PROXIMITY_ACROSS:I

    invoke-virtual {v5, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v5

    const/16 v6, 0x2710

    iget-object v7, p0, Lcom/vivo/services/motion/ProximityAcrossService;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 704
    :cond_0
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 705
    iget-boolean v2, p0, Lcom/vivo/services/motion/ProximityAcrossService;->mNeedUpdateWorkingState:Z

    if-eqz v2, :cond_6

    .line 706
    invoke-direct {p0, v8}, Lcom/vivo/services/motion/ProximityAcrossService;->updateWorkingState(Z)V

    .line 713
    .end local v1    # "prop":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 714
    .local v0, "msg":Landroid/os/Message;
    iput v8, v0, Landroid/os/Message;->what:I

    .line 715
    sget-object v3, Lcom/vivo/services/motion/ProximityAcrossService;->mObjectLock:Ljava/lang/Object;

    monitor-enter v3

    .line 716
    :try_start_1
    iget-object v2, p0, Lcom/vivo/services/motion/ProximityAcrossService;->mServiceHandler:Landroid/os/Handler;

    if-eqz v2, :cond_2

    .line 718
    iget-object v2, p0, Lcom/vivo/services/motion/ProximityAcrossService;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 720
    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 721
    return v8

    .line 692
    .end local v0    # "msg":Landroid/os/Message;
    .restart local v1    # "prop":Ljava/lang/String;
    :cond_3
    if-eqz v1, :cond_5

    :try_start_2
    const-string v2, "PD1421"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "PD1421L"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "PD1421D"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "PD1421LG4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "PD1421V"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 694
    :cond_4
    iget-object v2, p0, Lcom/vivo/services/motion/ProximityAcrossService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/vivo/services/motion/ProximityAcrossService;->mProximityListener:Lcom/vivo/services/motion/ProximityAcrossService$MotionSensorEventListener;

    iget-object v5, p0, Lcom/vivo/services/motion/ProximityAcrossService;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v5

    const/16 v6, 0x2710

    iget-object v7, p0, Lcom/vivo/services/motion/ProximityAcrossService;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    goto :goto_0

    .line 704
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 699
    :cond_5
    :try_start_3
    iget-object v2, p0, Lcom/vivo/services/motion/ProximityAcrossService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/vivo/services/motion/ProximityAcrossService;->mProximityListener:Lcom/vivo/services/motion/ProximityAcrossService$MotionSensorEventListener;

    iget-object v5, p0, Lcom/vivo/services/motion/ProximityAcrossService;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v5

    const/16 v6, 0x61a8

    iget-object v7, p0, Lcom/vivo/services/motion/ProximityAcrossService;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 708
    :cond_6
    const-string v2, "ProximityAcrossService"

    const-string v3, "updateWorkingState start not need update!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 720
    .end local v1    # "prop":Ljava/lang/String;
    .restart local v0    # "msg":Landroid/os/Message;
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2
.end method

.method public stopMotionRecognitionService()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 727
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 728
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 729
    sget-object v2, Lcom/vivo/services/motion/ProximityAcrossService;->mObjectLock:Ljava/lang/Object;

    monitor-enter v2

    .line 730
    :try_start_0
    iget-object v1, p0, Lcom/vivo/services/motion/ProximityAcrossService;->mServiceHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 732
    iget-object v1, p0, Lcom/vivo/services/motion/ProximityAcrossService;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 734
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 735
    const-string v1, "ProximityAcrossService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopMotionRecognitionService "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/vivo/services/motion/ProximityAcrossService;->isProximityAcrossWorking:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    iget-boolean v1, p0, Lcom/vivo/services/motion/ProximityAcrossService;->isProximityAcrossWorking:Z

    if-ne v1, v6, :cond_2

    .line 738
    iput-boolean v5, p0, Lcom/vivo/services/motion/ProximityAcrossService;->isProximityAcrossWorking:Z

    .line 739
    iput-object v4, p0, Lcom/vivo/services/motion/ProximityAcrossService;->mCallBackHandler:Landroid/os/Handler;

    .line 740
    iput-object v4, p0, Lcom/vivo/services/motion/ProximityAcrossService;->mServiceHandler:Landroid/os/Handler;

    .line 741
    sget-object v2, Lcom/vivo/services/motion/ProximityAcrossService;->mObjectLock:Ljava/lang/Object;

    monitor-enter v2

    .line 742
    :try_start_1
    iget-object v1, p0, Lcom/vivo/services/motion/ProximityAcrossService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v1, :cond_1

    .line 743
    iget-object v1, p0, Lcom/vivo/services/motion/ProximityAcrossService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/vivo/services/motion/ProximityAcrossService;->mAcceleromererListener:Lcom/vivo/services/motion/ProximityAcrossService$MotionSensorEventListener;

    invoke-virtual {v1, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 744
    :cond_1
    iget-boolean v1, p0, Lcom/vivo/services/motion/ProximityAcrossService;->isSupportAcross:Z

    if-eqz v1, :cond_3

    .line 745
    iget-object v1, p0, Lcom/vivo/services/motion/ProximityAcrossService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/vivo/services/motion/ProximityAcrossService;->mProximityAcrossListener:Lcom/vivo/services/motion/ProximityAcrossService$MotionSensorEventListener;

    invoke-virtual {v1, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 748
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vivo/services/motion/ProximityAcrossService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 749
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 750
    iget-boolean v1, p0, Lcom/vivo/services/motion/ProximityAcrossService;->mNeedUpdateWorkingState:Z

    if-eqz v1, :cond_4

    .line 751
    invoke-direct {p0, v5}, Lcom/vivo/services/motion/ProximityAcrossService;->updateWorkingState(Z)V

    .line 756
    :cond_2
    :goto_1
    return v6

    .line 734
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 747
    :cond_3
    :try_start_3
    iget-object v1, p0, Lcom/vivo/services/motion/ProximityAcrossService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/vivo/services/motion/ProximityAcrossService;->mProximityListener:Lcom/vivo/services/motion/ProximityAcrossService$MotionSensorEventListener;

    invoke-virtual {v1, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0

    .line 749
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 753
    :cond_4
    const-string v1, "ProximityAcrossService"

    const-string v2, "updateWorkingState stop not need update!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
