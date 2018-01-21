.class public final Lcom/vivo/services/motion/ScreenOffWakeupService;
.super Ljava/lang/Object;
.source "ScreenOffWakeupService.java"

# interfaces
.implements Lcom/vivo/services/motion/IMotionRecognitionService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/services/motion/ScreenOffWakeupService$1;,
        Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;,
        Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupAnalyzer;,
        Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupServiceHandler;,
        Lcom/vivo/services/motion/ScreenOffWakeupService$MotionSensorEventListener;,
        Lcom/vivo/services/motion/ScreenOffWakeupService$SensorData;
    }
.end annotation


# static fields
.field private static final DATA_COUNT:I = 0x6

.field private static DBG:Z = false

.field private static final HALL_STATE_PATH:Ljava/lang/String; = "/sys/class/switch/hall/state"

.field private static final MSG_SCREEN_OFF_WAKEUP_DET_START:I = 0x1

.field private static final MSG_SCREEN_OFF_WAKEUP_DET_STOP:I = 0x2

.field private static final MSG_SCREEN_OFF_WAKEUP_DET_TRIGER:I = 0x3

.field private static final MSG_SCREEN_OFF_WAKEUP_Get_AccData:I = 0x5

.field private static final MSG_SCREEN_OFF_WAKEUP_STOP_ACC_DET:I = 0x4

.field private static final MSG_SCREEN_OFF_WAKEUP_TEM_RESET_DET:I = 0x6

.field private static MTK_PLATFORM:Ljava/lang/String; = null

.field private static PLATFORM_TAG:Ljava/lang/String; = null

.field private static QCOM_PLATFORM:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "ScreenOffWakeupService"

.field private static final TYPICAL_PROXIMITY_THRESHOLD:F = 5.0f

.field private static datacount:I

.field private static final mObjectLock:Ljava/lang/Object;

.field private static mSingleScreenOffWakeupService:Lcom/vivo/services/motion/ScreenOffWakeupService;

.field private static newState:I

.field private static registerstate:I


# instance fields
.field private getAccDataHandler:Landroid/os/Handler;

.field private isAuthWorking:Z

.field private isScreenOffWakeupWorking:Z

.field private mAWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mAcceleromererListener:Lcom/vivo/services/motion/ScreenOffWakeupService$MotionSensorEventListener;

