.class public Lcom/android/server/policy/VivoProximitySensorListener;
.super Ljava/lang/Object;
.source "VivoProximitySensorListener.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/VivoProximitySensorListener$MessageHandler;,
        Lcom/android/server/policy/VivoProximitySensorListener$Callbacks;
    }
.end annotation


# static fields
.field private static final IS_LOG_OPEN:Z

.field private static final KEY_VIVO_LOG_CTRL:Ljava/lang/String; = "persist.sys.log.ctrl"

.field private static final MSG_PROXIMITY_SENSOR_DEBOUNCED:I = 0x1

.field private static final PROXIMITY_NEGATIVE:I = 0x0

.field private static final PROXIMITY_POSITIVE:I = 0x1

.field private static final PROXIMITY_SENSOR_NEGATIVE_DEBOUNCE_DELAY:I = 0x190

.field private static final PROXIMITY_SENSOR_POSITIVE_DEBOUNCE_DELAY:I = 0x0

.field private static final PROXIMITY_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "VivoProximitySensorListener"

.field private static final TYPICAL_PROXIMITY_THRESHOLD:F = 1.5f


# instance fields
.field private mCallbacks:Lcom/android/server/policy/VivoProximitySensorListener$Callbacks;

.field private mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mPendingProximity:I

.field private mPendingProximityDebounceTime:J

.field private mProximity:I

.field private final mProximitySensorListener:Landroid/hardware/SensorEventListener;

.field private mProximityThreshold:F

