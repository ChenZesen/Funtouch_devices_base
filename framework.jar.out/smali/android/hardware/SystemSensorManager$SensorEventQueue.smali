.class final Landroid/hardware/SystemSensorManager$SensorEventQueue;
.super Landroid/hardware/SystemSensorManager$BaseEventQueue;
.source "SystemSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SystemSensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SensorEventQueue"
.end annotation


# instance fields
.field private final mListener:Landroid/hardware/SensorEventListener;

.field private final mSensorsEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/hardware/SensorEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mTempProximityActive:F
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_FIELD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation
.end field

.field private mWmm:Landroid/view/WindowManager;
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_FIELD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/hardware/SensorEventListener;Landroid/os/Looper;Landroid/hardware/SystemSensorManager;Ljava/lang/String;)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "manager"    # Landroid/hardware/SystemSensorManager;
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1149
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0, p4}, Landroid/hardware/SystemSensorManager$BaseEventQueue;-><init>(Landroid/os/Looper;Landroid/hardware/SystemSensorManager;ILjava/lang/String;)V

    .line 1137
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorsEvents:Landroid/util/SparseArray;

    .line 1141
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mTempProximityActive:F

    .line 1143
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mWmm:Landroid/view/WindowManager;

    .line 1150
    iput-object p1, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mListener:Landroid/hardware/SensorEventListener;

    .line 1151
    return-void
.end method

