.class public Lcom/vivo/common/autobrightness/CollectUseData;
.super Ljava/lang/Object;
.source "CollectUseData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/common/autobrightness/CollectUseData$CollectHandler;
    }
.end annotation


# static fields
.field public static final EVENTID_AUTOBRIGHTNESS:Ljava/lang/String; = "1005"

.field public static final LABEL_AUTO_BRIGHT_APPLY_HISTORY:Ljava/lang/String; = "10057"

.field public static final LABEL_USE_DURATION:Ljava/lang/String; = "10051"

.field public static final LABLE_CAMERA_USE_TIME:Ljava/lang/String; = "10053"

.field public static final LABLE_MEMORY_PARAMTER:Ljava/lang/String; = "10052"

.field public static final LABLE_USER_BRIGHTNESS:Ljava/lang/String; = "10054"

.field public static final LABLE_USER_MODIFY_INFO:Ljava/lang/String; = "10055"

.field public static final LABLE_USER_MODIFY_INFO_ARG:Ljava/lang/String; = "10056"

.field private static final LIGHT_LUX_COUNT_TIMEOUT:I = 0x7d0

.field private static final MSG_BIRGHTNESS_MANUAL_HAPPENED:I = 0x2

.field private static final MSG_BIRGHTNESS_MANUAL_TIMEUP:I = 0x3

.field private static final MSG_WRITE_TO_DB:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CollectUseData"

.field private static mInstance:Lcom/vivo/common/autobrightness/CollectUseData;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataParameterList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vivo/common/autobrightness/DataParameter;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Lcom/vivo/common/autobrightness/CollectUseData$CollectHandler;

.field private mLightBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mLightSensor:Landroid/hardware/Sensor;

.field private mListener:Landroid/hardware/SensorEventListener;

.field private mLock:Ljava/lang/Object;

