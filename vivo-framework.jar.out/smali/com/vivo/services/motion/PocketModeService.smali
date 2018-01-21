.class public final Lcom/vivo/services/motion/PocketModeService;
.super Ljava/lang/Object;
.source "PocketModeService.java"

# interfaces
.implements Lcom/vivo/services/motion/IMotionRecognitionService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/services/motion/PocketModeService$1;,
        Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;,
        Lcom/vivo/services/motion/PocketModeService$PocketModeServiceHandler;,
        Lcom/vivo/services/motion/PocketModeService$MotionSensorEventListener;,
        Lcom/vivo/services/motion/PocketModeService$SensorData;
    }
.end annotation


# static fields
.field private static DBG:Z = false

.field private static final MSG_POCKET_FIFO_ENABLE:I = 0x5

.field private static final MSG_POCKET_JUDGE:I = 0x6

.field private static final MSG_POCKET_MODE_DET_START:I = 0x1

.field private static final MSG_POCKET_MODE_DET_STOP:I = 0x2

.field private static final MSG_POCKET_MODE_DET_TRIGER:I = 0x3

.field private static final MSG_POCKET_STOP_ACC_DET:I = 0x4

.field private static MTK_PLATFORM:Ljava/lang/String; = null

.field private static PLATFORM_TAG:Ljava/lang/String; = null

.field private static QCOM_PLATFORM:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "PocketModeService"

.field private static final mObjectLock:Ljava/lang/Object;

.field private static mSinglePocketModeService:Lcom/vivo/services/motion/PocketModeService;


# instance fields
.field private Totalcnt:I

.field private data_x:F

.field private data_y:F

.field private data_z:F

.field private getdataCnt:I

.field private isAuthWorking:Z

.field private isPocketModeWorking:Z

.field private last_prox:I

.field private last_prox1:I

.field private last_prox2:I

.field private last_prox3:I

.field private last_prox4:I

.field private last_time:J

.field private logic_time:J

