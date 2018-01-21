.class public final Lcom/vivo/services/motion/MessageRemindService;
.super Ljava/lang/Object;
.source "MessageRemindService.java"

# interfaces
.implements Lcom/vivo/services/motion/IMotionRecognitionService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/services/motion/MessageRemindService$1;,
        Lcom/vivo/services/motion/MessageRemindService$MessageRemindServiceHandler;,
        Lcom/vivo/services/motion/MessageRemindService$MotionSensorEventListener;,
        Lcom/vivo/services/motion/MessageRemindService$SensorTrigerObserver;
    }
.end annotation


# static fields
.field private static final DATA_COUNT:I = 0xc

.field private static final MSG_ACCELEROMETER_REGISTER:I = 0x5

.field private static final MSG_ACCELEROMETER_UNREGISTER:I = 0x6

.field private static final MSG_REMIND_ACTION_DET_START:I = 0x1

.field private static final MSG_REMIND_ACTION_DET_START_SURE:I = 0x2

.field private static final MSG_REMIND_ACTION_DET_STOP:I = 0x3

.field private static final MSG_REMIND_ACTION_TRIGER:I = 0x4

.field private static MTK_PLATFORM:Ljava/lang/String; = null

.field private static PLATFORM_TAG:Ljava/lang/String; = null

.field private static QCOM_PLATFORM:Ljava/lang/String; = null

.field private static final STATE_COUNT:I = 0x5

.field private static final TAG:Ljava/lang/String; = "MessageRemindService"

.field private static datacount:I

.field private static last_acc_x:J

.field private static last_acc_y:J

.field private static last_acc_z:J

.field private static makeSureStaticCnt:I

.field private static one_time_switch:I

.field private static registerstate:I

.field private static singleMessageRemindService:Lcom/vivo/services/motion/MessageRemindService;

.field private static statecount:I

.field private static temMakeSureStaticCnt:I


# instance fields
.field private isMessageRemindServiceEintWorking:Z

.field private isMessageRemindServiceWorking:Z