.field private mManualBrightness:I

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mVivoCollectData:Lcom/vivo/common/VivoCollectData;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/vivo/common/autobrightness/CollectUseData;->mLock:Ljava/lang/Object;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/vivo/common/autobrightness/CollectUseData;->mDataParameterList:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/vivo/common/autobrightness/CollectUseData;->mLightBuffer:Ljava/util/ArrayList;

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/common/autobrightness/CollectUseData;->mManualBrightness:I

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/common/autobrightness/CollectUseData;->mLightSensor:Landroid/hardware/Sensor;

    .line 55
    new-instance v0, Lcom/vivo/common/autobrightness/CollectUseData$1;

    invoke-direct {v0, p0}, Lcom/vivo/common/autobrightness/CollectUseData$1;-><init>(Lcom/vivo/common/autobrightness/CollectUseData;)V

    iput-object v0, p0, Lcom/vivo/common/autobrightness/CollectUseData;->mListener:Landroid/hardware/SensorEventListener;

    .line 73
    iput-object p1, p0, Lcom/vivo/common/autobrightness/CollectUseData;->mContext:Landroid/content/Context;

    .line 74
    new-instance v0, Lcom/vivo/common/VivoCollectData;

    iget-object v1, p0, Lcom/vivo/common/autobrightness/CollectUseData;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/vivo/common/VivoCollectData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/common/autobrightness/CollectUseData;->mVivoCollectData:Lcom/vivo/common/VivoCollectData;

    .line 75
    new-instance v0, Lcom/vivo/common/autobrightness/CollectUseData$CollectHandler;

    invoke-direct {v0, p0, p2}, Lcom/vivo/common/autobrightness/CollectUseData$CollectHandler;-><init>(Lcom/vivo/common/autobrightness/CollectUseData;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vivo/common/autobrightness/CollectUseData;->mHandler:Lcom/vivo/common/autobrightness/CollectUseData$CollectHandler;

    .line 76
    iget-object v0, p0, Lcom/vivo/common/autobrightness/CollectUseData;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/vivo/common/autobrightness/CollectUseData;->mSensorManager:Landroid/hardware/SensorManager;

    .line 77
    iget-object v0, p0, Lcom/vivo/common/autobrightness/CollectUseData;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/vivo/common/autobrightness/CollectUseData;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/common/autobrightness/CollectUseData;->mLightSensor:Landroid/hardware/Sensor;

    .line 80
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/vivo/common/autobrightness/CollectUseData;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/CollectUseData;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/vivo/common/autobrightness/CollectUseData;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vivo/common/autobrightness/CollectUseData;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/CollectUseData;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/vivo/common/autobrightness/CollectUseData;->mLightBuffer:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vivo/common/autobrightness/CollectUseData;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/CollectUseData;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/vivo/common/autobrightness/CollectUseData;->mDataParameterList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vivo/common/autobrightness/CollectUseData;Lcom/vivo/common/autobrightness/DataParameter;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/CollectUseData;
    .param p1, "x1"    # Lcom/vivo/common/autobrightness/DataParameter;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/vivo/common/autobrightness/CollectUseData;->writeDatabaseUnlock(Lcom/vivo/common/autobrightness/DataParameter;)V

    return-void
.end method

.method static synthetic access$400(Lcom/vivo/common/autobrightness/CollectUseData;)Landroid/hardware/SensorEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/CollectUseData;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/vivo/common/autobrightness/CollectUseData;->mListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vivo/common/autobrightness/CollectUseData;)Landroid/hardware/Sensor;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/CollectUseData;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/vivo/common/autobrightness/CollectUseData;->mLightSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$600(Lcom/vivo/common/autobrightness/CollectUseData;)Lcom/vivo/common/autobrightness/CollectUseData$CollectHandler;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/CollectUseData;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/vivo/common/autobrightness/CollectUseData;->mHandler:Lcom/vivo/common/autobrightness/CollectUseData$CollectHandler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/vivo/common/autobrightness/CollectUseData;)Landroid/hardware/SensorManager;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/CollectUseData;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/vivo/common/autobrightness/CollectUseData;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/vivo/common/autobrightness/CollectUseData;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/CollectUseData;

    .prologue
    .line 25
    iget v0, p0, Lcom/vivo/common/autobrightness/CollectUseData;->mManualBrightness:I

    return v0
.end method

.method public static getInstance(Landroid/content/Context;Landroid/os/Looper;)Lcom/vivo/common/autobrightness/CollectUseData;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 83
    sget-object v0, Lcom/vivo/common/autobrightness/CollectUseData;->mInstance:Lcom/vivo/common/autobrightness/CollectUseData;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Lcom/vivo/common/autobrightness/CollectUseData;

    invoke-direct {v0, p0, p1}, Lcom/vivo/common/autobrightness/CollectUseData;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    sput-object v0, Lcom/vivo/common/autobrightness/CollectUseData;->mInstance:Lcom/vivo/common/autobrightness/CollectUseData;

    .line 85
    sget-object v0, Lcom/vivo/common/autobrightness/CollectUseData;->mInstance:Lcom/vivo/common/autobrightness/CollectUseData;

    .line 87
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/vivo/common/autobrightness/CollectUseData;->mInstance:Lcom/vivo/common/autobrightness/CollectUseData;

    goto :goto_0
.end method