.field private mAWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mAccSensorVal:[F

.field private mAcceleromererListener:Lcom/vivo/services/motion/PocketModeService$MotionSensorEventListener;

.field private mCallBackHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mData:[Lcom/vivo/services/motion/PocketModeService$SensorData;

.field private mPocketModeAnalyzer:Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;

.field private mProximityListener:Lcom/vivo/services/motion/PocketModeService$MotionSensorEventListener;

.field private mSWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mServiceHandler:Landroid/os/Handler;

.field private mVivoSensorTest:Lcom/sensoroperate/VivoSensorTest;

.field private pm:Landroid/os/PowerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/vivo/services/motion/PocketModeService;

    invoke-direct {v0}, Lcom/vivo/services/motion/PocketModeService;-><init>()V

    sput-object v0, Lcom/vivo/services/motion/PocketModeService;->mSinglePocketModeService:Lcom/vivo/services/motion/PocketModeService;

    .line 40
    const/4 v0, 0x1

    sput-boolean v0, Lcom/vivo/services/motion/PocketModeService;->DBG:Z

    .line 66
    const-string v0, "QCOM"

    sput-object v0, Lcom/vivo/services/motion/PocketModeService;->QCOM_PLATFORM:Ljava/lang/String;

    .line 67
    const-string v0, "MTK"

    sput-object v0, Lcom/vivo/services/motion/PocketModeService;->MTK_PLATFORM:Ljava/lang/String;

    .line 68
    const-string v0, "ro.vivo.product.solution"

    sput-object v0, Lcom/vivo/services/motion/PocketModeService;->PLATFORM_TAG:Ljava/lang/String;

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/vivo/services/motion/PocketModeService;->mObjectLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1009
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean v4, p0, Lcom/vivo/services/motion/PocketModeService;->isPocketModeWorking:Z

    .line 36
    iput-object v2, p0, Lcom/vivo/services/motion/PocketModeService;->mCallBackHandler:Landroid/os/Handler;

    .line 37
    iput-object v2, p0, Lcom/vivo/services/motion/PocketModeService;->mServiceHandler:Landroid/os/Handler;

    .line 38
    iput-object v2, p0, Lcom/vivo/services/motion/PocketModeService;->mContext:Landroid/content/Context;

    .line 48
    iput v4, p0, Lcom/vivo/services/motion/PocketModeService;->getdataCnt:I

    .line 49
    iput v4, p0, Lcom/vivo/services/motion/PocketModeService;->Totalcnt:I

    .line 62
    iput-object v2, p0, Lcom/vivo/services/motion/PocketModeService;->pm:Landroid/os/PowerManager;

    .line 63
    iput-object v2, p0, Lcom/vivo/services/motion/PocketModeService;->mAWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 64
    iput-object v2, p0, Lcom/vivo/services/motion/PocketModeService;->mSWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 71
    iput-object v2, p0, Lcom/vivo/services/motion/PocketModeService;->mVivoSensorTest:Lcom/sensoroperate/VivoSensorTest;

    .line 72
    const/4 v1, 0x3

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/vivo/services/motion/PocketModeService;->mAccSensorVal:[F

    .line 128
    iput v3, p0, Lcom/vivo/services/motion/PocketModeService;->last_prox:I

    .line 129
    iput v3, p0, Lcom/vivo/services/motion/PocketModeService;->last_prox1:I

    .line 130
    iput v3, p0, Lcom/vivo/services/motion/PocketModeService;->last_prox2:I

    .line 131
    iput v3, p0, Lcom/vivo/services/motion/PocketModeService;->last_prox3:I

    .line 132
    iput v3, p0, Lcom/vivo/services/motion/PocketModeService;->last_prox4:I

    .line 135
    iput-boolean v4, p0, Lcom/vivo/services/motion/PocketModeService;->isAuthWorking:Z

    .line 136
    iput v5, p0, Lcom/vivo/services/motion/PocketModeService;->data_x:F

    .line 137
    iput v5, p0, Lcom/vivo/services/motion/PocketModeService;->data_y:F

    .line 138
    iput v5, p0, Lcom/vivo/services/motion/PocketModeService;->data_z:F

    .line 1010
    new-instance v1, Lcom/vivo/services/motion/PocketModeService$MotionSensorEventListener;

    invoke-direct {v1, p0, v2}, Lcom/vivo/services/motion/PocketModeService$MotionSensorEventListener;-><init>(Lcom/vivo/services/motion/PocketModeService;Lcom/vivo/services/motion/PocketModeService$1;)V

    iput-object v1, p0, Lcom/vivo/services/motion/PocketModeService;->mAcceleromererListener:Lcom/vivo/services/motion/PocketModeService$MotionSensorEventListener;

    .line 1012
    new-instance v1, Lcom/vivo/services/motion/PocketModeService$MotionSensorEventListener;

    invoke-direct {v1, p0, v2}, Lcom/vivo/services/motion/PocketModeService$MotionSensorEventListener;-><init>(Lcom/vivo/services/motion/PocketModeService;Lcom/vivo/services/motion/PocketModeService$1;)V

    iput-object v1, p0, Lcom/vivo/services/motion/PocketModeService;->mProximityListener:Lcom/vivo/services/motion/PocketModeService$MotionSensorEventListener;

    .line 1013
    new-instance v1, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;

    invoke-direct {v1, p0}, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;-><init>(Lcom/vivo/services/motion/PocketModeService;)V

    iput-object v1, p0, Lcom/vivo/services/motion/PocketModeService;->mPocketModeAnalyzer:Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;

    .line 1015
    const-string v1, "ro.product.model.bbk"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1016
    .local v0, "prop":Ljava/lang/String;
    if-eqz v0, :cond_0

    sget-boolean v1, Lcom/vivo/services/motion/AllConfig;->mIsArchADSP:Z

    if-eqz v1, :cond_0

    .line 1018
    invoke-static {}, Lcom/sensoroperate/VivoSensorTest;->getInstance()Lcom/sensoroperate/VivoSensorTest;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/services/motion/PocketModeService;->mVivoSensorTest:Lcom/sensoroperate/VivoSensorTest;

    .line 1021
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/vivo/services/motion/PocketModeService;)Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/PocketModeService;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/vivo/services/motion/PocketModeService;->mPocketModeAnalyzer:Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/vivo/services/motion/PocketModeService;)Landroid/hardware/SensorManager;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/PocketModeService;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/vivo/services/motion/PocketModeService;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/vivo/services/motion/PocketModeService;)Lcom/vivo/services/motion/PocketModeService$MotionSensorEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/PocketModeService;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/vivo/services/motion/PocketModeService;->mAcceleromererListener:Lcom/vivo/services/motion/PocketModeService$MotionSensorEventListener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/vivo/services/motion/PocketModeService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/PocketModeService;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/vivo/services/motion/PocketModeService;->mCallBackHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/vivo/services/motion/PocketModeService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/PocketModeService;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/vivo/services/motion/PocketModeService;->getDataFromI2c()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/vivo/services/motion/PocketModeService;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/PocketModeService;

    .prologue
    .line 29
    iget v0, p0, Lcom/vivo/services/motion/PocketModeService;->getdataCnt:I

    return v0
