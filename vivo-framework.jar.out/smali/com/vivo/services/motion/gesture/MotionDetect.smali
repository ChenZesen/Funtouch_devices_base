.class public Lcom/vivo/services/motion/gesture/MotionDetect;
.super Ljava/lang/Object;
.source "MotionDetect.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MotionDetect"

.field private static final TYPE_LINEAR_ACCELERATION:F = 0.0f

.field private static final TYPE_ROTATION_VECTOR:F = 1.0f

.field private static filterCount:I = 0x0

.field private static final filterNum:I = 0xf

.field private static final linear_acc_mask:I = 0x1

.field private static mContext:Landroid/content/Context; = null

.field private static mLinearPosition:Lcom/vivo/services/motion/gesture/engine/LinearPosition; = null

.field private static mTraceDate:Lcom/vivo/services/motion/gesture/MotionAnalysisTraceData; = null

.field private static final rotation_mask:I = 0x2

.field private static singleDetect:Lcom/vivo/services/motion/gesture/MotionDetect; = null

.field private static final vibStartTime:I = 0x4

.field private static final vibTime:I = 0x3c


# instance fields
.field public mNormalVectors:[Lcom/vivo/services/motion/gesture/util/Vector3D;

.field public mPathBuffer2D:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vivo/services/motion/gesture/util/Vector3D;",
            ">;"
        }
    .end annotation
.end field

.field public mPathBuffer3D:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vivo/services/motion/gesture/util/Vector3D;",
            ">;"
        }
    .end annotation
.end field

.field private mSensorData:Lcom/vivo/services/motion/gesture/util/SensorData;

.field private mSensorState:I