.method private writeDatabaseUnlock(Lcom/vivo/common/autobrightness/DataParameter;)V
    .locals 12
    .param p1, "data"    # Lcom/vivo/common/autobrightness/DataParameter;

    .prologue
    .line 92
    iget-object v1, p0, Lcom/vivo/common/autobrightness/CollectUseData;->mVivoCollectData:Lcom/vivo/common/VivoCollectData;

    iget-object v2, p1, Lcom/vivo/common/autobrightness/DataParameter;->eventId:Ljava/lang/String;

    iget-object v3, p1, Lcom/vivo/common/autobrightness/DataParameter;->label:Ljava/lang/String;

    iget-wide v4, p1, Lcom/vivo/common/autobrightness/DataParameter;->startTime:J

    iget-wide v6, p1, Lcom/vivo/common/autobrightness/DataParameter;->endTime:J

    iget-wide v8, p1, Lcom/vivo/common/autobrightness/DataParameter;->duration:J

    iget v10, p1, Lcom/vivo/common/autobrightness/DataParameter;->useNum:I

    iget-object v11, p1, Lcom/vivo/common/autobrightness/DataParameter;->params:Ljava/util/HashMap;

    invoke-virtual/range {v1 .. v11}, Lcom/vivo/common/VivoCollectData;->writeData(Ljava/lang/String;Ljava/lang/String;JJJILjava/util/HashMap;)V

    .line 93
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    const-string v0, "CollectUseData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeDatabaseUnlock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/vivo/common/autobrightness/DataParameter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_0
    return-void
.end method


# virtual methods
.method public notifyBrightnessChanged(I)V
    .locals 5
    .param p1, "brightness"    # I

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x2

    .line 111
    iput p1, p0, Lcom/vivo/common/autobrightness/CollectUseData;->mManualBrightness:I

    .line 112
    iget-object v0, p0, Lcom/vivo/common/autobrightness/CollectUseData;->mHandler:Lcom/vivo/common/autobrightness/CollectUseData$CollectHandler;

    invoke-virtual {v0, v1}, Lcom/vivo/common/autobrightness/CollectUseData$CollectHandler;->removeMessages(I)V

    .line 113
    iget-object v0, p0, Lcom/vivo/common/autobrightness/CollectUseData;->mHandler:Lcom/vivo/common/autobrightness/CollectUseData$CollectHandler;

    invoke-virtual {v0, v4}, Lcom/vivo/common/autobrightness/CollectUseData$CollectHandler;->removeMessages(I)V

    .line 115
    iget-object v0, p0, Lcom/vivo/common/autobrightness/CollectUseData;->mHandler:Lcom/vivo/common/autobrightness/CollectUseData$CollectHandler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/vivo/common/autobrightness/CollectUseData$CollectHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 116
    iget-object v0, p0, Lcom/vivo/common/autobrightness/CollectUseData;->mHandler:Lcom/vivo/common/autobrightness/CollectUseData$CollectHandler;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v4, v2, v3}, Lcom/vivo/common/autobrightness/CollectUseData$CollectHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 117
    return-void
.end method

.method public sendDataParameter(Lcom/vivo/common/autobrightness/DataParameter;)V
    .locals 3
    .param p1, "data"    # Lcom/vivo/common/autobrightness/DataParameter;

    .prologue
    .line 100
    if-nez p1, :cond_0

    .line 101
    const-string v0, "CollectUseData"

    const-string v1, "seedDataParameter data is null."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/vivo/common/autobrightness/CollectUseData;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/vivo/common/autobrightness/CollectUseData;->mDataParameterList:Ljava/util/ArrayList;

    new-instance v2, Lcom/vivo/common/autobrightness/DataParameter;

    invoke-direct {v2, p1}, Lcom/vivo/common/autobrightness/DataParameter;-><init>(Lcom/vivo/common/autobrightness/DataParameter;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v0, p0, Lcom/vivo/common/autobrightness/CollectUseData;->mHandler:Lcom/vivo/common/autobrightness/CollectUseData$CollectHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/vivo/common/autobrightness/CollectUseData$CollectHandler;->removeMessages(I)V

    .line 106
    iget-object v0, p0, Lcom/vivo/common/autobrightness/CollectUseData;->mHandler:Lcom/vivo/common/autobrightness/CollectUseData$CollectHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/vivo/common/autobrightness/CollectUseData$CollectHandler;->sendEmptyMessage(I)Z

    .line 107
    monitor-exit v1

    .line 108
    return-void

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