.field private mAWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mAccSensorVal:[F

.field private mAcceleromererListener:Lcom/vivo/services/motion/MessageRemindService$MotionSensorEventListener;

.field private mCallBackHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mFlatPositionInfo:Lcom/vivo/services/motion/FlatPositionInfo;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSensorTrigerObserver:Lcom/vivo/services/motion/MessageRemindService$SensorTrigerObserver;

.field private mServiceHandler:Landroid/os/Handler;

.field private mVivoSensorTest:Lcom/sensoroperate/VivoSensorTest;

.field private pm:Landroid/os/PowerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/32 v2, 0xffff

    const/4 v1, 0x0

    .line 31
    new-instance v0, Lcom/vivo/services/motion/MessageRemindService;

    invoke-direct {v0}, Lcom/vivo/services/motion/MessageRemindService;-><init>()V

    sput-object v0, Lcom/vivo/services/motion/MessageRemindService;->singleMessageRemindService:Lcom/vivo/services/motion/MessageRemindService;

    .line 44
    const/16 v0, 0xa

    sput v0, Lcom/vivo/services/motion/MessageRemindService;->makeSureStaticCnt:I

    .line 45
    sput v1, Lcom/vivo/services/motion/MessageRemindService;->temMakeSureStaticCnt:I

    .line 47
    const-string v0, "QCOM"

    sput-object v0, Lcom/vivo/services/motion/MessageRemindService;->QCOM_PLATFORM:Ljava/lang/String;

    .line 48
    const-string v0, "MTK"

    sput-object v0, Lcom/vivo/services/motion/MessageRemindService;->MTK_PLATFORM:Ljava/lang/String;

    .line 49
    const-string v0, "ro.vivo.product.solution"

    sput-object v0, Lcom/vivo/services/motion/MessageRemindService;->PLATFORM_TAG:Ljava/lang/String;

    .line 61
    sput v1, Lcom/vivo/services/motion/MessageRemindService;->datacount:I

    .line 62
    sput v1, Lcom/vivo/services/motion/MessageRemindService;->statecount:I

    .line 63
    sput v1, Lcom/vivo/services/motion/MessageRemindService;->registerstate:I

    .line 66
    sput-wide v2, Lcom/vivo/services/motion/MessageRemindService;->last_acc_x:J

    sput-wide v2, Lcom/vivo/services/motion/MessageRemindService;->last_acc_y:J

    sput-wide v2, Lcom/vivo/services/motion/MessageRemindService;->last_acc_z:J

    .line 68
    sput v1, Lcom/vivo/services/motion/MessageRemindService;->one_time_switch:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-boolean v0, p0, Lcom/vivo/services/motion/MessageRemindService;->isMessageRemindServiceWorking:Z

    .line 39
    iput-boolean v0, p0, Lcom/vivo/services/motion/MessageRemindService;->isMessageRemindServiceEintWorking:Z

    .line 40
    iput-object v1, p0, Lcom/vivo/services/motion/MessageRemindService;->mCallBackHandler:Landroid/os/Handler;

    .line 41
    iput-object v1, p0, Lcom/vivo/services/motion/MessageRemindService;->mServiceHandler:Landroid/os/Handler;

    .line 42
    iput-object v1, p0, Lcom/vivo/services/motion/MessageRemindService;->mContext:Landroid/content/Context;

    .line 51
    iput-object v1, p0, Lcom/vivo/services/motion/MessageRemindService;->pm:Landroid/os/PowerManager;

    .line 54
    iput-object v1, p0, Lcom/vivo/services/motion/MessageRemindService;->mAWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 57
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/vivo/services/motion/MessageRemindService;->mAccSensorVal:[F

    .line 58
    iput-object v1, p0, Lcom/vivo/services/motion/MessageRemindService;->mVivoSensorTest:Lcom/sensoroperate/VivoSensorTest;

    .line 59
    new-instance v0, Lcom/vivo/services/motion/FlatPositionInfo;

    invoke-direct {v0}, Lcom/vivo/services/motion/FlatPositionInfo;-><init>()V

    iput-object v0, p0, Lcom/vivo/services/motion/MessageRemindService;->mFlatPositionInfo:Lcom/vivo/services/motion/FlatPositionInfo;

    .line 451
    new-instance v0, Lcom/vivo/services/motion/MessageRemindService$SensorTrigerObserver;

    invoke-direct {v0, p0}, Lcom/vivo/services/motion/MessageRemindService$SensorTrigerObserver;-><init>(Lcom/vivo/services/motion/MessageRemindService;)V

    iput-object v0, p0, Lcom/vivo/services/motion/MessageRemindService;->mSensorTrigerObserver:Lcom/vivo/services/motion/MessageRemindService$SensorTrigerObserver;

    .line 452
    new-instance v0, Lcom/vivo/services/motion/MessageRemindService$MotionSensorEventListener;

    invoke-direct {v0, p0, v1}, Lcom/vivo/services/motion/MessageRemindService$MotionSensorEventListener;-><init>(Lcom/vivo/services/motion/MessageRemindService;Lcom/vivo/services/motion/MessageRemindService$1;)V

    iput-object v0, p0, Lcom/vivo/services/motion/MessageRemindService;->mAcceleromererListener:Lcom/vivo/services/motion/MessageRemindService$MotionSensorEventListener;

    .line 453
    const-string v0, "MessageRemindService"

    const-string v1, "MessageRemindService Creat"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    return-void
.end method

.method static synthetic access$000(Lcom/vivo/services/motion/MessageRemindService;)Lcom/sensoroperate/VivoSensorTest;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/MessageRemindService;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/vivo/services/motion/MessageRemindService;->mVivoSensorTest:Lcom/sensoroperate/VivoSensorTest;

    return-object v0
.end method

.method static synthetic access$002(Lcom/vivo/services/motion/MessageRemindService;Lcom/sensoroperate/VivoSensorTest;)Lcom/sensoroperate/VivoSensorTest;
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/motion/MessageRemindService;
    .param p1, "x1"    # Lcom/sensoroperate/VivoSensorTest;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/vivo/services/motion/MessageRemindService;->mVivoSensorTest:Lcom/sensoroperate/VivoSensorTest;

    return-object p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/vivo/services/motion/MessageRemindService;->PLATFORM_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/vivo/services/motion/MessageRemindService;)Lcom/vivo/services/motion/MessageRemindService$SensorTrigerObserver;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/MessageRemindService;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/vivo/services/motion/MessageRemindService;->mSensorTrigerObserver:Lcom/vivo/services/motion/MessageRemindService$SensorTrigerObserver;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/vivo/services/motion/MessageRemindService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/MessageRemindService;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/vivo/services/motion/MessageRemindService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/vivo/services/motion/MessageRemindService;)Lcom/vivo/services/motion/FlatPositionInfo;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/MessageRemindService;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/vivo/services/motion/MessageRemindService;->mFlatPositionInfo:Lcom/vivo/services/motion/FlatPositionInfo;

    return-object v0
