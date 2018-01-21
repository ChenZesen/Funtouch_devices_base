.class public Landroid/hardware/SystemSensorManager;
.super Landroid/hardware/SensorManager;
.source "SystemSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/SystemSensorManager$InjectEventQueue;,
        Landroid/hardware/SystemSensorManager$TriggerEventQueue;,
        Landroid/hardware/SystemSensorManager$SensorEventQueue;,
        Landroid/hardware/SystemSensorManager$BaseEventQueue;
    }
.end annotation


# static fields
.field private static ALS_PARA_INDEX_PATH:Ljava/lang/String; = null

.field private static final BASE_THRESHOLD_SENSOR:Ljava/lang/String; = "persist.sys.base_threshold_prox"
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_FIELD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation
.end field

.field private static BOARD_VERSION_PATH:Ljava/lang/String; = null
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_FIELD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation
.end field

.field private static GESTURE_DOWN:F = 0.0f
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_FIELD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation
.end field

.field private static GESTURE_LEFT:F = 0.0f
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_FIELD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation
.end field

.field private static GESTURE_RIGHT:F = 0.0f
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_FIELD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation
.end field

.field private static GESTURE_TOP:F = 0.0f
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_FIELD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation
.end field

.field private static NEED_CHANGE_PROXIMITY_PULSE:Ljava/lang/String; = null

.field private static PD1225_HARDWARE_VER_A:Ljava/lang/String; = null

.field private static PD1225_HARDWARE_VER_B:Ljava/lang/String; = null

.field private static PD1225_HARDWARE_VER_C:Ljava/lang/String; = null

.field private static PD1225_HARDWARE_VER_D:Ljava/lang/String; = null

.field private static PD1225_HARDWARE_VER_E:Ljava/lang/String; = null

.field private static PD1225_HARDWARE_VER_F:Ljava/lang/String; = null

.field private static PHONE_COLOR_BLACK:I = 0x0
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_FIELD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation
.end field

.field private static PHONE_COLOR_DEFAULT:I = 0x0
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_FIELD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation
.end field

.field private static PHONE_COLOR_PROPERTIE:Ljava/lang/String; = null
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_FIELD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation
.end field

.field private static PHONE_COLOR_WHITE:I = 0x0
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_FIELD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation
.end field

.field private static PS_PARA_INDEX_PATH:Ljava/lang/String; = null

.field private static PS_PULSE_VALUE_PATH:Ljava/lang/String; = null

.field private static final TMP_BASE_THRESHOLD_SENSOR:Ljava/lang/String; = "persist.sys.tmp_base_thres_prox"
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_FIELD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation
.end field

.field private static TOUCHPANEL_ID_PATH:Ljava/lang/String;
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_FIELD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation
.end field

.field private static ctsvAccAdjustSkipFlag:Z

.field private static ctsvGyroAdjustSkipFlag:Z

.field private static ctsvLastSysTimestampGyro:J

.field private static ctsvLastSysTimestampMag:J

.field private static ctsvLastSysTimestampOther:J

.field private static ctsvLastTimeStamp:J

.field private static ctsvLastTimeStampAcc:J

.field private static ctsvLastTimeStampGyro:J

.field private static ctsvLastTimeStampMag:J

.field private static ctsvNowSysTimestamp:J

.field private static ctsvPackageName:Ljava/lang/String;

.field private static ctsvRateNs:J

.field private static ctsvRateNsAcc:J

.field private static ctsvRateNsGyro:J

.field private static ctsvRateNsMag:J

.field private static ctsvSensorDebounceAcc:Z

.field private static ctsvSensorDebounceGyro:Z

.field private static ctsvSensorDebounceMag:Z

.field private static ctsvSensorDebounceOtherSensor:Z

.field private static ctsvSensorEnableCountAcc:I

.field private static ctsvSensorEnableCountGyro:I

.field private static ctsvSensorEnableCountMag:I

.field private static ctsvSensorEnableFlag:Z

.field private static ctsvSensorEnableFlagAcc:Z

.field private static ctsvSensorEnableFlagGyro:Z

.field private static ctsvSensorEnableFlagMag:Z

.field private static ctsvSensorRandomDebounce:I

.field private static debug:Z
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_FIELD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation
.end field

.field private static mInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

.field private static packageName:Ljava/lang/String;

.field private static random:Ljava/util/Random;

.field private static sSensorModuleInitialized:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFullSensorsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandleToSensor:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mMainLooper:Landroid/os/Looper;

.field private final mNativeInstance:J

.field private final mSensorListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/hardware/SensorEventListener;",
            "Landroid/hardware/SystemSensorManager$SensorEventQueue;",
            ">;"
        }
    .end annotation
.end field

.field private final mTargetSdkLevel:I

.field private final mTriggerListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/hardware/TriggerEventListener;",
            "Landroid/hardware/SystemSensorManager$TriggerEventQueue;",
            ">;"
        }
    .end annotation
.end field

