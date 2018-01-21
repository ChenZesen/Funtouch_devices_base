.class public final Lcom/vivo/services/motion/ShakeDetectServiceTwo;
.super Ljava/lang/Object;
.source "ShakeDetectServiceTwo.java"

# interfaces
.implements Lcom/vivo/services/motion/IMotionRecognitionService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;,
        Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeDetectServiceHandler;
    }
.end annotation


# static fields
.field private static Debug:Z = false

.field private static final MSG_SHAKE_DET_START:I = 0x1

.field private static final MSG_SHAKE_DET_STOP:I = 0x2

.field private static final MSG_SHAKE_DET_TRIGER:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ShakeDetectServiceTwo"

.field private static mSingleShakeDetectService:Lcom/vivo/services/motion/ShakeDetectServiceTwo;


# instance fields
.field private accTime:J

.field private accelerometerListener:Landroid/hardware/SensorEventListener;

.field private alpha:F

.field private gravityFlag:Z

.field private gravityListener:Landroid/hardware/SensorEventListener;

.field private gravityTime:J

.field private gravityValues:[F

.field private isSensorOn:Z

.field private isShakeModeWorking:Z

.field private linearTime:J

.field private linearaccelerationListener:Landroid/hardware/SensorEventListener;

.field private linearaccelerationValues:[F

.field private mCallBackHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field mRomVersionSt:Ljava/lang/String;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mServiceHandler:Landroid/os/Handler;

.field private mShakeModeAnalyzer:Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;

.field private trigerFlag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;

    invoke-direct {v0}, Lcom/vivo/services/motion/ShakeDetectServiceTwo;-><init>()V

    sput-object v0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->mSingleShakeDetectService:Lcom/vivo/services/motion/ShakeDetectServiceTwo;

    .line 43
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->Debug:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1021
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean v1, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->isSensorOn:Z

    .line 38
    iput-boolean v1, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->isShakeModeWorking:Z

    .line 39
    iput-object v0, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->mCallBackHandler:Landroid/os/Handler;

    .line 40
    iput-object v0, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->mServiceHandler:Landroid/os/Handler;

    .line 41
    iput-object v0, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->mContext:Landroid/content/Context;

    .line 56
    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->alpha:F

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->gravityFlag:Z

    .line 58
    iput-boolean v1, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->trigerFlag:Z

    .line 59
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->gravityValues:[F

    .line 60
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->linearaccelerationValues:[F

    .line 62
    iput-wide v2, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->accTime:J

    .line 63
    iput-wide v2, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->linearTime:J

    .line 64
    iput-wide v2, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->gravityTime:J

    .line 66
    const-string v0, "ro.vivo.rom.version"

    const-string v1, "unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->mRomVersionSt:Ljava/lang/String;

    .line 130
    new-instance v0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$1;

    invoke-direct {v0, p0}, Lcom/vivo/services/motion/ShakeDetectServiceTwo$1;-><init>(Lcom/vivo/services/motion/ShakeDetectServiceTwo;)V

    iput-object v0, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->accelerometerListener:Landroid/hardware/SensorEventListener;

    .line 164
    new-instance v0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$2;

    invoke-direct {v0, p0}, Lcom/vivo/services/motion/ShakeDetectServiceTwo$2;-><init>(Lcom/vivo/services/motion/ShakeDetectServiceTwo;)V

    iput-object v0, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->linearaccelerationListener:Landroid/hardware/SensorEventListener;

    .line 182
    new-instance v0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$3;

    invoke-direct {v0, p0}, Lcom/vivo/services/motion/ShakeDetectServiceTwo$3;-><init>(Lcom/vivo/services/motion/ShakeDetectServiceTwo;)V

    iput-object v0, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->gravityListener:Landroid/hardware/SensorEventListener;

    .line 1022
    new-instance v0, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;

    invoke-direct {v0, p0}, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;-><init>(Lcom/vivo/services/motion/ShakeDetectServiceTwo;)V

    iput-object v0, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->mShakeModeAnalyzer:Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;

    .line 1023
    iget-object v0, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->mShakeModeAnalyzer:Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;

    if-eqz v0, :cond_0

    .line 1025
    iget-object v0, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->mShakeModeAnalyzer:Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;

    invoke-virtual {v0}, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->reset()V

    .line 1027
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/vivo/services/motion/ShakeDetectServiceTwo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/ShakeDetectServiceTwo;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->trigerFlag:Z

    return v0
.end method

.method static synthetic access$002(Lcom/vivo/services/motion/ShakeDetectServiceTwo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/motion/ShakeDetectServiceTwo;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->trigerFlag:Z

    return p1
.end method

.method static synthetic access$100(Lcom/vivo/services/motion/ShakeDetectServiceTwo;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/ShakeDetectServiceTwo;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->mCallBackHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/vivo/services/motion/ShakeDetectServiceTwo;)J
    .locals 2
    .param p0, "x0"    # Lcom/vivo/services/motion/ShakeDetectServiceTwo;

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->linearTime:J

    return-wide v0
.end method

.method static synthetic access$1002(Lcom/vivo/services/motion/ShakeDetectServiceTwo;J)J
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/ShakeDetectServiceTwo;
    .param p1, "x1"    # J

    .prologue
    .line 31
    iput-wide p1, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->linearTime:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/vivo/services/motion/ShakeDetectServiceTwo;)J
    .locals 2
    .param p0, "x0"    # Lcom/vivo/services/motion/ShakeDetectServiceTwo;

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->gravityTime:J

    return-wide v0
.end method

.method static synthetic access$1102(Lcom/vivo/services/motion/ShakeDetectServiceTwo;J)J
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/ShakeDetectServiceTwo;
    .param p1, "x1"    # J

    .prologue
    .line 31
    iput-wide p1, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->gravityTime:J

    return-wide p1
.end method

.method static synthetic access$1200()Z
    .locals 1

    .prologue
    .line 31
    sget-boolean v0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->Debug:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/vivo/services/motion/ShakeDetectServiceTwo;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/ShakeDetectServiceTwo;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/vivo/services/motion/ShakeDetectServiceTwo;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/ShakeDetectServiceTwo;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->mServiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vivo/services/motion/ShakeDetectServiceTwo;)Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/ShakeDetectServiceTwo;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->mShakeModeAnalyzer:Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vivo/services/motion/ShakeDetectServiceTwo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/ShakeDetectServiceTwo;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->gravityFlag:Z

    return v0
.end method

.method static synthetic access$302(Lcom/vivo/services/motion/ShakeDetectServiceTwo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/motion/ShakeDetectServiceTwo;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->gravityFlag:Z

    return p1
.end method

.method static synthetic access$400(Lcom/vivo/services/motion/ShakeDetectServiceTwo;)[F
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/ShakeDetectServiceTwo;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->gravityValues:[F

    return-object v0
.end method

.method static synthetic access$500(Lcom/vivo/services/motion/ShakeDetectServiceTwo;)F
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/ShakeDetectServiceTwo;

    .prologue
    .line 31
    iget v0, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->alpha:F

    return v0
.end method

.method static synthetic access$600(Lcom/vivo/services/motion/ShakeDetectServiceTwo;)[F
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/ShakeDetectServiceTwo;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->linearaccelerationValues:[F

    return-object v0
.end method

.method static synthetic access$700(Lcom/vivo/services/motion/ShakeDetectServiceTwo;)J
    .locals 2
    .param p0, "x0"    # Lcom/vivo/services/motion/ShakeDetectServiceTwo;

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->accTime:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/vivo/services/motion/ShakeDetectServiceTwo;J)J
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/ShakeDetectServiceTwo;
    .param p1, "x1"    # J

    .prologue
    .line 31
    iput-wide p1, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->accTime:J

    return-wide p1
.end method

.method public static getInstance()Lcom/vivo/services/motion/ShakeDetectServiceTwo;
    .locals 1

    .prologue
    .line 1017
    sget-object v0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->mSingleShakeDetectService:Lcom/vivo/services/motion/ShakeDetectServiceTwo;

    return-object v0
.end method

.method public static isAccelerometerSupported(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 1031
    const-string v3, "sensor"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    .line 1032
    .local v1, "sm":Landroid/hardware/SensorManager;
    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 1034
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

.method public static isGravitySupported(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1047
    const-string v2, "sensor"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    .line 1048
    .local v1, "sm":Landroid/hardware/SensorManager;
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 1050
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

.method public static isLinearaccelerationSupported(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1039
    const-string v2, "sensor"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    .line 1040
    .local v1, "sm":Landroid/hardware/SensorManager;
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 1042
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
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v2, 0x0

    const/16 v6, 0x61a8

    const/4 v3, 0x1

    .line 1056
    const-string v1, "ShakeDetectServiceTwo"

    const-string v4, "startMotionRecognitionService"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    iget-boolean v1, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->isShakeModeWorking:Z

    if-nez v1, :cond_1

    .line 1059
    iput-object p1, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->mContext:Landroid/content/Context;

    .line 1060
    iput-boolean v3, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->gravityFlag:Z

    .line 1061
    iput-boolean v2, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->trigerFlag:Z

    .line 1062
    iput-boolean v3, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->isShakeModeWorking:Z

    .line 1063
    iget-object v1, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->mShakeModeAnalyzer:Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;

    if-eqz v1, :cond_0

    .line 1065
    iget-object v1, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->mShakeModeAnalyzer:Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;

    invoke-virtual {v1}, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;->reset()V

    .line 1067
    :cond_0
    iput-object p2, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->mCallBackHandler:Landroid/os/Handler;

    .line 1068
    new-instance v1, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeDetectServiceHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v1, p0, v4}, Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeDetectServiceHandler;-><init>(Lcom/vivo/services/motion/ShakeDetectServiceTwo;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->mServiceHandler:Landroid/os/Handler;

    .line 1069
    iget-object v1, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->mContext:Landroid/content/Context;

    const-string v4, "sensor"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->mSensorManager:Landroid/hardware/SensorManager;

    .line 1070
    iget-object v1, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->mShakeModeAnalyzer:Lcom/vivo/services/motion/ShakeDetectServiceTwo$ShakeModeAnalyzer;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->isSensorOn:Z

    if-nez v1, :cond_1

    .line 1072
    iget-object v1, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->isLinearaccelerationSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->isGravitySupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1074
    iget-object v1, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->linearaccelerationListener:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v4

    iget-object v5, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v4, v6, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 1076
    iget-object v1, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->gravityListener:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v4

    iget-object v5, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v4, v6, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 1078
    iput-boolean v3, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->isSensorOn:Z

    .line 1093
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1094
    .local v0, "msg":Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->what:I

    .line 1095
    iget-object v1, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->mServiceHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 1097
    iget-object v1, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    move v1, v3

    .line 1099
    .end local v0    # "msg":Landroid/os/Message;
    :goto_1
    return v1

    .line 1080
    :cond_3
    iget-object v1, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->isAccelerometerSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1082
    iget-object v1, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->accelerometerListener:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v4, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v4

    iget-object v5, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v4, v6, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 1084
    iput-boolean v3, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->isSensorOn:Z

    goto :goto_0

    .line 1088
    :cond_4
    const-string v1, "ShakeDetectServiceTwo"

    const-string v3, "sensor not support this function"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 1089
    goto :goto_1
.end method

.method public stopMotionRecognitionService()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1113
    const-string v0, "ShakeDetectServiceTwo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopMotionRecognitionService,isShakeModeWorking"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->isShakeModeWorking:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    iget-boolean v0, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->isShakeModeWorking:Z

    if-ne v0, v4, :cond_1

    .line 1116
    iput-boolean v3, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->gravityFlag:Z

    .line 1117
    iput-boolean v3, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->isShakeModeWorking:Z

    .line 1118
    iput-object v5, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->mCallBackHandler:Landroid/os/Handler;

    .line 1119
    iput-object v5, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->mServiceHandler:Landroid/os/Handler;

    .line 1120
    iget-object v0, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1

    .line 1122
    iget-boolean v0, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->isSensorOn:Z

    if-ne v0, v4, :cond_0

    .line 1124
    iget-object v0, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->isLinearaccelerationSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->isGravitySupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1126
    iget-object v0, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->linearaccelerationListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1127
    iget-object v0, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->gravityListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1128
    iput-boolean v3, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->isSensorOn:Z

    .line 1136
    :cond_0
    :goto_0
    iput-object v5, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->mSensorManager:Landroid/hardware/SensorManager;

    .line 1139
    :cond_1
    return v4

    .line 1130
    :cond_2
    iget-object v0, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->isAccelerometerSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1132
    iget-object v0, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->accelerometerListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1133
    iput-boolean v3, p0, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->isSensorOn:Z

    goto :goto_0
.end method
