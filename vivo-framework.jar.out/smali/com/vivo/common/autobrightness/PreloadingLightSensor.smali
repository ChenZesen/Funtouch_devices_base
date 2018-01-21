.class public Lcom/vivo/common/autobrightness/PreloadingLightSensor;
.super Ljava/lang/Object;
.source "PreloadingLightSensor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/common/autobrightness/PreloadingLightSensor$PreHandler;
    }
.end annotation


# static fields
.field private static final MSG_DISABLE_PRE_LIGHT_SENSOR:I = 0x0

.field private static final MSG_ENABLE_PRE_LIGHT_SENSOR:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PreloadingLightSensor"


# instance fields
.field private mCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$PreLightCallback;

.field private mEanbled:Z

.field private mHandler:Lcom/vivo/common/autobrightness/PreloadingLightSensor$PreHandler;

.field private mLightTimeStamp:J

.field private mListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mValidEventCount:I


# direct methods
.method public constructor <init>(Landroid/hardware/SensorManager;Lcom/vivo/common/autobrightness/CameraLumaCallback$PreLightCallback;Landroid/os/Looper;)V
    .locals 2
    .param p1, "sensormanager"    # Landroid/hardware/SensorManager;
    .param p2, "callback"    # Lcom/vivo/common/autobrightness/CameraLumaCallback$PreLightCallback;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v1, p0, Lcom/vivo/common/autobrightness/PreloadingLightSensor;->mHandler:Lcom/vivo/common/autobrightness/PreloadingLightSensor$PreHandler;

    .line 44
    iput-boolean v0, p0, Lcom/vivo/common/autobrightness/PreloadingLightSensor;->mEanbled:Z

    .line 45
    iput-object v1, p0, Lcom/vivo/common/autobrightness/PreloadingLightSensor;->mSensorManager:Landroid/hardware/SensorManager;

    .line 46
    iput v0, p0, Lcom/vivo/common/autobrightness/PreloadingLightSensor;->mValidEventCount:I

    .line 47
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/vivo/common/autobrightness/PreloadingLightSensor;->mLightTimeStamp:J

    .line 97
    new-instance v0, Lcom/vivo/common/autobrightness/PreloadingLightSensor$1;

    invoke-direct {v0, p0}, Lcom/vivo/common/autobrightness/PreloadingLightSensor$1;-><init>(Lcom/vivo/common/autobrightness/PreloadingLightSensor;)V

    iput-object v0, p0, Lcom/vivo/common/autobrightness/PreloadingLightSensor;->mListener:Landroid/hardware/SensorEventListener;

    .line 51
    iput-object p1, p0, Lcom/vivo/common/autobrightness/PreloadingLightSensor;->mSensorManager:Landroid/hardware/SensorManager;

    .line 52
    new-instance v0, Lcom/vivo/common/autobrightness/PreloadingLightSensor$PreHandler;

    invoke-direct {v0, p0, p3}, Lcom/vivo/common/autobrightness/PreloadingLightSensor$PreHandler;-><init>(Lcom/vivo/common/autobrightness/PreloadingLightSensor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vivo/common/autobrightness/PreloadingLightSensor;->mHandler:Lcom/vivo/common/autobrightness/PreloadingLightSensor$PreHandler;

    .line 53
    iput-object p2, p0, Lcom/vivo/common/autobrightness/PreloadingLightSensor;->mCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$PreLightCallback;

    .line 54
    const-string v0, "PreloadingLightSensor"

    const-string v1, "constructor called."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/vivo/common/autobrightness/PreloadingLightSensor;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/PreloadingLightSensor;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/vivo/common/autobrightness/PreloadingLightSensor;->enableLightSensor(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/vivo/common/autobrightness/PreloadingLightSensor;)Lcom/vivo/common/autobrightness/CameraLumaCallback$PreLightCallback;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/PreloadingLightSensor;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/vivo/common/autobrightness/PreloadingLightSensor;->mCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$PreLightCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vivo/common/autobrightness/PreloadingLightSensor;)J
    .locals 2
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/PreloadingLightSensor;

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/vivo/common/autobrightness/PreloadingLightSensor;->mLightTimeStamp:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/vivo/common/autobrightness/PreloadingLightSensor;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/PreloadingLightSensor;

    .prologue
    .line 37
    iget v0, p0, Lcom/vivo/common/autobrightness/PreloadingLightSensor;->mValidEventCount:I

    return v0
.end method

