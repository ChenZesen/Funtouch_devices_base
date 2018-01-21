.class public Lcom/vivo/services/motion/gesture/util/SensorData;
.super Ljava/lang/Object;
.source "SensorData.java"


# instance fields
.field angularPosition:Lcom/vivo/services/motion/gesture/util/Quaternion;

.field linearAccelerationNoGravity:Lcom/vivo/services/motion/gesture/util/Vector3D;

.field timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    sget-object v0, Lcom/vivo/services/motion/gesture/util/Quaternion;->IDENTITY:Lcom/vivo/services/motion/gesture/util/Quaternion;

    iput-object v0, p0, Lcom/vivo/services/motion/gesture/util/SensorData;->angularPosition:Lcom/vivo/services/motion/gesture/util/Quaternion;

    .line 15
    sget-object v0, Lcom/vivo/services/motion/gesture/util/Vector3D;->ZERO:Lcom/vivo/services/motion/gesture/util/Vector3D;

    iput-object v0, p0, Lcom/vivo/services/motion/gesture/util/SensorData;->linearAccelerationNoGravity:Lcom/vivo/services/motion/gesture/util/Vector3D;

    return-void
.end method


# virtual methods
.method public getAngularPosition()Lcom/vivo/services/motion/gesture/util/Quaternion;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/vivo/services/motion/gesture/util/SensorData;->angularPosition:Lcom/vivo/services/motion/gesture/util/Quaternion;

    return-object v0
.end method

.method public getLinearAccelerationNoGravity()Lcom/vivo/services/motion/gesture/util/Vector3D;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/vivo/services/motion/gesture/util/SensorData;->linearAccelerationNoGravity:Lcom/vivo/services/motion/gesture/util/Vector3D;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/vivo/services/motion/gesture/util/SensorData;->timestamp:J

    return-wide v0
.end method

.method public remapCoordinatesToMotionEngine([F)[F
    .locals 5
    .param p1, "paramArrayOfFloat"    # [F

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    array-length v1, p1

    new-array v0, v1, [F

    .line 55
    .local v0, "arrayOfFloat":[F
    aget v1, p1, v3

    aput v1, v0, v2

    .line 56
    aget v1, p1, v2

    aput v1, v0, v3

    .line 57
    aget v1, p1, v4

    neg-float v1, v1

    aput v1, v0, v4

    .line 58
    return-object v0
.end method

.method public setAngularPosition(Lcom/vivo/services/motion/gesture/util/Quaternion;)V
    .locals 0
    .param p1, "paramQuaternion"    # Lcom/vivo/services/motion/gesture/util/Quaternion;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/vivo/services/motion/gesture/util/SensorData;->angularPosition:Lcom/vivo/services/motion/gesture/util/Quaternion;

    .line 36
    return-void
.end method

.method public setLinearAccelerationNoGravity(Lcom/vivo/services/motion/gesture/util/Vector3D;)V
    .locals 0
    .param p1, "paramVector3D"    # Lcom/vivo/services/motion/gesture/util/Vector3D;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/vivo/services/motion/gesture/util/SensorData;->linearAccelerationNoGravity:Lcom/vivo/services/motion/gesture/util/Vector3D;

    .line 41
    return-void
.end method

.method public setTimestamp(J)V
    .locals 1
    .param p1, "paramLong"    # J

    .prologue
    .line 45
    iput-wide p1, p0, Lcom/vivo/services/motion/gesture/util/SensorData;->timestamp:J

    .line 46
    return-void
.end method