.end method

.method static synthetic access$1300()I
    .locals 1

    .prologue
    .line 29
    sget v0, Lcom/vivo/services/motion/MessageRemindService;->temMakeSureStaticCnt:I

    return v0
.end method

.method static synthetic access$1302(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 29
    sput p0, Lcom/vivo/services/motion/MessageRemindService;->temMakeSureStaticCnt:I

    return p0
.end method

.method static synthetic access$1308()I
    .locals 2

    .prologue
    .line 29
    sget v0, Lcom/vivo/services/motion/MessageRemindService;->temMakeSureStaticCnt:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/vivo/services/motion/MessageRemindService;->temMakeSureStaticCnt:I

    return v0
.end method

.method static synthetic access$1400()I
    .locals 1

    .prologue
    .line 29
    sget v0, Lcom/vivo/services/motion/MessageRemindService;->makeSureStaticCnt:I

    return v0
.end method

.method static synthetic access$1500(Lcom/vivo/services/motion/MessageRemindService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/MessageRemindService;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/vivo/services/motion/MessageRemindService;->mCallBackHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/vivo/services/motion/MessageRemindService;)Landroid/hardware/SensorManager;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/MessageRemindService;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/vivo/services/motion/MessageRemindService;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$1700()I
    .locals 1

    .prologue
    .line 29
    sget v0, Lcom/vivo/services/motion/MessageRemindService;->registerstate:I

    return v0
.end method

.method static synthetic access$1702(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 29
    sput p0, Lcom/vivo/services/motion/MessageRemindService;->registerstate:I

    return p0
.end method

.method static synthetic access$1800(Lcom/vivo/services/motion/MessageRemindService;)Lcom/vivo/services/motion/MessageRemindService$MotionSensorEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/MessageRemindService;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/vivo/services/motion/MessageRemindService;->mAcceleromererListener:Lcom/vivo/services/motion/MessageRemindService$MotionSensorEventListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vivo/services/motion/MessageRemindService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/motion/MessageRemindService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/vivo/services/motion/MessageRemindService;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/vivo/services/motion/MessageRemindService;)[F
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/MessageRemindService;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/vivo/services/motion/MessageRemindService;->mAccSensorVal:[F

    return-object v0
.end method

.method static synthetic access$400(Lcom/vivo/services/motion/MessageRemindService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/MessageRemindService;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/vivo/services/motion/MessageRemindService;->isMessageRemindServiceEintWorking:Z

    return v0
.end method

.method static synthetic access$402(Lcom/vivo/services/motion/MessageRemindService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/motion/MessageRemindService;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/vivo/services/motion/MessageRemindService;->isMessageRemindServiceEintWorking:Z

    return p1
.end method

.method static synthetic access$500(Lcom/vivo/services/motion/MessageRemindService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/MessageRemindService;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/vivo/services/motion/MessageRemindService;->isMessageRemindServiceWorking:Z

    return v0
.end method

.method static synthetic access$600()I
    .locals 1

    .prologue
    .line 29
    sget v0, Lcom/vivo/services/motion/MessageRemindService;->one_time_switch:I

    return v0
.end method

.method static synthetic access$602(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 29
    sput p0, Lcom/vivo/services/motion/MessageRemindService;->one_time_switch:I

    return p0
.end method

.method static synthetic access$700(Lcom/vivo/services/motion/MessageRemindService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/MessageRemindService;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/vivo/services/motion/MessageRemindService;->mServiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800()I
    .locals 1

    .prologue
    .line 29
    sget v0, Lcom/vivo/services/motion/MessageRemindService;->datacount:I

    return v0
.end method

.method static synthetic access$802(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 29
    sput p0, Lcom/vivo/services/motion/MessageRemindService;->datacount:I

    return p0
.end method

.method static synthetic access$900()I
    .locals 1

    .prologue
    .line 29
    sget v0, Lcom/vivo/services/motion/MessageRemindService;->statecount:I

    return v0
.end method

.method static synthetic access$902(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 29
    sput p0, Lcom/vivo/services/motion/MessageRemindService;->statecount:I

    return p0
.end method

.method public static getInstance()Lcom/vivo/services/motion/MessageRemindService;
    .locals 1

    .prologue
    .line 447
    sget-object v0, Lcom/vivo/services/motion/MessageRemindService;->singleMessageRemindService:Lcom/vivo/services/motion/MessageRemindService;

    return-object v0
.end method

.method public static readFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 88
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    .local v2, "file":Ljava/io/File;
    const/4 v3, 0x0

    .line 90
    .local v3, "reader":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 92
    .local v5, "tempString":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 95
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 102
    :goto_0
    if-eqz v4, :cond_2

    .line 104
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v3, v4

    .line 110
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :cond_0
    :goto_1
    return-object v5

    .line 96
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v6, "TAG"

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

    .line 99
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    move-object v3, v4

    .line 100
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :goto_2
    :try_start_4
    const-string v6, "TAG"

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

    .line 102
    if-eqz v3, :cond_0

    .line 104
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 105
    :catch_2
    move-exception v1

    .line 106
    .local v1, "e1":Ljava/io/IOException;
    const-string v6, "TAG"

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

    .line 105
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "e1":Ljava/io/IOException;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v1

    .line 106
    .restart local v1    # "e1":Ljava/io/IOException;
    const-string v6, "TAG"

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

    .line 107
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_1

    .line 102
    .end local v1    # "e1":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v3, :cond_1

    .line 104
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 107
    :cond_1
    :goto_4
    throw v6

    .line 105
    :catch_4
    move-exception v1

    .line 106
    .restart local v1    # "e1":Ljava/io/IOException;
    const-string v7, "TAG"

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

    .line 102
    .end local v1    # "e1":Ljava/io/IOException;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 99
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
    .line 71
    const/4 v1, 0x0

    .line 73
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 78
    if-eqz v2, :cond_2

    .line 80
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 85
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 81
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    move-object v1, v2

    .line 82
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 75
    :catch_1
    move-exception v0

    .line 76
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v3, "MessageRemindService"

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

    .line 78
    if-eqz v1, :cond_0

    .line 80
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 81
    :catch_2
    move-exception v3

    goto :goto_0

    .line 78
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_2
    if-eqz v1, :cond_1

    .line 80
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 82
    :cond_1
    :goto_3
    throw v3

    .line 81
    :catch_3
    move-exception v4

    goto :goto_3

    .line 78
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 75
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
.method public IsDevInFlatState_startstate(Landroid/hardware/SensorEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 303
    const/4 v8, 0x0

    .line 306
    .local v8, "result":Z
    const-wide/16 v0, 0x0

    .line 307
    .local v0, "acc_x":J
    const-wide/16 v2, 0x0

    .line 308
    .local v2, "acc_y":J
    const-wide/16 v4, 0x0

    .line 310
    .local v4, "acc_z":J
    iget-object v9, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    const/high16 v10, 0x447a0000    # 1000.0f

    mul-float/2addr v9, v10

    float-to-long v0, v9

    .line 311
    iget-object v9, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    const/high16 v10, 0x447a0000    # 1000.0f

    mul-float/2addr v9, v10

    float-to-long v2, v9

    .line 312
    iget-object v9, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v10, 0x2

    aget v9, v9, v10

    const/high16 v10, 0x447a0000    # 1000.0f

    mul-float/2addr v9, v10

    float-to-long v4, v9

    .line 314
    mul-long v10, v0, v0

    mul-long v12, v2, v2

    add-long/2addr v10, v12

    mul-long v12, v4, v4

    add-long v6, v10, v12

    .line 315
    .local v6, "comp_sum":J
    const-wide/32 v10, 0xe4e1c00

    cmp-long v9, v6, v10

    if-gez v9, :cond_3

    const-wide/32 v10, 0x1c9c380

    cmp-long v9, v6, v10

    if-lez v9, :cond_3

    .line 317
    sput-wide v0, Lcom/vivo/services/motion/MessageRemindService;->last_acc_x:J

    .line 318
    sput-wide v2, Lcom/vivo/services/motion/MessageRemindService;->last_acc_y:J

    .line 319
    sput-wide v4, Lcom/vivo/services/motion/MessageRemindService;->last_acc_z:J

    .line 320
    const/4 v8, 0x1

    .line 329
    :goto_0
    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 331
    sget-wide v10, Lcom/vivo/services/motion/MessageRemindService;->last_acc_x:J

    const-wide/32 v12, 0xffff

    cmp-long v9, v10, v12

    if-eqz v9, :cond_1

    sget-wide v10, Lcom/vivo/services/motion/MessageRemindService;->last_acc_y:J

    const-wide/32 v12, 0xffff

    cmp-long v9, v10, v12

    if-eqz v9, :cond_1

    sget-wide v10, Lcom/vivo/services/motion/MessageRemindService;->last_acc_z:J

    const-wide/32 v12, 0xffff

    cmp-long v9, v10, v12

    if-eqz v9, :cond_1

    .line 333
    sget-wide v10, Lcom/vivo/services/motion/MessageRemindService;->last_acc_x:J

    sub-long v10, v0, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    const-wide/16 v12, 0x1388

    cmp-long v9, v10, v12

    if-gtz v9, :cond_0

    sget-wide v10, Lcom/vivo/services/motion/MessageRemindService;->last_acc_y:J

    sub-long v10, v2, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    const-wide/16 v12, 0x1388

    cmp-long v9, v10, v12

    if-gtz v9, :cond_0

    sget-wide v10, Lcom/vivo/services/motion/MessageRemindService;->last_acc_z:J

    sub-long v10, v4, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    const-wide/16 v12, 0x1388

    cmp-long v9, v10, v12

    if-lez v9, :cond_1

    .line 337
    :cond_0
    const/4 v8, 0x0

    .line 341
    :cond_1
    if-nez v8, :cond_2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    const-wide/16 v12, 0xbb8

    cmp-long v9, v10, v12

    if-gez v9, :cond_2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    const-wide/16 v12, 0xbb8

    cmp-long v9, v10, v12

    if-gez v9, :cond_2

    const-wide/16 v10, -0xbb8

    cmp-long v9, v4, v10

    if-lez v9, :cond_2

    .line 343
    const-wide/32 v10, 0xffff

    sput-wide v10, Lcom/vivo/services/motion/MessageRemindService;->last_acc_x:J

    .line 344
    const-wide/32 v10, 0xffff

    sput-wide v10, Lcom/vivo/services/motion/MessageRemindService;->last_acc_y:J

    .line 345
    const-wide/32 v10, 0xffff

    sput-wide v10, Lcom/vivo/services/motion/MessageRemindService;->last_acc_z:J

    .line 346
    const/4 v8, 0x1

    .line 348
    :cond_2
    const-string v9, "MessageRemindService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IsDevInFlatState--"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-wide v12, Lcom/vivo/services/motion/MessageRemindService;->last_acc_x:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-wide v12, Lcom/vivo/services/motion/MessageRemindService;->last_acc_y:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-wide v12, Lcom/vivo/services/motion/MessageRemindService;->last_acc_z:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    return v8

    .line 324
    :cond_3
    const-wide/32 v10, 0xffff

    sput-wide v10, Lcom/vivo/services/motion/MessageRemindService;->last_acc_x:J

    .line 325
    const-wide/32 v10, 0xffff

    sput-wide v10, Lcom/vivo/services/motion/MessageRemindService;->last_acc_y:J

    .line 326
    const-wide/32 v10, 0xffff

    sput-wide v10, Lcom/vivo/services/motion/MessageRemindService;->last_acc_z:J

    .line 327
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method public startMotionRecognitionService(Landroid/content/Context;Landroid/os/Handler;)Z
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const-wide/16 v8, 0x5dc

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 458
    iget-boolean v2, p0, Lcom/vivo/services/motion/MessageRemindService;->isMessageRemindServiceWorking:Z

    if-nez v2, :cond_0

    .line 460
    iput-object p1, p0, Lcom/vivo/services/motion/MessageRemindService;->mContext:Landroid/content/Context;

    .line 461
    iput-boolean v6, p0, Lcom/vivo/services/motion/MessageRemindService;->isMessageRemindServiceWorking:Z

    .line 462
    iput-object p2, p0, Lcom/vivo/services/motion/MessageRemindService;->mCallBackHandler:Landroid/os/Handler;

    .line 463
    new-instance v2, Lcom/vivo/services/motion/MessageRemindService$MessageRemindServiceHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/vivo/services/motion/MessageRemindService$MessageRemindServiceHandler;-><init>(Lcom/vivo/services/motion/MessageRemindService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/vivo/services/motion/MessageRemindService;->mServiceHandler:Landroid/os/Handler;

    .line 464
    sput v4, Lcom/vivo/services/motion/MessageRemindService;->temMakeSureStaticCnt:I

    .line 465
    sput v4, Lcom/vivo/services/motion/MessageRemindService;->registerstate:I

    .line 466
    sput v4, Lcom/vivo/services/motion/MessageRemindService;->datacount:I

    .line 467
    sput v4, Lcom/vivo/services/motion/MessageRemindService;->statecount:I

    .line 468
    sput v4, Lcom/vivo/services/motion/MessageRemindService;->one_time_switch:I

    .line 470
    iget-object v2, p0, Lcom/vivo/services/motion/MessageRemindService;->mContext:Landroid/content/Context;

    const-string v3, "sensor"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    iput-object v2, p0, Lcom/vivo/services/motion/MessageRemindService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 471
    iget-object v2, p0, Lcom/vivo/services/motion/MessageRemindService;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/vivo/services/motion/MessageRemindService;->pm:Landroid/os/PowerManager;

    .line 472
    iget-object v2, p0, Lcom/vivo/services/motion/MessageRemindService;->pm:Landroid/os/PowerManager;

    const-string v3, "MessageRemindService"

    invoke-virtual {v2, v6, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/vivo/services/motion/MessageRemindService;->mAWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 476
    :cond_0
    const-string v2, "ro.product.model.bbk"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 477
    .local v1, "prop":Ljava/lang/String;
    if-eqz v1, :cond_1

    sget-boolean v2, Lcom/vivo/services/motion/AllConfig;->mIsArchADSP:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/vivo/services/motion/MessageRemindService;->mServiceHandler:Landroid/os/Handler;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/vivo/services/motion/MessageRemindService;->mAWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_1

    .line 479
    iget-object v2, p0, Lcom/vivo/services/motion/MessageRemindService;->mAWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 480
    const-string v2, "MessageRemindService"

    const-string v3, "mAWakeLock success"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v2, p0, Lcom/vivo/services/motion/MessageRemindService;->mServiceHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 485
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 486
    .local v0, "msg":Landroid/os/Message;
    if-eqz v1, :cond_3

    sget-boolean v2, Lcom/vivo/services/motion/AllConfig;->mIsArchADSP:Z

    if-eqz v2, :cond_3

    .line 496
    :cond_2
    :goto_0
    return v6

    .line 491
    :cond_3
    iput v6, v0, Landroid/os/Message;->what:I

    .line 492
    iget-object v2, p0, Lcom/vivo/services/motion/MessageRemindService;->mServiceHandler:Landroid/os/Handler;

    if-eqz v2, :cond_2

    .line 494
    iget-object v2, p0, Lcom/vivo/services/motion/MessageRemindService;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public stopMotionRecognitionService()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 501
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 502
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 503
    iget-object v1, p0, Lcom/vivo/services/motion/MessageRemindService;->mServiceHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 505
    iget-object v1, p0, Lcom/vivo/services/motion/MessageRemindService;->mServiceHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 506
    iget-object v1, p0, Lcom/vivo/services/motion/MessageRemindService;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 507
    iget-object v1, p0, Lcom/vivo/services/motion/MessageRemindService;->mServiceHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 509
    :cond_0
    iget-boolean v1, p0, Lcom/vivo/services/motion/MessageRemindService;->isMessageRemindServiceWorking:Z

    if-ne v1, v3, :cond_1

    .line 511
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/vivo/services/motion/MessageRemindService;->isMessageRemindServiceWorking:Z

    .line 512
    iput-object v6, p0, Lcom/vivo/services/motion/MessageRemindService;->mCallBackHandler:Landroid/os/Handler;

    .line 513
    iput-object v6, p0, Lcom/vivo/services/motion/MessageRemindService;->mServiceHandler:Landroid/os/Handler;

    .line 515
    :cond_1
    return v3
.end method