.field private mRate:I

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    const-string v0, "persist.sys.log.ctrl"

    const-string v1, "no"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/VivoProximitySensorListener;->IS_LOG_OPEN:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/policy/VivoProximitySensorListener$Callbacks;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "callbacks"    # Lcom/android/server/policy/VivoProximitySensorListener$Callbacks;

    .prologue
    .line 51
    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/policy/VivoProximitySensorListener;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/policy/VivoProximitySensorListener$Callbacks;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/policy/VivoProximitySensorListener$Callbacks;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "callbacks"    # Lcom/android/server/policy/VivoProximitySensorListener$Callbacks;
    .param p4, "rate"    # I

    .prologue
    const/4 v3, -0x1

    const/high16 v2, 0x3fc00000    # 1.5f

    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/VivoProximitySensorListener;->mLock:Ljava/lang/Object;

    .line 37
    iput-object v1, p0, Lcom/android/server/policy/VivoProximitySensorListener;->mContext:Landroid/content/Context;

    .line 38
    iput-object v1, p0, Lcom/android/server/policy/VivoProximitySensorListener;->mHandler:Landroid/os/Handler;

    .line 39
    iput-object v1, p0, Lcom/android/server/policy/VivoProximitySensorListener;->mCallbacks:Lcom/android/server/policy/VivoProximitySensorListener$Callbacks;

    .line 40
    iput-object v1, p0, Lcom/android/server/policy/VivoProximitySensorListener;->mSensorManager:Landroid/hardware/SensorManager;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/VivoProximitySensorListener;->mEnabled:Z

    .line 42
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/policy/VivoProximitySensorListener;->mRate:I

    .line 43
    iput-object v1, p0, Lcom/android/server/policy/VivoProximitySensorListener;->mSensor:Landroid/hardware/Sensor;

    .line 44
    iput v2, p0, Lcom/android/server/policy/VivoProximitySensorListener;->mProximityThreshold:F

    .line 45
    iput v3, p0, Lcom/android/server/policy/VivoProximitySensorListener;->mProximity:I

    .line 46
    iput v3, p0, Lcom/android/server/policy/VivoProximitySensorListener;->mPendingProximity:I

    .line 117
    new-instance v0, Lcom/android/server/policy/VivoProximitySensorListener$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/VivoProximitySensorListener$1;-><init>(Lcom/android/server/policy/VivoProximitySensorListener;)V

    iput-object v0, p0, Lcom/android/server/policy/VivoProximitySensorListener;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    .line 56
    iput-object p1, p0, Lcom/android/server/policy/VivoProximitySensorListener;->mContext:Landroid/content/Context;

    .line 57
    new-instance v0, Lcom/android/server/policy/VivoProximitySensorListener$MessageHandler;

    invoke-direct {v0, p0, p2}, Lcom/android/server/policy/VivoProximitySensorListener$MessageHandler;-><init>(Lcom/android/server/policy/VivoProximitySensorListener;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/policy/VivoProximitySensorListener;->mHandler:Landroid/os/Handler;

    .line 58
    iput-object p3, p0, Lcom/android/server/policy/VivoProximitySensorListener;->mCallbacks:Lcom/android/server/policy/VivoProximitySensorListener$Callbacks;

    .line 59
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/server/policy/VivoProximitySensorListener;->mSensorManager:Landroid/hardware/SensorManager;

    .line 60
    iput p4, p0, Lcom/android/server/policy/VivoProximitySensorListener;->mRate:I

    .line 61
    iget-object v0, p0, Lcom/android/server/policy/VivoProximitySensorListener;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/VivoProximitySensorListener;->mSensor:Landroid/hardware/Sensor;

    .line 62
    iget-object v0, p0, Lcom/android/server/policy/VivoProximitySensorListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/server/policy/VivoProximitySensorListener;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/android/server/policy/VivoProximitySensorListener;->mProximityThreshold:F

    .line 66
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/VivoProximitySensorListener;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/VivoProximitySensorListener;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/server/policy/VivoProximitySensorListener;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/policy/VivoProximitySensorListener;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/VivoProximitySensorListener;

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/android/server/policy/VivoProximitySensorListener;->mEnabled:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/policy/VivoProximitySensorListener;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/VivoProximitySensorListener;

    .prologue
    .line 22
    iget v0, p0, Lcom/android/server/policy/VivoProximitySensorListener;->mProximityThreshold:F

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/policy/VivoProximitySensorListener;JZ)V
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/VivoProximitySensorListener;
    .param p1, "x1"    # J
    .param p3, "x2"    # Z

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/VivoProximitySensorListener;->handleProximitySensorEvent(JZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/policy/VivoProximitySensorListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/VivoProximitySensorListener;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/server/policy/VivoProximitySensorListener;->debounceProximitySensor()V

    return-void
.end method

.method private debounceProximitySensor()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 171
    iget v1, p0, Lcom/android/server/policy/VivoProximitySensorListener;->mPendingProximity:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 173
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 174
    .local v2, "now":J
    iget-wide v4, p0, Lcom/android/server/policy/VivoProximitySensorListener;->mPendingProximityDebounceTime:J

    cmp-long v1, v4, v2

    if-gtz v1, :cond_3

    .line 176
    iget v1, p0, Lcom/android/server/policy/VivoProximitySensorListener;->mPendingProximity:I

    iput v1, p0, Lcom/android/server/policy/VivoProximitySensorListener;->mProximity:I

    .line 177
    iget v1, p0, Lcom/android/server/policy/VivoProximitySensorListener;->mProximity:I

    if-ne v1, v6, :cond_1

    .line 179
    const-string v1, "PROXIMITY_POSITIVE"

    invoke-direct {p0, v1}, Lcom/android/server/policy/VivoProximitySensorListener;->printf(Ljava/lang/String;)V

    .line 180
    iget-object v1, p0, Lcom/android/server/policy/VivoProximitySensorListener;->mCallbacks:Lcom/android/server/policy/VivoProximitySensorListener$Callbacks;

    invoke-interface {v1}, Lcom/android/server/policy/VivoProximitySensorListener$Callbacks;->onProximityPositive()V

    .line 199
    .end local v2    # "now":J
    :cond_0
    :goto_0
    return-void

    .line 182
    .restart local v2    # "now":J
    :cond_1
    iget v1, p0, Lcom/android/server/policy/VivoProximitySensorListener;->mProximity:I

    if-nez v1, :cond_2

    .line 184
    const-string v1, "PROXIMITY_NEGATIVE"

    invoke-direct {p0, v1}, Lcom/android/server/policy/VivoProximitySensorListener;->printf(Ljava/lang/String;)V

    .line 185
    iget-object v1, p0, Lcom/android/server/policy/VivoProximitySensorListener;->mCallbacks:Lcom/android/server/policy/VivoProximitySensorListener$Callbacks;

    invoke-interface {v1}, Lcom/android/server/policy/VivoProximitySensorListener$Callbacks;->onProximityNegative()V

    goto :goto_0

    .line 189
    :cond_2
    const-string v1, "VivoProximitySensorListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid mProximity="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/policy/VivoProximitySensorListener;->mProximity:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 194
    :cond_3
    iget-object v1, p0, Lcom/android/server/policy/VivoProximitySensorListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 195
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v6}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 196
    iget-object v1, p0, Lcom/android/server/policy/VivoProximitySensorListener;->mHandler:Landroid/os/Handler;

    iget-wide v4, p0, Lcom/android/server/policy/VivoProximitySensorListener;->mPendingProximityDebounceTime:J

    invoke-virtual {v1, v0, v4, v5}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private handleProximitySensorEvent(JZ)V
    .locals 3
    .param p1, "time"    # J
    .param p3, "positive"    # Z

    .prologue
    const/4 v1, 0x1

    .line 143
    iget v0, p0, Lcom/android/server/policy/VivoProximitySensorListener;->mProximity:I

    if-nez v0, :cond_0

    if-nez p3, :cond_0

    .line 167
    :goto_0
    return-void

    .line 147
    :cond_0
    iget v0, p0, Lcom/android/server/policy/VivoProximitySensorListener;->mProximity:I

    if-ne v0, v1, :cond_1

    if-eqz p3, :cond_1

    .line 151
    iget-object v0, p0, Lcom/android/server/policy/VivoProximitySensorListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 156
    :cond_1
    if-eqz p3, :cond_2

    .line 158
    iput v1, p0, Lcom/android/server/policy/VivoProximitySensorListener;->mPendingProximity:I

    .line 159
    const-wide/16 v0, 0x0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/policy/VivoProximitySensorListener;->mPendingProximityDebounceTime:J

    .line 166
    :goto_1
    invoke-direct {p0}, Lcom/android/server/policy/VivoProximitySensorListener;->debounceProximitySensor()V

    goto :goto_0

    .line 163
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/VivoProximitySensorListener;->mPendingProximity:I

    .line 164
    const-wide/16 v0, 0x190

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/policy/VivoProximitySensorListener;->mPendingProximityDebounceTime:J

    goto :goto_1