.field private mBWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mCallBackHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mData:[Lcom/vivo/services/motion/ScreenOffWakeupService$SensorData;

.field private mProximityAnalyzer:Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;

.field private mProximityListener:Lcom/vivo/services/motion/ScreenOffWakeupService$MotionSensorEventListener;

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mScreenOffWakeupAnalyzer:Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupAnalyzer;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mServiceHandler:Landroid/os/Handler;

.field private mVivoSensorTest:Lcom/sensoroperate/VivoSensorTest;

.field private pm:Landroid/os/PowerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 31
    new-instance v0, Lcom/vivo/services/motion/ScreenOffWakeupService;

    invoke-direct {v0}, Lcom/vivo/services/motion/ScreenOffWakeupService;-><init>()V

    sput-object v0, Lcom/vivo/services/motion/ScreenOffWakeupService;->mSingleScreenOffWakeupService:Lcom/vivo/services/motion/ScreenOffWakeupService;

    .line 42
    sput-boolean v2, Lcom/vivo/services/motion/ScreenOffWakeupService;->DBG:Z

    .line 64
    sput v2, Lcom/vivo/services/motion/ScreenOffWakeupService;->newState:I

    .line 66
    const-string v0, "QCOM"

    sput-object v0, Lcom/vivo/services/motion/ScreenOffWakeupService;->QCOM_PLATFORM:Ljava/lang/String;

    .line 67
    const-string v0, "MTK"

    sput-object v0, Lcom/vivo/services/motion/ScreenOffWakeupService;->MTK_PLATFORM:Ljava/lang/String;

    .line 68
    const-string v0, "ro.vivo.product.solution"

    sput-object v0, Lcom/vivo/services/motion/ScreenOffWakeupService;->PLATFORM_TAG:Ljava/lang/String;

    .line 79
    sput v1, Lcom/vivo/services/motion/ScreenOffWakeupService;->datacount:I

    .line 80
    sput v1, Lcom/vivo/services/motion/ScreenOffWakeupService;->registerstate:I

    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/vivo/services/motion/ScreenOffWakeupService;->mObjectLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 705
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean v0, p0, Lcom/vivo/services/motion/ScreenOffWakeupService;->isScreenOffWakeupWorking:Z

    .line 35
    iput-object v1, p0, Lcom/vivo/services/motion/ScreenOffWakeupService;->mCallBackHandler:Landroid/os/Handler;

    .line 36
    iput-object v1, p0, Lcom/vivo/services/motion/ScreenOffWakeupService;->mServiceHandler:Landroid/os/Handler;

    .line 38
    iput-object v1, p0, Lcom/vivo/services/motion/ScreenOffWakeupService;->getAccDataHandler:Landroid/os/Handler;

    .line 39
    iput-object v1, p0, Lcom/vivo/services/motion/ScreenOffWakeupService;->mContext:Landroid/content/Context;

    .line 69
    iput-object v1, p0, Lcom/vivo/services/motion/ScreenOffWakeupService;->pm:Landroid/os/PowerManager;

    .line 70
    iput-object v1, p0, Lcom/vivo/services/motion/ScreenOffWakeupService;->mAWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 71
    iput-object v1, p0, Lcom/vivo/services/motion/ScreenOffWakeupService;->mBWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 73
    iput-boolean v0, p0, Lcom/vivo/services/motion/ScreenOffWakeupService;->isAuthWorking:Z

    .line 77
    iput-object v1, p0, Lcom/vivo/services/motion/ScreenOffWakeupService;->mVivoSensorTest:Lcom/sensoroperate/VivoSensorTest;

    .line 706
    new-instance v0, Lcom/vivo/services/motion/ScreenOffWakeupService$MotionSensorEventListener;

    invoke-direct {v0, p0, v1}, Lcom/vivo/services/motion/ScreenOffWakeupService$MotionSensorEventListener;-><init>(Lcom/vivo/services/motion/ScreenOffWakeupService;Lcom/vivo/services/motion/ScreenOffWakeupService$1;)V

    iput-object v0, p0, Lcom/vivo/services/motion/ScreenOffWakeupService;->mAcceleromererListener:Lcom/vivo/services/motion/ScreenOffWakeupService$MotionSensorEventListener;

    .line 707
    new-instance v0, Lcom/vivo/services/motion/ScreenOffWakeupService$MotionSensorEventListener;

    invoke-direct {v0, p0, v1}, Lcom/vivo/services/motion/ScreenOffWakeupService$MotionSensorEventListener;-><init>(Lcom/vivo/services/motion/ScreenOffWakeupService;Lcom/vivo/services/motion/ScreenOffWakeupService$1;)V

    iput-object v0, p0, Lcom/vivo/services/motion/ScreenOffWakeupService;->mProximityListener:Lcom/vivo/services/motion/ScreenOffWakeupService$MotionSensorEventListener;

    .line 708
    new-instance v0, Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupAnalyzer;

    invoke-direct {v0, p0}, Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupAnalyzer;-><init>(Lcom/vivo/services/motion/ScreenOffWakeupService;)V

    iput-object v0, p0, Lcom/vivo/services/motion/ScreenOffWakeupService;->mScreenOffWakeupAnalyzer:Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupAnalyzer;

    .line 709
    new-instance v0, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;

    invoke-direct {v0, p0}, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;-><init>(Lcom/vivo/services/motion/ScreenOffWakeupService;)V

    iput-object v0, p0, Lcom/vivo/services/motion/ScreenOffWakeupService;->mProximityAnalyzer:Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;

    .line 710
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 28
    sget v0, Lcom/vivo/services/motion/ScreenOffWakeupService;->registerstate:I

    return v0
.end method

.method static synthetic access$002(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 28
    sput p0, Lcom/vivo/services/motion/ScreenOffWakeupService;->registerstate:I

    return p0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 28
    sget v0, Lcom/vivo/services/motion/ScreenOffWakeupService;->datacount:I

    return v0
.end method

.method static synthetic access$1000(Lcom/vivo/services/motion/ScreenOffWakeupService;)Landroid/hardware/SensorManager;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/ScreenOffWakeupService;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/vivo/services/motion/ScreenOffWakeupService;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/vivo/services/motion/ScreenOffWakeupService;Landroid/hardware/SensorManager;)Landroid/hardware/SensorManager;
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/motion/ScreenOffWakeupService;
    .param p1, "x1"    # Landroid/hardware/SensorManager;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/vivo/services/motion/ScreenOffWakeupService;->mSensorManager:Landroid/hardware/SensorManager;

    return-object p1
.end method

.method static synthetic access$102(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 28
    sput p0, Lcom/vivo/services/motion/ScreenOffWakeupService;->datacount:I

    return p0
.end method

.method static synthetic access$1100(Lcom/vivo/services/motion/ScreenOffWakeupService;)Lcom/vivo/services/motion/ScreenOffWakeupService$MotionSensorEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/ScreenOffWakeupService;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/vivo/services/motion/ScreenOffWakeupService;->mAcceleromererListener:Lcom/vivo/services/motion/ScreenOffWakeupService$MotionSensorEventListener;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/vivo/services/motion/ScreenOffWakeupService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/ScreenOffWakeupService;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/vivo/services/motion/ScreenOffWakeupService;->isAuthWorking:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/vivo/services/motion/ScreenOffWakeupService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/motion/ScreenOffWakeupService;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/vivo/services/motion/ScreenOffWakeupService;->isAuthWorking:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/vivo/services/motion/ScreenOffWakeupService;)Lcom/sensoroperate/VivoSensorTest;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/ScreenOffWakeupService;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/vivo/services/motion/ScreenOffWakeupService;->mVivoSensorTest:Lcom/sensoroperate/VivoSensorTest;

    return-object v0
.end method

.method static synthetic access$1500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/vivo/services/motion/ScreenOffWakeupService;->PLATFORM_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/vivo/services/motion/ScreenOffWakeupService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/ScreenOffWakeupService;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/vivo/services/motion/ScreenOffWakeupService;->mBWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/vivo/services/motion/ScreenOffWakeupService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/ScreenOffWakeupService;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/vivo/services/motion/ScreenOffWakeupService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/vivo/services/motion/ScreenOffWakeupService;)Landroid/hardware/Sensor;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/ScreenOffWakeupService;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/vivo/services/motion/ScreenOffWakeupService;->mProximitySensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/vivo/services/motion/ScreenOffWakeupService;Landroid/hardware/Sensor;)Landroid/hardware/Sensor;
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/motion/ScreenOffWakeupService;
    .param p1, "x1"    # Landroid/hardware/Sensor;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/vivo/services/motion/ScreenOffWakeupService;->mProximitySensor:Landroid/hardware/Sensor;

    return-object p1
