.class abstract Landroid/hardware/SystemSensorManager$BaseEventQueue;
.super Ljava/lang/Object;
.source "SystemSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SystemSensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "BaseEventQueue"
.end annotation


# static fields
.field protected static final OPERATING_MODE_DATA_INJECTION:I = 0x1

.field protected static final OPERATING_MODE_NORMAL:I


# instance fields
.field private final mActiveSensors:Landroid/util/SparseBooleanArray;

.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private mContextImpl:Landroid/content/Context;

.field protected final mFirstEvent:Landroid/util/SparseBooleanArray;

.field protected final mManager:Landroid/hardware/SystemSensorManager;

.field private final mScratch:[F

.field protected final mSensorAccuracies:Landroid/util/SparseIntArray;

.field private nSensorEventQueue:J


# direct methods
.method constructor <init>(Landroid/os/Looper;Landroid/hardware/SystemSensorManager;ILjava/lang/String;)V
    .locals 8
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "manager"    # Landroid/hardware/SystemSensorManager;
    .param p3, "mode"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 805
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 792
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    .line 793
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mSensorAccuracies:Landroid/util/SparseIntArray;

    .line 794
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mFirstEvent:Landroid/util/SparseBooleanArray;

    .line 795
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 796
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mScratch:[F

    .line 806
    if-nez p4, :cond_0

    const-string p4, ""

    .line 807
    :cond_0
    # getter for: Landroid/hardware/SystemSensorManager;->mNativeInstance:J
    invoke-static {p2}, Landroid/hardware/SystemSensorManager;->access$000(Landroid/hardware/SystemSensorManager;)J

    move-result-wide v0

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mScratch:[F

    # getter for: Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;
    invoke-static {p2}, Landroid/hardware/SystemSensorManager;->access$100(Landroid/hardware/SystemSensorManager;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    move-object v5, p4

    move v6, p3

    invoke-static/range {v0 .. v7}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nativeInitBaseEventQueue(JLjava/lang/ref/WeakReference;Landroid/os/MessageQueue;[FLjava/lang/String;ILjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:J

    .line 810
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v1, "dispose"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 811
    iput-object p2, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mManager:Landroid/hardware/SystemSensorManager;

    .line 812
    return-void
.end method

.method private disableSensor(Landroid/hardware/Sensor;)I
    .locals 6
    .param p1, "sensor"    # Landroid/hardware/Sensor;

    .prologue
    .line 1066
    iget-wide v2, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 1067
    :cond_0
    if-nez p1, :cond_1

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 1068
    :cond_1
    # getter for: Landroid/hardware/SystemSensorManager;->ctsvPackageName:Ljava/lang/String;
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$300()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    # getter for: Landroid/hardware/SystemSensorManager;->ctsvPackageName:Ljava/lang/String;
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.cts.verifier"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    # getter for: Landroid/hardware/SystemSensorManager;->ctsvPackageName:Ljava/lang/String;
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.cts.hardware"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1069
    :cond_2
    const-string v1, "SensorManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sensorCTSV add disableSensor name is"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    .line 1071
    .local v0, "type":I
    packed-switch v0, :pswitch_data_0

    .line 1088
    .end local v0    # "type":I
    :cond_3
    :goto_0
    :pswitch_0
    iget-wide v2, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:J

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v1

    invoke-static {v2, v3, v1}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nativeDisableSensor(JI)I

    move-result v1

    return v1

    .line 1073
    .restart local v0    # "type":I
    :pswitch_1
    # operator-- for: Landroid/hardware/SystemSensorManager;->ctsvSensorEnableCountAcc:I
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$410()I

    .line 1074
    const-string v1, "SensorManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sensorCTSV add disctsvSensorEnableCountAcc is = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Landroid/hardware/SystemSensorManager;->ctsvSensorEnableCountAcc:I
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$400()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1077
    :pswitch_2
    # operator-- for: Landroid/hardware/SystemSensorManager;->ctsvSensorEnableCountMag:I
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$810()I

    .line 1078
    const-string v1, "SensorManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sensorCTSV add disctsvSensorEnableCountMag is = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Landroid/hardware/SystemSensorManager;->ctsvSensorEnableCountMag:I
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$800()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1081
    :pswitch_3
    # operator-- for: Landroid/hardware/SystemSensorManager;->ctsvSensorEnableCountGyro:I
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$1110()I

    .line 1082
    const-string v1, "SensorManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sensorCTSV add disctsvSensorEnableCountGyro is = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Landroid/hardware/SystemSensorManager;->ctsvSensorEnableCountGyro:I
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$1100()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1071
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private dispose(Z)V
    .locals 4
    .param p1, "finalized"    # Z

    .prologue
    const-wide/16 v2, 0x0

    .line 886
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_1

    .line 887
    if-eqz p1, :cond_0

    .line 888
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 890
    :cond_0
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 892
    :cond_1
    iget-wide v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 893
    iget-wide v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:J

    invoke-static {v0, v1}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nativeDestroySensorEventQueue(J)V

    .line 894
    iput-wide v2, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:J

    .line 896
    :cond_2
    return-void
.end method

.method private enableSensor(Landroid/hardware/Sensor;II)I
    .locals 10
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "rateUs"    # I
    .param p3, "maxBatchReportLatencyUs"    # I

    .prologue
    .line 900
    iget-wide v6, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 901
    :cond_0
    if-nez p1, :cond_1

    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 903
    :cond_1
    const/4 v3, 0x0

    .line 904
    .local v3, "res":I
    const/4 v2, 0x0

    .line 905
    .local v2, "isQQShakeFlag":Z
    const/4 v1, 0x0

    .line 906
    .local v1, "isMicroMsgFlag":Z
    const/4 v0, 0x0

    .line 907
    .local v0, "isCTSvFlag":Z
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    .line 910
    .local v4, "type":I
    # getter for: Landroid/hardware/SystemSensorManager;->ctsvPackageName:Ljava/lang/String;
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$300()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    # getter for: Landroid/hardware/SystemSensorManager;->ctsvPackageName:Ljava/lang/String;
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$300()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.cts.verifier"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    # getter for: Landroid/hardware/SystemSensorManager;->ctsvPackageName:Ljava/lang/String;
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$300()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.cts.hardware"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 911
    :cond_2
    const-string v5, "SensorManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sensorCTSV add enable: package is = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    # getter for: Landroid/hardware/SystemSensorManager;->ctsvPackageName:Ljava/lang/String;
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$300()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "rateUs is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " MinDelay is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getMinDelay()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "sensorName is"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    const/4 v0, 0x1

    .line 913
    packed-switch v4, :pswitch_data_0

    .line 990
    :pswitch_0
    const/4 v5, 0x1

    # setter for: Landroid/hardware/SystemSensorManager;->ctsvSensorEnableFlag:Z
    invoke-static {v5}, Landroid/hardware/SystemSensorManager;->access$1502(Z)Z

    .line 991
    if-eqz p2, :cond_12

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getMinDelay()I

    move-result v5

    if-lt p2, v5, :cond_12

    .line 993
    mul-int/lit16 v5, p2, 0x3e8

    int-to-long v6, v5

    # setter for: Landroid/hardware/SystemSensorManager;->ctsvRateNs:J
    invoke-static {v6, v7}, Landroid/hardware/SystemSensorManager;->access$1602(J)J

    .line 997
    :goto_0
    const-string v5, "SensorManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sensorCTSV add ctsvRateNs is = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    # getter for: Landroid/hardware/SystemSensorManager;->ctsvRateNs:J
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$1600()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    :cond_3
    :goto_1
    const/4 v5, 0x1

    if-ne v4, v5, :cond_15

    .line 1005
    const v5, 0x1046b

    if-ge p2, v5, :cond_5

    .line 1007
    iget-object v5, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mContextImpl:Landroid/content/Context;

    if-eqz v5, :cond_13

    .line 1009
    invoke-direct {p0}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->isQQShake()Z

    move-result v2

    .line 1016
    :goto_2
    if-eqz v2, :cond_4

    .line 1017
    const-string v5, "SensorManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "rateUs: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "isQQShakeFlag: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    :cond_4
    if-eqz v2, :cond_5

    .line 1020
    const p2, 0x1046b

    .line 1023
    :cond_5
    const/16 v5, 0x4e20

    if-le p2, v5, :cond_7

    .line 1025
    iget-object v5, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mContextImpl:Landroid/content/Context;

    if-eqz v5, :cond_14

    .line 1027
    invoke-direct {p0}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->isMicroMsg()Z

    move-result v1

    .line 1034
    :goto_3
    if-eqz v1, :cond_6

    .line 1035
    const-string v5, "SensorManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "rateUs: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "isMicroMsgFlag: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    :cond_6
    if-eqz v1, :cond_7

    .line 1039
    const/16 p2, 0x4e20

    .line 1042
    :cond_7
    iget-wide v6, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:J

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v5

    invoke-static {v6, v7, v5, p2, p3}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nativeEnableSensor(JIII)I

    move-result v3

    .line 1056
    :goto_4
    return v3

    .line 915
    :pswitch_1
    # operator++ for: Landroid/hardware/SystemSensorManager;->ctsvSensorEnableCountAcc:I
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$408()I

    .line 916
    if-eqz p2, :cond_8

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getMinDelay()I

    move-result v5

    if-lt p2, v5, :cond_8

    # getter for: Landroid/hardware/SystemSensorManager;->ctsvSensorEnableCountAcc:I
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$400()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_8

    .line 918
    mul-int/lit16 v5, p2, 0x3e8

    int-to-long v6, v5

    # setter for: Landroid/hardware/SystemSensorManager;->ctsvRateNsAcc:J
    invoke-static {v6, v7}, Landroid/hardware/SystemSensorManager;->access$502(J)J

    .line 922
    :goto_5
    # getter for: Landroid/hardware/SystemSensorManager;->ctsvSensorEnableCountAcc:I
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$400()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_9

    .line 924
    const/4 v5, 0x0

    # setter for: Landroid/hardware/SystemSensorManager;->ctsvSensorEnableFlagAcc:Z
    invoke-static {v5}, Landroid/hardware/SystemSensorManager;->access$602(Z)Z

    .line 929
    :goto_6
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "LSM6DS3"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 931
    const/4 v5, 0x1

    # setter for: Landroid/hardware/SystemSensorManager;->ctsvAccAdjustSkipFlag:Z
    invoke-static {v5}, Landroid/hardware/SystemSensorManager;->access$702(Z)Z

    .line 932
    const-string v5, "SensorManager"

    const-string/jumbo v6, "sensorCTSV add Acc is LSM6DS3, Skip adjust timestamp."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    :goto_7
    const-string v5, "SensorManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sensorCTSV add ctsvRateNsAcc is = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    # getter for: Landroid/hardware/SystemSensorManager;->ctsvRateNsAcc:J
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$500()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ctsvSensorEnableCountAcc is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    # getter for: Landroid/hardware/SystemSensorManager;->ctsvSensorEnableCountAcc:I
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$400()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 920
    :cond_8
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getMinDelay()I

    move-result v5

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v6, v5

    # setter for: Landroid/hardware/SystemSensorManager;->ctsvRateNsAcc:J
    invoke-static {v6, v7}, Landroid/hardware/SystemSensorManager;->access$502(J)J

    goto :goto_5

    .line 926
    :cond_9
    const/4 v5, 0x1

    # setter for: Landroid/hardware/SystemSensorManager;->ctsvSensorEnableFlagAcc:Z
    invoke-static {v5}, Landroid/hardware/SystemSensorManager;->access$602(Z)Z

    goto :goto_6

    .line 934
    :cond_a
    const v5, 0x1046b

    if-ne p2, v5, :cond_b

    .line 936
    const/4 v5, 0x1

    # setter for: Landroid/hardware/SystemSensorManager;->ctsvAccAdjustSkipFlag:Z
    invoke-static {v5}, Landroid/hardware/SystemSensorManager;->access$702(Z)Z

    goto :goto_7

    .line 938
    :cond_b
    const/4 v5, 0x0

    # setter for: Landroid/hardware/SystemSensorManager;->ctsvAccAdjustSkipFlag:Z
    invoke-static {v5}, Landroid/hardware/SystemSensorManager;->access$702(Z)Z

    goto :goto_7

    .line 945
    :pswitch_2
    # operator++ for: Landroid/hardware/SystemSensorManager;->ctsvSensorEnableCountMag:I
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$808()I

    .line 946
    if-eqz p2, :cond_d

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getMinDelay()I

    move-result v5

    if-lt p2, v5, :cond_d

    # getter for: Landroid/hardware/SystemSensorManager;->ctsvSensorEnableCountMag:I
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$800()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_d

    .line 948
    mul-int/lit16 v5, p2, 0x3e8

    int-to-long v6, v5

    # setter for: Landroid/hardware/SystemSensorManager;->ctsvRateNsMag:J
    invoke-static {v6, v7}, Landroid/hardware/SystemSensorManager;->access$902(J)J

    .line 952
    :goto_8
    # getter for: Landroid/hardware/SystemSensorManager;->ctsvSensorEnableCountMag:I
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$800()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_e

    .line 954
    const/4 v5, 0x0

    # setter for: Landroid/hardware/SystemSensorManager;->ctsvSensorEnableFlagMag:Z
    invoke-static {v5}, Landroid/hardware/SystemSensorManager;->access$1002(Z)Z

    .line 958
    :goto_9
    sget v5, Landroid/hardware/SensorManager;->CTS_CTSV_MAG2ACC:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_c

    .line 960
    const/4 v5, 0x1

    # setter for: Landroid/hardware/SystemSensorManager;->ctsvAccAdjustSkipFlag:Z
    invoke-static {v5}, Landroid/hardware/SystemSensorManager;->access$702(Z)Z

    .line 961
    const-string v5, "SensorManager"

    const-string/jumbo v6, "sensorCTSV add Mag2Acc is LSM6DS3, Skip adjust timestamp."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    :cond_c
    const-string v5, "SensorManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sensorCTSV add ctsvRateNsMag is = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    # getter for: Landroid/hardware/SystemSensorManager;->ctsvRateNsMag:J
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$900()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ctsvSensorEnableCountMag is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    # getter for: Landroid/hardware/SystemSensorManager;->ctsvSensorEnableCountMag:I
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$800()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 950
    :cond_d
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getMinDelay()I

    move-result v5

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v6, v5

    # setter for: Landroid/hardware/SystemSensorManager;->ctsvRateNsMag:J
    invoke-static {v6, v7}, Landroid/hardware/SystemSensorManager;->access$902(J)J

    goto :goto_8

    .line 956
    :cond_e
    const/4 v5, 0x1

    # setter for: Landroid/hardware/SystemSensorManager;->ctsvSensorEnableFlagMag:Z
    invoke-static {v5}, Landroid/hardware/SystemSensorManager;->access$1002(Z)Z

    goto :goto_9

    .line 966
    :pswitch_3
    # operator++ for: Landroid/hardware/SystemSensorManager;->ctsvSensorEnableCountGyro:I
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$1108()I

    .line 967
    if-eqz p2, :cond_f

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getMinDelay()I

    move-result v5

    if-lt p2, v5, :cond_f

    # getter for: Landroid/hardware/SystemSensorManager;->ctsvSensorEnableCountGyro:I
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$1100()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_f

    .line 969
    mul-int/lit16 v5, p2, 0x3e8

    int-to-long v6, v5

    # setter for: Landroid/hardware/SystemSensorManager;->ctsvRateNsGyro:J
    invoke-static {v6, v7}, Landroid/hardware/SystemSensorManager;->access$1202(J)J

    .line 974
    :goto_a
    # getter for: Landroid/hardware/SystemSensorManager;->ctsvSensorEnableCountGyro:I
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$1100()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_10

    .line 976
    const/4 v5, 0x0

    # setter for: Landroid/hardware/SystemSensorManager;->ctsvSensorEnableFlagGyro:Z
    invoke-static {v5}, Landroid/hardware/SystemSensorManager;->access$1302(Z)Z

    .line 980
    :goto_b
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "LSM6DS3"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 982
    const/4 v5, 0x1

    # setter for: Landroid/hardware/SystemSensorManager;->ctsvGyroAdjustSkipFlag:Z
    invoke-static {v5}, Landroid/hardware/SystemSensorManager;->access$1402(Z)Z

    .line 983
    const-string v5, "SensorManager"

    const-string/jumbo v6, "sensorCTSV add Gyro is LSM6DS3, Skip adjust timestamp."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    :goto_c
    const-string v5, "SensorManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sensorCTSV add ctsvRateNsGyro is = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    # getter for: Landroid/hardware/SystemSensorManager;->ctsvRateNsGyro:J
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$1200()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ctsvSensorEnableCountGyro is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    # getter for: Landroid/hardware/SystemSensorManager;->ctsvSensorEnableCountGyro:I
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$1100()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 971
    :cond_f
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getMinDelay()I

    move-result v5

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v6, v5

    # setter for: Landroid/hardware/SystemSensorManager;->ctsvRateNsGyro:J
    invoke-static {v6, v7}, Landroid/hardware/SystemSensorManager;->access$1202(J)J

    goto :goto_a

    .line 978
    :cond_10
    const/4 v5, 0x1

    # setter for: Landroid/hardware/SystemSensorManager;->ctsvSensorEnableFlagGyro:Z
    invoke-static {v5}, Landroid/hardware/SystemSensorManager;->access$1302(Z)Z

    goto :goto_b

    .line 985
    :cond_11
    const/4 v5, 0x0

    # setter for: Landroid/hardware/SystemSensorManager;->ctsvGyroAdjustSkipFlag:Z
    invoke-static {v5}, Landroid/hardware/SystemSensorManager;->access$1402(Z)Z

    goto :goto_c

    .line 995
    :cond_12
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getMinDelay()I

    move-result v5

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v6, v5

    # setter for: Landroid/hardware/SystemSensorManager;->ctsvRateNs:J
    invoke-static {v6, v7}, Landroid/hardware/SystemSensorManager;->access$1602(J)J

    goto/16 :goto_0

    .line 1013
    :cond_13
    const/4 v2, 0x0

    .line 1014
    const-string v5, "SensorManager"

    const-string/jumbo v6, "isQQShakeFlag judge mContextImpl is null."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1031
    :cond_14
    const/4 v1, 0x0

    .line 1032
    const-string v5, "SensorManager"

    const-string/jumbo v6, "isQQShakeFlag judge mContextImpl is null."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1047
    :cond_15
    if-nez v0, :cond_17

    const/4 v5, 0x3

    if-eq v4, v5, :cond_16

    const/16 v5, 0xb

    if-ne v4, v5, :cond_17

    .line 1048
    :cond_16
    const v5, 0xc350

    if-le p2, v5, :cond_17

    .line 1049
    const p2, 0xc350

    .line 1050
    const-string v5, "SensorManager"

    const-string v6, "force set TYPE_ORIENTATION&TYPE_ROTATION_VECTOR rateUS 50000"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    :cond_17
    iget-wide v6, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:J

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v5

    invoke-static {v6, v7, v5, p2, p3}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nativeEnableSensor(JIII)I

    move-result v3

    goto/16 :goto_4

    .line 913
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private isMicroMsg()Z
    .locals 5

    .prologue
    .line 1116
    iget-object v2, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mContextImpl:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1117
    .local v0, "callerName":Ljava/lang/String;
    const-string v2, "SensorManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isMicroMsg: package is = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    const/4 v1, 0x0

    .line 1120
    .local v1, "res":Z
    if-eqz v0, :cond_0

    const-string v2, "com.tencent.mm"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1122
    const/4 v1, 0x1

    .line 1124
    :cond_0
    return v1
.end method

.method private isQQShake()Z
    .locals 6

    .prologue
    .line 1099
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1101
    .local v1, "callerPid":I
    iget-object v3, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mContextImpl:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1102
    .local v0, "callerName":Ljava/lang/String;
    const-string v3, "SensorManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isQQShake: package is = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    const/4 v2, 0x0

    .line 1105
    .local v2, "res":Z
    if-eqz v0, :cond_0

    const-string v3, "com.tencent.mobileqq"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1107
    const/4 v2, 0x1

    .line 1109
    :cond_0
    return v2
.end method

.method private static native nativeDestroySensorEventQueue(J)V
.end method

.method private static native nativeDisableSensor(JI)I
.end method

.method private static native nativeEnableSensor(JIII)I
.end method

.method private static native nativeFlushSensor(J)I
.end method

.method private static native nativeInitBaseEventQueue(JLjava/lang/ref/WeakReference;Landroid/os/MessageQueue;[FLjava/lang/String;ILjava/lang/String;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/hardware/SystemSensorManager$BaseEventQueue;",
            ">;",
            "Landroid/os/MessageQueue;",
            "[F",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation
.end method

.method private static native nativeInjectSensorData(JI[FIJ)I
.end method


# virtual methods
.method public addSensor(Landroid/hardware/Sensor;II)Z
    .locals 4
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "delayUs"    # I
    .param p3, "maxBatchReportLatencyUs"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 821
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v0

    .line 822
    .local v0, "handle":I
    iget-object v3, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 835
    :goto_0
    return v1

    .line 825
    :cond_0
    iget-object v3, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 826
    invoke-virtual {p0, p1}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->addSensorEvent(Landroid/hardware/Sensor;)V

    .line 827
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->enableSensor(Landroid/hardware/Sensor;II)I

    move-result v3

    if-eqz v3, :cond_2

    .line 829
    if-eqz p3, :cond_1

    if-lez p3, :cond_2

    invoke-direct {p0, p1, p2, v1}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->enableSensor(Landroid/hardware/Sensor;II)I

    move-result v3

    if-eqz v3, :cond_2

    .line 831
    :cond_1
    invoke-virtual {p0, p1, v1}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->removeSensor(Landroid/hardware/Sensor;Z)Z

    goto :goto_0

    :cond_2
    move v1, v2

    .line 835
    goto :goto_0
.end method

.method protected abstract addSensorEvent(Landroid/hardware/Sensor;)V
.end method

.method protected abstract dispatchFlushCompleteEvent(I)V
.end method

.method protected abstract dispatchSensorEvent(I[FIJ)V
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 815
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->dispose(Z)V

    .line 816
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 879
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->dispose(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 881
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 883
    return-void

    .line 881
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public flush()I
    .locals 4

    .prologue
    .line 867
    iget-wide v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 868
    :cond_0
    iget-wide v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:J

    invoke-static {v0, v1}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nativeFlushSensor(J)I

    move-result v0

    return v0
.end method

.method public getContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 1093
    iput-object p1, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mContextImpl:Landroid/content/Context;

    .line 1094
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mContextImpl:Landroid/content/Context;

    return-object v0
.end method

.method public hasSensors()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 873
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->indexOfValue(Z)I

    move-result v1

    if-ltz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected injectSensorDataBase(I[FIJ)I
    .locals 8
    .param p1, "handle"    # I
    .param p2, "values"    # [F
    .param p3, "accuracy"    # I
    .param p4, "timestamp"    # J

    .prologue
    .line 1062
    iget-wide v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nSensorEventQueue:J

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-static/range {v0 .. v6}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nativeInjectSensorData(JI[FIJ)I

    move-result v0

    return v0
.end method

.method public removeAllSensors()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 839
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 840
    iget-object v3, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-ne v3, v5, :cond_0

    .line 841
    iget-object v3, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 842
    .local v0, "handle":I
    iget-object v3, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mManager:Landroid/hardware/SystemSensorManager;

    # getter for: Landroid/hardware/SystemSensorManager;->mHandleToSensor:Landroid/util/SparseArray;
    invoke-static {v3}, Landroid/hardware/SystemSensorManager;->access$200(Landroid/hardware/SystemSensorManager;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    .line 843
    .local v2, "sensor":Landroid/hardware/Sensor;
    if-eqz v2, :cond_0

    .line 844
    invoke-direct {p0, v2}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->disableSensor(Landroid/hardware/Sensor;)I

    .line 845
    iget-object v3, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 846
    invoke-virtual {p0, v2}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->removeSensorEvent(Landroid/hardware/Sensor;)V

    .line 839
    .end local v0    # "handle":I
    .end local v2    # "sensor":Landroid/hardware/Sensor;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 852
    :cond_1
    return v5
.end method

.method public removeSensor(Landroid/hardware/Sensor;Z)Z
    .locals 4
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "disable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 856
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v0

    .line 857
    .local v0, "handle":I
    iget-object v2, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 858
    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->disableSensor(Landroid/hardware/Sensor;)I

    .line 859
    :cond_0
    iget-object v2, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 860
    invoke-virtual {p0, p1}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->removeSensorEvent(Landroid/hardware/Sensor;)V

    .line 861
    const/4 v1, 0x1

    .line 863
    :cond_1
    return v1
.end method

.method protected abstract removeSensorEvent(Landroid/hardware/Sensor;)V
.end method