.end method

.method private printf(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 224
    sget-boolean v0, Lcom/android/server/policy/VivoProximitySensorListener;->IS_LOG_OPEN:Z

    if-eqz v0, :cond_0

    .line 226
    const-string v0, "VivoProximitySensorListener"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_0
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 99
    iget-object v1, p0, Lcom/android/server/policy/VivoProximitySensorListener;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/VivoProximitySensorListener;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_0

    .line 103
    const-string v0, "VivoProximitySensorListener"

    const-string v2, "Cannot detect sensors. Invalid disable"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    monitor-exit v1

    .line 115
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/VivoProximitySensorListener;->mEnabled:Z

    if-ne v0, v2, :cond_1

    .line 108
    const-string v0, "Disable VivoProximitySensorListener"

    invoke-direct {p0, v0}, Lcom/android/server/policy/VivoProximitySensorListener;->printf(Ljava/lang/String;)V

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/VivoProximitySensorListener;->mEnabled:Z

    .line 110
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/policy/VivoProximitySensorListener;->mProximity:I

    .line 111
    iget-object v0, p0, Lcom/android/server/policy/VivoProximitySensorListener;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 112
    iget-object v0, p0, Lcom/android/server/policy/VivoProximitySensorListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/policy/VivoProximitySensorListener;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 114
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enable()V
    .locals 6

    .prologue
    .line 77
    iget-object v1, p0, Lcom/android/server/policy/VivoProximitySensorListener;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/VivoProximitySensorListener;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_0

    .line 81
    const-string v0, "VivoProximitySensorListener"

    const-string v2, "Cannot detect sensors. Not enabled"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    monitor-exit v1

    .line 95
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/VivoProximitySensorListener;->mEnabled:Z

    if-nez v0, :cond_1

    .line 87
    const-string v0, "Enable VivoProximitySensorListener"

    invoke-direct {p0, v0}, Lcom/android/server/policy/VivoProximitySensorListener;->printf(Ljava/lang/String;)V

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/VivoProximitySensorListener;->mEnabled:Z

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/policy/VivoProximitySensorListener;->mPendingProximity:I

    .line 90
    iget-object v0, p0, Lcom/android/server/policy/VivoProximitySensorListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/policy/VivoProximitySensorListener;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/android/server/policy/VivoProximitySensorListener;->mSensor:Landroid/hardware/Sensor;

    iget v4, p0, Lcom/android/server/policy/VivoProximitySensorListener;->mRate:I

    iget-object v5, p0, Lcom/android/server/policy/VivoProximitySensorListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 94
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