.end method

.method static synthetic access$1900()I
    .locals 1

    .prologue
    .line 28
    sget v0, Lcom/vivo/services/motion/ScreenOffWakeupService;->newState:I

    return v0
.end method

.method static synthetic access$1902(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 28
    sput p0, Lcom/vivo/services/motion/ScreenOffWakeupService;->newState:I

    return p0
.end method

.method static synthetic access$200(Lcom/vivo/services/motion/ScreenOffWakeupService;)Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupAnalyzer;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/ScreenOffWakeupService;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/vivo/services/motion/ScreenOffWakeupService;->mScreenOffWakeupAnalyzer:Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupAnalyzer;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/vivo/services/motion/ScreenOffWakeupService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/ScreenOffWakeupService;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/vivo/services/motion/ScreenOffWakeupService;->mAWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/vivo/services/motion/ScreenOffWakeupService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/ScreenOffWakeupService;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/vivo/services/motion/ScreenOffWakeupService;->getAccDataHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/vivo/services/motion/ScreenOffWakeupService;->mObjectLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vivo/services/motion/ScreenOffWakeupService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/ScreenOffWakeupService;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/vivo/services/motion/ScreenOffWakeupService;->mServiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/vivo/services/motion/ScreenOffWakeupService;)Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/ScreenOffWakeupService;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/vivo/services/motion/ScreenOffWakeupService;->mProximityAnalyzer:Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;

    return-object v0
.end method