.field public sample_num:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    sput-object v0, Lcom/vivo/services/motion/gesture/MotionDetect;->singleDetect:Lcom/vivo/services/motion/gesture/MotionDetect;

    .line 41
    sput-object v0, Lcom/vivo/services/motion/gesture/MotionDetect;->mLinearPosition:Lcom/vivo/services/motion/gesture/engine/LinearPosition;

    .line 44
    new-instance v0, Lcom/vivo/services/motion/gesture/MotionAnalysisTraceData;

    invoke-direct {v0}, Lcom/vivo/services/motion/gesture/MotionAnalysisTraceData;-><init>()V

    sput-object v0, Lcom/vivo/services/motion/gesture/MotionDetect;->mTraceDate:Lcom/vivo/services/motion/gesture/MotionAnalysisTraceData;

    .line 70
    const/16 v0, 0xf

    sput v0, Lcom/vivo/services/motion/gesture/MotionDetect;->filterCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/vivo/services/motion/gesture/util/SensorData;

    invoke-direct {v0}, Lcom/vivo/services/motion/gesture/util/SensorData;-><init>()V

    iput-object v0, p0, Lcom/vivo/services/motion/gesture/MotionDetect;->mSensorData:Lcom/vivo/services/motion/gesture/util/SensorData;

    .line 61
    iput-object v1, p0, Lcom/vivo/services/motion/gesture/MotionDetect;->mPathBuffer2D:Ljava/util/Vector;

    .line 62
    iput-object v1, p0, Lcom/vivo/services/motion/gesture/MotionDetect;->mPathBuffer3D:Ljava/util/Vector;

    .line 63
    iput-object v1, p0, Lcom/vivo/services/motion/gesture/MotionDetect;->mNormalVectors:[Lcom/vivo/services/motion/gesture/util/Vector3D;

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/services/motion/gesture/MotionDetect;->sample_num:I

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/vivo/services/motion/gesture/MotionDetect;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    sget-object v0, Lcom/vivo/services/motion/gesture/MotionDetect;->singleDetect:Lcom/vivo/services/motion/gesture/MotionDetect;

    if-nez v0, :cond_0

    .line 77
    sput-object p0, Lcom/vivo/services/motion/gesture/MotionDetect;->mContext:Landroid/content/Context;

    .line 78
    new-instance v0, Lcom/vivo/services/motion/gesture/MotionDetect;

    invoke-direct {v0}, Lcom/vivo/services/motion/gesture/MotionDetect;-><init>()V

    sput-object v0, Lcom/vivo/services/motion/gesture/MotionDetect;->singleDetect:Lcom/vivo/services/motion/gesture/MotionDetect;

    .line 79
    new-instance v0, Lcom/vivo/services/motion/gesture/engine/LinearPosition;

    invoke-direct {v0}, Lcom/vivo/services/motion/gesture/engine/LinearPosition;-><init>()V

    sput-object v0, Lcom/vivo/services/motion/gesture/MotionDetect;->mLinearPosition:Lcom/vivo/services/motion/gesture/engine/LinearPosition;

    .line 80
    sget-object v0, Lcom/vivo/services/motion/gesture/MotionDetect;->mLinearPosition:Lcom/vivo/services/motion/gesture/engine/LinearPosition;

    invoke-virtual {v0}, Lcom/vivo/services/motion/gesture/engine/LinearPosition;->reset()V

    .line 82
    :cond_0
    sget-object v0, Lcom/vivo/services/motion/gesture/MotionDetect;->singleDetect:Lcom/vivo/services/motion/gesture/MotionDetect;

    return-object v0
.end method


# virtual methods
.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 11
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 128
    const/4 v4, 0x3

    .line 129
    .local v4, "sensor_mask":I
    const/4 v6, 0x4

    new-array v3, v6, [F

    .line 131
    .local v3, "sensor_event":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v6, 0x4

    if-ge v1, v6, :cond_4

    .line 133
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    const/4 v6, 0x4

    if-ge v2, v6, :cond_0

    .line 135
    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    mul-int/lit8 v7, v1, 0x4

    add-int/2addr v7, v2

    aget v6, v6, v7

    aput v6, v3, v2

    .line 133
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 138
    :cond_0
    iget-object v6, p0, Lcom/vivo/services/motion/gesture/MotionDetect;->mSensorData:Lcom/vivo/services/motion/gesture/util/SensorData;

    invoke-virtual {v6, v3}, Lcom/vivo/services/motion/gesture/util/SensorData;->remapCoordinatesToMotionEngine([F)[F

    move-result-object v0

    .line 139
    .local v0, "arrayOfFloat":[F
    const/4 v6, 0x3

    aget v5, v3, v6

    .line 143
    .local v5, "type":F
    const/4 v6, 0x0

    cmpl-float v6, v5, v6

    if-nez v6, :cond_3

    .line 145
    iget-object v6, p0, Lcom/vivo/services/motion/gesture/MotionDetect;->mSensorData:Lcom/vivo/services/motion/gesture/util/SensorData;

    new-instance v7, Lcom/vivo/services/motion/gesture/util/Vector3D;

    const/4 v8, 0x0

    aget v8, v0, v8

    const/4 v9, 0x1

    aget v9, v0, v9

    const/4 v10, 0x2

    aget v10, v0, v10

    invoke-direct {v7, v8, v9, v10}, Lcom/vivo/services/motion/gesture/util/Vector3D;-><init>(FFF)V

    invoke-virtual {v6, v7}, Lcom/vivo/services/motion/gesture/util/SensorData;->setLinearAccelerationNoGravity(Lcom/vivo/services/motion/gesture/util/Vector3D;)V

    .line 146
    iget v6, p0, Lcom/vivo/services/motion/gesture/MotionDetect;->mSensorState:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/vivo/services/motion/gesture/MotionDetect;->mSensorState:I

    .line 158
    :cond_1
    :goto_2
    iget v6, p0, Lcom/vivo/services/motion/gesture/MotionDetect;->mSensorState:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    .line 160
    iget v6, p0, Lcom/vivo/services/motion/gesture/MotionDetect;->sample_num:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/vivo/services/motion/gesture/MotionDetect;->sample_num:I

    .line 161
    const/4 v6, 0x0

    iput v6, p0, Lcom/vivo/services/motion/gesture/MotionDetect;->mSensorState:I

    .line 162
    sget-object v6, Lcom/vivo/services/motion/gesture/MotionDetect;->mLinearPosition:Lcom/vivo/services/motion/gesture/engine/LinearPosition;

    iget-object v7, p0, Lcom/vivo/services/motion/gesture/MotionDetect;->mSensorData:Lcom/vivo/services/motion/gesture/util/SensorData;

    invoke-virtual {v6, v7}, Lcom/vivo/services/motion/gesture/engine/LinearPosition;->onSensorData(Lcom/vivo/services/motion/gesture/util/SensorData;)V

    .line 131
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 148
    :cond_3
    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v5, v6

    if-nez v6, :cond_1

    .line 150
    iget-object v6, p0, Lcom/vivo/services/motion/gesture/MotionDetect;->mSensorData:Lcom/vivo/services/motion/gesture/util/SensorData;

    const/4 v7, 0x0

    aget v7, v0, v7

    const/4 v8, 0x1

    aget v8, v0, v8

    const/4 v9, 0x2

    aget v9, v0, v9

    invoke-static {v7, v8, v9}, Lcom/vivo/services/motion/gesture/util/Quaternion;->fromUnitVector(FFF)Lcom/vivo/services/motion/gesture/util/Quaternion;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/vivo/services/motion/gesture/util/SensorData;->setAngularPosition(Lcom/vivo/services/motion/gesture/util/Quaternion;)V

    .line 151
    iget v6, p0, Lcom/vivo/services/motion/gesture/MotionDetect;->mSensorState:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/vivo/services/motion/gesture/MotionDetect;->mSensorState:I

    goto :goto_2

    .line 165
    .end local v0    # "arrayOfFloat":[F
    .end local v2    # "j":I
    .end local v5    # "type":F
    :cond_4
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 180
    sget-object v0, Lcom/vivo/services/motion/gesture/MotionDetect;->mLinearPosition:Lcom/vivo/services/motion/gesture/engine/LinearPosition;

    invoke-virtual {v0}, Lcom/vivo/services/motion/gesture/engine/LinearPosition;->reset()V

    .line 181
    iput v1, p0, Lcom/vivo/services/motion/gesture/MotionDetect;->mSensorState:I

    .line 182
    iput v1, p0, Lcom/vivo/services/motion/gesture/MotionDetect;->sample_num:I

    .line 183
    const/16 v0, 0xf

    sput v0, Lcom/vivo/services/motion/gesture/MotionDetect;->filterCount:I

    .line 184
    return-void
.end method

.method public result()V
    .locals 1

    .prologue
    .line 170
    sget-object v0, Lcom/vivo/services/motion/gesture/MotionDetect;->mLinearPosition:Lcom/vivo/services/motion/gesture/engine/LinearPosition;

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/engine/LinearPosition;->PathBuffer2D:Ljava/util/Vector;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vivo/services/motion/gesture/MotionDetect;->mLinearPosition:Lcom/vivo/services/motion/gesture/engine/LinearPosition;

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/engine/LinearPosition;->PathBuffer3D:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 172
    sget-object v0, Lcom/vivo/services/motion/gesture/MotionDetect;->mLinearPosition:Lcom/vivo/services/motion/gesture/engine/LinearPosition;

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/engine/LinearPosition;->PathBuffer2D:Ljava/util/Vector;

    iput-object v0, p0, Lcom/vivo/services/motion/gesture/MotionDetect;->mPathBuffer2D:Ljava/util/Vector;

    .line 173
    sget-object v0, Lcom/vivo/services/motion/gesture/MotionDetect;->mLinearPosition:Lcom/vivo/services/motion/gesture/engine/LinearPosition;

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/engine/LinearPosition;->PathBuffer3D:Ljava/util/Vector;

    iput-object v0, p0, Lcom/vivo/services/motion/gesture/MotionDetect;->mPathBuffer3D:Ljava/util/Vector;

    .line 174
    sget-object v0, Lcom/vivo/services/motion/gesture/MotionDetect;->mLinearPosition:Lcom/vivo/services/motion/gesture/engine/LinearPosition;

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/engine/LinearPosition;->NormalVectors:[Lcom/vivo/services/motion/gesture/util/Vector3D;

    iput-object v0, p0, Lcom/vivo/services/motion/gesture/MotionDetect;->mNormalVectors:[Lcom/vivo/services/motion/gesture/util/Vector3D;

    .line 176
    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/vivo/services/motion/gesture/MotionDetect;->reset()V

    .line 189
    sget-object v0, Lcom/vivo/services/motion/gesture/MotionDetect;->mLinearPosition:Lcom/vivo/services/motion/gesture/engine/LinearPosition;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vivo/services/motion/gesture/engine/LinearPosition;->setCapturing(Z)V

    .line 190
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 194
    sget-object v0, Lcom/vivo/services/motion/gesture/MotionDetect;->mLinearPosition:Lcom/vivo/services/motion/gesture/engine/LinearPosition;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vivo/services/motion/gesture/engine/LinearPosition;->setCapturing(Z)V

    .line 195
    return-void
.end method