.field private mWm:Landroid/view/WindowManager;
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_FIELD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 83
    sput-boolean v1, Landroid/hardware/SystemSensorManager;->sSensorModuleInitialized:Z

    .line 84
    sput-object v0, Landroid/hardware/SystemSensorManager;->mInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    .line 104
    sput-object v0, Landroid/hardware/SystemSensorManager;->packageName:Ljava/lang/String;

    .line 108
    sput-object v0, Landroid/hardware/SystemSensorManager;->ctsvPackageName:Ljava/lang/String;

    .line 133
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Landroid/hardware/SystemSensorManager;->random:Ljava/util/Random;

    .line 147
    const-string v0, "/sys/touchscreen/firmware_module_id"

    sput-object v0, Landroid/hardware/SystemSensorManager;->TOUCHPANEL_ID_PATH:Ljava/lang/String;

    .line 149
    const-string v0, "/sys/networktype/networktype"

    sput-object v0, Landroid/hardware/SystemSensorManager;->BOARD_VERSION_PATH:Ljava/lang/String;

    .line 152
    const-string v0, "1"

    sput-object v0, Landroid/hardware/SystemSensorManager;->PD1225_HARDWARE_VER_A:Ljava/lang/String;

    .line 153
    const-string v0, "2"

    sput-object v0, Landroid/hardware/SystemSensorManager;->PD1225_HARDWARE_VER_B:Ljava/lang/String;

    .line 154
    const-string v0, "3"

    sput-object v0, Landroid/hardware/SystemSensorManager;->PD1225_HARDWARE_VER_C:Ljava/lang/String;

    .line 156
    const-string v0, "4"

    sput-object v0, Landroid/hardware/SystemSensorManager;->PD1225_HARDWARE_VER_D:Ljava/lang/String;

    .line 157
    const-string v0, "5"

    sput-object v0, Landroid/hardware/SystemSensorManager;->PD1225_HARDWARE_VER_E:Ljava/lang/String;

    .line 158
    const-string v0, "6"

    sput-object v0, Landroid/hardware/SystemSensorManager;->PD1225_HARDWARE_VER_F:Ljava/lang/String;

    .line 161
    const/4 v0, -0x1

    sput v0, Landroid/hardware/SystemSensorManager;->PHONE_COLOR_DEFAULT:I

    .line 163
    const/4 v0, 0x2

    sput v0, Landroid/hardware/SystemSensorManager;->PHONE_COLOR_WHITE:I

    .line 165
    const/4 v0, 0x1

    sput v0, Landroid/hardware/SystemSensorManager;->PHONE_COLOR_BLACK:I

    .line 167
    const-string/jumbo v0, "sys.bbk.phonecolor"

    sput-object v0, Landroid/hardware/SystemSensorManager;->PHONE_COLOR_PROPERTIE:Ljava/lang/String;

    .line 168
    const-string v0, "/sys/bus/platform/drivers/als_ps/als_para_index"

    sput-object v0, Landroid/hardware/SystemSensorManager;->ALS_PARA_INDEX_PATH:Ljava/lang/String;

    .line 169
    const-string v0, "/sys/bus/platform/drivers/als_ps/ps_para_index"

    sput-object v0, Landroid/hardware/SystemSensorManager;->PS_PARA_INDEX_PATH:Ljava/lang/String;

    .line 170
    const-string v0, "/sys/bus/platform/drivers/als_ps/pulse"

    sput-object v0, Landroid/hardware/SystemSensorManager;->PS_PULSE_VALUE_PATH:Ljava/lang/String;

    .line 171
    const-string/jumbo v0, "persist.sys.need_change_pulse"

    sput-object v0, Landroid/hardware/SystemSensorManager;->NEED_CHANGE_PROXIMITY_PULSE:Ljava/lang/String;

    .line 173
    sput-boolean v1, Landroid/hardware/SystemSensorManager;->debug:Z

    .line 198
    const/high16 v0, 0x41000000    # 8.0f

    sput v0, Landroid/hardware/SystemSensorManager;->GESTURE_RIGHT:F

    .line 200
    const/high16 v0, 0x40800000    # 4.0f

    sput v0, Landroid/hardware/SystemSensorManager;->GESTURE_LEFT:F

    .line 202
    const/high16 v0, 0x40000000    # 2.0f

    sput v0, Landroid/hardware/SystemSensorManager;->GESTURE_TOP:F

    .line 204
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Landroid/hardware/SystemSensorManager;->GESTURE_DOWN:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mainLooper"    # Landroid/os/Looper;
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->CHANGE_CODE:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    .line 486
    invoke-direct {p0}, Landroid/hardware/SensorManager;-><init>()V

    .line 86
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/hardware/SystemSensorManager;->mLock:Ljava/lang/Object;

    .line 88
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/hardware/SystemSensorManager;->mFullSensorsList:Ljava/util/ArrayList;

    .line 89
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Landroid/hardware/SystemSensorManager;->mHandleToSensor:Landroid/util/SparseArray;

    .line 92
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    .line 94
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    .line 205
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/hardware/SystemSensorManager;->mWm:Landroid/view/WindowManager;

    .line 487
    iput-object p2, p0, Landroid/hardware/SystemSensorManager;->mMainLooper:Landroid/os/Looper;

    .line 488
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v2, p0, Landroid/hardware/SystemSensorManager;->mTargetSdkLevel:I

    .line 489
    iput-object p1, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    .line 490
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/SystemSensorManager;->nativeCreate(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    .line 492
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 493
    :try_start_0
    sget-boolean v2, Landroid/hardware/SystemSensorManager;->sSensorModuleInitialized:Z

    if-nez v2, :cond_0

    .line 494
    const/4 v2, 0x1

    sput-boolean v2, Landroid/hardware/SystemSensorManager;->sSensorModuleInitialized:Z

    .line 495
    invoke-static {}, Landroid/hardware/SystemSensorManager;->nativeClassInit()V

    .line 496
    invoke-static {}, Landroid/hardware/SystemSensorManager;->writeAlsPsPara()V

    .line 498
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 501
    const/4 v0, 0x0

    .line 502
    .local v0, "index":I
    :goto_0
    new-instance v1, Landroid/hardware/Sensor;

    invoke-direct {v1}, Landroid/hardware/Sensor;-><init>()V

    .line 503
    .local v1, "sensor":Landroid/hardware/Sensor;
    iget-wide v2, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    invoke-static {v2, v3, v1, v0}, Landroid/hardware/SystemSensorManager;->nativeGetSensorAtIndex(JLandroid/hardware/Sensor;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 509
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mWm:Landroid/view/WindowManager;

    if-nez v2, :cond_1

    .line 510
    const-string/jumbo v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Landroid/hardware/SystemSensorManager;->mWm:Landroid/view/WindowManager;

    .line 512
    :cond_1
    return-void

    .line 498
    .end local v0    # "index":I
    .end local v1    # "sensor":Landroid/hardware/Sensor;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 504
    .restart local v0    # "index":I
    .restart local v1    # "sensor":Landroid/hardware/Sensor;
    :cond_2
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mFullSensorsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mHandleToSensor:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 501
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static ProximitySensorSetThreshold()V
    .locals 9
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    .line 448
    const/4 v1, 0x0

    .line 449
    .local v1, "baseValueTemp":I
    const/4 v0, 0x0

    .line 451
    .local v0, "baseValue":I
    const v2, 0xffff

    .line 454
    .local v2, "baseValueUsed":I
    const-string/jumbo v6, "persist.sys.tmp_base_thres_prox"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 455
    .local v5, "valueInTmp":Ljava/lang/String;
    const-string/jumbo v6, "persist.sys.base_threshold_prox"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 456
    .local v4, "value":Ljava/lang/String;
    const-string/jumbo v6, "ro.product.model.bbk"

    const-string/jumbo v7, "other"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 458
    .local v3, "mModel":Ljava/lang/String;
    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 459
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 460
    :cond_0
    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 461
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 463
    :cond_1
    if-lt v1, v0, :cond_4

    .line 464
    move v2, v1

    .line 468
    :goto_0
    if-nez v2, :cond_2

    .line 469
    const v2, 0xffff

    .line 471
    :cond_2
    const-string v6, "SensorManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Threshold baseValueTemp:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " baseValue"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " baseValueUsed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    const-string v6, "TD1305"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "PD1401L"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 475
    :cond_3
    const-string v6, "/sys/bus/platform/drivers/psgs/ps_base_value"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/hardware/SystemSensorManager;->jniWriteKernelCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 480
    :goto_1
    return-void

    .line 466
    :cond_4
    move v2, v0

    goto :goto_0

    .line 478
    :cond_5
    const-string v6, "/sys/bus/platform/drivers/als_ps/ps_base_value"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/hardware/SystemSensorManager;->jniWriteKernelCommand(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1
.end method

.method static synthetic access$000(Landroid/hardware/SystemSensorManager;)J
    .locals 2
    .param p0, "x0"    # Landroid/hardware/SystemSensorManager;

    .prologue
    .line 76
    iget-wide v0, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    return-wide v0
.end method

.method static synthetic access$100(Landroid/hardware/SystemSensorManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/SystemSensorManager;

    .prologue
    .line 76
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 76
    sput-boolean p0, Landroid/hardware/SystemSensorManager;->ctsvSensorEnableFlagMag:Z

    return p0
.end method

.method static synthetic access$1100()I
    .locals 1

    .prologue
    .line 76
    sget v0, Landroid/hardware/SystemSensorManager;->ctsvSensorEnableCountGyro:I

    return v0
.end method

.method static synthetic access$1108()I
    .locals 2

    .prologue
    .line 76
    sget v0, Landroid/hardware/SystemSensorManager;->ctsvSensorEnableCountGyro:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Landroid/hardware/SystemSensorManager;->ctsvSensorEnableCountGyro:I

    return v0
.end method

.method static synthetic access$1110()I
    .locals 2

    .prologue
    .line 76
    sget v0, Landroid/hardware/SystemSensorManager;->ctsvSensorEnableCountGyro:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Landroid/hardware/SystemSensorManager;->ctsvSensorEnableCountGyro:I

    return v0
.end method

.method static synthetic access$1200()J
    .locals 2

    .prologue
    .line 76
    sget-wide v0, Landroid/hardware/SystemSensorManager;->ctsvRateNsGyro:J

    return-wide v0
.end method

.method static synthetic access$1202(J)J
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 76
    sput-wide p0, Landroid/hardware/SystemSensorManager;->ctsvRateNsGyro:J

    return-wide p0
.end method

.method static synthetic access$1300()Z
    .locals 1

    .prologue
    .line 76
    sget-boolean v0, Landroid/hardware/SystemSensorManager;->ctsvSensorEnableFlagGyro:Z

    return v0
.end method

.method static synthetic access$1302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 76
    sput-boolean p0, Landroid/hardware/SystemSensorManager;->ctsvSensorEnableFlagGyro:Z

    return p0
.end method

.method static synthetic access$1400()Z
    .locals 1

    .prologue
    .line 76
    sget-boolean v0, Landroid/hardware/SystemSensorManager;->ctsvGyroAdjustSkipFlag:Z

    return v0
.end method

.method static synthetic access$1402(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 76
    sput-boolean p0, Landroid/hardware/SystemSensorManager;->ctsvGyroAdjustSkipFlag:Z

    return p0
.end method

.method static synthetic access$1500()Z
    .locals 1

    .prologue
    .line 76
    sget-boolean v0, Landroid/hardware/SystemSensorManager;->ctsvSensorEnableFlag:Z

    return v0
.end method

.method static synthetic access$1502(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 76
    sput-boolean p0, Landroid/hardware/SystemSensorManager;->ctsvSensorEnableFlag:Z

    return p0
.end method

.method static synthetic access$1600()J
    .locals 2

    .prologue
    .line 76
    sget-wide v0, Landroid/hardware/SystemSensorManager;->ctsvRateNs:J

    return-wide v0
.end method

.method static synthetic access$1602(J)J
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 76
    sput-wide p0, Landroid/hardware/SystemSensorManager;->ctsvRateNs:J

    return-wide p0
.end method

.method static synthetic access$1700(Landroid/hardware/SystemSensorManager;)I
    .locals 1
    .param p0, "x0"    # Landroid/hardware/SystemSensorManager;

    .prologue
    .line 76
    iget v0, p0, Landroid/hardware/SystemSensorManager;->mTargetSdkLevel:I

    return v0
.end method

.method static synthetic access$1800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Landroid/hardware/SystemSensorManager;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900()I
    .locals 1

    .prologue
    .line 76
    sget v0, Landroid/hardware/SystemSensorManager;->ctsvSensorRandomDebounce:I

    return v0
.end method

.method static synthetic access$1902(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 76
    sput p0, Landroid/hardware/SystemSensorManager;->ctsvSensorRandomDebounce:I

    return p0
.end method

.method static synthetic access$200(Landroid/hardware/SystemSensorManager;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/SystemSensorManager;

    .prologue
    .line 76
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mHandleToSensor:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$2000()Ljava/util/Random;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Landroid/hardware/SystemSensorManager;->random:Ljava/util/Random;

    return-object v0
.end method

.method static synthetic access$2100()J
    .locals 2

    .prologue
    .line 76
    sget-wide v0, Landroid/hardware/SystemSensorManager;->ctsvLastTimeStampAcc:J

    return-wide v0
.end method

.method static synthetic access$2102(J)J
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 76
    sput-wide p0, Landroid/hardware/SystemSensorManager;->ctsvLastTimeStampAcc:J

    return-wide p0
.end method

.method static synthetic access$2122(J)J
    .locals 2
    .param p0, "x0"    # J

    .prologue
    .line 76
    sget-wide v0, Landroid/hardware/SystemSensorManager;->ctsvLastTimeStampAcc:J

    sub-long/2addr v0, p0

    sput-wide v0, Landroid/hardware/SystemSensorManager;->ctsvLastTimeStampAcc:J

    return-wide v0
.end method

.method static synthetic access$2200()Z
    .locals 1

    .prologue
    .line 76
    sget-boolean v0, Landroid/hardware/SystemSensorManager;->ctsvSensorDebounceAcc:Z

    return v0
.end method

.method static synthetic access$2202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 76
    sput-boolean p0, Landroid/hardware/SystemSensorManager;->ctsvSensorDebounceAcc:Z

    return p0
.end method

.method static synthetic access$2300()J
    .locals 2

    .prologue
    .line 76
    sget-wide v0, Landroid/hardware/SystemSensorManager;->ctsvNowSysTimestamp:J

    return-wide v0
.end method

.method static synthetic access$2302(J)J
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 76
    sput-wide p0, Landroid/hardware/SystemSensorManager;->ctsvNowSysTimestamp:J

    return-wide p0
.end method

.method static synthetic access$2400()J
    .locals 2

    .prologue
    .line 76
    sget-wide v0, Landroid/hardware/SystemSensorManager;->ctsvLastTimeStampGyro:J

    return-wide v0
.end method

.method static synthetic access$2402(J)J
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 76
    sput-wide p0, Landroid/hardware/SystemSensorManager;->ctsvLastTimeStampGyro:J

    return-wide p0
.end method

.method static synthetic access$2500()J
    .locals 2

    .prologue
    .line 76
    sget-wide v0, Landroid/hardware/SystemSensorManager;->ctsvLastSysTimestampGyro:J

    return-wide v0
.end method

.method static synthetic access$2502(J)J
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 76
    sput-wide p0, Landroid/hardware/SystemSensorManager;->ctsvLastSysTimestampGyro:J

    return-wide p0
.end method

.method static synthetic access$2600()Z
    .locals 1

    .prologue
    .line 76
    sget-boolean v0, Landroid/hardware/SystemSensorManager;->ctsvSensorDebounceGyro:Z

    return v0
.end method

.method static synthetic access$2602(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 76
    sput-boolean p0, Landroid/hardware/SystemSensorManager;->ctsvSensorDebounceGyro:Z

    return p0
.end method

.method static synthetic access$2700()J
    .locals 2

    .prologue
    .line 76
    sget-wide v0, Landroid/hardware/SystemSensorManager;->ctsvLastTimeStamp:J

    return-wide v0
.end method

.method static synthetic access$2702(J)J
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 76
    sput-wide p0, Landroid/hardware/SystemSensorManager;->ctsvLastTimeStamp:J

    return-wide p0
.end method

.method static synthetic access$2800()J
    .locals 2

    .prologue
    .line 76
    sget-wide v0, Landroid/hardware/SystemSensorManager;->ctsvLastSysTimestampOther:J

    return-wide v0
.end method

.method static synthetic access$2802(J)J
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 76
    sput-wide p0, Landroid/hardware/SystemSensorManager;->ctsvLastSysTimestampOther:J

    return-wide p0
.end method

.method static synthetic access$2900()Z
    .locals 1

    .prologue
    .line 76
    sget-boolean v0, Landroid/hardware/SystemSensorManager;->ctsvSensorDebounceOtherSensor:Z

    return v0
.end method

.method static synthetic access$2902(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 76
    sput-boolean p0, Landroid/hardware/SystemSensorManager;->ctsvSensorDebounceOtherSensor:Z

    return p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Landroid/hardware/SystemSensorManager;->ctsvPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3000()Z
    .locals 1

    .prologue
    .line 76
    sget-boolean v0, Landroid/hardware/SystemSensorManager;->debug:Z

    return v0
.end method

.method static synthetic access$3100()F
    .locals 1

    .prologue
    .line 76
    sget v0, Landroid/hardware/SystemSensorManager;->GESTURE_RIGHT:F

    return v0
.end method

.method static synthetic access$3200()F
    .locals 1

    .prologue
    .line 76
    sget v0, Landroid/hardware/SystemSensorManager;->GESTURE_LEFT:F

    return v0
.end method

.method static synthetic access$3300()F
    .locals 1

    .prologue
    .line 76
    sget v0, Landroid/hardware/SystemSensorManager;->GESTURE_TOP:F

    return v0
.end method

.method static synthetic access$3400()F
    .locals 1

    .prologue
    .line 76
    sget v0, Landroid/hardware/SystemSensorManager;->GESTURE_DOWN:F

    return v0
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 76
    sget v0, Landroid/hardware/SystemSensorManager;->ctsvSensorEnableCountAcc:I

    return v0
.end method

.method static synthetic access$408()I
    .locals 2

    .prologue
    .line 76
    sget v0, Landroid/hardware/SystemSensorManager;->ctsvSensorEnableCountAcc:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Landroid/hardware/SystemSensorManager;->ctsvSensorEnableCountAcc:I

    return v0
.end method

.method static synthetic access$410()I
    .locals 2

    .prologue
    .line 76
    sget v0, Landroid/hardware/SystemSensorManager;->ctsvSensorEnableCountAcc:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Landroid/hardware/SystemSensorManager;->ctsvSensorEnableCountAcc:I

    return v0
.end method

.method static synthetic access$500()J
    .locals 2

    .prologue
    .line 76
    sget-wide v0, Landroid/hardware/SystemSensorManager;->ctsvRateNsAcc:J

    return-wide v0
.end method

.method static synthetic access$502(J)J
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 76
    sput-wide p0, Landroid/hardware/SystemSensorManager;->ctsvRateNsAcc:J

    return-wide p0
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 76
    sget-boolean v0, Landroid/hardware/SystemSensorManager;->ctsvSensorEnableFlagAcc:Z

    return v0
.end method

.method static synthetic access$602(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 76
    sput-boolean p0, Landroid/hardware/SystemSensorManager;->ctsvSensorEnableFlagAcc:Z

    return p0
.end method

.method static synthetic access$700()Z
    .locals 1

    .prologue
    .line 76
    sget-boolean v0, Landroid/hardware/SystemSensorManager;->ctsvAccAdjustSkipFlag:Z

    return v0
.end method

.method static synthetic access$702(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 76
    sput-boolean p0, Landroid/hardware/SystemSensorManager;->ctsvAccAdjustSkipFlag:Z

    return p0
.end method

.method static synthetic access$800()I
    .locals 1

    .prologue
    .line 76
    sget v0, Landroid/hardware/SystemSensorManager;->ctsvSensorEnableCountMag:I

    return v0
.end method

.method static synthetic access$808()I
    .locals 2

    .prologue
    .line 76
    sget v0, Landroid/hardware/SystemSensorManager;->ctsvSensorEnableCountMag:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Landroid/hardware/SystemSensorManager;->ctsvSensorEnableCountMag:I

    return v0
.end method

.method static synthetic access$810()I
    .locals 2

    .prologue
    .line 76
    sget v0, Landroid/hardware/SystemSensorManager;->ctsvSensorEnableCountMag:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Landroid/hardware/SystemSensorManager;->ctsvSensorEnableCountMag:I

    return v0
.end method

.method static synthetic access$900()J
    .locals 2

    .prologue
    .line 76
    sget-wide v0, Landroid/hardware/SystemSensorManager;->ctsvRateNsMag:J

    return-wide v0
.end method

.method static synthetic access$902(J)J
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 76
    sput-wide p0, Landroid/hardware/SystemSensorManager;->ctsvRateNsMag:J

    return-wide p0
.end method

.method private static native jniReadKernelData(Ljava/lang/String;)Ljava/lang/String;
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation
.end method

.method private static native jniSetProxOffset(Ljava/lang/String;)Z
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation
.end method

.method private static native jniWriteKernelCommand(Ljava/lang/String;Ljava/lang/String;)Z
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation
.end method

.method private static native nativeClassInit()V
.end method

.method private static native nativeCreate(Ljava/lang/String;)J
.end method

.method private static native nativeGetSensorAtIndex(JLandroid/hardware/Sensor;I)Z
.end method

.method private static native nativeIsDataInjectionEnabled(J)Z
.end method

.method public static readFileByline(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "fileName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    .line 391
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 392
    .local v2, "file":Ljava/io/File;
    const/4 v3, 0x0

    .line 393
    .local v3, "reader":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 395
    .local v5, "tempString":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 398
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 405
    :goto_0
    if-eqz v4, :cond_2

    .line 407
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v3, v4

    .line 413
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :cond_0
    :goto_1
    return-object v5

    .line 399
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .line 400
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v6, "SensorManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "reader.readLine():"

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

    .line 402
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    move-object v3, v4

    .line 403
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :goto_2
    :try_start_4
    const-string v6, "SensorManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "the readFileByline is:"

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

    .line 405
    if-eqz v3, :cond_0

    .line 407
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 408
    :catch_2
    move-exception v1

    .line 409
    .local v1, "e1":Ljava/io/IOException;
    const-string v6, "SensorManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "the readFileByline is:"

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

    .line 408
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "e1":Ljava/io/IOException;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v1

    .line 409
    .restart local v1    # "e1":Ljava/io/IOException;
    const-string v6, "SensorManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "the readFileByline is:"

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

    .line 410
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_1

    .line 405
    .end local v1    # "e1":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v3, :cond_1

    .line 407
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 410
    :cond_1
    :goto_4
    throw v6

    .line 408
    :catch_4
    move-exception v1

    .line 409
    .restart local v1    # "e1":Ljava/io/IOException;
    const-string v7, "SensorManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "the readFileByline is:"

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

    .line 405
    .end local v1    # "e1":Ljava/io/IOException;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 402
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

.method public static readKernelData(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    .line 429
    invoke-static {p0}, Landroid/hardware/SystemSensorManager;->jniReadKernelData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private native sensors_set_prox_als_para_index(I)V
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation
.end method

.method private native sensors_set_prox_ps_para_index(I)V
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation
.end method

.method private native sensors_set_prox_pulse(I)V
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation
.end method

.method private native sensors_set_prox_threshold(I)V
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation
.end method

.method public static setProxOffset(Ljava/lang/String;)Z
    .locals 1
    .param p0, "val"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    .line 437
    invoke-static {p0}, Landroid/hardware/SystemSensorManager;->jniSetProxOffset(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static writeAlsPsPara()V
    .locals 14
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x4

    const/4 v9, 0x0

    .line 230
    const-string/jumbo v6, "ro.product.model.bbk"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 231
    .local v1, "mBbkProductModel":Ljava/lang/String;
    const-string/jumbo v6, "ro.hardware.bbk"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "mBbkHardware":Ljava/lang/String;
    sget-object v6, Landroid/hardware/SystemSensorManager;->BOARD_VERSION_PATH:Ljava/lang/String;

    invoke-static {v6}, Landroid/hardware/SystemSensorManager;->jniReadKernelData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 234
    .local v2, "mBoardVersion":Ljava/lang/String;
    const-string v6, "PD1227B"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 240
    const-string v6, "SensorManager"

    const-string/jumbo v7, "set PD1227B alsps index"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    sget-object v6, Landroid/hardware/SystemSensorManager;->TOUCHPANEL_ID_PATH:Ljava/lang/String;

    invoke-static {v6}, Landroid/hardware/SystemSensorManager;->jniReadKernelData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 242
    .local v3, "mTpId":Ljava/lang/String;
    if-eqz v3, :cond_4

    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 243
    const-string v6, "SensorManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "tp id=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 245
    const-string v6, "TRY-GFFW"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 246
    const-string v6, "/sys/bus/platform/drivers/als/als_para_index"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/hardware/SystemSensorManager;->jniWriteKernelCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 247
    const-string v6, "/sys/bus/platform/drivers/psgs/ps_para_index"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/hardware/SystemSensorManager;->jniWriteKernelCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 383
    .end local v3    # "mTpId":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 249
    .restart local v3    # "mTpId":Ljava/lang/String;
    :cond_1
    const-string v6, "BIE-GFFB"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 250
    const-string v6, "/sys/bus/platform/drivers/als/als_para_index"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/hardware/SystemSensorManager;->jniWriteKernelCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 251
    const-string v6, "/sys/bus/platform/drivers/psgs/ps_para_index"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/hardware/SystemSensorManager;->jniWriteKernelCommand(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 253
    :cond_2
    const-string v6, "BIE-GFFW"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 254
    const-string v6, "/sys/bus/platform/drivers/als/als_para_index"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/hardware/SystemSensorManager;->jniWriteKernelCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 255
    const-string v6, "/sys/bus/platform/drivers/psgs/ps_para_index"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/hardware/SystemSensorManager;->jniWriteKernelCommand(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 258
    :cond_3
    const-string v6, "/sys/bus/platform/drivers/als/als_para_index"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/hardware/SystemSensorManager;->jniWriteKernelCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 259
    const-string v6, "/sys/bus/platform/drivers/psgs/ps_para_index"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/hardware/SystemSensorManager;->jniWriteKernelCommand(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 263
    :cond_4
    const-string v6, "/sys/bus/platform/drivers/als/als_para_index"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/hardware/SystemSensorManager;->jniWriteKernelCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 264
    const-string v6, "/sys/bus/platform/drivers/psgs/ps_para_index"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/hardware/SystemSensorManager;->jniWriteKernelCommand(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 267
    .end local v3    # "mTpId":Ljava/lang/String;
    :cond_5
    const-string v6, "PD1225"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "PD1225D"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 295
    :cond_6
    const-string v6, "PD1225T"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 297
    sget-object v6, Landroid/hardware/SystemSensorManager;->PHONE_COLOR_PROPERTIE:Ljava/lang/String;

    sget v7, Landroid/hardware/SystemSensorManager;->PHONE_COLOR_DEFAULT:I

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 298
    .local v5, "phonecolor":I
    const-string v6, "SensorManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "phone color="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    sget v6, Landroid/hardware/SystemSensorManager;->PHONE_COLOR_WHITE:I

    if-ne v5, v6, :cond_7

    .line 300
    sget-object v6, Landroid/hardware/SystemSensorManager;->ALS_PARA_INDEX_PATH:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/hardware/SystemSensorManager;->jniWriteKernelCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 301
    sget-object v6, Landroid/hardware/SystemSensorManager;->PS_PARA_INDEX_PATH:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/hardware/SystemSensorManager;->jniWriteKernelCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 302
    sget-object v6, Landroid/hardware/SystemSensorManager;->PS_PULSE_VALUE_PATH:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/hardware/SystemSensorManager;->jniWriteKernelCommand(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 304
    :cond_7
    sget v6, Landroid/hardware/SystemSensorManager;->PHONE_COLOR_BLACK:I

    if-ne v5, v6, :cond_8

    .line 305
    sget-object v6, Landroid/hardware/SystemSensorManager;->ALS_PARA_INDEX_PATH:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/hardware/SystemSensorManager;->jniWriteKernelCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 306
    sget-object v6, Landroid/hardware/SystemSensorManager;->PS_PARA_INDEX_PATH:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/hardware/SystemSensorManager;->jniWriteKernelCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 307
    sget-object v6, Landroid/hardware/SystemSensorManager;->PS_PULSE_VALUE_PATH:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/hardware/SystemSensorManager;->jniWriteKernelCommand(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 311
    :cond_8
    sget-object v6, Landroid/hardware/SystemSensorManager;->ALS_PARA_INDEX_PATH:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/hardware/SystemSensorManager;->jniWriteKernelCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 312
    sget-object v6, Landroid/hardware/SystemSensorManager;->PS_PARA_INDEX_PATH:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/hardware/SystemSensorManager;->jniWriteKernelCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 313
    sget-object v6, Landroid/hardware/SystemSensorManager;->PS_PULSE_VALUE_PATH:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/hardware/SystemSensorManager;->jniWriteKernelCommand(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 317
    .end local v5    # "phonecolor":I
    :cond_9
    sget-object v6, Landroid/hardware/SystemSensorManager;->PHONE_COLOR_PROPERTIE:Ljava/lang/String;

    sget v7, Landroid/hardware/SystemSensorManager;->PHONE_COLOR_DEFAULT:I

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 318
    .restart local v5    # "phonecolor":I
    const-string v6, "SensorManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "phone color="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    sget v6, Landroid/hardware/SystemSensorManager;->PHONE_COLOR_WHITE:I

    if-ne v5, v6, :cond_c

    .line 320
    sget-object v6, Landroid/hardware/SystemSensorManager;->PD1225_HARDWARE_VER_E:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 321
    sget-object v6, Landroid/hardware/SystemSensorManager;->ALS_PARA_INDEX_PATH:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/hardware/SystemSensorManager;->jniWriteKernelCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 322
    sget-object v6, Landroid/hardware/SystemSensorManager;->PS_PARA_INDEX_PATH:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/hardware/SystemSensorManager;->jniWriteKernelCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 323
    sget-object v6, Landroid/hardware/SystemSensorManager;->PS_PULSE_VALUE_PATH:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/hardware/SystemSensorManager;->jniWriteKernelCommand(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 326
    :cond_a
    sget-object v6, Landroid/hardware/SystemSensorManager;->NEED_CHANGE_PROXIMITY_PULSE:Ljava/lang/String;

    invoke-static {v6, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 327
    .local v4, "needChangePulse":I
    if-ne v4, v11, :cond_b

    .line 328
    sget-object v6, Landroid/hardware/SystemSensorManager;->ALS_PARA_INDEX_PATH:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/hardware/SystemSensorManager;->jniWriteKernelCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 329
    sget-object v6, Landroid/hardware/SystemSensorManager;->PS_PARA_INDEX_PATH:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/hardware/SystemSensorManager;->jniWriteKernelCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 330
    sget-object v6, Landroid/hardware/SystemSensorManager;->PS_PULSE_VALUE_PATH:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/hardware/SystemSensorManager;->jniWriteKernelCommand(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 333
    :cond_b
    sget-object v6, Landroid/hardware/SystemSensorManager;->ALS_PARA_INDEX_PATH:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/hardware/SystemSensorManager;->jniWriteKernelCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 334
    sget-object v6, Landroid/hardware/SystemSensorManager;->PS_PARA_INDEX_PATH:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/hardware/SystemSensorManager;->jniWriteKernelCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 335
    sget-object v6, Landroid/hardware/SystemSensorManager;->PS_PULSE_VALUE_PATH:Ljava/lang/String;

    const/16 v7, 0x8

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/hardware/SystemSensorManager;->jniWriteKernelCommand(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 339
    .end local v4    # "needChangePulse":I
    :cond_c
    sget v6, Landroid/hardware/SystemSensorManager;->PHONE_COLOR_BLACK:I

    if-ne v5, v6, :cond_e

    .line 340
    sget-object v6, Landroid/hardware/SystemSensorManager;->PD1225_HARDWARE_VER_E:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 341
    sget-object v6, Landroid/hardware/SystemSensorManager;->ALS_PARA_INDEX_PATH:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/hardware/SystemSensorManager;->jniWriteKernelCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 342
    sget-object v6, Landroid/hardware/SystemSensorManager;->PS_PARA_INDEX_PATH:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/hardware/SystemSensorManager;->jniWriteKernelCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 343
    sget-object v6, Landroid/hardware/SystemSensorManager;->PS_PULSE_VALUE_PATH:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/hardware/SystemSensorManager;->jniWriteKernelCommand(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 346
    :cond_d
    sget-object v6, Landroid/hardware/SystemSensorManager;->ALS_PARA_INDEX_PATH:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/hardware/SystemSensorManager;->jniWriteKernelCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 347
    sget-object v6, Landroid/hardware/SystemSensorManager;->PS_PARA_INDEX_PATH:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/hardware/SystemSensorManager;->jniWriteKernelCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 348
    sget-object v6, Landroid/hardware/SystemSensorManager;->PS_PULSE_VALUE_PATH:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/hardware/SystemSensorManager;->jniWriteKernelCommand(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 353
    :cond_e
    const-string v6, "SensorManager"

    const-string/jumbo v7, "set white and HARDWARE_VER_E as default"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    sget-object v6, Landroid/hardware/SystemSensorManager;->ALS_PARA_INDEX_PATH:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/hardware/SystemSensorManager;->jniWriteKernelCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 355
    sget-object v6, Landroid/hardware/SystemSensorManager;->PS_PARA_INDEX_PATH:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/hardware/SystemSensorManager;->jniWriteKernelCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 356
    sget-object v6, Landroid/hardware/SystemSensorManager;->PS_PULSE_VALUE_PATH:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/hardware/SystemSensorManager;->jniWriteKernelCommand(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 360
    .end local v5    # "phonecolor":I
    :cond_f
    const-string/jumbo v6, "pd1225T"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_10

    const-string/jumbo v6, "pd1225TG3"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 362
    :cond_10
    sget-object v6, Landroid/hardware/SystemSensorManager;->PHONE_COLOR_PROPERTIE:Ljava/lang/String;

    sget v7, Landroid/hardware/SystemSensorManager;->PHONE_COLOR_DEFAULT:I

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 363
    .restart local v5    # "phonecolor":I
    const-string v6, "SensorManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "phone color="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    sget v6, Landroid/hardware/SystemSensorManager;->PHONE_COLOR_WHITE:I

    if-ne v5, v6, :cond_11

    .line 365
    sget-object v6, Landroid/hardware/SystemSensorManager;->ALS_PARA_INDEX_PATH:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/hardware/SystemSensorManager;->jniWriteKernelCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 366
    sget-object v6, Landroid/hardware/SystemSensorManager;->PS_PARA_INDEX_PATH:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/hardware/SystemSensorManager;->jniWriteKernelCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 367
    sget-object v6, Landroid/hardware/SystemSensorManager;->PS_PULSE_VALUE_PATH:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/hardware/SystemSensorManager;->jniWriteKernelCommand(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 369
    :cond_11
    sget v6, Landroid/hardware/SystemSensorManager;->PHONE_COLOR_BLACK:I

    if-ne v5, v6, :cond_12

    .line 370
    sget-object v6, Landroid/hardware/SystemSensorManager;->ALS_PARA_INDEX_PATH:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/hardware/SystemSensorManager;->jniWriteKernelCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 371
    sget-object v6, Landroid/hardware/SystemSensorManager;->PS_PARA_INDEX_PATH:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/hardware/SystemSensorManager;->jniWriteKernelCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 372
    sget-object v6, Landroid/hardware/SystemSensorManager;->PS_PULSE_VALUE_PATH:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/hardware/SystemSensorManager;->jniWriteKernelCommand(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 376
    :cond_12
    sget-object v6, Landroid/hardware/SystemSensorManager;->ALS_PARA_INDEX_PATH:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/hardware/SystemSensorManager;->jniWriteKernelCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 377
    sget-object v6, Landroid/hardware/SystemSensorManager;->PS_PARA_INDEX_PATH:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/hardware/SystemSensorManager;->jniWriteKernelCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 378
    sget-object v6, Landroid/hardware/SystemSensorManager;->PS_PULSE_VALUE_PATH:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/hardware/SystemSensorManager;->jniWriteKernelCommand(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0
.end method

.method private static writeCommnad(Ljava/lang/String;)I
    .locals 6
    .param p0, "strCmd"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 214
    const/4 v2, 0x3

    new-array v0, v2, [Ljava/lang/String;

    const-string/jumbo v2, "sh"

    aput-object v2, v0, v5

    const/4 v2, 0x1

    const-string v3, "-c"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    aput-object p0, v0, v2

    .line 216
    .local v0, "cmd":[Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :goto_0
    return v5

    .line 218
    :catch_0
    move-exception v1

    .line 219
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static writeKernelCommnad(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "val"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    .line 421
    invoke-static {p0, p1}, Landroid/hardware/SystemSensorManager;->jniWriteKernelCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected cancelTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;Z)Z
    .locals 4
    .param p1, "listener"    # Landroid/hardware/TriggerEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;
    .param p3, "disable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 693
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getReportingMode()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 711
    :goto_0
    return v1

    .line 696
    :cond_0
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    monitor-enter v3

    .line 697
    :try_start_0
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;

    .line 698
    .local v0, "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    if-eqz v0, :cond_3

    .line 700
    if-nez p2, :cond_2

    .line 701
    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->removeAllSensors()Z

    move-result v1

    .line 705
    .local v1, "result":Z
    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->hasSensors()Z

    move-result v2

    if-nez v2, :cond_1

    .line 706
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->dispose()V

    .line 709
    :cond_1
    monitor-exit v3

    goto :goto_0

    .line 712
    .end local v0    # "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    .end local v1    # "result":Z
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 703
    .restart local v0    # "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    :cond_2
    :try_start_1
    invoke-virtual {v0, p2, p3}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->removeSensor(Landroid/hardware/Sensor;Z)Z

    move-result v1

    .restart local v1    # "result":Z
    goto :goto_1

    .line 711
    .end local v1    # "result":Z
    :cond_3
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected flushImpl(Landroid/hardware/SensorEventListener;)Z
    .locals 4
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;

    .prologue
    const/4 v1, 0x0

    .line 716
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "listener cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 718
    :cond_0
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    monitor-enter v2

    .line 719
    :try_start_0
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SystemSensorManager$SensorEventQueue;

    .line 720
    .local v0, "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    if-nez v0, :cond_1

    .line 721
    monitor-exit v2

    .line 723
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->flush()I

    move-result v3

    if-nez v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    monitor-exit v2

    goto :goto_0

    .line 725
    .end local v0    # "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    .line 526
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getFullSensorList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 518
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mFullSensorsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected initDataInjectionImpl(Z)Z
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    .line 729
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 730
    if-eqz p1, :cond_2

    .line 731
    :try_start_0
    iget-wide v4, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    invoke-static {v4, v5}, Landroid/hardware/SystemSensorManager;->nativeIsDataInjectionEnabled(J)Z

    move-result v0

    .line 733
    .local v0, "isDataInjectionModeEnabled":Z
    if-nez v0, :cond_0

    .line 734
    const-string v1, "SensorManager"

    const-string v3, "Data Injection mode not enabled"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    const/4 v1, 0x0

    monitor-exit v2

    .line 749
    .end local v0    # "isDataInjectionModeEnabled":Z
    :goto_0
    return v1

    .line 738
    .restart local v0    # "isDataInjectionModeEnabled":Z
    :cond_0
    sget-object v1, Landroid/hardware/SystemSensorManager;->mInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    if-nez v1, :cond_1

    .line 739
    new-instance v1, Landroid/hardware/SystemSensorManager$InjectEventQueue;

    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mMainLooper:Landroid/os/Looper;

    iget-object v4, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v3, p0, v4}, Landroid/hardware/SystemSensorManager$InjectEventQueue;-><init>(Landroid/hardware/SystemSensorManager;Landroid/os/Looper;Landroid/hardware/SystemSensorManager;Ljava/lang/String;)V

    sput-object v1, Landroid/hardware/SystemSensorManager;->mInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    .line 749
    .end local v0    # "isDataInjectionModeEnabled":Z
    :cond_1
    :goto_1
    const/4 v1, 0x1

    monitor-exit v2

    goto :goto_0

    .line 750
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 744
    :cond_2
    :try_start_1
    sget-object v1, Landroid/hardware/SystemSensorManager;->mInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    if-eqz v1, :cond_1

    .line 745
    sget-object v1, Landroid/hardware/SystemSensorManager;->mInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    invoke-virtual {v1}, Landroid/hardware/SystemSensorManager$InjectEventQueue;->dispose()V

    .line 746
    const/4 v1, 0x0

    sput-object v1, Landroid/hardware/SystemSensorManager;->mInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method protected injectSensorDataImpl(Landroid/hardware/Sensor;[FIJ)Z
    .locals 10
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "values"    # [F
    .param p3, "accuracy"    # I
    .param p4, "timestamp"    # J

    .prologue
    const/4 v7, 0x0

    .line 755
    iget-object v8, p0, Landroid/hardware/SystemSensorManager;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 756
    :try_start_0
    sget-object v0, Landroid/hardware/SystemSensorManager;->mInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    if-nez v0, :cond_0

    .line 757
    const-string v0, "SensorManager"

    const-string v1, "Data injection mode not activated before calling injectSensorData"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    monitor-exit v8

    move v0, v7

    .line 767
    :goto_0
    return v0

    .line 760
    :cond_0
    sget-object v0, Landroid/hardware/SystemSensorManager;->mInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/SystemSensorManager$InjectEventQueue;->injectSensorData(I[FIJ)I

    move-result v6

    .line 763
    .local v6, "ret":I
    if-eqz v6, :cond_1

    .line 764
    sget-object v0, Landroid/hardware/SystemSensorManager;->mInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$InjectEventQueue;->dispose()V

    .line 765
    const/4 v0, 0x0

    sput-object v0, Landroid/hardware/SystemSensorManager;->mInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    .line 767
    :cond_1
    if-nez v6, :cond_2

    const/4 v0, 0x1

    :goto_1
    monitor-exit v8

    goto :goto_0

    .line 768
    .end local v6    # "ret":I
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .restart local v6    # "ret":I
    :cond_2
    move v0, v7

    .line 767
    goto :goto_1
.end method

.method protected registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z
    .locals 12
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;
    .param p3, "delayUs"    # I
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "maxBatchReportLatencyUs"    # I
    .param p6, "reservedFlags"    # I
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->CHANGE_CODE:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    .line 534
    const/16 v8, 0x17d

    invoke-static {v8, p2, p3}, Landroid/util/SeempLog;->record_sensor_rate(ILandroid/hardware/Sensor;I)I

    .line 535
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 536
    :cond_0
    const-string v8, "SensorManager"

    const-string/jumbo v9, "sensor or listener is null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    const/4 v8, 0x0

    .line 630
    :goto_0
    return v8

    .line 541
    :cond_1
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getType()I

    move-result v7

    .line 544
    .local v7, "type":I
    const/16 v8, 0x8

    if-ne v7, v8, :cond_3

    sget-object v8, Landroid/hardware/SystemSensorManager;->packageName:Ljava/lang/String;

    if-nez v8, :cond_3

    .line 546
    :try_start_0
    iget-object v8, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    sput-object v8, Landroid/hardware/SystemSensorManager;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 561
    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getReportingMode()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_5

    .line 562
    const-string v8, "SensorManager"

    const-string v9, "Trigger Sensors should use the requestTriggerSensor."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    const/4 v8, 0x0

    goto :goto_0

    .line 548
    :catch_0
    move-exception v1

    .line 549
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 551
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    const/16 v8, 0x13

    if-ne v7, v8, :cond_4

    const/4 v8, 0x5

    if-eq v7, v8, :cond_2

    :cond_4
    sget-object v8, Landroid/hardware/SystemSensorManager;->ctsvPackageName:Ljava/lang/String;

    if-nez v8, :cond_2

    .line 553
    :try_start_1
    iget-object v8, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    sput-object v8, Landroid/hardware/SystemSensorManager;->ctsvPackageName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 555
    :catch_1
    move-exception v1

    .line 556
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 565
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    if-ltz p5, :cond_6

    if-gez p3, :cond_7

    .line 566
    :cond_6
    const-string v8, "SensorManager"

    const-string/jumbo v9, "maxBatchReportLatencyUs and delayUs should be non-negative"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    const/4 v8, 0x0

    goto :goto_0

    .line 574
    :cond_7
    iget-object v9, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    monitor-enter v9

    .line 575
    :try_start_2
    iget-object v8, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/SystemSensorManager$SensorEventQueue;

    .line 576
    .local v5, "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    if-nez v5, :cond_11

    .line 581
    const/16 v8, 0x8

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getType()I

    move-result v10

    if-eq v8, v10, :cond_8

    const/16 v8, 0x20

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getType()I

    move-result v10

    if-ne v8, v10, :cond_a

    .line 582
    :cond_8
    const-string v8, "SensorManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DDDD register type="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getType()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    const-string/jumbo v8, "ro.product.model.bbk"

    const-string/jumbo v10, "other"

    invoke-static {v8, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 586
    .local v4, "mModel":Ljava/lang/String;
    const-string v6, ""

    .line 587
    .local v6, "strDebug":Ljava/lang/String;
    const-string v8, "TD1305"

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_9

    const-string v8, "PD1401L"

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 590
    :cond_9
    const-string v8, "/sys/bus/platform/drivers/psgs/debug"

    invoke-static {v8}, Landroid/hardware/SystemSensorManager;->jniReadKernelData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 595
    :goto_2
    if-eqz v6, :cond_d

    const-string v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    .line 596
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 597
    const-string v8, "1"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 598
    const/4 v8, 0x1

    sput-boolean v8, Landroid/hardware/SystemSensorManager;->debug:Z

    .line 599
    const-string v8, "SensorManager"

    const-string/jumbo v10, "set debug=ture"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    :goto_3
    invoke-static {}, Landroid/hardware/SystemSensorManager;->ProximitySensorSetThreshold()V

    .line 615
    .end local v4    # "mModel":Ljava/lang/String;
    .end local v6    # "strDebug":Ljava/lang/String;
    :cond_a
    if-eqz p4, :cond_e

    invoke-virtual/range {p4 .. p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    .line 616
    .local v3, "looper":Landroid/os/Looper;
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v8

    if-eqz v8, :cond_f

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 619
    .local v2, "fullClassName":Ljava/lang/String;
    :goto_5
    new-instance v5, Landroid/hardware/SystemSensorManager$SensorEventQueue;

    .end local v5    # "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    invoke-direct {v5, p1, v3, p0, v2}, Landroid/hardware/SystemSensorManager$SensorEventQueue;-><init>(Landroid/hardware/SensorEventListener;Landroid/os/Looper;Landroid/hardware/SystemSensorManager;Ljava/lang/String;)V

    .line 620
    .restart local v5    # "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    iget-object v8, p0, Landroid/hardware/SystemSensorManager;->mWm:Landroid/view/WindowManager;

    invoke-virtual {v5, v8}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->getWm(Landroid/view/WindowManager;)V

    .line 621
    iget-object v8, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v8}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->getContext(Landroid/content/Context;)Landroid/content/Context;

    .line 622
    move/from16 v0, p5

    invoke-virtual {v5, p2, p3, v0}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->addSensor(Landroid/hardware/Sensor;II)Z

    move-result v8

    if-nez v8, :cond_10

    .line 623
    invoke-virtual {v5}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->dispose()V

    .line 624
    const/4 v8, 0x0

    monitor-exit v9

    goto/16 :goto_0

    .line 632
    .end local v2    # "fullClassName":Ljava/lang/String;
    .end local v3    # "looper":Landroid/os/Looper;
    .end local v5    # "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    .line 593
    .restart local v4    # "mModel":Ljava/lang/String;
    .restart local v5    # "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    .restart local v6    # "strDebug":Ljava/lang/String;
    :cond_b
    :try_start_3
    const-string v8, "/sys/bus/platform/drivers/als_ps/debug"

    invoke-static {v8}, Landroid/hardware/SystemSensorManager;->jniReadKernelData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 602
    :cond_c
    const/4 v8, 0x0

    sput-boolean v8, Landroid/hardware/SystemSensorManager;->debug:Z

    .line 603
    const-string v8, "SensorManager"

    const-string/jumbo v10, "set debug=false"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 607
    :cond_d
    const-string v8, "SensorManager"

    const-string v10, "get debug fail"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 615
    .end local v4    # "mModel":Ljava/lang/String;
    .end local v6    # "strDebug":Ljava/lang/String;
    :cond_e
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mMainLooper:Landroid/os/Looper;

    goto :goto_4

    .line 616
    .restart local v3    # "looper":Landroid/os/Looper;
    :cond_f
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 626
    .restart local v2    # "fullClassName":Ljava/lang/String;
    :cond_10
    iget-object v8, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v8, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    const/4 v8, 0x1

    monitor-exit v9

    goto/16 :goto_0

    .line 629
    .end local v2    # "fullClassName":Ljava/lang/String;
    .end local v3    # "looper":Landroid/os/Looper;
    :cond_11
    iget-object v8, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v8}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->getContext(Landroid/content/Context;)Landroid/content/Context;

    .line 630
    move/from16 v0, p5

    invoke-virtual {v5, p2, p3, v0}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->addSensor(Landroid/hardware/Sensor;II)Z

    move-result v8

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method protected requestTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z
    .locals 6
    .param p1, "listener"    # Landroid/hardware/TriggerEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;

    .prologue
    const/4 v2, 0x0

    .line 664
    if-nez p2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "sensor cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 666
    :cond_0
    if-nez p1, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "listener cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 668
    :cond_1
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getReportingMode()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    .line 684
    :goto_0
    return v2

    .line 670
    :cond_2
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    monitor-enter v3

    .line 671
    :try_start_0
    iget-object v4, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SystemSensorManager$TriggerEventQueue;

    .line 672
    .local v1, "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    if-nez v1, :cond_5

    .line 673
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 676
    .local v0, "fullClassName":Ljava/lang/String;
    :goto_1
    new-instance v1, Landroid/hardware/SystemSensorManager$TriggerEventQueue;

    .end local v1    # "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    iget-object v4, p0, Landroid/hardware/SystemSensorManager;->mMainLooper:Landroid/os/Looper;

    invoke-direct {v1, p1, v4, p0, v0}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;-><init>(Landroid/hardware/TriggerEventListener;Landroid/os/Looper;Landroid/hardware/SystemSensorManager;Ljava/lang/String;)V

    .line 677
    .restart local v1    # "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, p2, v4, v5}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->addSensor(Landroid/hardware/Sensor;II)Z

    move-result v4

    if-nez v4, :cond_4

    .line 678
    invoke-virtual {v1}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->dispose()V

    .line 679
    monitor-exit v3

    goto :goto_0

    .line 686
    .end local v0    # "fullClassName":Ljava/lang/String;
    .end local v1    # "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 673
    .restart local v1    # "queue":Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    :cond_3
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 681
    .restart local v0    # "fullClassName":Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    const/4 v2, 0x1

    monitor-exit v3

    goto :goto_0

    .line 684
    .end local v0    # "fullClassName":Ljava/lang/String;
    :cond_5
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, p2, v2, v4}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->addSensor(Landroid/hardware/Sensor;II)Z

    move-result v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;

    .prologue
    .line 638
    const/16 v2, 0x17e

    invoke-static {v2, p2}, Landroid/util/SeempLog;->record_sensor(ILandroid/hardware/Sensor;)I

    .line 640
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getReportingMode()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 659
    :goto_0
    return-void

    .line 644
    :cond_0
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    monitor-enter v3

    .line 645
    :try_start_0
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SystemSensorManager$SensorEventQueue;

    .line 646
    .local v0, "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    if-eqz v0, :cond_1

    .line 648
    if-nez p2, :cond_2

    .line 649
    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->removeAllSensors()Z

    move-result v1

    .line 653
    .local v1, "result":Z
    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->hasSensors()Z

    move-result v2

    if-nez v2, :cond_1

    .line 654
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->dispose()V

    .line 658
    .end local v1    # "result":Z
    :cond_1
    monitor-exit v3

    goto :goto_0

    .end local v0    # "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 651
    .restart local v0    # "queue":Landroid/hardware/SystemSensorManager$SensorEventQueue;
    :cond_2
    const/4 v2, 0x1

    :try_start_1
    invoke-virtual {v0, p2, v2}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->removeSensor(Landroid/hardware/Sensor;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .restart local v1    # "result":Z
    goto :goto_1
.end method