.method static synthetic access$800(Lcom/vivo/services/motion/ScreenOffWakeupService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/ScreenOffWakeupService;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/vivo/services/motion/ScreenOffWakeupService;->mCallBackHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/vivo/services/motion/ScreenOffWakeupService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/ScreenOffWakeupService;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/vivo/services/motion/ScreenOffWakeupService;->isScreenOffWakeupWorking:Z

    return v0
.end method

.method public static getInstance()Lcom/vivo/services/motion/ScreenOffWakeupService;
    .locals 1

    .prologue
    .line 701
    sget-object v0, Lcom/vivo/services/motion/ScreenOffWakeupService;->mSingleScreenOffWakeupService:Lcom/vivo/services/motion/ScreenOffWakeupService;

    return-object v0
.end method

.method public static isProximityRawSupported(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 692
    const-string v2, "sensor"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    .line 693
    .local v1, "sm":Landroid/hardware/SensorManager;
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 695
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

.method public static isProximitySupported(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 684
    const-string v2, "sensor"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    .line 685
    .local v1, "sm":Landroid/hardware/SensorManager;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 687
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

.method private static readFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 116
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    .local v2, "file":Ljava/io/File;
    const/4 v3, 0x0

    .line 118
    .local v3, "reader":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 120
    .local v5, "tempString":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 123
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 130
    :goto_0
    if-eqz v4, :cond_2

    .line 132
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v3, v4

    .line 138
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :cond_0
    :goto_1
    return-object v5

    .line 124
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v6, "ScreenOffWakeupService"

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

    .line 127
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    move-object v3, v4

    .line 128
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :goto_2
    :try_start_4
    const-string v6, "ScreenOffWakeupService"

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

    .line 130
    if-eqz v3, :cond_0

    .line 132
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 133
    :catch_2
    move-exception v1

    .line 134
    .local v1, "e1":Ljava/io/IOException;
    const-string v6, "ScreenOffWakeupService"

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

    .line 133
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "e1":Ljava/io/IOException;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v1

    .line 134
    .restart local v1    # "e1":Ljava/io/IOException;
    const-string v6, "ScreenOffWakeupService"

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

    .line 135
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_1

    .line 130
    .end local v1    # "e1":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v3, :cond_1

    .line 132
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 135
    :cond_1
    :goto_4
    throw v6

    .line 133
    :catch_4
    move-exception v1

    .line 134
    .restart local v1    # "e1":Ljava/io/IOException;
    const-string v7, "ScreenOffWakeupService"

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

    .line 130
    .end local v1    # "e1":Ljava/io/IOException;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 127
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

.method public static readFileByline(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 810
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 811
    .local v2, "file":Ljava/io/File;
    const/4 v3, 0x0

    .line 812
    .local v3, "reader":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 814
    .local v5, "tempString":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 815
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v5

    .line 819
    if-eqz v4, :cond_2

    .line 821
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v4

    .line 827
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    return-object v5

    .line 822
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    .line 823
    .local v1, "e1":Ljava/io/IOException;
    const-string v6, "EngineerMode"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "the readFileByline is:"

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

    .line 824
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_0

    .line 816
    .end local v1    # "e1":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 817
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string v6, "EngineerMode"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "the readFileByline is:"

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
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 819
    if-eqz v3, :cond_0

    .line 821
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 822
    :catch_2
    move-exception v1

    .line 823
    .restart local v1    # "e1":Ljava/io/IOException;
    const-string v6, "EngineerMode"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "the readFileByline is:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 819
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "e1":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_2
    if-eqz v3, :cond_1

    .line 821
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 824
    :cond_1
    :goto_3
    throw v6

    .line 822
    :catch_3
    move-exception v1

    .line 823
    .restart local v1    # "e1":Ljava/io/IOException;
    const-string v7, "EngineerMode"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "the readFileByline is:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 819
    .end local v1    # "e1":Ljava/io/IOException;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 816
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v0

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_1

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :cond_2
    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_0
.end method

.method private writeFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 98
    const/4 v1, 0x0

    .line 100
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 105
    if-eqz v2, :cond_2

    .line 107
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 112
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 108
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    move-object v1, v2

    .line 109
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 102
    :catch_1
    move-exception v0

    .line 103
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v3, "ScreenOffWakeupService"

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

    .line 105
    if-eqz v1, :cond_0

    .line 107
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 108
    :catch_2
    move-exception v3

    goto :goto_0

    .line 105
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_2
    if-eqz v1, :cond_1

    .line 107
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 109
    :cond_1
    :goto_3
    throw v3

    .line 108
    :catch_3
    move-exception v4

    goto :goto_3

    .line 105
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 102
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
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const v6, 0x186a0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 715
    const-string v1, "ScreenOffWakeupService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startMotionRecognitionService: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/vivo/services/motion/ScreenOffWakeupService;->isScreenOffWakeupWorking:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    iget-boolean v1, p0, Lcom/vivo/services/motion/ScreenOffWakeupService;->isScreenOffWakeupWorking:Z

    if-nez v1, :cond_0

    .line 718
    iput-object p1, p0, Lcom/vivo/services/motion/ScreenOffWakeupService;->mContext:Landroid/content/Context;

    .line 719
    sput v2, Lcom/vivo/services/motion/ScreenOffWakeupService;->registerstate:I

    .line 720
    iput-boolean v3, p0, Lcom/vivo/services/motion/ScreenOffWakeupService;->isScreenOffWakeupWorking:Z

    .line 721
    iput-object p2, p0, Lcom/vivo/services/motion/ScreenOffWakeupService;->mCallBackHandler:Landroid/os/Handler;

    .line 722
    iget-object v1, p0, Lcom/vivo/services/motion/ScreenOffWakeupService;->mScreenOffWakeupAnalyzer:Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupAnalyzer;

    invoke-virtual {v1}, Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupAnalyzer;->reset()V

    .line 723
    iget-object v1, p0, Lcom/vivo/services/motion/ScreenOffWakeupService;->mProximityAnalyzer:Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;

    invoke-virtual {v1}, Lcom/vivo/services/motion/ScreenOffWakeupService$ProximityAnalyzer;->reset()V

    .line 724
    new-instance v1, Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupServiceHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v1, p0, v4}, Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupServiceHandler;-><init>(Lcom/vivo/services/motion/ScreenOffWakeupService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/vivo/services/motion/ScreenOffWakeupService;->mServiceHandler:Landroid/os/Handler;

    .line 725
    new-instance v1, Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupServiceHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v1, p0, v4}, Lcom/vivo/services/motion/ScreenOffWakeupService$ScreenOffWakeupServiceHandler;-><init>(Lcom/vivo/services/motion/ScreenOffWakeupService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/vivo/services/motion/ScreenOffWakeupService;->getAccDataHandler:Landroid/os/Handler;

    .line 726
    iget-object v1, p0, Lcom/vivo/services/motion/ScreenOffWakeupService;->mContext:Landroid/content/Context;

    const-string v4, "sensor"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/vivo/services/motion/ScreenOffWakeupService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 727
    iget-object v1, p0, Lcom/vivo/services/motion/ScreenOffWakeupService;->mContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/vivo/services/motion/ScreenOffWakeupService;->pm:Landroid/os/PowerManager;

    .line 728
    iget-object v1, p0, Lcom/vivo/services/motion/ScreenOffWakeupService;->pm:Landroid/os/PowerManager;

    const-string v4, "ScreenOffWakeupService"

    invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/services/motion/ScreenOffWakeupService;->mAWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 729
    iget-object v1, p0, Lcom/vivo/services/motion/ScreenOffWakeupService;->pm:Landroid/os/PowerManager;

    const-string v4, "ScreenOffWakeupService"

    invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/services/motion/ScreenOffWakeupService;->mBWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 730
    iget-object v1, p0, Lcom/vivo/services/motion/ScreenOffWakeupService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v1, :cond_0

    .line 733
    iget-object v1, p0, Lcom/vivo/services/motion/ScreenOffWakeupService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/vivo/services/motion/ScreenOffWakeupService;->isProximitySupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 735
    iget-object v1, p0, Lcom/vivo/services/motion/ScreenOffWakeupService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/vivo/services/motion/ScreenOffWakeupService;->mProximityListener:Lcom/vivo/services/motion/ScreenOffWakeupService$MotionSensorEventListener;

    iget-object v4, p0, Lcom/vivo/services/motion/ScreenOffWakeupService;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v4

    invoke-virtual {v1, v2, v4, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 737
    const-string v1, "ScreenOffWakeupService"

    const-string v2, "registerListener TYPE_PROXIMITY"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 754
    .local v0, "msg":Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->what:I

    .line 755
    sget-object v2, Lcom/vivo/services/motion/ScreenOffWakeupService;->mObjectLock:Ljava/lang/Object;

    monitor-enter v2

    .line 756
    :try_start_0
    iget-object v1, p0, Lcom/vivo/services/motion/ScreenOffWakeupService;->mServiceHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 758
    iget-object v1, p0, Lcom/vivo/services/motion/ScreenOffWakeupService;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 760
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v3

    .line 761
    .end local v0    # "msg":Landroid/os/Message;
    :goto_1
    return v1

    .line 739
    :cond_2
    iget-object v1, p0, Lcom/vivo/services/motion/ScreenOffWakeupService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/vivo/services/motion/ScreenOffWakeupService;->isProximityRawSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 741
    iget-object v1, p0, Lcom/vivo/services/motion/ScreenOffWakeupService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/vivo/services/motion/ScreenOffWakeupService;->mProximityListener:Lcom/vivo/services/motion/ScreenOffWakeupService$MotionSensorEventListener;

    iget-object v4, p0, Lcom/vivo/services/motion/ScreenOffWakeupService;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v4

    invoke-virtual {v1, v2, v4, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 743
    const-string v1, "ScreenOffWakeupService"

    const-string v2, "registerListener TYPE_PROXIMITY_RAW"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 747
    :cond_3
    const-string v1, "ScreenOffWakeupService"

    const-string v3, "no proximity type support!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 748
    goto :goto_1

    .line 760
    .restart local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public stopMotionRecognitionService()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 767
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 768
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 769
    sget-object v2, Lcom/vivo/services/motion/ScreenOffWakeupService;->mObjectLock:Ljava/lang/Object;

    monitor-enter v2

    .line 770
    :try_start_0
    iget-object v1, p0, Lcom/vivo/services/motion/ScreenOffWakeupService;->mServiceHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 772
    iget-object v1, p0, Lcom/vivo/services/motion/ScreenOffWakeupService;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 774
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 775
    const-string v1, "ScreenOffWakeupService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopMotionRecognitionService "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/vivo/services/motion/ScreenOffWakeupService;->isScreenOffWakeupWorking:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    iget-boolean v1, p0, Lcom/vivo/services/motion/ScreenOffWakeupService;->isScreenOffWakeupWorking:Z

    if-ne v1, v5, :cond_5

    .line 778
    iput-boolean v6, p0, Lcom/vivo/services/motion/ScreenOffWakeupService;->isScreenOffWakeupWorking:Z

    .line 779
    sget-object v2, Lcom/vivo/services/motion/ScreenOffWakeupService;->mObjectLock:Ljava/lang/Object;

    monitor-enter v2

    .line 780
    :try_start_1
    iget-object v1, p0, Lcom/vivo/services/motion/ScreenOffWakeupService;->mServiceHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 781
    iget-object v1, p0, Lcom/vivo/services/motion/ScreenOffWakeupService;->mServiceHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 782
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 783
    iput-object v4, p0, Lcom/vivo/services/motion/ScreenOffWakeupService;->mCallBackHandler:Landroid/os/Handler;

    .line 784
    iput-object v4, p0, Lcom/vivo/services/motion/ScreenOffWakeupService;->mServiceHandler:Landroid/os/Handler;

    .line 785
    sget-object v2, Lcom/vivo/services/motion/ScreenOffWakeupService;->mObjectLock:Ljava/lang/Object;

    monitor-enter v2

    .line 786
    :try_start_2
    iget-object v1, p0, Lcom/vivo/services/motion/ScreenOffWakeupService;->getAccDataHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 787
    iget-object v1, p0, Lcom/vivo/services/motion/ScreenOffWakeupService;->getAccDataHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 788
    :cond_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 789
    sget-object v2, Lcom/vivo/services/motion/ScreenOffWakeupService;->mObjectLock:Ljava/lang/Object;

    monitor-enter v2

    .line 790
    const/4 v1, 0x0

    :try_start_3
    iput-object v1, p0, Lcom/vivo/services/motion/ScreenOffWakeupService;->getAccDataHandler:Landroid/os/Handler;

    .line 791
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 793
    iget-object v1, p0, Lcom/vivo/services/motion/ScreenOffWakeupService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v1, :cond_3

    sget v1, Lcom/vivo/services/motion/ScreenOffWakeupService;->registerstate:I

    if-ne v1, v5, :cond_3

    .line 795
    iget-object v1, p0, Lcom/vivo/services/motion/ScreenOffWakeupService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/vivo/services/motion/ScreenOffWakeupService;->mAcceleromererListener:Lcom/vivo/services/motion/ScreenOffWakeupService$MotionSensorEventListener;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 796
    sput v6, Lcom/vivo/services/motion/ScreenOffWakeupService;->registerstate:I

    .line 798
    :cond_3
    iget-object v1, p0, Lcom/vivo/services/motion/ScreenOffWakeupService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v1, :cond_4

    .line 801
    iget-object v1, p0, Lcom/vivo/services/motion/ScreenOffWakeupService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/vivo/services/motion/ScreenOffWakeupService;->mProximityListener:Lcom/vivo/services/motion/ScreenOffWakeupService$MotionSensorEventListener;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 803
    :cond_4
    iput-object v4, p0, Lcom/vivo/services/motion/ScreenOffWakeupService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 805
    :cond_5
    return v5

    .line 774
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 782
    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1

    .line 788
    :catchall_2
    move-exception v1

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v1

    .line 791
    :catchall_3
    move-exception v1

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v1
.end method