.end method

.method static synthetic access$1402(Lcom/vivo/services/motion/PocketModeService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/motion/PocketModeService;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/vivo/services/motion/PocketModeService;->getdataCnt:I

    return p1
.end method

.method static synthetic access$1408(Lcom/vivo/services/motion/PocketModeService;)I
    .locals 2
    .param p0, "x0"    # Lcom/vivo/services/motion/PocketModeService;

    .prologue
    .line 29
    iget v0, p0, Lcom/vivo/services/motion/PocketModeService;->getdataCnt:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/vivo/services/motion/PocketModeService;->getdataCnt:I

    return v0
.end method

.method static synthetic access$1500(Lcom/vivo/services/motion/PocketModeService;)F
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/PocketModeService;

    .prologue
    .line 29
    iget v0, p0, Lcom/vivo/services/motion/PocketModeService;->data_x:F

    return v0
.end method

.method static synthetic access$1600(Lcom/vivo/services/motion/PocketModeService;)F
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/PocketModeService;

    .prologue
    .line 29
    iget v0, p0, Lcom/vivo/services/motion/PocketModeService;->data_y:F

    return v0
.end method

.method static synthetic access$1700(Lcom/vivo/services/motion/PocketModeService;)F
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/PocketModeService;

    .prologue
    .line 29
    iget v0, p0, Lcom/vivo/services/motion/PocketModeService;->data_z:F

    return v0
.end method

.method static synthetic access$1900(Lcom/vivo/services/motion/PocketModeService;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/PocketModeService;

    .prologue
    .line 29
    iget v0, p0, Lcom/vivo/services/motion/PocketModeService;->Totalcnt:I

    return v0
.end method

.method static synthetic access$1902(Lcom/vivo/services/motion/PocketModeService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/motion/PocketModeService;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/vivo/services/motion/PocketModeService;->Totalcnt:I

    return p1
.end method

.method static synthetic access$2000(Lcom/vivo/services/motion/PocketModeService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/PocketModeService;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/vivo/services/motion/PocketModeService;->mSWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vivo/services/motion/PocketModeService;)J
    .locals 2
    .param p0, "x0"    # Lcom/vivo/services/motion/PocketModeService;

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/vivo/services/motion/PocketModeService;->logic_time:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/vivo/services/motion/PocketModeService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/PocketModeService;
    .param p1, "x1"    # J

    .prologue
    .line 29
    iput-wide p1, p0, Lcom/vivo/services/motion/PocketModeService;->logic_time:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/vivo/services/motion/PocketModeService;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/PocketModeService;

    .prologue
    .line 29
    iget v0, p0, Lcom/vivo/services/motion/PocketModeService;->last_prox:I

    return v0
.end method

.method static synthetic access$402(Lcom/vivo/services/motion/PocketModeService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/motion/PocketModeService;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/vivo/services/motion/PocketModeService;->last_prox:I

    return p1
.end method

.method static synthetic access$500(Lcom/vivo/services/motion/PocketModeService;)J
    .locals 2
    .param p0, "x0"    # Lcom/vivo/services/motion/PocketModeService;

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/vivo/services/motion/PocketModeService;->last_time:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/vivo/services/motion/PocketModeService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/PocketModeService;
    .param p1, "x1"    # J

    .prologue
    .line 29
    iput-wide p1, p0, Lcom/vivo/services/motion/PocketModeService;->last_time:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/vivo/services/motion/PocketModeService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/PocketModeService;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/vivo/services/motion/PocketModeService;->isAuthWorking:Z

    return v0
.end method

.method static synthetic access$602(Lcom/vivo/services/motion/PocketModeService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/motion/PocketModeService;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/vivo/services/motion/PocketModeService;->isAuthWorking:Z

    return p1
.end method

.method static synthetic access$700(Lcom/vivo/services/motion/PocketModeService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/PocketModeService;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/vivo/services/motion/PocketModeService;->mAWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$800()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/vivo/services/motion/PocketModeService;->mObjectLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$900(Lcom/vivo/services/motion/PocketModeService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/PocketModeService;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/vivo/services/motion/PocketModeService;->mServiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getDataFromI2c()Z
    .locals 12

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v11, 0x447a0000    # 1000.0f

    .line 1084
    const/4 v0, 0x0

    .line 1085
    .local v0, "data":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "pocke_x":F
    const/4 v4, 0x0

    .local v4, "pocke_y":F
    const/4 v5, 0x0

    .line 1087
    .local v5, "pocke_z":F
    :try_start_0
    const-string v8, "/sys/bus/platform/drivers/gsensor/data"

    invoke-static {v8}, Lcom/vivo/services/motion/PocketModeService;->readFile(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1092
    :goto_0
    if-eqz v0, :cond_0

    .line 1094
    const-string v8, " "

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1095
    .local v2, "out":[Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 1098
    const/4 v8, 0x0

    :try_start_1
    aget-object v8, v2, v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    div-float v3, v8, v11

    .line 1099
    const/4 v8, 0x1

    aget-object v8, v2, v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    div-float v4, v8, v11

    .line 1100
    const/4 v8, 0x2

    aget-object v8, v2, v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    div-float v5, v8, v11

    .line 1101
    iput v3, p0, Lcom/vivo/services/motion/PocketModeService;->data_x:F

    .line 1102
    iput v4, p0, Lcom/vivo/services/motion/PocketModeService;->data_y:F

    .line 1103
    iput v5, p0, Lcom/vivo/services/motion/PocketModeService;->data_z:F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v2    # "out":[Ljava/lang/String;
    :cond_0
    move v6, v7

    .line 1117
    :goto_1
    return v6

    .line 1088
    :catch_0
    move-exception v1

    .line 1090
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "PocketModeService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readFileByline:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1104
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "out":[Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 1105
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v7, "PocketModeService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "pocke_x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "pocke_y"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "pocke_z"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    const-string v7, "PocketModeService"

    const-string v8, "data error"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1112
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v7, "PocketModeService"

    const-string v8, "out null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getInstance()Lcom/vivo/services/motion/PocketModeService;
    .locals 1

    .prologue
    .line 1005
    sget-object v0, Lcom/vivo/services/motion/PocketModeService;->mSinglePocketModeService:Lcom/vivo/services/motion/PocketModeService;

    return-object v0
.end method

.method private static readFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 103
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    .local v2, "file":Ljava/io/File;
    const/4 v3, 0x0

    .line 105
    .local v3, "reader":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 107
    .local v5, "tempString":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 110
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 117
    :goto_0
    if-eqz v4, :cond_2

    .line 119
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v3, v4

    .line 125
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :cond_0
    :goto_1
    return-object v5

    .line 111
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v6, "PocketModeService"

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

    .line 114
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    move-object v3, v4

    .line 115
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :goto_2
    :try_start_4
    const-string v6, "PocketModeService"

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

    .line 117
    if-eqz v3, :cond_0

    .line 119
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 120
    :catch_2
    move-exception v1

    .line 121
    .local v1, "e1":Ljava/io/IOException;
    const-string v6, "PocketModeService"

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

    .line 120
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "e1":Ljava/io/IOException;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v1

    .line 121
    .restart local v1    # "e1":Ljava/io/IOException;
    const-string v6, "PocketModeService"

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

    .line 122
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_1

    .line 117
    .end local v1    # "e1":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v3, :cond_1

    .line 119
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 122
    :cond_1
    :goto_4
    throw v6

    .line 120
    :catch_4
    move-exception v1

    .line 121
    .restart local v1    # "e1":Ljava/io/IOException;
    const-string v7, "PocketModeService"

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

    .line 117
    .end local v1    # "e1":Ljava/io/IOException;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 114
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

.method private writeFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 86
    const/4 v1, 0x0

    .line 88
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 93
    if-eqz v2, :cond_2

    .line 95
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 100
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 96
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    move-object v1, v2

    .line 97
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 90
    :catch_1
    move-exception v0

    .line 91
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v3, "PocketModeService"

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

    .line 93
    if-eqz v1, :cond_0

    .line 95
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 96
    :catch_2
    move-exception v3

    goto :goto_0

    .line 93
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_2
    if-eqz v1, :cond_1

    .line 95
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 97
    :cond_1
    :goto_3
    throw v3

    .line 96
    :catch_3
    move-exception v4

    goto :goto_3

    .line 93
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 90
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
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v5, 0x1

    .line 1026
    const-string v1, "PocketModeService"

    const-string v2, "startMotionRecognitionService "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    iget-boolean v1, p0, Lcom/vivo/services/motion/PocketModeService;->isPocketModeWorking:Z

    if-nez v1, :cond_0

    .line 1029
    iput-object p1, p0, Lcom/vivo/services/motion/PocketModeService;->mContext:Landroid/content/Context;

    .line 1030
    iput-boolean v5, p0, Lcom/vivo/services/motion/PocketModeService;->isPocketModeWorking:Z

    .line 1031
    iput-object p2, p0, Lcom/vivo/services/motion/PocketModeService;->mCallBackHandler:Landroid/os/Handler;

    .line 1032
    iget-object v1, p0, Lcom/vivo/services/motion/PocketModeService;->mPocketModeAnalyzer:Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;

    invoke-virtual {v1}, Lcom/vivo/services/motion/PocketModeService$PocketModeAnalyzer;->reset()V

    .line 1033
    new-instance v1, Lcom/vivo/services/motion/PocketModeService$PocketModeServiceHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/vivo/services/motion/PocketModeService$PocketModeServiceHandler;-><init>(Lcom/vivo/services/motion/PocketModeService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/vivo/services/motion/PocketModeService;->mServiceHandler:Landroid/os/Handler;

    .line 1034
    iget-object v1, p0, Lcom/vivo/services/motion/PocketModeService;->mContext:Landroid/content/Context;

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/vivo/services/motion/PocketModeService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 1035
    iget-object v1, p0, Lcom/vivo/services/motion/PocketModeService;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/vivo/services/motion/PocketModeService;->pm:Landroid/os/PowerManager;

    .line 1036
    iget-object v1, p0, Lcom/vivo/services/motion/PocketModeService;->pm:Landroid/os/PowerManager;

    const-string v2, "PocketModeService"

    invoke-virtual {v1, v5, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/services/motion/PocketModeService;->mAWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1037
    iget-object v1, p0, Lcom/vivo/services/motion/PocketModeService;->pm:Landroid/os/PowerManager;

    const v2, 0x3000001a

    const-string v3, "PocketModeService"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/services/motion/PocketModeService;->mSWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1038
    iget-object v1, p0, Lcom/vivo/services/motion/PocketModeService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v1, :cond_0

    .line 1040
    iget-object v1, p0, Lcom/vivo/services/motion/PocketModeService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/vivo/services/motion/PocketModeService;->mProximityListener:Lcom/vivo/services/motion/PocketModeService$MotionSensorEventListener;

    iget-object v3, p0, Lcom/vivo/services/motion/PocketModeService;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    const v4, 0x186a0

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 1041
    const/4 v1, -0x1

    iput v1, p0, Lcom/vivo/services/motion/PocketModeService;->last_prox:I

    .line 1042
    const-string v1, "PocketModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startMotionRecognitionService last_prox = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/vivo/services/motion/PocketModeService;->last_prox:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1046
    .local v0, "msg":Landroid/os/Message;
    iput v5, v0, Landroid/os/Message;->what:I

    .line 1047
    iget-object v1, p0, Lcom/vivo/services/motion/PocketModeService;->mServiceHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 1049
    iget-object v1, p0, Lcom/vivo/services/motion/PocketModeService;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1051
    :cond_1
    return v5
.end method

.method public stopMotionRecognitionService()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1057
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1058
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1059
    iget-object v1, p0, Lcom/vivo/services/motion/PocketModeService;->mServiceHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 1061
    iget-object v1, p0, Lcom/vivo/services/motion/PocketModeService;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1063
    :cond_0
    const-string v1, "PocketModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopMotionRecognitionService "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/vivo/services/motion/PocketModeService;->isPocketModeWorking:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    iget-boolean v1, p0, Lcom/vivo/services/motion/PocketModeService;->isPocketModeWorking:Z

    if-ne v1, v5, :cond_2

    .line 1066
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/vivo/services/motion/PocketModeService;->isPocketModeWorking:Z

    .line 1067
    iget-object v1, p0, Lcom/vivo/services/motion/PocketModeService;->mServiceHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1068
    sget-object v2, Lcom/vivo/services/motion/PocketModeService;->mObjectLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1070
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/vivo/services/motion/PocketModeService;->mCallBackHandler:Landroid/os/Handler;

    .line 1071
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vivo/services/motion/PocketModeService;->mServiceHandler:Landroid/os/Handler;

    .line 1072
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1073
    iget-object v1, p0, Lcom/vivo/services/motion/PocketModeService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v1, :cond_1

    .line 1075
    iget-object v1, p0, Lcom/vivo/services/motion/PocketModeService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/vivo/services/motion/PocketModeService;->mAcceleromererListener:Lcom/vivo/services/motion/PocketModeService$MotionSensorEventListener;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1076
    iget-object v1, p0, Lcom/vivo/services/motion/PocketModeService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/vivo/services/motion/PocketModeService;->mProximityListener:Lcom/vivo/services/motion/PocketModeService$MotionSensorEventListener;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1078
    :cond_1
    iput-object v4, p0, Lcom/vivo/services/motion/PocketModeService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 1080
    :cond_2
    return v5

    .line 1072
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