.method static synthetic access$312(Lcom/vivo/common/autobrightness/PreloadingLightSensor;I)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/PreloadingLightSensor;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iget v0, p0, Lcom/vivo/common/autobrightness/PreloadingLightSensor;->mValidEventCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/vivo/common/autobrightness/PreloadingLightSensor;->mValidEventCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/vivo/common/autobrightness/PreloadingLightSensor;)Lcom/vivo/common/autobrightness/PreloadingLightSensor$PreHandler;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/PreloadingLightSensor;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/vivo/common/autobrightness/PreloadingLightSensor;->mHandler:Lcom/vivo/common/autobrightness/PreloadingLightSensor$PreHandler;

    return-object v0
.end method

.method private enableLightSensor(Z)V
    .locals 7
    .param p1, "enable"    # Z

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 126
    iget-boolean v1, p0, Lcom/vivo/common/autobrightness/PreloadingLightSensor;->mEanbled:Z

    if-eq v1, p1, :cond_0

    .line 127
    const-string v1, "PreloadingLightSensor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enablePreLightSensor("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    if-eqz p1, :cond_3

    .line 129
    iput v4, p0, Lcom/vivo/common/autobrightness/PreloadingLightSensor;->mValidEventCount:I

    .line 131
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isUseWakeLightSensor()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 132
    iget-object v1, p0, Lcom/vivo/common/autobrightness/PreloadingLightSensor;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v6, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v0

    .line 136
    .local v0, "mLightSensor":Landroid/hardware/Sensor;
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/vivo/common/autobrightness/PreloadingLightSensor;->mLightTimeStamp:J

    .line 137
    iget-object v1, p0, Lcom/vivo/common/autobrightness/PreloadingLightSensor;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/vivo/common/autobrightness/PreloadingLightSensor;->mListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/vivo/common/autobrightness/PreloadingLightSensor;->mHandler:Lcom/vivo/common/autobrightness/PreloadingLightSensor$PreHandler;

    invoke-virtual {v1, v2, v0, v5, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/vivo/common/autobrightness/PreloadingLightSensor;->mEanbled:Z

    .line 138
    const-string v2, "PreloadingLightSensor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableLightSensor after register. mEanbled="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/vivo/common/autobrightness/PreloadingLightSensor;->mEanbled:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ligntSensor="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v0, :cond_2

    const-string v1, "Null"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .end local v0    # "mLightSensor":Landroid/hardware/Sensor;
    :cond_0
    :goto_2
    return-void

    .line 134
    :cond_1
    iget-object v1, p0, Lcom/vivo/common/autobrightness/PreloadingLightSensor;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .restart local v0    # "mLightSensor":Landroid/hardware/Sensor;
    goto :goto_0

    .line 138
    :cond_2
    const-string v1, "NotNull"

    goto :goto_1

    .line 140
    .end local v0    # "mLightSensor":Landroid/hardware/Sensor;
    :cond_3
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/vivo/common/autobrightness/PreloadingLightSensor;->mLightTimeStamp:J

    .line 141
    iget-object v1, p0, Lcom/vivo/common/autobrightness/PreloadingLightSensor;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/vivo/common/autobrightness/PreloadingLightSensor;->mListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 142
    iput-boolean v4, p0, Lcom/vivo/common/autobrightness/PreloadingLightSensor;->mEanbled:Z

    .line 143
    iget-object v1, p0, Lcom/vivo/common/autobrightness/PreloadingLightSensor;->mCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$PreLightCallback;

    if-eqz v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/vivo/common/autobrightness/PreloadingLightSensor;->mCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$PreLightCallback;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/vivo/common/autobrightness/CameraLumaCallback$PreLightCallback;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    goto :goto_2
.end method


# virtual methods
.method public enablePreLightSensor(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 84
    if-eqz p1, :cond_0

    .line 85
    iget-object v0, p0, Lcom/vivo/common/autobrightness/PreloadingLightSensor;->mHandler:Lcom/vivo/common/autobrightness/PreloadingLightSensor$PreHandler;

    invoke-virtual {v0, v1}, Lcom/vivo/common/autobrightness/PreloadingLightSensor$PreHandler;->removeMessages(I)V

    .line 86
    iget-object v0, p0, Lcom/vivo/common/autobrightness/PreloadingLightSensor;->mHandler:Lcom/vivo/common/autobrightness/PreloadingLightSensor$PreHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vivo/common/autobrightness/PreloadingLightSensor$PreHandler;->sendEmptyMessage(I)Z

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/vivo/common/autobrightness/PreloadingLightSensor;->mHandler:Lcom/vivo/common/autobrightness/PreloadingLightSensor$PreHandler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lcom/vivo/common/autobrightness/PreloadingLightSensor$PreHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