.method private fixGesureSensorValues(Landroid/hardware/Sensor;[F)V
    .locals 10
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "values"    # [F
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/high16 v7, 0x40d00000    # 6.5f

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1407
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    const/16 v4, 0x1f

    if-eq v3, v4, :cond_1

    .line 1444
    :cond_0
    :goto_0
    return-void

    .line 1409
    :cond_1
    iget-object v3, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mWmm:Landroid/view/WindowManager;

    if-eqz v3, :cond_0

    .line 1412
    iget-object v3, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mWmm:Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 1414
    .local v1, "rotation":I
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "APDS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1415
    aget v3, p2, v8

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_0

    aget v3, p2, v9

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_0

    .line 1418
    aget v0, p2, v8

    .line 1419
    .local v0, "lrDelta":F
    aget v2, p2, v9

    .line 1421
    .local v2, "udDelta":F
    if-lez v1, :cond_4

    .line 1422
    aget v3, p2, v6

    # getter for: Landroid/hardware/SystemSensorManager;->GESTURE_RIGHT:F
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$3100()F

    move-result v4

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_2

    aget v3, p2, v6

    # getter for: Landroid/hardware/SystemSensorManager;->GESTURE_LEFT:F
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$3200()F

    move-result v4

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    .line 1423
    :cond_2
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v4, v7

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_0

    .line 1424
    cmpg-float v3, v2, v5

    if-gez v3, :cond_3

    .line 1425
    # getter for: Landroid/hardware/SystemSensorManager;->GESTURE_TOP:F
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$3300()F

    move-result v3

    aput v3, p2, v6

    .line 1428
    :goto_1
    const-string v3, "SensorManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "change gesture to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, p2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1427
    :cond_3
    # getter for: Landroid/hardware/SystemSensorManager;->GESTURE_DOWN:F
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$3400()F

    move-result v3

    aput v3, p2, v6

    goto :goto_1

    .line 1433
    :cond_4
    aget v3, p2, v6

    # getter for: Landroid/hardware/SystemSensorManager;->GESTURE_TOP:F
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$3300()F

    move-result v4

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_5

    aget v3, p2, v6

    # getter for: Landroid/hardware/SystemSensorManager;->GESTURE_DOWN:F
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$3400()F

    move-result v4

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    .line 1434
    :cond_5
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v4, v7

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_0

    .line 1435
    cmpg-float v3, v0, v5

    if-gez v3, :cond_6

    .line 1436
    # getter for: Landroid/hardware/SystemSensorManager;->GESTURE_LEFT:F
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$3200()F

    move-result v3

    aput v3, p2, v6

    .line 1439
    :goto_2
    const-string v3, "SensorManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "change gesture to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, p2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1438
    :cond_6
    # getter for: Landroid/hardware/SystemSensorManager;->GESTURE_RIGHT:F
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$3100()F

    move-result v3

    aput v3, p2, v6

    goto :goto_2
.end method


# virtual methods
.method public addSensorEvent(Landroid/hardware/Sensor;)V
    .locals 4
    .param p1, "sensor"    # Landroid/hardware/Sensor;

    .prologue
    .line 1155
    new-instance v0, Landroid/hardware/SensorEvent;

    iget-object v1, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mManager:Landroid/hardware/SystemSensorManager;

    # getter for: Landroid/hardware/SystemSensorManager;->mTargetSdkLevel:I
    invoke-static {v1}, Landroid/hardware/SystemSensorManager;->access$1700(Landroid/hardware/SystemSensorManager;)I

    move-result v1

    invoke-static {p1, v1}, Landroid/hardware/Sensor;->getMaxLengthValuesArray(Landroid/hardware/Sensor;I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/hardware/SensorEvent;-><init>(I)V

    .line 1157
    .local v0, "t":Landroid/hardware/SensorEvent;
    iget-object v2, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorsEvents:Landroid/util/SparseArray;

    monitor-enter v2

    .line 1158
    :try_start_0
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorsEvents:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v3

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1159
    monitor-exit v2

    .line 1160
    return-void

    .line 1159
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected dispatchFlushCompleteEvent(I)V
    .locals 2
    .param p1, "handle"    # I

    .prologue
    .line 1394
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mListener:Landroid/hardware/SensorEventListener;

    instance-of v1, v1, Landroid/hardware/SensorEventListener2;

    if-eqz v1, :cond_0

    .line 1395
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mManager:Landroid/hardware/SystemSensorManager;

    # getter for: Landroid/hardware/SystemSensorManager;->mHandleToSensor:Landroid/util/SparseArray;
    invoke-static {v1}, Landroid/hardware/SystemSensorManager;->access$200(Landroid/hardware/SystemSensorManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    .line 1396
    .local v0, "sensor":Landroid/hardware/Sensor;
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mListener:Landroid/hardware/SensorEventListener;

    check-cast v1, Landroid/hardware/SensorEventListener2;

    invoke-interface {v1, v0}, Landroid/hardware/SensorEventListener2;->onFlushCompleted(Landroid/hardware/Sensor;)V

    .line 1398
    .end local v0    # "sensor":Landroid/hardware/Sensor;
    :cond_0
    return-void
.end method

.method protected dispatchSensorEvent(I[FIJ)V
    .locals 12
    .param p1, "handle"    # I
    .param p2, "values"    # [F
    .param p3, "inAccuracy"    # I
    .param p4, "timestamp"    # J
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->CHANGE_CODE:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    .line 1175
    iget-object v5, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mManager:Landroid/hardware/SystemSensorManager;

    # getter for: Landroid/hardware/SystemSensorManager;->mHandleToSensor:Landroid/util/SparseArray;
    invoke-static {v5}, Landroid/hardware/SystemSensorManager;->access$200(Landroid/hardware/SystemSensorManager;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    .line 1176
    .local v3, "sensor":Landroid/hardware/Sensor;
    const/4 v4, 0x0

    .line 1177
    .local v4, "t":Landroid/hardware/SensorEvent;
    iget-object v6, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorsEvents:Landroid/util/SparseArray;

    monitor-enter v6

    .line 1178
    :try_start_0
    iget-object v5, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorsEvents:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/hardware/SensorEvent;

    move-object v4, v0

    .line 1179
    monitor-exit v6

    .line 1181
    if-nez v4, :cond_1

    .line 1390
    :cond_0
    :goto_0
    return-void

    .line 1179
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1189
    :cond_1
    invoke-direct {p0, v3, p2}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->fixGesureSensorValues(Landroid/hardware/Sensor;[F)V

    .line 1193
    const/4 v5, 0x0

    iget-object v6, v4, Landroid/hardware/SensorEvent;->values:[F

    const/4 v7, 0x0

    iget-object v8, v4, Landroid/hardware/SensorEvent;->values:[F

    array-length v8, v8

    invoke-static {p2, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 1194
    move-wide/from16 v0, p4

    iput-wide v0, v4, Landroid/hardware/SensorEvent;->timestamp:J

    .line 1195
    iput p3, v4, Landroid/hardware/SensorEvent;->accuracy:I

    .line 1196
    iput-object v3, v4, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 1198
    iget-object v5, v4, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v5}, Landroid/hardware/Sensor;->getType()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_2

    # getter for: Landroid/hardware/SystemSensorManager;->packageName:Ljava/lang/String;
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$1800()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    # getter for: Landroid/hardware/SystemSensorManager;->packageName:Ljava/lang/String;
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$1800()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.tencent.mm"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1199
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, v4, Landroid/hardware/SensorEvent;->timestamp:J

    const-wide/32 v10, 0xf4240

    div-long/2addr v8, v10

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x64

    cmp-long v5, v6, v8

    if-gtz v5, :cond_0

    .line 1207
    :cond_2
    # getter for: Landroid/hardware/SystemSensorManager;->ctsvPackageName:Ljava/lang/String;
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$300()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    # getter for: Landroid/hardware/SystemSensorManager;->ctsvPackageName:Ljava/lang/String;
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$300()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.cts.verifier"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    # getter for: Landroid/hardware/SystemSensorManager;->ctsvPackageName:Ljava/lang/String;
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$300()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.cts.hardware"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1209
    :cond_3
    # getter for: Landroid/hardware/SystemSensorManager;->random:Ljava/util/Random;
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$2000()Ljava/util/Random;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    # setter for: Landroid/hardware/SystemSensorManager;->ctsvSensorRandomDebounce:I
    invoke-static {v5}, Landroid/hardware/SystemSensorManager;->access$1902(I)I

    .line 1211
    iget-object v5, v4, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v5}, Landroid/hardware/Sensor;->getType()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 1296
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    # setter for: Landroid/hardware/SystemSensorManager;->ctsvNowSysTimestamp:J
    invoke-static {v6, v7}, Landroid/hardware/SystemSensorManager;->access$2302(J)J

    .line 1297
    # getter for: Landroid/hardware/SystemSensorManager;->ctsvSensorEnableFlag:Z
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$1500()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1298
    const/4 v5, 0x0

    # setter for: Landroid/hardware/SystemSensorManager;->ctsvSensorEnableFlag:Z
    invoke-static {v5}, Landroid/hardware/SystemSensorManager;->access$1502(Z)Z

    .line 1299
    # setter for: Landroid/hardware/SystemSensorManager;->ctsvLastTimeStamp:J
    invoke-static/range {p4 .. p5}, Landroid/hardware/SystemSensorManager;->access$2702(J)J

    .line 1311
    :goto_1
    # getter for: Landroid/hardware/SystemSensorManager;->ctsvSensorDebounceOtherSensor:Z
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$2900()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1313
    iget-wide v6, v4, Landroid/hardware/SensorEvent;->timestamp:J

    # getter for: Landroid/hardware/SystemSensorManager;->ctsvRateNs:J
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$1600()J

    move-result-wide v8

    # getter for: Landroid/hardware/SystemSensorManager;->ctsvSensorRandomDebounce:I
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$1900()I

    move-result v5

    int-to-long v10, v5

    mul-long/2addr v8, v10

    const-wide/16 v10, 0x64

    div-long/2addr v8, v10

    sub-long/2addr v6, v8

    iput-wide v6, v4, Landroid/hardware/SensorEvent;->timestamp:J

    .line 1314
    const/4 v5, 0x0

    # setter for: Landroid/hardware/SystemSensorManager;->ctsvSensorDebounceOtherSensor:Z
    invoke-static {v5}, Landroid/hardware/SystemSensorManager;->access$2902(Z)Z

    .line 1325
    :cond_4
    :goto_2
    iget-object v5, v4, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v5}, Landroid/hardware/Sensor;->getType()I

    move-result v5

    sparse-switch v5, :sswitch_data_1

    .line 1382
    :goto_3
    iget-object v5, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mFirstEvent:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1383
    iget-object v5, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mFirstEvent:Landroid/util/SparseBooleanArray;

    const/4 v6, 0x1

    invoke-virtual {v5, p1, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1384
    iget-object v5, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mListener:Landroid/hardware/SensorEventListener;

    iget-object v6, v4, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    const/4 v7, 0x3

    invoke-interface {v5, v6, v7}, Landroid/hardware/SensorEventListener;->onAccuracyChanged(Landroid/hardware/Sensor;I)V

    .line 1389
    :cond_5
    :goto_4
    iget-object v5, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mListener:Landroid/hardware/SensorEventListener;

    invoke-interface {v5, v4}, Landroid/hardware/SensorEventListener;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    goto/16 :goto_0

    .line 1214
    :sswitch_0
    # getter for: Landroid/hardware/SystemSensorManager;->ctsvAccAdjustSkipFlag:Z
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$700()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1215
    # getter for: Landroid/hardware/SystemSensorManager;->ctsvSensorEnableFlagAcc:Z
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$600()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1216
    const/4 v5, 0x0

    # setter for: Landroid/hardware/SystemSensorManager;->ctsvSensorEnableFlagAcc:Z
    invoke-static {v5}, Landroid/hardware/SystemSensorManager;->access$602(Z)Z

    .line 1217
    # setter for: Landroid/hardware/SystemSensorManager;->ctsvLastTimeStampAcc:J
    invoke-static/range {p4 .. p5}, Landroid/hardware/SystemSensorManager;->access$2102(J)J

    .line 1218
    # getter for: Landroid/hardware/SystemSensorManager;->ctsvLastTimeStampAcc:J
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$2100()J

    move-result-wide v6

    iput-wide v6, v4, Landroid/hardware/SensorEvent;->timestamp:J

    .line 1219
    const-string v5, "SensorManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sensorCTSV acc  add         timestamp = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p4

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    :goto_5
    # getter for: Landroid/hardware/SystemSensorManager;->ctsvSensorDebounceAcc:Z
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$2200()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1226
    # getter for: Landroid/hardware/SystemSensorManager;->ctsvRateNsAcc:J
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$500()J

    move-result-wide v6

    # getter for: Landroid/hardware/SystemSensorManager;->ctsvSensorRandomDebounce:I
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$1900()I

    move-result v5

    int-to-long v8, v5

    mul-long/2addr v6, v8

    const-wide/16 v8, 0x64

    div-long/2addr v6, v8

    # -= operator for: Landroid/hardware/SystemSensorManager;->ctsvLastTimeStampAcc:J
    invoke-static {v6, v7}, Landroid/hardware/SystemSensorManager;->access$2122(J)J

    .line 1227
    const/4 v5, 0x0

    # setter for: Landroid/hardware/SystemSensorManager;->ctsvSensorDebounceAcc:Z
    invoke-static {v5}, Landroid/hardware/SystemSensorManager;->access$2202(Z)Z

    .line 1232
    :goto_6
    const-string v5, "SensorManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sensorCTSV  true acc  add t.timestamp = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, v4, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1221
    :cond_6
    # getter for: Landroid/hardware/SystemSensorManager;->ctsvLastTimeStampAcc:J
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$2100()J

    move-result-wide v6

    # getter for: Landroid/hardware/SystemSensorManager;->ctsvRateNsAcc:J
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$500()J

    move-result-wide v8

    add-long/2addr v6, v8

    iput-wide v6, v4, Landroid/hardware/SensorEvent;->timestamp:J

    .line 1222
    iget-wide v6, v4, Landroid/hardware/SensorEvent;->timestamp:J

    # setter for: Landroid/hardware/SystemSensorManager;->ctsvLastTimeStampAcc:J
    invoke-static {v6, v7}, Landroid/hardware/SystemSensorManager;->access$2102(J)J

    goto :goto_5

    .line 1230
    :cond_7
    const/4 v5, 0x1

    # setter for: Landroid/hardware/SystemSensorManager;->ctsvSensorDebounceAcc:Z
    invoke-static {v5}, Landroid/hardware/SystemSensorManager;->access$2202(Z)Z

    goto :goto_6

    .line 1258
    :sswitch_1
    # getter for: Landroid/hardware/SystemSensorManager;->ctsvGyroAdjustSkipFlag:Z
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$1400()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1259
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    # setter for: Landroid/hardware/SystemSensorManager;->ctsvNowSysTimestamp:J
    invoke-static {v6, v7}, Landroid/hardware/SystemSensorManager;->access$2302(J)J

    .line 1260
    # getter for: Landroid/hardware/SystemSensorManager;->ctsvSensorEnableFlagGyro:Z
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$1300()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1261
    const/4 v5, 0x0

    # setter for: Landroid/hardware/SystemSensorManager;->ctsvSensorEnableFlagGyro:Z
    invoke-static {v5}, Landroid/hardware/SystemSensorManager;->access$1302(Z)Z

    .line 1262
    # setter for: Landroid/hardware/SystemSensorManager;->ctsvLastTimeStampGyro:J
    invoke-static/range {p4 .. p5}, Landroid/hardware/SystemSensorManager;->access$2402(J)J

    .line 1274
    :goto_7
    # getter for: Landroid/hardware/SystemSensorManager;->ctsvSensorDebounceGyro:Z
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$2600()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1276
    iget-wide v6, v4, Landroid/hardware/SensorEvent;->timestamp:J

    # getter for: Landroid/hardware/SystemSensorManager;->ctsvRateNsGyro:J
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$1200()J

    move-result-wide v8

    # getter for: Landroid/hardware/SystemSensorManager;->ctsvSensorRandomDebounce:I
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$1900()I

    move-result v5

    int-to-long v10, v5

    mul-long/2addr v8, v10

    const-wide/16 v10, 0x64

    div-long/2addr v8, v10

    sub-long/2addr v6, v8

    iput-wide v6, v4, Landroid/hardware/SensorEvent;->timestamp:J

    .line 1277
    const/4 v5, 0x0

    # setter for: Landroid/hardware/SystemSensorManager;->ctsvSensorDebounceGyro:Z
    invoke-static {v5}, Landroid/hardware/SystemSensorManager;->access$2602(Z)Z

    goto/16 :goto_2

    .line 1265
    :cond_8
    # getter for: Landroid/hardware/SystemSensorManager;->ctsvRateNsGyro:J
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$1200()J

    move-result-wide v6

    const-wide/32 v8, 0xbebc200

    cmp-long v5, v6, v8

    if-nez v5, :cond_9

    # getter for: Landroid/hardware/SystemSensorManager;->ctsvNowSysTimestamp:J
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$2300()J

    move-result-wide v6

    # getter for: Landroid/hardware/SystemSensorManager;->ctsvLastSysTimestampGyro:J
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$2500()J

    move-result-wide v8

    sub-long/2addr v6, v8

    # getter for: Landroid/hardware/SystemSensorManager;->ctsvRateNsGyro:J
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$1200()J

    move-result-wide v8

    const-wide/32 v10, 0x989680

    div-long/2addr v8, v10

    const-wide/16 v10, 0x8

    mul-long/2addr v8, v10

    cmp-long v5, v6, v8

    if-gez v5, :cond_9

    .line 1266
    const-string v5, "SensorManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sensorCTSV add return  = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    # getter for: Landroid/hardware/SystemSensorManager;->ctsvNowSysTimestamp:J
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$2300()J

    move-result-wide v8

    # getter for: Landroid/hardware/SystemSensorManager;->ctsvLastSysTimestampGyro:J
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$2500()J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1269
    :cond_9
    # getter for: Landroid/hardware/SystemSensorManager;->ctsvLastTimeStampGyro:J
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$2400()J

    move-result-wide v6

    # getter for: Landroid/hardware/SystemSensorManager;->ctsvRateNsGyro:J
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$1200()J

    move-result-wide v8

    add-long/2addr v6, v8

    iput-wide v6, v4, Landroid/hardware/SensorEvent;->timestamp:J

    .line 1270
    iget-wide v6, v4, Landroid/hardware/SensorEvent;->timestamp:J

    # setter for: Landroid/hardware/SystemSensorManager;->ctsvLastTimeStampGyro:J
    invoke-static {v6, v7}, Landroid/hardware/SystemSensorManager;->access$2402(J)J

    .line 1271
    # getter for: Landroid/hardware/SystemSensorManager;->ctsvNowSysTimestamp:J
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$2300()J

    move-result-wide v6

    # setter for: Landroid/hardware/SystemSensorManager;->ctsvLastSysTimestampGyro:J
    invoke-static {v6, v7}, Landroid/hardware/SystemSensorManager;->access$2502(J)J

    goto :goto_7

    .line 1280
    :cond_a
    const/4 v5, 0x1

    # setter for: Landroid/hardware/SystemSensorManager;->ctsvSensorDebounceGyro:Z
    invoke-static {v5}, Landroid/hardware/SystemSensorManager;->access$2602(Z)Z

    goto/16 :goto_2

    .line 1286
    :sswitch_2
    const-string v5, "SensorManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sensorCTSV  true prox add t.timestamp = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, v4, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1289
    :sswitch_3
    const-string v5, "SensorManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sensorCTSV true light add t.timestamp = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, v4, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1293
    :sswitch_4
    const-string v5, "SensorManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sensorCTSV true step  add t.timestamp = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, v4, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1302
    :cond_b
    # getter for: Landroid/hardware/SystemSensorManager;->ctsvRateNs:J
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$1600()J

    move-result-wide v6

    const-wide/32 v8, 0xbebc200

    cmp-long v5, v6, v8

    if-nez v5, :cond_c

    # getter for: Landroid/hardware/SystemSensorManager;->ctsvNowSysTimestamp:J
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$2300()J

    move-result-wide v6

    # getter for: Landroid/hardware/SystemSensorManager;->ctsvLastSysTimestampOther:J
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$2800()J

    move-result-wide v8

    sub-long/2addr v6, v8

    # getter for: Landroid/hardware/SystemSensorManager;->ctsvRateNs:J
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$1600()J

    move-result-wide v8

    const-wide/32 v10, 0x989680

    div-long/2addr v8, v10

    const-wide/16 v10, 0x8

    mul-long/2addr v8, v10

    cmp-long v5, v6, v8

    if-gez v5, :cond_c

    .line 1303
    const-string v5, "SensorManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sensorCTSV add return  = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    # getter for: Landroid/hardware/SystemSensorManager;->ctsvNowSysTimestamp:J
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$2300()J

    move-result-wide v8

    # getter for: Landroid/hardware/SystemSensorManager;->ctsvLastSysTimestampOther:J
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$2800()J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1306
    :cond_c
    # getter for: Landroid/hardware/SystemSensorManager;->ctsvLastTimeStamp:J
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$2700()J

    move-result-wide v6

    # getter for: Landroid/hardware/SystemSensorManager;->ctsvRateNs:J
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$1600()J

    move-result-wide v8

    add-long/2addr v6, v8

    iput-wide v6, v4, Landroid/hardware/SensorEvent;->timestamp:J

    .line 1307
    iget-wide v6, v4, Landroid/hardware/SensorEvent;->timestamp:J

    # setter for: Landroid/hardware/SystemSensorManager;->ctsvLastTimeStamp:J
    invoke-static {v6, v7}, Landroid/hardware/SystemSensorManager;->access$2702(J)J

    .line 1308
    # getter for: Landroid/hardware/SystemSensorManager;->ctsvNowSysTimestamp:J
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$2300()J

    move-result-wide v6

    # setter for: Landroid/hardware/SystemSensorManager;->ctsvLastSysTimestampOther:J
    invoke-static {v6, v7}, Landroid/hardware/SystemSensorManager;->access$2802(J)J

    goto/16 :goto_1

    .line 1317
    :cond_d
    const/4 v5, 0x1

    # setter for: Landroid/hardware/SystemSensorManager;->ctsvSensorDebounceOtherSensor:Z
    invoke-static {v5}, Landroid/hardware/SystemSensorManager;->access$2902(Z)Z

    goto/16 :goto_2

    .line 1330
    :sswitch_5
    iget-object v5, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorAccuracies:Landroid/util/SparseIntArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    .line 1331
    .local v2, "accuracy":I
    iget v5, v4, Landroid/hardware/SensorEvent;->accuracy:I

    if-ltz v5, :cond_5

    iget v5, v4, Landroid/hardware/SensorEvent;->accuracy:I

    if-eq v2, v5, :cond_5

    .line 1332
    iget-object v5, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorAccuracies:Landroid/util/SparseIntArray;

    iget v6, v4, Landroid/hardware/SensorEvent;->accuracy:I

    invoke-virtual {v5, p1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1333
    iget-object v5, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mListener:Landroid/hardware/SensorEventListener;

    iget-object v6, v4, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget v7, v4, Landroid/hardware/SensorEvent;->accuracy:I

    invoke-interface {v5, v6, v7}, Landroid/hardware/SensorEventListener;->onAccuracyChanged(Landroid/hardware/Sensor;I)V

    goto/16 :goto_4

    .line 1352
    .end local v2    # "accuracy":I
    :sswitch_6
    iget v5, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mTempProximityActive:F

    iget-object v6, v4, Landroid/hardware/SensorEvent;->values:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    cmpl-float v5, v5, v6

    if-nez v5, :cond_e

    invoke-virtual {v3}, Landroid/hardware/Sensor;->isWakeUpSensor()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1357
    :cond_e
    # getter for: Landroid/hardware/SystemSensorManager;->debug:Z
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$3000()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1358
    const-string v5, "SensorManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "framework alsps raw_data dataX="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Landroid/hardware/SensorEvent;->values:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " dataY="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Landroid/hardware/SensorEvent;->values:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " dataZ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Landroid/hardware/SensorEvent;->values:[F

    const/4 v8, 0x2

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    :cond_f
    :goto_8
    iget-object v5, v4, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    iput v5, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mTempProximityActive:F

    goto/16 :goto_4

    .line 1361
    :cond_10
    iget v5, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mTempProximityActive:F

    iget-object v6, v4, Landroid/hardware/SensorEvent;->values:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_f

    .line 1362
    const-string v5, "SensorManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "framework alsps raw_data dataX="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Landroid/hardware/SensorEvent;->values:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " dataY="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Landroid/hardware/SensorEvent;->values:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " dataZ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Landroid/hardware/SensorEvent;->values:[F

    const/4 v8, 0x2

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 1378
    :sswitch_7
    const-string v5, "SensorManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "framework step counter "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Landroid/hardware/SensorEvent;->values:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1211
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x5 -> :sswitch_3
        0x8 -> :sswitch_2
        0x12 -> :sswitch_4
        0x13 -> :sswitch_4
    .end sparse-switch

    .line 1325
    :sswitch_data_1
    .sparse-switch
        0x2 -> :sswitch_5
        0x3 -> :sswitch_5
        0x8 -> :sswitch_6
        0x13 -> :sswitch_7
    .end sparse-switch
.end method

.method public getWm(Landroid/view/WindowManager;)V
    .locals 0
    .param p1, "mWin"    # Landroid/view/WindowManager;
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    .line 1451
    iput-object p1, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mWmm:Landroid/view/WindowManager;

    .line 1452
    return-void
.end method

.method public removeSensorEvent(Landroid/hardware/Sensor;)V
    .locals 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;

    .prologue
    .line 1164
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorsEvents:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1165
    :try_start_0
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue;->mSensorsEvents:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->delete(I)V

    .line 1166
    monitor-exit v1

    .line 1167
    return-void

    .line 1166
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
