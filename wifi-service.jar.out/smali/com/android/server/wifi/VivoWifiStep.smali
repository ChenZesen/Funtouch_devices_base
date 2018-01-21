.class public Lcom/android/server/wifi/VivoWifiStep;
.super Ljava/lang/Object;
.source "VivoWifiStep.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final COEFF0:I = 0x7d

.field private static final COEFF1:I = 0x72

.field private static final COEFF2:I = 0x4c

.field private static final COEFF3:I = 0x26

.field private static DBG:Z = false

.field private static final DOWN_TIME:I = 0x384

.field private static final TAG:Ljava/lang/String; = "VivoWifiStep"

.field private static final UP_THRESHOLD:I = 0x3

.field private static final UP_TIME:I = 0x1c2

.field private static mCount:F = 0.0f

.field private static mFlagScan:Z = false

.field private static final sensorTypeA:I = 0x1

.field private static final sensorTypeC:I = 0x13

.field private static final sensorTypeD:I = 0x12


# instance fields
.field private context:Landroid/content/Context;

.field private downStartTime:J

.field private isRegisted:Z

.field private lastScanAttempt:J

.field private mAccelerometer:Landroid/hardware/Sensor;

.field private mDetector:F

.field private mLastCount:F

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mStepCount:Landroid/hardware/Sensor;

.field private mStepDetector:Landroid/hardware/Sensor;

.field mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

.field private stepData:F

.field private upStartFlag:Z

.field private upStartTime:J

.field private xn:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/wifi/VivoWifiStep;->DBG:Z

    .line 27
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wifi/VivoWifiStep;->mFlagScan:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-wide v0, p0, Lcom/android/server/wifi/VivoWifiStep;->lastScanAttempt:J

    .line 31
    iput-wide v0, p0, Lcom/android/server/wifi/VivoWifiStep;->upStartTime:J

    .line 32
    iput-wide v0, p0, Lcom/android/server/wifi/VivoWifiStep;->downStartTime:J

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/VivoWifiStep;->stepData:F

    .line 34
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/wifi/VivoWifiStep;->xn:[I

    .line 35
    iput-boolean v2, p0, Lcom/android/server/wifi/VivoWifiStep;->upStartFlag:Z

    .line 43
    iput-boolean v2, p0, Lcom/android/server/wifi/VivoWifiStep;->isRegisted:Z

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wifiStateMachine"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-wide v0, p0, Lcom/android/server/wifi/VivoWifiStep;->lastScanAttempt:J

    .line 31
    iput-wide v0, p0, Lcom/android/server/wifi/VivoWifiStep;->upStartTime:J

    .line 32
    iput-wide v0, p0, Lcom/android/server/wifi/VivoWifiStep;->downStartTime:J

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/VivoWifiStep;->stepData:F

    .line 34
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/wifi/VivoWifiStep;->xn:[I

    .line 35
    iput-boolean v2, p0, Lcom/android/server/wifi/VivoWifiStep;->upStartFlag:Z

    .line 43
    iput-boolean v2, p0, Lcom/android/server/wifi/VivoWifiStep;->isRegisted:Z

    .line 49
    iput-object p1, p0, Lcom/android/server/wifi/VivoWifiStep;->context:Landroid/content/Context;

    .line 50
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/server/wifi/VivoWifiStep;->mSensorManager:Landroid/hardware/SensorManager;

    .line 51
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiStep;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/VivoWifiStep;->mStepCount:Landroid/hardware/Sensor;

    .line 52
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiStep;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/VivoWifiStep;->mStepDetector:Landroid/hardware/Sensor;

    .line 53
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiStep;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/VivoWifiStep;->mAccelerometer:Landroid/hardware/Sensor;

    .line 54
    iput-object p2, p0, Lcom/android/server/wifi/VivoWifiStep;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 55
    return-void
.end method

.method private doStepCountScan(F)V
    .locals 4
    .param p1, "count"    # F

    .prologue
    .line 132
    iget v1, p0, Lcom/android/server/wifi/VivoWifiStep;->mLastCount:F

    sub-float v0, p1, v1

    .line 133
    .local v0, "steps":F
    sget-boolean v1, Lcom/android/server/wifi/VivoWifiStep;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "VivoWifiStep"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doStepCountScan, steps: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mLastCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wifi/VivoWifiStep;->mLastCount:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_0
    const/high16 v1, 0x40a00000    # 5.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    invoke-direct {p0}, Lcom/android/server/wifi/VivoWifiStep;->isScanAllowed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 137
    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiStep;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    if-eqz v1, :cond_1

    .line 138
    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiStep;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->startStepScan()V

    .line 140
    :cond_1
    iput p1, p0, Lcom/android/server/wifi/VivoWifiStep;->mLastCount:F

    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/wifi/VivoWifiStep;->lastScanAttempt:J

    .line 143
    :cond_2
    return-void
.end method

.method public static getStepCount()F
    .locals 1

    .prologue
    .line 102
    sget v0, Lcom/android/server/wifi/VivoWifiStep;->mCount:F

    return v0
.end method

.method private isScanAllowed()Z
    .locals 8

    .prologue
    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 146
    .local v2, "now":J
    sget-boolean v1, Lcom/android/server/wifi/VivoWifiStep;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "VivoWifiStep"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isScanAllowed(), now:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", lastScanAttempt:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/android/server/wifi/VivoWifiStep;->lastScanAttempt:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_0
    const/4 v0, 0x1

    .line 148
    .local v0, "allow":Z
    iget-wide v4, p0, Lcom/android/server/wifi/VivoWifiStep;->lastScanAttempt:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_1

    iget-wide v4, p0, Lcom/android/server/wifi/VivoWifiStep;->lastScanAttempt:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x1770

    cmp-long v1, v4, v6

    if-gez v1, :cond_1

    .line 149
    const/4 v0, 0x0

    .line 151
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiStep;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    if-eqz v1, :cond_2

    .line 152
    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiStep;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->needDoAutoJoinScan()Z

    move-result v1

    if-nez v1, :cond_2

    .line 153
    const/4 v0, 0x0

    .line 156
    :cond_2
    sget-boolean v1, Lcom/android/server/wifi/VivoWifiStep;->DBG:Z

    if-eqz v1, :cond_3

    const-string v1, "VivoWifiStep"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isScanAllowed(), allow:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_3
    return v0
.end method

.method private register(Landroid/hardware/Sensor;I)V
    .locals 1
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "rateUs"    # I

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiStep;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0, p1, p2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 78
    return-void
.end method

.method private setStepCount(F)V
    .locals 4
    .param p1, "count"    # F

    .prologue
    .line 117
    sget-boolean v1, Lcom/android/server/wifi/VivoWifiStep;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "VivoWifiStep"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setStepCount, count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mFlagScan:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/wifi/VivoWifiStep;->mFlagScan:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_0
    :try_start_0
    sput p1, Lcom/android/server/wifi/VivoWifiStep;->mCount:F

    .line 120
    sget-boolean v1, Lcom/android/server/wifi/VivoWifiStep;->mFlagScan:Z

    if-eqz v1, :cond_1

    .line 121
    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiStep;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_2

    .line 122
    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiStep;->context:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/server/wifi/VivoWifiStep;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 130
    :cond_1
    :goto_0
    return-void

    .line 124
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/wifi/VivoWifiStep;->doStepCountScan(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public enableVerboseLogging(I)V
    .locals 1
    .param p1, "verbose"    # I

    .prologue
    .line 164
    if-lez p1, :cond_0

    .line 165
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/wifi/VivoWifiStep;->DBG:Z

    .line 169
    :goto_0
    return-void

    .line 167
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wifi/VivoWifiStep;->DBG:Z

    goto :goto_0
.end method

.method public getmDetector()F
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/android/server/wifi/VivoWifiStep;->mDetector:F

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 82
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v2, 0x0

    .line 87
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    .line 88
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    invoke-direct {p0, v0}, Lcom/android/server/wifi/VivoWifiStep;->setStepCount(F)V

    .line 90
    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_1

    .line 91
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    .line 92
    iget v0, p0, Lcom/android/server/wifi/VivoWifiStep;->mDetector:F

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/wifi/VivoWifiStep;->mDetector:F

    .line 99
    :cond_1
    return-void
.end method

.method public register()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 58
    sget-boolean v0, Lcom/android/server/wifi/VivoWifiStep;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "VivoWifiStep"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "register() isRegisted:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/wifi/VivoWifiStep;->isRegisted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wifi/VivoWifiStep;->isRegisted:Z

    if-eqz v0, :cond_1

    .line 66
    :goto_0
    return-void

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiStep;->mStepCount:Landroid/hardware/Sensor;

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/VivoWifiStep;->register(Landroid/hardware/Sensor;I)V

    .line 63
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiStep;->mStepDetector:Landroid/hardware/Sensor;

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/VivoWifiStep;->register(Landroid/hardware/Sensor;I)V

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/VivoWifiStep;->isRegisted:Z

    goto :goto_0
.end method

.method public setLastScanAttempt()V
    .locals 6

    .prologue
    .line 226
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 227
    .local v0, "now":J
    sget-boolean v2, Lcom/android/server/wifi/VivoWifiStep;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "VivoWifiStep"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setLastScanAttempt(), now:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", lastScanAttempt:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/wifi/VivoWifiStep;->lastScanAttempt:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_0
    iput-wide v0, p0, Lcom/android/server/wifi/VivoWifiStep;->lastScanAttempt:J

    .line 230
    return-void
.end method

.method public setScanFlag(Z)V
    .locals 4
    .param p1, "flag"    # Z

    .prologue
    .line 105
    sget-boolean v1, Lcom/android/server/wifi/VivoWifiStep;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "VivoWifiStep"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setScanFlag, flag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_0
    sput-boolean p1, Lcom/android/server/wifi/VivoWifiStep;->mFlagScan:Z

    .line 107
    sget-boolean v1, Lcom/android/server/wifi/VivoWifiStep;->mFlagScan:Z

    if-eqz v1, :cond_2

    .line 108
    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiStep;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 109
    .local v0, "currentConfiguration":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiStep;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->isAccessPointContact()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    invoke-virtual {p0}, Lcom/android/server/wifi/VivoWifiStep;->register()V

    .line 115
    .end local v0    # "currentConfiguration":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    :goto_0
    return-void

    .line 113
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wifi/VivoWifiStep;->unRegister()V

    goto :goto_0
.end method

.method public stepCounterAlgo(FFFJ)V
    .locals 14
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "t"    # J

    .prologue
    .line 173
    const/4 v7, 0x0

    .line 174
    .local v7, "rawX":I
    const/4 v8, 0x0

    .line 175
    .local v8, "rawY":I
    const/16 v9, 0x2648

    .line 177
    .local v9, "rawZ":I
    const/4 v2, 0x0

    .line 178
    .local v2, "a1":I
    const/4 v3, 0x0

    .line 179
    .local v3, "a2":I
    const/4 v1, 0x0

    .line 180
    .local v1, "Vrow":I
    const/4 v0, 0x0

    .line 181
    .local v0, "BP_Vrow":I
    const-wide/16 v4, 0x0

    .line 183
    .local v4, "currentTime":J
    const/high16 v10, 0x44800000    # 1024.0f

    mul-float/2addr v10, p1

    float-to-int v7, v10

    .line 184
    const/high16 v10, 0x44800000    # 1024.0f

    mul-float v10, v10, p2

    float-to-int v8, v10

    .line 185
    const/high16 v10, 0x44800000    # 1024.0f

    mul-float v10, v10, p3

    float-to-int v9, v10

    .line 186
    const-wide/32 v10, 0xf4240

    div-long v4, p4, v10

    .line 188
    div-int/lit16 v10, v7, 0x100

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    div-int/lit16 v11, v8, 0x100

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    add-int/2addr v10, v11

    div-int/lit16 v11, v9, 0x100

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    add-int v2, v10, v11

    .line 189
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v10

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    div-int/lit16 v3, v10, 0x100

    .line 190
    mul-int/lit8 v10, v2, 0x2d

    mul-int/lit8 v11, v3, 0x4d

    add-int/2addr v10, v11

    div-int/lit16 v1, v10, 0x100

    .line 192
    const/4 v6, 0x7

    .local v6, "i":I
    :goto_0
    if-lez v6, :cond_0

    .line 194
    iget-object v10, p0, Lcom/android/server/wifi/VivoWifiStep;->xn:[I

    iget-object v11, p0, Lcom/android/server/wifi/VivoWifiStep;->xn:[I

    add-int/lit8 v12, v6, -0x1

    aget v11, v11, v12

    aput v11, v10, v6

    .line 192
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 196
    :cond_0
    iget-object v10, p0, Lcom/android/server/wifi/VivoWifiStep;->xn:[I

    const/4 v11, 0x0

    aput v1, v10, v11

    .line 198
    iget-object v10, p0, Lcom/android/server/wifi/VivoWifiStep;->xn:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    iget-object v11, p0, Lcom/android/server/wifi/VivoWifiStep;->xn:[I

    const/4 v12, 0x7

    aget v11, v11, v12

    sub-int/2addr v10, v11

    mul-int/lit8 v10, v10, 0x7d

    iget-object v11, p0, Lcom/android/server/wifi/VivoWifiStep;->xn:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    iget-object v12, p0, Lcom/android/server/wifi/VivoWifiStep;->xn:[I

    const/4 v13, 0x6

    aget v12, v12, v13

    sub-int/2addr v11, v12

    mul-int/lit8 v11, v11, 0x72

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/server/wifi/VivoWifiStep;->xn:[I

    const/4 v12, 0x2

    aget v11, v11, v12

    iget-object v12, p0, Lcom/android/server/wifi/VivoWifiStep;->xn:[I

    const/4 v13, 0x5

    aget v12, v12, v13

    sub-int/2addr v11, v12

    mul-int/lit8 v11, v11, 0x4c

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/server/wifi/VivoWifiStep;->xn:[I

    const/4 v12, 0x3

    aget v11, v11, v12

    iget-object v12, p0, Lcom/android/server/wifi/VivoWifiStep;->xn:[I

    const/4 v13, 0x4

    aget v12, v12, v13

    sub-int/2addr v11, v12

    mul-int/lit8 v11, v11, 0x26

    add-int/2addr v10, v11

    div-int/lit16 v0, v10, 0x100

    .line 201
    iget-boolean v10, p0, Lcom/android/server/wifi/VivoWifiStep;->upStartFlag:Z

    if-eqz v10, :cond_2

    .line 203
    iget-wide v10, p0, Lcom/android/server/wifi/VivoWifiStep;->upStartTime:J

    sub-long v10, v4, v10

    const-wide/16 v12, 0x1c2

    cmp-long v10, v10, v12

    if-lez v10, :cond_1

    .line 205
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/wifi/VivoWifiStep;->upStartFlag:Z

    .line 206
    iput-wide v4, p0, Lcom/android/server/wifi/VivoWifiStep;->downStartTime:J

    .line 223
    :cond_1
    :goto_1
    return-void

    .line 211
    :cond_2
    const/4 v10, 0x3

    if-le v0, v10, :cond_1

    .line 213
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/server/wifi/VivoWifiStep;->upStartFlag:Z

    .line 214
    iput-wide v4, p0, Lcom/android/server/wifi/VivoWifiStep;->upStartTime:J

    .line 215
    iget-wide v10, p0, Lcom/android/server/wifi/VivoWifiStep;->downStartTime:J

    sub-long v10, v4, v10

    const-wide/16 v12, 0x384

    cmp-long v10, v10, v12

    if-gez v10, :cond_1

    .line 217
    iget v10, p0, Lcom/android/server/wifi/VivoWifiStep;->stepData:F

    const/high16 v11, 0x3f800000    # 1.0f

    add-float/2addr v10, v11

    iput v10, p0, Lcom/android/server/wifi/VivoWifiStep;->stepData:F

    .line 218
    iget v10, p0, Lcom/android/server/wifi/VivoWifiStep;->stepData:F

    invoke-direct {p0, v10}, Lcom/android/server/wifi/VivoWifiStep;->setStepCount(F)V

    goto :goto_1
.end method

.method public unRegister()V
    .locals 3

    .prologue
    .line 68
    sget-boolean v0, Lcom/android/server/wifi/VivoWifiStep;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "VivoWifiStep"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unRegister() isRegisted:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/wifi/VivoWifiStep;->isRegisted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wifi/VivoWifiStep;->isRegisted:Z

    if-nez v0, :cond_1

    .line 74
    :goto_0
    return-void

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiStep;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/VivoWifiStep;->isRegisted:Z

    goto :goto_0
.end method
