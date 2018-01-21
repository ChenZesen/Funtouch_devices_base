.class public final Lcom/vivo/services/motion/DirectCallingService;
.super Ljava/lang/Object;
.source "DirectCallingService.java"

# interfaces
.implements Lcom/vivo/services/motion/IMotionRecognitionService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/services/motion/DirectCallingService$1;,
        Lcom/vivo/services/motion/DirectCallingService$DirectCallingServiceHandler;,
        Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;,
        Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;,
        Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;,
        Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;
    }
.end annotation


# static fields
.field private static final INIT_STATE_DATA_THRESHOLD:I = 0xa

.field private static final KEY_MAX_CREST_CNT:Ljava/lang/String; = "MaxCrestCnt"

.field private static final KEY_MAX_MOTION_IDX:Ljava/lang/String; = "MaxMotionIdx"

.field private static final KEY_MOTION_MAX:Ljava/lang/String; = "MontionMax"

.field private static final KEY_MOTION_MIN:Ljava/lang/String; = "MontionMin"

.field private static final KEY_WIN_RESAMPLE:Ljava/lang/String; = "WinReSample"

.field private static final MAG_VIBRATOR_STATIC_THRESHOLD:I = 0x3

.field private static final MOTION_DET_SAMPLE_TOTAL:I = 0x40

.field private static final MOTION_DET_STATE_ANALIST:I = 0x2

.field private static final MOTION_DET_STATE_GETDATA:I = 0x1

.field private static final MOTION_DET_STATE_IDLE:I = 0x0

.field private static final MOTION_DET_STATE_RECOVER:I = 0x3

.field private static final MSG_CONVER_STATE_TO_ANALIST:I = 0x2

.field private static final MSG_CONVER_STATE_TO_GETDATA:I = 0x1

.field private static final MSG_CONVER_STATE_TO_IDLE:I = 0x0

.field private static final MSG_CONVER_STATE_TO_RECOVER:I = 0x3

.field private static final MSG_GYRO_RATE_SWITCH_TO_HIGH:I = 0x14

.field private static final MSG_GYRO_RATE_SWITCH_TO_LOW:I = 0xa

.field private static final MSG_GYRO_STOP:I = 0xf

.field private static final MSG_PICK_UP_ACTION_TRIGER:I = 0x4

.field private static final TAG:Ljava/lang/String; = "DirectCallingService"

.field private static final TYPICAL_PROXIMITY_THRESHOLD:F = 5.0f

.field private static last_mag_data:[F = null

.field private static final mConfigFile:Ljava/lang/String; = "/etc/motion_recognition.conf"

.field private static final mDataLock:Ljava/lang/Object;

.field private static final mHandleLock:Ljava/lang/Object;

.field private static mProxyCloseThreshold:I

.field private static singleDirectCallingService:Lcom/vivo/services/motion/DirectCallingService;


# instance fields
.field private GproScopeListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

.field private MAX_CREST_CNT:I

.field private MAX_CREST_CNT_1222:I

.field private MAX_MOTION_IDX:I

.field private MAX_MOTION_IDX_1222:I

.field private MOTION_AKM_MAX:F

.field private MOTION_MAX:F

.field private MOTION_MAX_AKM:F

.field private MOTION_MIN:F

.field private MOTION_MIN_1222:F

.field private MOTION_MIN_X_1222:F

.field private MOTION_MIN_Y_1222:F

.field private MagneticListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

.field private MotionAccDevParaX:Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;

.field private MotionAccDevParaY:Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;

.field private MotionAccDevParaZ:Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;

.field private MotionAngDevParaX:Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;

.field private MotionAngDevParaY:Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;

.field private MotionAngDevParaZ:Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;

.field private MotionDetSensorManager:Landroid/hardware/SensorManager;

.field private MotionDetState:I

.field private ProximitState:I

.field private ProximityListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

.field private RotationVectorListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

.field private VibratorState:I

.field private VibratorStateCount:I

.field private VibratorStaticCount:I

.field private WIN_RESAMPLE:F

.field private acceleromererListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

.field callVibrateSetting:I

.field private data_abandon:I

.field degreeSumCall:[F

.field private first_flag:Z

.field private gyroCount:I

.field private gyroHighFlag:Z

.field private gyro_data_buf:[[F

.field private isDirectCallingServiceWorking:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCallBackHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mDataOperate:Z

.field private mEnabled:Z

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mServiceHandler:Landroid/os/Handler;

.field private mag_ab:I

.field private mag_vibrator_counter:I

.field private mag_vibrator_state:Z

.field private pick_hand:I

.field private pick_up_cnt_motion:I

.field private pick_up_cnt_threshhold:I

.field private pick_up_count:J

.field private pick_up_time:J

.field private prox_away_time:J

.field private prox_close_acc_x:F

.field private prox_close_acc_y:F

.field private prox_close_acc_z:F

.field ringLevel:I

.field private time_buf:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/vivo/services/motion/DirectCallingService;

    invoke-direct {v0}, Lcom/vivo/services/motion/DirectCallingService;-><init>()V

    sput-object v0, Lcom/vivo/services/motion/DirectCallingService;->singleDirectCallingService:Lcom/vivo/services/motion/DirectCallingService;

    .line 59
    const/16 v0, 0xe6

    sput v0, Lcom/vivo/services/motion/DirectCallingService;->mProxyCloseThreshold:I

    .line 102
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/vivo/services/motion/DirectCallingService;->mDataLock:Ljava/lang/Object;

    .line 103
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/vivo/services/motion/DirectCallingService;->mHandleLock:Ljava/lang/Object;

    .line 120
    const/4 v0, 0x3

    new-array v0, v0, [F

    sput-object v0, Lcom/vivo/services/motion/DirectCallingService;->last_mag_data:[F

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 2111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-boolean v2, p0, Lcom/vivo/services/motion/DirectCallingService;->isDirectCallingServiceWorking:Z

    .line 28
    iput-object v3, p0, Lcom/vivo/services/motion/DirectCallingService;->mCallBackHandler:Landroid/os/Handler;

    .line 29
    iput-object v3, p0, Lcom/vivo/services/motion/DirectCallingService;->mServiceHandler:Landroid/os/Handler;

    .line 30
    iput-object v3, p0, Lcom/vivo/services/motion/DirectCallingService;->mAudioManager:Landroid/media/AudioManager;

    .line 31
    iput v2, p0, Lcom/vivo/services/motion/DirectCallingService;->callVibrateSetting:I

    .line 32
    iput v1, p0, Lcom/vivo/services/motion/DirectCallingService;->ringLevel:I

    .line 56
    iput v2, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionDetState:I

    .line 57
    iput-boolean v2, p0, Lcom/vivo/services/motion/DirectCallingService;->mEnabled:Z

    .line 58
    iput-object v3, p0, Lcom/vivo/services/motion/DirectCallingService;->mContext:Landroid/content/Context;

    .line 69
    const/16 v0, 0xf

    iput v0, p0, Lcom/vivo/services/motion/DirectCallingService;->MAX_CREST_CNT:I

    .line 70
    const/16 v0, 0x19

    iput v0, p0, Lcom/vivo/services/motion/DirectCallingService;->MAX_CREST_CNT_1222:I

    .line 73
    const/4 v0, 0x5

    iput v0, p0, Lcom/vivo/services/motion/DirectCallingService;->MAX_MOTION_IDX:I

    .line 74
    iput v5, p0, Lcom/vivo/services/motion/DirectCallingService;->MAX_MOTION_IDX_1222:I

    .line 77
    const v0, 0x3f99999a    # 1.2f

    iput v0, p0, Lcom/vivo/services/motion/DirectCallingService;->MOTION_MIN:F

    .line 78
    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Lcom/vivo/services/motion/DirectCallingService;->MOTION_MIN_1222:F

    .line 79
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/vivo/services/motion/DirectCallingService;->MOTION_MIN_X_1222:F

    .line 80
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/vivo/services/motion/DirectCallingService;->MOTION_MIN_Y_1222:F

    .line 83
    const/high16 v0, 0x41c80000    # 25.0f

    iput v0, p0, Lcom/vivo/services/motion/DirectCallingService;->MOTION_MAX:F

    .line 84
    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Lcom/vivo/services/motion/DirectCallingService;->MOTION_MAX_AKM:F

    .line 87
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/vivo/services/motion/DirectCallingService;->WIN_RESAMPLE:F

    .line 89
    iput v4, p0, Lcom/vivo/services/motion/DirectCallingService;->prox_close_acc_x:F

    .line 90
    iput v4, p0, Lcom/vivo/services/motion/DirectCallingService;->prox_close_acc_y:F

    .line 91
    iput v4, p0, Lcom/vivo/services/motion/DirectCallingService;->prox_close_acc_z:F

    .line 93
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/vivo/services/motion/DirectCallingService;->MOTION_AKM_MAX:F

    .line 95
    iput v2, p0, Lcom/vivo/services/motion/DirectCallingService;->VibratorState:I

    .line 96
    iput v2, p0, Lcom/vivo/services/motion/DirectCallingService;->VibratorStateCount:I

    .line 97
    iput v2, p0, Lcom/vivo/services/motion/DirectCallingService;->VibratorStaticCount:I

    .line 98
    iput v1, p0, Lcom/vivo/services/motion/DirectCallingService;->ProximitState:I

    .line 99
    iput v1, p0, Lcom/vivo/services/motion/DirectCallingService;->pick_up_cnt_threshhold:I

    .line 100
    iput v1, p0, Lcom/vivo/services/motion/DirectCallingService;->pick_up_cnt_motion:I

    .line 101
    new-array v0, v5, [F

    iput-object v0, p0, Lcom/vivo/services/motion/DirectCallingService;->degreeSumCall:[F

    .line 104
    iput-boolean v2, p0, Lcom/vivo/services/motion/DirectCallingService;->mDataOperate:Z

    .line 106
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vivo/services/motion/DirectCallingService;->pick_up_count:J

    .line 107
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vivo/services/motion/DirectCallingService;->pick_up_time:J

    .line 108
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vivo/services/motion/DirectCallingService;->prox_away_time:J

    .line 110
    const/16 v0, 0x64

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/vivo/services/motion/DirectCallingService;->time_buf:[J

    .line 111
    const/16 v0, 0x64

    filled-new-array {v0, v5}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/vivo/services/motion/DirectCallingService;->gyro_data_buf:[[F

    .line 113
    iput v2, p0, Lcom/vivo/services/motion/DirectCallingService;->gyroCount:I

    .line 114
    iput-boolean v2, p0, Lcom/vivo/services/motion/DirectCallingService;->gyroHighFlag:Z

    .line 116
    iput v2, p0, Lcom/vivo/services/motion/DirectCallingService;->pick_hand:I

    .line 117
    iput v2, p0, Lcom/vivo/services/motion/DirectCallingService;->data_abandon:I

    .line 118
    iput-boolean v2, p0, Lcom/vivo/services/motion/DirectCallingService;->first_flag:Z

    .line 121
    iput-boolean v2, p0, Lcom/vivo/services/motion/DirectCallingService;->mag_vibrator_state:Z

    .line 122
    iput v2, p0, Lcom/vivo/services/motion/DirectCallingService;->mag_vibrator_counter:I

    .line 123
    iput v2, p0, Lcom/vivo/services/motion/DirectCallingService;->mag_ab:I

    .line 1824
    new-instance v0, Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;

    invoke-direct {v0, p0, v3}, Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;-><init>(Lcom/vivo/services/motion/DirectCallingService;Lcom/vivo/services/motion/DirectCallingService$1;)V

    iput-object v0, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionAngDevParaX:Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;

    .line 1825
    new-instance v0, Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;

    invoke-direct {v0, p0, v3}, Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;-><init>(Lcom/vivo/services/motion/DirectCallingService;Lcom/vivo/services/motion/DirectCallingService$1;)V

    iput-object v0, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionAngDevParaY:Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;

    .line 1826
    new-instance v0, Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;

    invoke-direct {v0, p0, v3}, Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;-><init>(Lcom/vivo/services/motion/DirectCallingService;Lcom/vivo/services/motion/DirectCallingService$1;)V

    iput-object v0, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionAngDevParaZ:Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;

    .line 1827
    new-instance v0, Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;

    invoke-direct {v0, p0, v3}, Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;-><init>(Lcom/vivo/services/motion/DirectCallingService;Lcom/vivo/services/motion/DirectCallingService$1;)V

    iput-object v0, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionAccDevParaX:Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;

    .line 1828
    new-instance v0, Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;

    invoke-direct {v0, p0, v3}, Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;-><init>(Lcom/vivo/services/motion/DirectCallingService;Lcom/vivo/services/motion/DirectCallingService$1;)V

    iput-object v0, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionAccDevParaY:Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;

    .line 1829
    new-instance v0, Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;

    invoke-direct {v0, p0, v3}, Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;-><init>(Lcom/vivo/services/motion/DirectCallingService;Lcom/vivo/services/motion/DirectCallingService$1;)V

    iput-object v0, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionAccDevParaZ:Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;

    .line 2112
    new-instance v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    invoke-direct {v0, p0, v3}, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;-><init>(Lcom/vivo/services/motion/DirectCallingService;Lcom/vivo/services/motion/DirectCallingService$1;)V

    iput-object v0, p0, Lcom/vivo/services/motion/DirectCallingService;->acceleromererListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    .line 2114
    new-instance v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    invoke-direct {v0, p0, v3}, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;-><init>(Lcom/vivo/services/motion/DirectCallingService;Lcom/vivo/services/motion/DirectCallingService$1;)V

    iput-object v0, p0, Lcom/vivo/services/motion/DirectCallingService;->MagneticListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    .line 2115
    new-instance v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    invoke-direct {v0, p0, v3}, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;-><init>(Lcom/vivo/services/motion/DirectCallingService;Lcom/vivo/services/motion/DirectCallingService$1;)V

    iput-object v0, p0, Lcom/vivo/services/motion/DirectCallingService;->GproScopeListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    .line 2116
    new-instance v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    invoke-direct {v0, p0, v3}, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;-><init>(Lcom/vivo/services/motion/DirectCallingService;Lcom/vivo/services/motion/DirectCallingService$1;)V

    iput-object v0, p0, Lcom/vivo/services/motion/DirectCallingService;->RotationVectorListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    .line 2117
    new-instance v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    invoke-direct {v0, p0, v3}, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;-><init>(Lcom/vivo/services/motion/DirectCallingService;Lcom/vivo/services/motion/DirectCallingService$1;)V

    iput-object v0, p0, Lcom/vivo/services/motion/DirectCallingService;->ProximityListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    .line 2119
    return-void
.end method

.method private MotionDetectPickupTriger()V
    .locals 4

    .prologue
    .line 1923
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1924
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x10

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1925
    new-instance v0, Ljava/lang/Integer;

    const/4 v2, 0x5

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 1926
    .local v0, "IntegerActionType":Ljava/lang/Integer;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1927
    const-string v2, "DirectCallingService"

    const-string v3, "MotionDetectPickupTriger"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1928
    sget-object v3, Lcom/vivo/services/motion/DirectCallingService;->mHandleLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1929
    :try_start_0
    iget-object v2, p0, Lcom/vivo/services/motion/DirectCallingService;->mCallBackHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 1931
    iget-object v2, p0, Lcom/vivo/services/motion/DirectCallingService;->mCallBackHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1933
    :cond_0
    monitor-exit v3

    .line 1934
    return-void

    .line 1933
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method static synthetic access$000(Lcom/vivo/services/motion/DirectCallingService;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/DirectCallingService;

    .prologue
    .line 24
    iget v0, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionDetState:I

    return v0
.end method

.method static synthetic access$100(Lcom/vivo/services/motion/DirectCallingService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/DirectCallingService;

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/vivo/services/motion/DirectCallingService;->first_flag:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/vivo/services/motion/DirectCallingService;F)F
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/motion/DirectCallingService;
    .param p1, "x1"    # F

    .prologue
    .line 24
    iput p1, p0, Lcom/vivo/services/motion/DirectCallingService;->prox_close_acc_z:F

    return p1
.end method

.method static synthetic access$102(Lcom/vivo/services/motion/DirectCallingService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/motion/DirectCallingService;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/vivo/services/motion/DirectCallingService;->first_flag:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/vivo/services/motion/DirectCallingService;)Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/DirectCallingService;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionAngDevParaX:Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/vivo/services/motion/DirectCallingService;)Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/DirectCallingService;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionAngDevParaY:Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/vivo/services/motion/DirectCallingService;)Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/DirectCallingService;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionAngDevParaZ:Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/vivo/services/motion/DirectCallingService;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/DirectCallingService;

    .prologue
    .line 24
    iget v0, p0, Lcom/vivo/services/motion/DirectCallingService;->mag_ab:I

    return v0
.end method

.method static synthetic access$1408(Lcom/vivo/services/motion/DirectCallingService;)I
    .locals 2
    .param p0, "x0"    # Lcom/vivo/services/motion/DirectCallingService;

    .prologue
    .line 24
    iget v0, p0, Lcom/vivo/services/motion/DirectCallingService;->mag_ab:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/vivo/services/motion/DirectCallingService;->mag_ab:I

    return v0
.end method

.method static synthetic access$1500(Lcom/vivo/services/motion/DirectCallingService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/DirectCallingService;

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/vivo/services/motion/DirectCallingService;->mag_vibrator_state:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/vivo/services/motion/DirectCallingService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/motion/DirectCallingService;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/vivo/services/motion/DirectCallingService;->mag_vibrator_state:Z

    return p1
.end method

.method static synthetic access$1600()[F
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/vivo/services/motion/DirectCallingService;->last_mag_data:[F

    return-object v0
.end method

.method static synthetic access$1700(Lcom/vivo/services/motion/DirectCallingService;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/DirectCallingService;

    .prologue
    .line 24
    iget v0, p0, Lcom/vivo/services/motion/DirectCallingService;->mag_vibrator_counter:I

    return v0
.end method

.method static synthetic access$1702(Lcom/vivo/services/motion/DirectCallingService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/motion/DirectCallingService;
    .param p1, "x1"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/vivo/services/motion/DirectCallingService;->mag_vibrator_counter:I

    return p1
.end method

.method static synthetic access$1708(Lcom/vivo/services/motion/DirectCallingService;)I
    .locals 2
    .param p0, "x0"    # Lcom/vivo/services/motion/DirectCallingService;

    .prologue
    .line 24
    iget v0, p0, Lcom/vivo/services/motion/DirectCallingService;->mag_vibrator_counter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/vivo/services/motion/DirectCallingService;->mag_vibrator_counter:I

    return v0
.end method

.method static synthetic access$1800(Lcom/vivo/services/motion/DirectCallingService;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/DirectCallingService;

    .prologue
    .line 24
    iget v0, p0, Lcom/vivo/services/motion/DirectCallingService;->data_abandon:I

    return v0
.end method

.method static synthetic access$1802(Lcom/vivo/services/motion/DirectCallingService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/motion/DirectCallingService;
    .param p1, "x1"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/vivo/services/motion/DirectCallingService;->data_abandon:I

    return p1
.end method

.method static synthetic access$1808(Lcom/vivo/services/motion/DirectCallingService;)I
    .locals 2
    .param p0, "x0"    # Lcom/vivo/services/motion/DirectCallingService;

    .prologue
    .line 24
    iget v0, p0, Lcom/vivo/services/motion/DirectCallingService;->data_abandon:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/vivo/services/motion/DirectCallingService;->data_abandon:I

    return v0
.end method

.method static synthetic access$1900(Lcom/vivo/services/motion/DirectCallingService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/DirectCallingService;

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/vivo/services/motion/DirectCallingService;->mDataOperate:Z

    return v0
.end method

.method static synthetic access$200(Lcom/vivo/services/motion/DirectCallingService;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/DirectCallingService;

    .prologue
    .line 24
    iget v0, p0, Lcom/vivo/services/motion/DirectCallingService;->VibratorStateCount:I

    return v0
.end method

.method static synthetic access$2000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/vivo/services/motion/DirectCallingService;->mDataLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$202(Lcom/vivo/services/motion/DirectCallingService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/motion/DirectCallingService;
    .param p1, "x1"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/vivo/services/motion/DirectCallingService;->VibratorStateCount:I

    return p1
.end method

.method static synthetic access$208(Lcom/vivo/services/motion/DirectCallingService;)I
    .locals 2
    .param p0, "x0"    # Lcom/vivo/services/motion/DirectCallingService;

    .prologue
    .line 24
    iget v0, p0, Lcom/vivo/services/motion/DirectCallingService;->VibratorStateCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/vivo/services/motion/DirectCallingService;->VibratorStateCount:I

    return v0
.end method

.method static synthetic access$2100(Lcom/vivo/services/motion/DirectCallingService;)[[F
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/DirectCallingService;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/vivo/services/motion/DirectCallingService;->gyro_data_buf:[[F

    return-object v0
.end method

.method static synthetic access$2200(Lcom/vivo/services/motion/DirectCallingService;)[J
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/DirectCallingService;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/vivo/services/motion/DirectCallingService;->time_buf:[J

    return-object v0
.end method

.method static synthetic access$2300(Lcom/vivo/services/motion/DirectCallingService;)F
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/DirectCallingService;

    .prologue
    .line 24
    iget v0, p0, Lcom/vivo/services/motion/DirectCallingService;->MOTION_AKM_MAX:F

    return v0
.end method

.method static synthetic access$2400(Lcom/vivo/services/motion/DirectCallingService;)Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/DirectCallingService;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/vivo/services/motion/DirectCallingService;->GproScopeListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/vivo/services/motion/DirectCallingService;)Landroid/hardware/SensorManager;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/DirectCallingService;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionDetSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/vivo/services/motion/DirectCallingService;Landroid/hardware/SensorManager;)Landroid/hardware/SensorManager;
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/motion/DirectCallingService;
    .param p1, "x1"    # Landroid/hardware/SensorManager;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionDetSensorManager:Landroid/hardware/SensorManager;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/vivo/services/motion/DirectCallingService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/DirectCallingService;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/vivo/services/motion/DirectCallingService;->mCallBackHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/vivo/services/motion/DirectCallingService;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/DirectCallingService;

    .prologue
    .line 24
    iget v0, p0, Lcom/vivo/services/motion/DirectCallingService;->ProximitState:I

    return v0
.end method

.method static synthetic access$2702(Lcom/vivo/services/motion/DirectCallingService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/motion/DirectCallingService;
    .param p1, "x1"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/vivo/services/motion/DirectCallingService;->ProximitState:I

    return p1
.end method

.method static synthetic access$2802(Lcom/vivo/services/motion/DirectCallingService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/motion/DirectCallingService;
    .param p1, "x1"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/vivo/services/motion/DirectCallingService;->pick_up_cnt_motion:I

    return p1
.end method

.method static synthetic access$2900(Lcom/vivo/services/motion/DirectCallingService;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/DirectCallingService;

    .prologue
    .line 24
    iget v0, p0, Lcom/vivo/services/motion/DirectCallingService;->pick_up_cnt_threshhold:I

    return v0
.end method

.method static synthetic access$300(Lcom/vivo/services/motion/DirectCallingService;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/DirectCallingService;

    .prologue
    .line 24
    iget v0, p0, Lcom/vivo/services/motion/DirectCallingService;->VibratorState:I

    return v0
.end method

.method static synthetic access$3000(Lcom/vivo/services/motion/DirectCallingService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/DirectCallingService;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/vivo/services/motion/DirectCallingService;->mServiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$302(Lcom/vivo/services/motion/DirectCallingService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/motion/DirectCallingService;
    .param p1, "x1"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/vivo/services/motion/DirectCallingService;->VibratorState:I

    return p1
.end method

.method static synthetic access$3100(Lcom/vivo/services/motion/DirectCallingService;)J
    .locals 2
    .param p0, "x0"    # Lcom/vivo/services/motion/DirectCallingService;

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/vivo/services/motion/DirectCallingService;->pick_up_count:J

    return-wide v0
.end method

.method static synthetic access$3102(Lcom/vivo/services/motion/DirectCallingService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/DirectCallingService;
    .param p1, "x1"    # J

    .prologue
    .line 24
    iput-wide p1, p0, Lcom/vivo/services/motion/DirectCallingService;->pick_up_count:J

    return-wide p1
.end method

.method static synthetic access$3202(Lcom/vivo/services/motion/DirectCallingService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/DirectCallingService;
    .param p1, "x1"    # J

    .prologue
    .line 24
    iput-wide p1, p0, Lcom/vivo/services/motion/DirectCallingService;->pick_up_time:J

    return-wide p1
.end method

.method static synthetic access$3300()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/vivo/services/motion/DirectCallingService;->mHandleLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/vivo/services/motion/DirectCallingService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/DirectCallingService;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/vivo/services/motion/DirectCallingService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/vivo/services/motion/DirectCallingService;)Landroid/hardware/Sensor;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/DirectCallingService;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/vivo/services/motion/DirectCallingService;->mProximitySensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/vivo/services/motion/DirectCallingService;Landroid/hardware/Sensor;)Landroid/hardware/Sensor;
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/motion/DirectCallingService;
    .param p1, "x1"    # Landroid/hardware/Sensor;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/vivo/services/motion/DirectCallingService;->mProximitySensor:Landroid/hardware/Sensor;

    return-object p1
.end method

.method static synthetic access$3602(Lcom/vivo/services/motion/DirectCallingService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/DirectCallingService;
    .param p1, "x1"    # J

    .prologue
    .line 24
    iput-wide p1, p0, Lcom/vivo/services/motion/DirectCallingService;->prox_away_time:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/vivo/services/motion/DirectCallingService;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/DirectCallingService;

    .prologue
    .line 24
    iget v0, p0, Lcom/vivo/services/motion/DirectCallingService;->VibratorStaticCount:I

    return v0
.end method

.method static synthetic access$4002(Lcom/vivo/services/motion/DirectCallingService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/motion/DirectCallingService;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/vivo/services/motion/DirectCallingService;->gyroHighFlag:Z

    return p1
.end method

.method static synthetic access$402(Lcom/vivo/services/motion/DirectCallingService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/motion/DirectCallingService;
    .param p1, "x1"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/vivo/services/motion/DirectCallingService;->VibratorStaticCount:I

    return p1
.end method

.method static synthetic access$408(Lcom/vivo/services/motion/DirectCallingService;)I
    .locals 2
    .param p0, "x0"    # Lcom/vivo/services/motion/DirectCallingService;

    .prologue
    .line 24
    iget v0, p0, Lcom/vivo/services/motion/DirectCallingService;->VibratorStaticCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/vivo/services/motion/DirectCallingService;->VibratorStaticCount:I

    return v0
.end method

.method static synthetic access$500(Lcom/vivo/services/motion/DirectCallingService;)Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/DirectCallingService;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionAccDevParaX:Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;

    return-object v0
.end method

.method static synthetic access$600(Lcom/vivo/services/motion/DirectCallingService;)Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/DirectCallingService;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionAccDevParaY:Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;

    return-object v0
.end method

.method static synthetic access$700(Lcom/vivo/services/motion/DirectCallingService;)Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/DirectCallingService;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionAccDevParaZ:Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;

    return-object v0
.end method

.method static synthetic access$802(Lcom/vivo/services/motion/DirectCallingService;F)F
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/motion/DirectCallingService;
    .param p1, "x1"    # F

    .prologue
    .line 24
    iput p1, p0, Lcom/vivo/services/motion/DirectCallingService;->prox_close_acc_x:F

    return p1
.end method

.method static synthetic access$902(Lcom/vivo/services/motion/DirectCallingService;F)F
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/motion/DirectCallingService;
    .param p1, "x1"    # F

    .prologue
    .line 24
    iput p1, p0, Lcom/vivo/services/motion/DirectCallingService;->prox_close_acc_y:F

    return p1
.end method

.method private clearGyrdata()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 624
    const/4 v0, 0x0

    .local v0, "m":I
    :goto_0
    const/16 v2, 0x40

    if-ge v0, v2, :cond_1

    .line 626
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_1
    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 628
    iget-object v2, p0, Lcom/vivo/services/motion/DirectCallingService;->gyro_data_buf:[[F

    aget-object v2, v2, v0

    aput v8, v2, v1

    .line 626
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 630
    :cond_0
    iget-object v2, p0, Lcom/vivo/services/motion/DirectCallingService;->time_buf:[J

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v0

    .line 624
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 632
    .end local v1    # "n":I
    :cond_1
    sget-object v2, Lcom/vivo/services/motion/DirectCallingService;->last_mag_data:[F

    const/4 v3, 0x0

    sget-object v4, Lcom/vivo/services/motion/DirectCallingService;->last_mag_data:[F

    const/4 v5, 0x1

    sget-object v6, Lcom/vivo/services/motion/DirectCallingService;->last_mag_data:[F

    const/4 v7, 0x2

    aput v8, v6, v7

    aput v8, v4, v5

    aput v8, v2, v3

    .line 633
    return-void
.end method

.method public static getInstance()Lcom/vivo/services/motion/DirectCallingService;
    .locals 1

    .prologue
    .line 2108
    sget-object v0, Lcom/vivo/services/motion/DirectCallingService;->singleDirectCallingService:Lcom/vivo/services/motion/DirectCallingService;

    return-object v0
.end method

.method private getValueOfLine(Ljava/lang/String;)V
    .locals 6
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    .line 1855
    const-string v3, "="

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1856
    .local v0, "index":I
    if-gez v0, :cond_1

    .line 1888
    :cond_0
    :goto_0
    return-void

    .line 1858
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1859
    .local v1, "key":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1861
    add-int/lit8 v0, v0, 0x1

    .line 1862
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1863
    .local v2, "value":Ljava/lang/String;
    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "0X"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1864
    :cond_2
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1867
    :cond_3
    const-string v3, "DirectCallingService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    const-string v3, "MaxCrestCnt"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1870
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/vivo/services/motion/DirectCallingService;->MAX_CREST_CNT:I

    goto :goto_0

    .line 1872
    :cond_4
    const-string v3, "MaxMotionIdx"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1873
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/vivo/services/motion/DirectCallingService;->MAX_MOTION_IDX:I

    goto :goto_0

    .line 1875
    :cond_5
    const-string v3, "MontionMin"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1876
    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iput v3, p0, Lcom/vivo/services/motion/DirectCallingService;->MOTION_MIN:F

    goto/16 :goto_0

    .line 1878
    :cond_6
    const-string v3, "MontionMax"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1879
    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iput v3, p0, Lcom/vivo/services/motion/DirectCallingService;->MOTION_MAX:F

    goto/16 :goto_0

    .line 1881
    :cond_7
    const-string v3, "WinReSample"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1882
    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iput v3, p0, Lcom/vivo/services/motion/DirectCallingService;->WIN_RESAMPLE:F

    goto/16 :goto_0

    .line 1885
    :cond_8
    const-string v3, "DirectCallingService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unhandled key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private readConfigFile()V
    .locals 7

    .prologue
    .line 1831
    new-instance v1, Ljava/io/File;

    const-string v4, "/etc/motion_recognition.conf"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1832
    .local v1, "file":Ljava/io/File;
    const-string v4, "DirectCallingService"

    const-string v5, "readConfigFile/etc/motion_recognition.conf"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1833
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1853
    :goto_0
    return-void

    .line 1835
    :cond_0
    const-string v4, "DirectCallingService"

    const-string v5, "readConfigFile OK"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1837
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1840
    .local v2, "fin":Ljava/io/BufferedReader;
    :cond_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 1841
    .local v3, "line":Ljava/lang/String;
    const-string v4, "DirectCallingService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readline "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    if-nez v3, :cond_2

    .line 1848
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1849
    .end local v2    # "fin":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1851
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "DirectCallingService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fin >> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1844
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "fin":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, ""

    if-ne v3, v4, :cond_4

    .line 1847
    :cond_3
    :goto_2
    if-nez v3, :cond_1

    goto :goto_1

    .line 1846
    :cond_4
    invoke-direct {p0, v3}, Lcom/vivo/services/motion/DirectCallingService;->getValueOfLine(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private resetAllDataBuf()V
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/vivo/services/motion/DirectCallingService;->acceleromererListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    invoke-virtual {v0}, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->resetDataBuf()V

    .line 616
    iget-object v0, p0, Lcom/vivo/services/motion/DirectCallingService;->GproScopeListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    invoke-virtual {v0}, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->resetDataBuf()V

    .line 617
    iget-object v0, p0, Lcom/vivo/services/motion/DirectCallingService;->RotationVectorListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    invoke-virtual {v0}, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->resetDataBuf()V

    .line 618
    iget-object v0, p0, Lcom/vivo/services/motion/DirectCallingService;->ProximityListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    invoke-virtual {v0}, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->resetDataBuf()V

    .line 619
    iget-object v0, p0, Lcom/vivo/services/motion/DirectCallingService;->MagneticListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    invoke-virtual {v0}, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->resetDataBuf()V

    .line 620
    return-void
.end method


# virtual methods
.method MotionDetectAnalist()Z
    .locals 12

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1891
    const/4 v2, 0x0

    .line 1892
    .local v2, "AngVerResult":Z
    const/4 v1, 0x0

    .line 1893
    .local v1, "AngDevResult":Z
    const/4 v0, 0x0

    .line 1894
    .local v0, "AccDevResult":Z
    const/4 v3, 0x0

    .line 1895
    .local v3, "DegreeResult":Z
    const/4 v4, 0x0

    .line 1896
    .local v4, "timeResult":Z
    invoke-direct {p0}, Lcom/vivo/services/motion/DirectCallingService;->readConfigFile()V

    .line 1897
    invoke-virtual {p0}, Lcom/vivo/services/motion/DirectCallingService;->subMotionAngVerAnalist()Z

    move-result v2

    .line 1899
    invoke-virtual {p0}, Lcom/vivo/services/motion/DirectCallingService;->subMotionAccDevAnalist()Z

    move-result v0

    .line 1902
    iget-wide v8, p0, Lcom/vivo/services/motion/DirectCallingService;->prox_away_time:J

    iget-wide v10, p0, Lcom/vivo/services/motion/DirectCallingService;->pick_up_time:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    cmp-long v7, v8, v10

    if-gez v7, :cond_0

    iget-wide v8, p0, Lcom/vivo/services/motion/DirectCallingService;->pick_up_count:J

    const-wide/16 v10, 0x1

    cmp-long v7, v8, v10

    if-lez v7, :cond_0

    .line 1904
    const/4 v4, 0x1

    .line 1906
    :cond_0
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/vivo/services/motion/DirectCallingService;->pick_up_count:J

    .line 1907
    iput-boolean v5, p0, Lcom/vivo/services/motion/DirectCallingService;->mDataOperate:Z

    .line 1908
    sget-boolean v7, Lcom/vivo/services/motion/AllConfig;->mIsYASVirtGryo:Z

    if-eqz v7, :cond_1

    .line 1910
    invoke-virtual {p0}, Lcom/vivo/services/motion/DirectCallingService;->degreeAnalist_2()Z

    move-result v3

    .line 1916
    :goto_0
    iput-boolean v6, p0, Lcom/vivo/services/motion/DirectCallingService;->mDataOperate:Z

    .line 1918
    const-string v7, "DirectCallingService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AngVerResult: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "AccDevResult: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "DegreeResult: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1919
    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    :goto_1
    return v5

    .line 1914
    :cond_1
    invoke-virtual {p0}, Lcom/vivo/services/motion/DirectCallingService;->degreeAnalist()Z

    move-result v3

    goto :goto_0

    :cond_2
    move v5, v6

    .line 1919
    goto :goto_1
.end method

.method MotionDetectAnalistStateProcess(I)V
    .locals 6
    .param p1, "msg_what"    # I

    .prologue
    .line 2012
    packed-switch p1, :pswitch_data_0

    .line 2030
    :goto_0
    :pswitch_0
    return-void

    .line 2021
    :pswitch_1
    const/4 v0, 0x3

    iput v0, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionDetState:I

    .line 2022
    sget-object v1, Lcom/vivo/services/motion/DirectCallingService;->mHandleLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2023
    :try_start_0
    iget-object v0, p0, Lcom/vivo/services/motion/DirectCallingService;->mServiceHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2025
    iget-object v0, p0, Lcom/vivo/services/motion/DirectCallingService;->mServiceHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2027
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2012
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method MotionDetectGetDataStateProcess(I)V
    .locals 8
    .param p1, "msg_what"    # I

    .prologue
    const/4 v3, 0x0

    .line 1967
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1968
    .local v1, "msg":Landroid/os/Message;
    packed-switch p1, :pswitch_data_0

    .line 2009
    :goto_0
    :pswitch_0
    return-void

    .line 1975
    :pswitch_1
    const/4 v2, 0x2

    iput v2, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionDetState:I

    .line 1976
    invoke-virtual {p0}, Lcom/vivo/services/motion/DirectCallingService;->MotionDetectAnalist()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1979
    const/16 v2, 0x10

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1980
    new-instance v0, Ljava/lang/Integer;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 1981
    .local v0, "IntegerActionType":Ljava/lang/Integer;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1982
    sget-object v3, Lcom/vivo/services/motion/DirectCallingService;->mHandleLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1983
    :try_start_0
    iget-object v2, p0, Lcom/vivo/services/motion/DirectCallingService;->mCallBackHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 1985
    iget-object v2, p0, Lcom/vivo/services/motion/DirectCallingService;->mCallBackHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1987
    :cond_0
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1991
    .end local v0    # "IntegerActionType":Ljava/lang/Integer;
    :cond_1
    invoke-direct {p0}, Lcom/vivo/services/motion/DirectCallingService;->resetAllDataBuf()V

    .line 1992
    iput v3, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionDetState:I

    .line 1993
    const-string v2, "DirectCallingService"

    const-string v3, "====MotionDetState = MOTION_DET_STATE_IDLE===="

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1995
    const-string v2, "DirectCallingService"

    const-string v3, "====MotionDetState = MOTION_DET_STATE_IDLE==== delay:1"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2000
    :pswitch_2
    const/4 v2, 0x3

    iput v2, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionDetState:I

    .line 2001
    sget-object v3, Lcom/vivo/services/motion/DirectCallingService;->mHandleLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2002
    :try_start_1
    iget-object v2, p0, Lcom/vivo/services/motion/DirectCallingService;->mServiceHandler:Landroid/os/Handler;

    if-eqz v2, :cond_2

    .line 2004
    iget-object v2, p0, Lcom/vivo/services/motion/DirectCallingService;->mServiceHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    const-wide/16 v6, 0x12c

    invoke-virtual {v2, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2006
    :cond_2
    monitor-exit v3

    goto :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2

    .line 1968
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method MotionDetectIdleStateProcess(I)V
    .locals 3
    .param p1, "msg_what"    # I

    .prologue
    .line 1938
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1939
    .local v0, "msg":Landroid/os/Message;
    packed-switch p1, :pswitch_data_0

    .line 1964
    :goto_0
    :pswitch_0
    return-void

    .line 1944
    :pswitch_1
    const/4 v1, 0x1

    iput v1, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionDetState:I

    .line 1945
    sget-object v2, Lcom/vivo/services/motion/DirectCallingService;->mHandleLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1946
    :try_start_0
    iget-object v1, p0, Lcom/vivo/services/motion/DirectCallingService;->mServiceHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 1948
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1949
    iget-object v1, p0, Lcom/vivo/services/motion/DirectCallingService;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1952
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1954
    const-string v1, "DirectCallingService"

    const-string v2, "MotionDetectIdleStateProcess"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1952
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1961
    :pswitch_2
    invoke-direct {p0}, Lcom/vivo/services/motion/DirectCallingService;->MotionDetectPickupTriger()V

    goto :goto_0

    .line 1939
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method MotionDetectRecoverStateProcess(I)V
    .locals 1
    .param p1, "msg_what"    # I

    .prologue
    .line 2033
    packed-switch p1, :pswitch_data_0

    .line 2049
    :goto_0
    :pswitch_0
    return-void

    .line 2036
    :pswitch_1
    invoke-direct {p0}, Lcom/vivo/services/motion/DirectCallingService;->resetAllDataBuf()V

    .line 2037
    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionDetState:I

    goto :goto_0

    .line 2046
    :pswitch_2
    invoke-direct {p0}, Lcom/vivo/services/motion/DirectCallingService;->MotionDetectPickupTriger()V

    goto :goto_0

    .line 2033
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method degreeAnalist()Z
    .locals 32

    .prologue
    .line 1298
    const/4 v10, 0x0

    .line 1299
    .local v10, "degreeFlag":Z
    const/4 v5, 0x0

    .line 1300
    .local v5, "axis":I
    const/4 v12, 0x0

    .line 1301
    .local v12, "degreeSumM":F
    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v11, v0, [F

    .line 1302
    .local v11, "degreeSum":[F
    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v14, v0, [F

    .line 1303
    .local v14, "degreeSump":[F
    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v13, v0, [F

    .line 1304
    .local v13, "degreeSumn":[F
    const-wide/16 v20, 0x0

    .line 1305
    .local v20, "timeDelta":J
    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v6, v0, [F

    .line 1306
    .local v6, "dataStore":[F
    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v7, v0, [F

    .line 1307
    .local v7, "degreeFast":[F
    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v9, v0, [F

    .line 1308
    .local v9, "degreeFastp":[F
    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v8, v0, [F

    .line 1309
    .local v8, "degreeFastn":[F
    const-wide/16 v22, 0x0

    .line 1310
    .local v22, "timeSum":J
    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v24, v0

    .line 1312
    .local v24, "xyz":[I
    const/16 v18, 0x0

    .line 1313
    .local v18, "max_fast":Z
    const/16 v25, 0x0

    const/16 v26, 0x1

    const/16 v27, 0x2

    const/16 v28, -0x1

    aput v28, v24, v27

    aput v28, v24, v26

    aput v28, v24, v25

    .line 1314
    const/16 v25, 0x0

    const/16 v26, 0x1

    const/16 v27, 0x2

    const/16 v28, 0x0

    aput v28, v6, v27

    aput v28, v6, v26

    aput v28, v6, v25

    .line 1315
    const/16 v25, 0x0

    const/16 v26, 0x1

    const/16 v27, 0x2

    const/16 v28, 0x0

    aput v28, v7, v27

    aput v28, v7, v26

    aput v28, v7, v25

    .line 1316
    const/16 v25, 0x0

    const/16 v26, 0x1

    const/16 v27, 0x2

    const/16 v28, 0x0

    aput v28, v9, v27

    aput v28, v9, v26

    aput v28, v9, v25

    .line 1317
    const/16 v25, 0x0

    const/16 v26, 0x1

    const/16 v27, 0x2

    const/16 v28, 0x0

    aput v28, v8, v27

    aput v28, v8, v26

    aput v28, v8, v25

    .line 1319
    sget-boolean v25, Lcom/vivo/services/motion/AllConfig;->mIsAKMVirtGryo:Z

    if-nez v25, :cond_0

    sget-boolean v25, Lcom/vivo/services/motion/AllConfig;->mIsADSPAKMVirtGryo:Z

    if-eqz v25, :cond_f

    .line 1321
    :cond_0
    const/16 v17, 0x0

    .line 1322
    .local v17, "m_min":I
    const/16 v16, 0x3c

    .line 1329
    .local v16, "m_max":I
    :goto_0
    sget-object v26, Lcom/vivo/services/motion/DirectCallingService;->mDataLock:Ljava/lang/Object;

    monitor-enter v26

    .line 1330
    move/from16 v15, v17

    .local v15, "m":I
    :goto_1
    move/from16 v0, v16

    if-ge v15, v0, :cond_6

    .line 1332
    move/from16 v0, v17

    if-ne v0, v15, :cond_11

    .line 1334
    :try_start_0
    sget-boolean v25, Lcom/vivo/services/motion/AllConfig;->mIsAKMVirtGryo:Z

    if-nez v25, :cond_1

    sget-boolean v25, Lcom/vivo/services/motion/AllConfig;->mIsALPSVirtGryo:Z

    if-nez v25, :cond_1

    sget-boolean v25, Lcom/vivo/services/motion/AllConfig;->mIsYASVirtGryo:Z

    if-nez v25, :cond_1

    sget-boolean v25, Lcom/vivo/services/motion/AllConfig;->mIsADSPAKMVirtGryo:Z

    if-eqz v25, :cond_10

    :cond_1
    const-wide/16 v20, 0x14

    .line 1341
    :goto_2
    const/16 v19, 0x0

    .local v19, "n":I
    :goto_3
    const/16 v25, 0x3

    move/from16 v0, v19

    move/from16 v1, v25

    if-ge v0, v1, :cond_2

    .line 1343
    sget-boolean v25, Lcom/vivo/services/motion/AllConfig;->mIsAKMVirtGryo:Z

    if-nez v25, :cond_12

    sget-boolean v25, Lcom/vivo/services/motion/AllConfig;->mIsALPSVirtGryo:Z

    if-nez v25, :cond_12

    sget-boolean v25, Lcom/vivo/services/motion/AllConfig;->mIsYASVirtGryo:Z

    if-nez v25, :cond_12

    sget-boolean v25, Lcom/vivo/services/motion/AllConfig;->mIsADSPAKMVirtGryo:Z

    if-nez v25, :cond_12

    .line 1345
    const-wide/16 v28, 0x320

    cmp-long v25, v28, v20

    if-gez v25, :cond_12

    .line 1356
    :cond_2
    sget-boolean v25, Lcom/vivo/services/motion/AllConfig;->mIsAKMVirtGryo:Z

    if-eqz v25, :cond_3

    .line 1358
    if-eqz v18, :cond_3

    const/16 v25, 0x1e

    move/from16 v0, v25

    if-ne v0, v15, :cond_3

    .line 1360
    const/16 v25, 0x0

    const/16 v27, 0x0

    aget v27, v14, v27

    const/high16 v28, 0x43340000    # 180.0f

    mul-float v27, v27, v28

    const v28, 0x45444000    # 3140.0f

    div-float v27, v27, v28

    aput v27, v9, v25

    .line 1361
    const/16 v25, 0x1

    const/16 v27, 0x1

    aget v27, v14, v27

    const/high16 v28, 0x43340000    # 180.0f

    mul-float v27, v27, v28

    const v28, 0x45444000    # 3140.0f

    div-float v27, v27, v28

    aput v27, v9, v25

    .line 1362
    const/16 v25, 0x2

    const/16 v27, 0x2

    aget v27, v14, v27

    const/high16 v28, 0x43340000    # 180.0f

    mul-float v27, v27, v28

    const v28, 0x45444000    # 3140.0f

    div-float v27, v27, v28

    aput v27, v9, v25

    .line 1363
    const/16 v25, 0x0

    const/16 v27, 0x0

    aget v27, v13, v27

    const/high16 v28, 0x43340000    # 180.0f

    mul-float v27, v27, v28

    const v28, 0x45444000    # 3140.0f

    div-float v27, v27, v28

    aput v27, v8, v25

    .line 1364
    const/16 v25, 0x1

    const/16 v27, 0x1

    aget v27, v13, v27

    const/high16 v28, 0x43340000    # 180.0f

    mul-float v27, v27, v28

    const v28, 0x45444000    # 3140.0f

    div-float v27, v27, v28

    aput v27, v8, v25

    .line 1365
    const/16 v25, 0x2

    const/16 v27, 0x2

    aget v27, v13, v27

    const/high16 v28, 0x43340000    # 180.0f

    mul-float v27, v27, v28

    const v28, 0x45444000    # 3140.0f

    div-float v27, v27, v28

    aput v27, v8, v25

    .line 1366
    const/16 v25, 0x0

    const/16 v27, 0x0

    aget v27, v9, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(F)F

    move-result v27

    const/16 v28, 0x0

    aget v28, v8, v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->abs(F)F

    move-result v28

    add-float v27, v27, v28

    aput v27, v7, v25

    .line 1367
    const/16 v25, 0x1

    const/16 v27, 0x1

    aget v27, v9, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(F)F

    move-result v27

    const/16 v28, 0x1

    aget v28, v8, v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->abs(F)F

    move-result v28

    add-float v27, v27, v28

    aput v27, v7, v25

    .line 1368
    const/16 v25, 0x2

    const/16 v27, 0x2

    aget v27, v9, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(F)F

    move-result v27

    const/16 v28, 0x2

    aget v28, v8, v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->abs(F)F

    move-result v28

    add-float v27, v27, v28

    aput v27, v7, v25

    .line 1374
    :cond_3
    sget-boolean v25, Lcom/vivo/services/motion/AllConfig;->mIsAKMVirtGryo:Z

    if-nez v25, :cond_4

    sget-boolean v25, Lcom/vivo/services/motion/AllConfig;->mIsALPSVirtGryo:Z

    if-nez v25, :cond_4

    sget-boolean v25, Lcom/vivo/services/motion/AllConfig;->mIsYASVirtGryo:Z

    if-nez v25, :cond_4

    sget-boolean v25, Lcom/vivo/services/motion/AllConfig;->mIsADSPAKMVirtGryo:Z

    if-eqz v25, :cond_16

    .line 1376
    :cond_4
    const-wide/16 v28, 0x27

    cmp-long v25, v28, v20

    if-gez v25, :cond_5

    const-string v25, "GYRO_SUM "

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "timeDelta error : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    :cond_5
    :goto_4
    const-string v25, "DirectCallingService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "GYRO_SUM , raw_data : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->gyro_data_buf:[[F

    move-object/from16 v28, v0

    aget-object v28, v28, v15

    const/16 v29, 0x0

    aget v28, v28, v29

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ","

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->gyro_data_buf:[[F

    move-object/from16 v28, v0

    aget-object v28, v28, v15

    const/16 v29, 0x1

    aget v28, v28, v29

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ","

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->gyro_data_buf:[[F

    move-object/from16 v28, v0

    aget-object v28, v28, v15

    const/16 v29, 0x2

    aget v28, v28, v29

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ","

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ","

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    sget-boolean v25, Lcom/vivo/services/motion/AllConfig;->mIsAKMVirtGryo:Z

    if-nez v25, :cond_1c

    sget-boolean v25, Lcom/vivo/services/motion/AllConfig;->mIsALPSVirtGryo:Z

    if-nez v25, :cond_1c

    sget-boolean v25, Lcom/vivo/services/motion/AllConfig;->mIsYASVirtGryo:Z

    if-nez v25, :cond_1c

    sget-boolean v25, Lcom/vivo/services/motion/AllConfig;->mIsADSPAKMVirtGryo:Z

    if-nez v25, :cond_1c

    .line 1391
    add-long v22, v22, v20

    .line 1392
    const-wide/16 v28, 0x7d0

    cmp-long v25, v22, v28

    if-lez v25, :cond_17

    .line 1441
    .end local v19    # "n":I
    :cond_6
    :goto_5
    sget-boolean v25, Lcom/vivo/services/motion/AllConfig;->mIsAKMVirtGryo:Z

    if-nez v25, :cond_7

    sget-boolean v25, Lcom/vivo/services/motion/AllConfig;->mIsPhyGryo:Z

    if-nez v25, :cond_7

    sget-boolean v25, Lcom/vivo/services/motion/AllConfig;->mIsADSPAKMVirtGryo:Z

    if-eqz v25, :cond_b

    .line 1443
    :cond_7
    move/from16 v15, v17

    :goto_6
    move/from16 v0, v16

    if-ge v15, v0, :cond_b

    .line 1445
    const/16 v25, -0x1

    const/16 v27, 0x0

    aget v27, v24, v27

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_1d

    const/high16 v25, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->gyro_data_buf:[[F

    move-object/from16 v27, v0

    aget-object v27, v27, v15

    const/16 v28, 0x0

    aget v27, v27, v28

    cmpg-float v25, v25, v27

    if-gtz v25, :cond_1d

    const/16 v25, 0x0

    const/16 v27, 0x2

    aput v27, v24, v25

    .line 1448
    :cond_8
    :goto_7
    const/16 v25, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService;->pick_hand:I

    move/from16 v27, v0

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_20

    .line 1450
    const/16 v25, -0x1

    const/16 v27, 0x2

    aget v27, v24, v27

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_1e

    const/high16 v25, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->gyro_data_buf:[[F

    move-object/from16 v27, v0

    aget-object v27, v27, v15

    const/16 v28, 0x2

    aget v27, v27, v28

    cmpg-float v25, v25, v27

    if-gtz v25, :cond_1e

    const/16 v25, 0x2

    const/16 v27, 0x2

    aput v27, v24, v25

    .line 1452
    :cond_9
    :goto_8
    const/16 v25, -0x1

    const/16 v27, 0x1

    aget v27, v24, v27

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_1f

    const/high16 v25, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->gyro_data_buf:[[F

    move-object/from16 v27, v0

    aget-object v27, v27, v15

    const/16 v28, 0x1

    aget v27, v27, v28

    cmpg-float v25, v25, v27

    if-gtz v25, :cond_1f

    const/16 v25, 0x1

    const/16 v27, 0x2

    aput v27, v24, v25

    .line 1462
    :cond_a
    :goto_9
    const/16 v25, -0x1

    const/16 v27, 0x2

    aget v27, v24, v27

    move/from16 v0, v25

    move/from16 v1, v27

    if-eq v0, v1, :cond_24

    const/16 v25, -0x1

    const/16 v27, 0x1

    aget v27, v24, v27

    move/from16 v0, v25

    move/from16 v1, v27

    if-eq v0, v1, :cond_24

    const/16 v25, -0x1

    const/16 v27, 0x0

    aget v27, v24, v27

    move/from16 v0, v25

    move/from16 v1, v27

    if-eq v0, v1, :cond_24

    .line 1465
    :cond_b
    sget-boolean v25, Lcom/vivo/services/motion/AllConfig;->mIsAKMVirtGryo:Z

    if-nez v25, :cond_c

    sget-boolean v25, Lcom/vivo/services/motion/AllConfig;->mIsALPSVirtGryo:Z

    if-nez v25, :cond_c

    sget-boolean v25, Lcom/vivo/services/motion/AllConfig;->mIsYASVirtGryo:Z

    if-nez v25, :cond_c

    sget-boolean v25, Lcom/vivo/services/motion/AllConfig;->mIsADSPAKMVirtGryo:Z

    if-eqz v25, :cond_d

    .line 1466
    :cond_c
    const-string v25, "VGYRO_SUM"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "raw_data : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->gyro_data_buf:[[F

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x0

    aget v28, v28, v29

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ","

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->gyro_data_buf:[[F

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x1

    aget v28, v28, v29

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ","

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->gyro_data_buf:[[F

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const/16 v29, 0x2

    aget v28, v28, v29

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ",0"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    :cond_d
    sget-boolean v25, Lcom/vivo/services/motion/AllConfig;->mIsALPSVirtGryo:Z

    if-nez v25, :cond_e

    sget-boolean v25, Lcom/vivo/services/motion/AllConfig;->mIsYASVirtGryo:Z

    if-nez v25, :cond_e

    sget-boolean v25, Lcom/vivo/services/motion/AllConfig;->mIsADSPAKMVirtGryo:Z

    if-nez v25, :cond_e

    sget-boolean v25, Lcom/vivo/services/motion/AllConfig;->mIsAKMVirtGryo:Z

    if-eqz v25, :cond_2c

    .line 1472
    :cond_e
    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v4, v0, [I

    .line 1473
    .local v4, "DataCount":[I
    const/16 v25, 0x0

    const/16 v27, 0x1

    const/16 v28, 0x2

    const/16 v29, 0x0

    aput v29, v4, v28

    aput v29, v4, v27

    aput v29, v4, v25

    .line 1474
    const/4 v15, 0x0

    :goto_a
    const/16 v25, 0xa

    move/from16 v0, v25

    if-ge v15, v0, :cond_28

    .line 1476
    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->gyro_data_buf:[[F

    move-object/from16 v27, v0

    aget-object v27, v27, v15

    const/16 v28, 0x0

    aget v27, v27, v28

    cmpg-float v25, v25, v27

    if-gez v25, :cond_25

    const/16 v25, 0x0

    aget v27, v4, v25

    add-int/lit8 v27, v27, 0x1

    aput v27, v4, v25

    .line 1478
    :goto_b
    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->gyro_data_buf:[[F

    move-object/from16 v27, v0

    aget-object v27, v27, v15

    const/16 v28, 0x1

    aget v27, v27, v28

    cmpg-float v25, v25, v27

    if-gez v25, :cond_26

    const/16 v25, 0x1

    aget v27, v4, v25

    add-int/lit8 v27, v27, 0x1

    aput v27, v4, v25

    .line 1480
    :goto_c
    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->gyro_data_buf:[[F

    move-object/from16 v27, v0

    aget-object v27, v27, v15

    const/16 v28, 0x2

    aget v27, v27, v28

    cmpg-float v25, v25, v27

    if-gez v25, :cond_27

    const/16 v25, 0x2

    aget v27, v4, v25

    add-int/lit8 v27, v27, 0x1

    aput v27, v4, v25

    .line 1474
    :goto_d
    add-int/lit8 v15, v15, 0x1

    goto :goto_a

    .line 1326
    .end local v4    # "DataCount":[I
    .end local v15    # "m":I
    .end local v16    # "m_max":I
    .end local v17    # "m_min":I
    :cond_f
    const/16 v17, 0x4

    .line 1327
    .restart local v17    # "m_min":I
    const/16 v16, 0x40

    .restart local v16    # "m_max":I
    goto/16 :goto_0

    .line 1335
    .restart local v15    # "m":I
    :cond_10
    const-wide/16 v20, 0x28

    goto/16 :goto_2

    .line 1339
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->time_buf:[J

    move-object/from16 v25, v0

    add-int/lit8 v27, v15, -0x1

    aget-wide v28, v25, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->time_buf:[J

    move-object/from16 v25, v0

    aget-wide v30, v25, v15

    sub-long v20, v28, v30

    goto/16 :goto_2

    .line 1347
    .restart local v19    # "n":I
    :cond_12
    aget v25, v11, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->gyro_data_buf:[[F

    move-object/from16 v27, v0

    aget-object v27, v27, v15

    aget v27, v27, v19

    move-wide/from16 v0, v20

    long-to-float v0, v0

    move/from16 v28, v0

    mul-float v27, v27, v28

    add-float v25, v25, v27

    aput v25, v11, v19

    .line 1348
    sget-boolean v25, Lcom/vivo/services/motion/AllConfig;->mIsAKMVirtGryo:Z

    if-nez v25, :cond_13

    sget-boolean v25, Lcom/vivo/services/motion/AllConfig;->mIsALPSVirtGryo:Z

    if-nez v25, :cond_13

    sget-boolean v25, Lcom/vivo/services/motion/AllConfig;->mIsPhyGryo:Z

    if-nez v25, :cond_13

    sget-boolean v25, Lcom/vivo/services/motion/AllConfig;->mIsYASVirtGryo:Z

    if-nez v25, :cond_13

    sget-boolean v25, Lcom/vivo/services/motion/AllConfig;->mIsADSPAKMVirtGryo:Z

    if-eqz v25, :cond_14

    .line 1350
    :cond_13
    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->gyro_data_buf:[[F

    move-object/from16 v27, v0

    aget-object v27, v27, v15

    aget v27, v27, v19

    cmpg-float v25, v25, v27

    if-gez v25, :cond_15

    aget v25, v14, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->gyro_data_buf:[[F

    move-object/from16 v27, v0

    aget-object v27, v27, v15

    aget v27, v27, v19

    move-wide/from16 v0, v20

    long-to-float v0, v0

    move/from16 v28, v0

    mul-float v27, v27, v28

    add-float v25, v25, v27

    aput v25, v14, v19

    .line 1352
    :goto_e
    const/16 v25, 0x1e

    move/from16 v0, v25

    if-le v0, v15, :cond_14

    const/high16 v25, 0x41000000    # 8.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->gyro_data_buf:[[F

    move-object/from16 v27, v0

    aget-object v27, v27, v15

    aget v27, v27, v19

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(F)F

    move-result v27

    cmpg-float v25, v25, v27

    if-gez v25, :cond_14

    const/16 v18, 0x1

    .line 1341
    :cond_14
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_3

    .line 1351
    :cond_15
    aget v25, v13, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->gyro_data_buf:[[F

    move-object/from16 v27, v0

    aget-object v27, v27, v15

    aget v27, v27, v19

    move-wide/from16 v0, v20

    long-to-float v0, v0

    move/from16 v28, v0

    mul-float v27, v27, v28

    add-float v25, v25, v27

    aput v25, v13, v19

    goto :goto_e

    .line 1509
    .end local v19    # "n":I
    :catchall_0
    move-exception v25

    monitor-exit v26
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v25

    .line 1380
    .restart local v19    # "n":I
    :cond_16
    const-wide/16 v28, 0x6e

    cmp-long v25, v28, v20

    if-gez v25, :cond_5

    :try_start_1
    const-string v25, "GYRO_SUM "

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "timeDelta error : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1396
    :cond_17
    const/16 v25, 0xf

    move/from16 v0, v25

    if-le v15, v0, :cond_1c

    .line 1398
    const/4 v5, 0x0

    .line 1399
    const/16 v25, 0x0

    aget v25, v11, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v12

    .line 1400
    const/16 v25, 0x1

    aget v25, v11, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    const/16 v27, 0x0

    aget v27, v11, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(F)F

    move-result v27

    cmpl-float v25, v25, v27

    if-lez v25, :cond_1a

    .line 1402
    const/16 v25, 0x2

    aget v25, v11, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    const/16 v27, 0x1

    aget v27, v11, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(F)F

    move-result v27

    cmpl-float v25, v25, v27

    if-lez v25, :cond_19

    .line 1404
    const/4 v5, 0x1

    .line 1405
    const/16 v25, 0x1

    aget v25, v11, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v12

    .line 1432
    :cond_18
    :goto_f
    const/high16 v25, 0x43340000    # 180.0f

    mul-float v25, v25, v12

    const v27, 0x45444000    # 3140.0f

    div-float v12, v25, v27

    .line 1433
    const/high16 v25, 0x42340000    # 45.0f

    cmpl-float v25, v12, v25

    if-lez v25, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->gyro_data_buf:[[F

    move-object/from16 v25, v0

    aget-object v25, v25, v15

    aget v25, v25, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->gyro_data_buf:[[F

    move-object/from16 v27, v0

    add-int/lit8 v28, v15, -0x1

    aget-object v27, v27, v28

    aget v27, v27, v5

    mul-float v25, v25, v27

    const/16 v27, 0x0

    cmpg-float v25, v25, v27

    if-gez v25, :cond_1c

    .line 1435
    const-string v25, "DirectCallingService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Data has already,degreeSumM:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1409
    :cond_19
    const/16 v25, 0x2

    aget v25, v11, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    const/16 v27, 0x0

    aget v27, v11, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(F)F

    move-result v27

    cmpl-float v25, v25, v27

    if-lez v25, :cond_18

    .line 1411
    const/4 v5, 0x2

    .line 1412
    const/16 v25, 0x2

    aget v25, v11, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v12

    goto :goto_f

    .line 1418
    :cond_1a
    const/16 v25, 0x1

    aget v25, v11, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    const/16 v27, 0x2

    aget v27, v11, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(F)F

    move-result v27

    cmpl-float v25, v25, v27

    if-lez v25, :cond_1b

    .line 1420
    const/4 v5, 0x1

    .line 1421
    const/16 v25, 0x1

    aget v25, v11, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v12

    goto/16 :goto_f

    .line 1425
    :cond_1b
    const/16 v25, 0x0

    aget v25, v11, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    const/16 v27, 0x2

    aget v27, v11, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(F)F

    move-result v27

    cmpl-float v25, v25, v27

    if-lez v25, :cond_18

    .line 1427
    const/4 v5, 0x2

    .line 1428
    const/16 v25, 0x2

    aget v25, v11, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v12

    goto/16 :goto_f

    .line 1330
    :cond_1c
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    .line 1446
    .end local v19    # "n":I
    :cond_1d
    const/16 v25, -0x1

    const/16 v27, 0x0

    aget v27, v24, v27

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_8

    const/high16 v25, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->gyro_data_buf:[[F

    move-object/from16 v27, v0

    aget-object v27, v27, v15

    const/16 v28, 0x0

    aget v27, v27, v28

    cmpl-float v25, v25, v27

    if-ltz v25, :cond_8

    const/16 v25, 0x0

    const/16 v27, -0x2

    aput v27, v24, v25

    goto/16 :goto_7

    .line 1451
    :cond_1e
    const/16 v25, -0x1

    const/16 v27, 0x2

    aget v27, v24, v27

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_9

    const/high16 v25, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->gyro_data_buf:[[F

    move-object/from16 v27, v0

    aget-object v27, v27, v15

    const/16 v28, 0x2

    aget v27, v27, v28

    cmpl-float v25, v25, v27

    if-ltz v25, :cond_9

    const/16 v25, 0x2

    const/16 v27, -0x2

    aput v27, v24, v25

    goto/16 :goto_8

    .line 1453
    :cond_1f
    const/16 v25, -0x1

    const/16 v27, 0x1

    aget v27, v24, v27

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_a

    const/high16 v25, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->gyro_data_buf:[[F

    move-object/from16 v27, v0

    aget-object v27, v27, v15

    const/16 v28, 0x1

    aget v27, v27, v28

    cmpl-float v25, v25, v27

    if-ltz v25, :cond_a

    const/16 v25, 0x1

    const/16 v27, -0x2

    aput v27, v24, v25

    goto/16 :goto_9

    .line 1455
    :cond_20
    const/16 v25, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService;->pick_hand:I

    move/from16 v27, v0

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_a

    .line 1457
    const/16 v25, -0x1

    const/16 v27, 0x2

    aget v27, v24, v27

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_22

    const/high16 v25, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->gyro_data_buf:[[F

    move-object/from16 v27, v0

    aget-object v27, v27, v15

    const/16 v28, 0x2

    aget v27, v27, v28

    cmpg-float v25, v25, v27

    if-gtz v25, :cond_22

    const/16 v25, 0x2

    const/16 v27, -0x2

    aput v27, v24, v25

    .line 1459
    :cond_21
    :goto_10
    const/16 v25, -0x1

    const/16 v27, 0x1

    aget v27, v24, v27

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_23

    const/high16 v25, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->gyro_data_buf:[[F

    move-object/from16 v27, v0

    aget-object v27, v27, v15

    const/16 v28, 0x1

    aget v27, v27, v28

    cmpg-float v25, v25, v27

    if-gtz v25, :cond_23

    const/16 v25, 0x1

    const/16 v27, -0x2

    aput v27, v24, v25

    goto/16 :goto_9

    .line 1458
    :cond_22
    const/16 v25, -0x1

    const/16 v27, 0x2

    aget v27, v24, v27

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_21

    const/high16 v25, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->gyro_data_buf:[[F

    move-object/from16 v27, v0

    aget-object v27, v27, v15

    const/16 v28, 0x2

    aget v27, v27, v28

    cmpl-float v25, v25, v27

    if-ltz v25, :cond_21

    const/16 v25, 0x2

    const/16 v27, 0x2

    aput v27, v24, v25

    goto :goto_10

    .line 1460
    :cond_23
    const/16 v25, -0x1

    const/16 v27, 0x1

    aget v27, v24, v27

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_a

    const/high16 v25, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->gyro_data_buf:[[F

    move-object/from16 v27, v0

    aget-object v27, v27, v15

    const/16 v28, 0x1

    aget v27, v27, v28

    cmpl-float v25, v25, v27

    if-ltz v25, :cond_a

    const/16 v25, 0x1

    const/16 v27, 0x2

    aput v27, v24, v25

    goto/16 :goto_9

    .line 1443
    :cond_24
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_6

    .line 1477
    .restart local v4    # "DataCount":[I
    :cond_25
    const/16 v25, 0x0

    aget v27, v4, v25

    add-int/lit8 v27, v27, -0x1

    aput v27, v4, v25

    goto/16 :goto_b

    .line 1479
    :cond_26
    const/16 v25, 0x1

    aget v27, v4, v25

    add-int/lit8 v27, v27, -0x1

    aput v27, v4, v25

    goto/16 :goto_c

    .line 1481
    :cond_27
    const/16 v25, 0x2

    aget v27, v4, v25

    add-int/lit8 v27, v27, -0x1

    aput v27, v4, v25

    goto/16 :goto_d

    .line 1483
    :cond_28
    const/16 v25, 0x0

    const/16 v27, 0x1

    const/16 v28, 0x2

    const/16 v29, 0x0

    aput v29, v6, v28

    aput v29, v6, v27

    aput v29, v6, v25

    .line 1484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->gyro_data_buf:[[F

    move-object/from16 v25, v0

    const/16 v27, 0x0

    aget-object v25, v25, v27

    const/16 v27, 0x0

    aget v25, v25, v27

    const/high16 v27, 0x41200000    # 10.0f

    mul-float v25, v25, v27

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v19, v0

    .line 1485
    .restart local v19    # "n":I
    const/16 v25, 0xa

    const/16 v27, 0x0

    aget v27, v4, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(I)I

    move-result v27

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_29

    .line 1487
    if-lez v19, :cond_57

    const/16 v25, 0x0

    add-int/lit8 v27, v19, 0x1

    mul-int v27, v27, v19

    div-int/lit8 v27, v27, 0x14

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    aput v27, v6, v25

    .line 1490
    :cond_29
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->gyro_data_buf:[[F

    move-object/from16 v25, v0

    const/16 v27, 0x0

    aget-object v25, v25, v27

    const/16 v27, 0x1

    aget v25, v25, v27

    const/high16 v27, 0x41200000    # 10.0f

    mul-float v25, v25, v27

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v19, v0

    .line 1491
    const/16 v25, 0xa

    const/16 v27, 0x1

    aget v27, v4, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(I)I

    move-result v27

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_2a

    .line 1493
    if-lez v19, :cond_58

    const/16 v25, 0x1

    add-int/lit8 v27, v19, 0x1

    mul-int v27, v27, v19

    div-int/lit8 v27, v27, 0x14

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    aput v27, v6, v25

    .line 1496
    :cond_2a
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->gyro_data_buf:[[F

    move-object/from16 v25, v0

    const/16 v27, 0x0

    aget-object v25, v25, v27

    const/16 v27, 0x2

    aget v25, v25, v27

    const/high16 v27, 0x41200000    # 10.0f

    mul-float v25, v25, v27

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v19, v0

    .line 1497
    const/16 v25, 0xa

    const/16 v27, 0x2

    aget v27, v4, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(I)I

    move-result v27

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_2b

    .line 1499
    if-lez v19, :cond_59

    const/16 v25, 0x2

    add-int/lit8 v27, v19, 0x1

    mul-int v27, v27, v19

    div-int/lit8 v27, v27, 0x14

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    aput v27, v6, v25

    .line 1502
    :cond_2b
    :goto_13
    const-string v25, "DirectCallingService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "dataStore[0]:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const/16 v28, 0x0

    aget v28, v6, v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "dataStore[1]:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const/16 v28, 0x1

    aget v28, v6, v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "dataStore[2]:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const/16 v28, 0x2

    aget v28, v6, v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    const/16 v25, 0x0

    aget v27, v6, v25

    move/from16 v0, v27

    float-to-double v0, v0

    move-wide/from16 v28, v0

    const-wide v30, 0x3ff25604189374bcL    # 1.146

    mul-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v27, v0

    aput v27, v6, v25

    .line 1505
    const/16 v25, 0x1

    aget v27, v6, v25

    move/from16 v0, v27

    float-to-double v0, v0

    move-wide/from16 v28, v0

    const-wide v30, 0x3ff25604189374bcL    # 1.146

    mul-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v27, v0

    aput v27, v6, v25

    .line 1506
    const/16 v25, 0x2

    aget v27, v6, v25

    move/from16 v0, v27

    float-to-double v0, v0

    move-wide/from16 v28, v0

    const-wide v30, 0x3ff25604189374bcL    # 1.146

    mul-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v27, v0

    aput v27, v6, v25

    .line 1507
    const-string v25, "DirectCallingService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "dataStore[0]:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const/16 v28, 0x0

    aget v28, v6, v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "dataStore[1]:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const/16 v28, 0x1

    aget v28, v6, v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "dataStore[2]:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const/16 v28, 0x2

    aget v28, v6, v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    .end local v4    # "DataCount":[I
    .end local v19    # "n":I
    :cond_2c
    monitor-exit v26
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1510
    const/16 v25, 0x0

    const/16 v26, 0x0

    aget v26, v11, v26

    const/high16 v27, 0x43340000    # 180.0f

    mul-float v26, v26, v27

    const v27, 0x45444000    # 3140.0f

    div-float v26, v26, v27

    aput v26, v11, v25

    .line 1511
    const/16 v25, 0x1

    const/16 v26, 0x1

    aget v26, v11, v26

    const/high16 v27, 0x43340000    # 180.0f

    mul-float v26, v26, v27

    const v27, 0x45444000    # 3140.0f

    div-float v26, v26, v27

    aput v26, v11, v25

    .line 1512
    const/16 v25, 0x2

    const/16 v26, 0x2

    aget v26, v11, v26

    const/high16 v27, 0x43340000    # 180.0f

    mul-float v26, v26, v27

    const v27, 0x45444000    # 3140.0f

    div-float v26, v26, v27

    aput v26, v11, v25

    .line 1513
    const-string v25, "DirectCallingService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "degreeSum[0]:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0x0

    aget v27, v11, v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "degreeSum[1]:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0x1

    aget v27, v11, v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "degreeSum[2]:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0x2

    aget v27, v11, v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    sget-boolean v25, Lcom/vivo/services/motion/AllConfig;->mIsAKMVirtGryo:Z

    if-nez v25, :cond_2d

    sget-boolean v25, Lcom/vivo/services/motion/AllConfig;->mIsALPSVirtGryo:Z

    if-nez v25, :cond_2d

    sget-boolean v25, Lcom/vivo/services/motion/AllConfig;->mIsYASVirtGryo:Z

    if-nez v25, :cond_2d

    sget-boolean v25, Lcom/vivo/services/motion/AllConfig;->mIsADSPAKMVirtGryo:Z

    if-eqz v25, :cond_2e

    .line 1516
    :cond_2d
    const/16 v25, 0x0

    const/16 v26, 0x0

    aget v26, v14, v26

    const/high16 v27, 0x43340000    # 180.0f

    mul-float v26, v26, v27

    const v27, 0x45444000    # 3140.0f

    div-float v26, v26, v27

    aput v26, v14, v25

    .line 1517
    const/16 v25, 0x1

    const/16 v26, 0x1

    aget v26, v14, v26

    const/high16 v27, 0x43340000    # 180.0f

    mul-float v26, v26, v27

    const v27, 0x45444000    # 3140.0f

    div-float v26, v26, v27

    aput v26, v14, v25

    .line 1518
    const/16 v25, 0x2

    const/16 v26, 0x2

    aget v26, v14, v26

    const/high16 v27, 0x43340000    # 180.0f

    mul-float v26, v26, v27

    const v27, 0x45444000    # 3140.0f

    div-float v26, v26, v27

    aput v26, v14, v25

    .line 1519
    const/16 v25, 0x0

    const/16 v26, 0x0

    aget v26, v13, v26

    const/high16 v27, 0x43340000    # 180.0f

    mul-float v26, v26, v27

    const v27, 0x45444000    # 3140.0f

    div-float v26, v26, v27

    aput v26, v13, v25

    .line 1520
    const/16 v25, 0x1

    const/16 v26, 0x1

    aget v26, v13, v26

    const/high16 v27, 0x43340000    # 180.0f

    mul-float v26, v26, v27

    const v27, 0x45444000    # 3140.0f

    div-float v26, v26, v27

    aput v26, v13, v25

    .line 1521
    const/16 v25, 0x2

    const/16 v26, 0x2

    aget v26, v13, v26

    const/high16 v27, 0x43340000    # 180.0f

    mul-float v26, v26, v27

    const v27, 0x45444000    # 3140.0f

    div-float v26, v26, v27

    aput v26, v13, v25

    .line 1523
    const-string v25, "DirectCallingService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "degreeSump[0]: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0x0

    aget v27, v14, v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "degreeSump[1]: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0x1

    aget v27, v14, v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "degreeSump[2]:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0x2

    aget v27, v14, v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    const-string v25, "DirectCallingService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "degreeSumn[0]: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0x0

    aget v27, v13, v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "degreeSumn[1]: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0x1

    aget v27, v13, v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "degreeSumn[2]:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0x2

    aget v27, v13, v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    :cond_2e
    sget-boolean v25, Lcom/vivo/services/motion/AllConfig;->mIsAKMVirtGryo:Z

    if-nez v25, :cond_2f

    sget-boolean v25, Lcom/vivo/services/motion/AllConfig;->mIsALPSVirtGryo:Z

    if-nez v25, :cond_2f

    sget-boolean v25, Lcom/vivo/services/motion/AllConfig;->mIsYASVirtGryo:Z

    if-nez v25, :cond_2f

    sget-boolean v25, Lcom/vivo/services/motion/AllConfig;->mIsADSPAKMVirtGryo:Z

    if-eqz v25, :cond_5a

    .line 1529
    :cond_2f
    const/16 v25, 0x0

    aget v25, v11, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    const/high16 v26, 0x42200000    # 40.0f

    cmpl-float v25, v25, v26

    if-lez v25, :cond_30

    const/16 v25, 0x1

    aget v25, v11, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    const/high16 v26, 0x41f00000    # 30.0f

    cmpl-float v25, v25, v26

    if-gtz v25, :cond_37

    :cond_30
    const/16 v25, 0x0

    aget v25, v11, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    const/high16 v26, 0x42200000    # 40.0f

    cmpl-float v25, v25, v26

    if-lez v25, :cond_31

    const/16 v25, 0x2

    aget v25, v11, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    const/high16 v26, 0x42200000    # 40.0f

    cmpl-float v25, v25, v26

    if-gtz v25, :cond_37

    :cond_31
    const/16 v25, 0x1

    aget v25, v11, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    const/high16 v26, 0x41f00000    # 30.0f

    cmpl-float v25, v25, v26

    if-lez v25, :cond_32

    const/16 v25, 0x2

    aget v25, v11, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    const/high16 v26, 0x42200000    # 40.0f

    cmpl-float v25, v25, v26

    if-gtz v25, :cond_37

    :cond_32
    const/16 v25, 0x2

    aget v25, v11, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    const/high16 v26, 0x42600000    # 56.0f

    cmpl-float v25, v25, v26

    if-lez v25, :cond_33

    const/16 v25, 0x0

    aget v25, v11, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    const/16 v26, 0x1

    aget v26, v11, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v26

    add-float v25, v25, v26

    const/high16 v26, 0x41f00000    # 30.0f

    cmpl-float v25, v25, v26

    if-gtz v25, :cond_37

    :cond_33
    const/16 v25, 0x0

    aget v25, v11, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    const/high16 v26, 0x42600000    # 56.0f

    cmpl-float v25, v25, v26

    if-lez v25, :cond_34

    const/16 v25, 0x1

    aget v25, v11, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    const/16 v26, 0x2

    aget v26, v11, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v26

    add-float v25, v25, v26

    const/high16 v26, 0x41d00000    # 26.0f

    cmpl-float v25, v25, v26

    if-gtz v25, :cond_37

    :cond_34
    const/16 v25, 0x0

    aget v25, v11, v25

    const/16 v26, 0x0

    aget v26, v6, v26

    add-float v25, v25, v26

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    const/high16 v26, 0x42200000    # 40.0f

    cmpl-float v25, v25, v26

    if-lez v25, :cond_35

    const/16 v25, 0x1

    aget v25, v11, v25

    const/16 v26, 0x1

    aget v26, v6, v26

    add-float v25, v25, v26

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    const/high16 v26, 0x41f00000    # 30.0f

    cmpl-float v25, v25, v26

    if-gtz v25, :cond_37

    :cond_35
    const/16 v25, 0x0

    aget v25, v11, v25

    const/16 v26, 0x0

    aget v26, v6, v26

    add-float v25, v25, v26

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    const/high16 v26, 0x42200000    # 40.0f

    cmpl-float v25, v25, v26

    if-lez v25, :cond_36

    const/16 v25, 0x2

    aget v25, v11, v25

    const/16 v26, 0x2

    aget v26, v6, v26

    add-float v25, v25, v26

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    const/high16 v26, 0x42200000    # 40.0f

    cmpl-float v25, v25, v26

    if-gtz v25, :cond_37

    :cond_36
    const/16 v25, 0x1

    aget v25, v11, v25

    const/16 v26, 0x1

    aget v26, v6, v26

    add-float v25, v25, v26

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    const/high16 v26, 0x41f00000    # 30.0f

    cmpl-float v25, v25, v26

    if-lez v25, :cond_38

    const/16 v25, 0x2

    aget v25, v11, v25

    const/16 v26, 0x2

    aget v26, v6, v26

    add-float v25, v25, v26

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    const/high16 v26, 0x42200000    # 40.0f

    cmpl-float v25, v25, v26

    if-lez v25, :cond_38

    .line 1538
    :cond_37
    const/4 v10, 0x1

    .line 1551
    :cond_38
    :goto_14
    sget-boolean v25, Lcom/vivo/services/motion/AllConfig;->mIsAKMVirtGryo:Z

    if-nez v25, :cond_39

    sget-boolean v25, Lcom/vivo/services/motion/AllConfig;->mIsADSPAKMVirtGryo:Z

    if-eqz v25, :cond_5e

    .line 1553
    :cond_39
    const/16 v25, 0x2

    const/16 v26, 0x2

    aget v26, v24, v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_44

    const/16 v25, 0x2

    const/16 v26, 0x0

    aget v26, v24, v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_44

    .line 1556
    const/16 v25, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService;->pick_hand:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_3e

    .line 1558
    const v25, 0x40333333    # 2.8f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->gyro_data_buf:[[F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget v26, v26, v27

    cmpg-float v25, v25, v26

    if-gez v25, :cond_3d

    const v25, 0x40333333    # 2.8f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->gyro_data_buf:[[F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x2

    aget v26, v26, v27

    cmpg-float v25, v25, v26

    if-gez v25, :cond_3d

    .line 1559
    const/16 v25, 0x0

    aget v25, v14, v25

    const/high16 v26, 0x40000000    # 2.0f

    mul-float v25, v25, v26

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    const/high16 v26, 0x42200000    # 40.0f

    cmpl-float v25, v25, v26

    if-lez v25, :cond_3a

    const/16 v25, 0x1

    aget v25, v14, v25

    const/high16 v26, 0x40000000    # 2.0f

    mul-float v25, v25, v26

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    const/high16 v26, 0x41f00000    # 30.0f

    cmpl-float v25, v25, v26

    if-gtz v25, :cond_3c

    :cond_3a
    const/16 v25, 0x0

    aget v25, v14, v25

    const/high16 v26, 0x40000000    # 2.0f

    mul-float v25, v25, v26

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    const/high16 v26, 0x42200000    # 40.0f

    cmpl-float v25, v25, v26

    if-lez v25, :cond_3b

    const/16 v25, 0x2

    aget v25, v14, v25

    const/high16 v26, 0x40000000    # 2.0f

    mul-float v25, v25, v26

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    const/high16 v26, 0x42200000    # 40.0f

    cmpl-float v25, v25, v26

    if-gtz v25, :cond_3c

    :cond_3b
    const/16 v25, 0x1

    aget v25, v14, v25

    const/high16 v26, 0x40000000    # 2.0f

    mul-float v25, v25, v26

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    const/high16 v26, 0x41f00000    # 30.0f

    cmpl-float v25, v25, v26

    if-lez v25, :cond_3d

    const/16 v25, 0x2

    aget v25, v14, v25

    const/high16 v26, 0x40000000    # 2.0f

    mul-float v25, v25, v26

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    const/high16 v26, 0x42200000    # 40.0f

    cmpl-float v25, v25, v26

    if-lez v25, :cond_3d

    .line 1562
    :cond_3c
    const/4 v10, 0x1

    .line 1564
    :cond_3d
    const/high16 v25, 0x42c80000    # 100.0f

    const/16 v26, 0x0

    aget v26, v14, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v26

    const/16 v27, 0x2

    aget v27, v14, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(F)F

    move-result v27

    add-float v26, v26, v27

    cmpg-float v25, v25, v26

    if-gez v25, :cond_3e

    const/high16 v25, 0x420c0000    # 35.0f

    const/16 v26, 0x2

    aget v26, v14, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v26

    cmpg-float v25, v25, v26

    if-gez v25, :cond_3e

    const/high16 v25, 0x420c0000    # 35.0f

    const/16 v26, 0x0

    aget v26, v14, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v26

    cmpg-float v25, v25, v26

    if-gez v25, :cond_3e

    .line 1565
    const/4 v10, 0x1

    .line 1567
    :cond_3e
    const/16 v25, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService;->pick_hand:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_44

    .line 1569
    const v25, 0x40333333    # 2.8f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->gyro_data_buf:[[F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x0

    aget v26, v26, v27

    cmpg-float v25, v25, v26

    if-gez v25, :cond_42

    const v25, -0x3fcccccd    # -2.8f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->gyro_data_buf:[[F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x2

    aget v26, v26, v27

    cmpl-float v25, v25, v26

    if-lez v25, :cond_42

    .line 1570
    const/16 v25, 0x0

    aget v25, v14, v25

    const/high16 v26, 0x40000000    # 2.0f

    mul-float v25, v25, v26

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    const/high16 v26, 0x42200000    # 40.0f

    cmpl-float v25, v25, v26

    if-lez v25, :cond_3f

    const/16 v25, 0x1

    aget v25, v13, v25

    const/high16 v26, 0x40000000    # 2.0f

    mul-float v25, v25, v26

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    const/high16 v26, 0x41f00000    # 30.0f

    cmpl-float v25, v25, v26

    if-gtz v25, :cond_41

    :cond_3f
    const/16 v25, 0x0

    aget v25, v14, v25

    const/high16 v26, 0x40000000    # 2.0f

    mul-float v25, v25, v26

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    const/high16 v26, 0x42200000    # 40.0f

    cmpl-float v25, v25, v26

    if-lez v25, :cond_40

    const/16 v25, 0x2

    aget v25, v13, v25

    const/high16 v26, 0x40000000    # 2.0f

    mul-float v25, v25, v26

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    const/high16 v26, 0x42200000    # 40.0f

    cmpl-float v25, v25, v26

    if-gtz v25, :cond_41

    :cond_40
    const/16 v25, 0x1

    aget v25, v13, v25

    const/high16 v26, 0x40000000    # 2.0f

    mul-float v25, v25, v26

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    const/high16 v26, 0x41f00000    # 30.0f

    cmpl-float v25, v25, v26

    if-lez v25, :cond_42

    const/16 v25, 0x2

    aget v25, v13, v25

    const/high16 v26, 0x40000000    # 2.0f

    mul-float v25, v25, v26

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    const/high16 v26, 0x42200000    # 40.0f

    cmpl-float v25, v25, v26

    if-lez v25, :cond_42

    .line 1573
    :cond_41
    const/4 v10, 0x1

    .line 1575
    :cond_42
    const/high16 v25, 0x42c80000    # 100.0f

    const/16 v26, 0x0

    aget v26, v14, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v26

    const/16 v27, 0x2

    aget v27, v13, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(F)F

    move-result v27

    add-float v26, v26, v27

    cmpg-float v25, v25, v26

    if-gez v25, :cond_44

    const/high16 v25, 0x420c0000    # 35.0f

    const/16 v26, 0x2

    aget v26, v13, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v26

    cmpg-float v25, v25, v26

    if-ltz v25, :cond_43

    const/high16 v25, 0x420c0000    # 35.0f

    const/16 v26, 0x0

    aget v26, v14, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v26

    cmpg-float v25, v25, v26

    if-gez v25, :cond_44

    .line 1576
    :cond_43
    const/4 v10, 0x1

    .line 1583
    :cond_44
    const-string v25, "DirectCallingService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "xyz[2]: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0x2

    aget v27, v24, v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "xyz[0]: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0x0

    aget v27, v24, v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "pick_hand:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService;->pick_hand:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    if-eqz v18, :cond_4c

    .line 1586
    const/16 v25, 0x0

    aget v25, v7, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    const/high16 v26, 0x42200000    # 40.0f

    cmpl-float v25, v25, v26

    if-lez v25, :cond_45

    const/16 v25, 0x1

    aget v25, v7, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    const/high16 v26, 0x41f00000    # 30.0f

    cmpl-float v25, v25, v26

    if-gtz v25, :cond_4a

    :cond_45
    const/16 v25, 0x0

    aget v25, v7, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    const/high16 v26, 0x42200000    # 40.0f

    cmpl-float v25, v25, v26

    if-lez v25, :cond_46

    const/16 v25, 0x2

    aget v25, v7, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    const/high16 v26, 0x42200000    # 40.0f

    cmpl-float v25, v25, v26

    if-gtz v25, :cond_4a

    :cond_46
    const/16 v25, 0x1

    aget v25, v7, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    const/high16 v26, 0x41f00000    # 30.0f

    cmpl-float v25, v25, v26

    if-lez v25, :cond_47

    const/16 v25, 0x2

    aget v25, v7, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    const/high16 v26, 0x42200000    # 40.0f

    cmpl-float v25, v25, v26

    if-gtz v25, :cond_4a

    :cond_47
    const/16 v25, 0x0

    aget v25, v7, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    const/high16 v26, 0x42a00000    # 80.0f

    cmpl-float v25, v25, v26

    if-lez v25, :cond_48

    const/16 v25, 0x1

    aget v25, v7, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    const/high16 v26, 0x42a00000    # 80.0f

    cmpl-float v25, v25, v26

    if-lez v25, :cond_48

    const/16 v25, 0x2

    aget v25, v7, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    const/high16 v26, 0x41f00000    # 30.0f

    cmpl-float v25, v25, v26

    if-gtz v25, :cond_4a

    :cond_48
    const/16 v25, 0x0

    aget v25, v7, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    const/high16 v26, 0x41f00000    # 30.0f

    cmpl-float v25, v25, v26

    if-lez v25, :cond_49

    const/16 v25, 0x1

    aget v25, v7, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    const/high16 v26, 0x42a00000    # 80.0f

    cmpl-float v25, v25, v26

    if-lez v25, :cond_49

    const/16 v25, 0x2

    aget v25, v7, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    const/high16 v26, 0x42a00000    # 80.0f

    cmpl-float v25, v25, v26

    if-gtz v25, :cond_4a

    :cond_49
    const/16 v25, 0x0

    aget v25, v7, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    const/high16 v26, 0x42a00000    # 80.0f

    cmpl-float v25, v25, v26

    if-lez v25, :cond_4b

    const/16 v25, 0x1

    aget v25, v7, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    const/high16 v26, 0x41f00000    # 30.0f

    cmpl-float v25, v25, v26

    if-lez v25, :cond_4b

    const/16 v25, 0x2

    aget v25, v7, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    const/high16 v26, 0x42a00000    # 80.0f

    cmpl-float v25, v25, v26

    if-lez v25, :cond_4b

    .line 1592
    :cond_4a
    const/4 v10, 0x1

    .line 1593
    :cond_4b
    const-string v25, "DirectCallingService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "degreeFast[0]: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0x0

    aget v27, v7, v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "degreeFast[1]: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0x1

    aget v27, v7, v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "degreeFast[2]:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0x2

    aget v27, v7, v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    const-string v25, "DirectCallingService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "degreeFastp[0]: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0x0

    aget v27, v9, v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "degreeFastp[1]: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0x1

    aget v27, v9, v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "degreeFastp[2]:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0x2

    aget v27, v9, v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    const-string v25, "DirectCallingService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "degreeFastn[0]: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0x0

    aget v27, v8, v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "degreeFastn[1]: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0x1

    aget v27, v8, v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "degreeFastn[2]:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0x2

    aget v27, v8, v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    :cond_4c
    const/16 v25, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService;->pick_hand:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_50

    .line 1599
    const/16 v25, 0x0

    aget v25, v14, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    const/high16 v26, 0x42200000    # 40.0f

    cmpl-float v25, v25, v26

    if-lez v25, :cond_4d

    const/16 v25, 0x1

    aget v25, v14, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    const/high16 v26, 0x41f00000    # 30.0f

    cmpl-float v25, v25, v26

    if-gtz v25, :cond_4f

    :cond_4d
    const/16 v25, 0x0

    aget v25, v14, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    const/high16 v26, 0x42200000    # 40.0f

    cmpl-float v25, v25, v26

    if-lez v25, :cond_4e

    const/16 v25, 0x2

    aget v25, v14, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    const/high16 v26, 0x42000000    # 32.0f

    cmpl-float v25, v25, v26

    if-gtz v25, :cond_4f

    :cond_4e
    const/16 v25, 0x1

    aget v25, v14, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    const/high16 v26, 0x41f00000    # 30.0f

    cmpl-float v25, v25, v26

    if-lez v25, :cond_50

    const/16 v25, 0x2

    aget v25, v14, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    const/high16 v26, 0x42200000    # 40.0f

    cmpl-float v25, v25, v26

    if-lez v25, :cond_50

    .line 1602
    :cond_4f
    const/4 v10, 0x1

    .line 1604
    :cond_50
    const/16 v25, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService;->pick_hand:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_54

    .line 1606
    const/16 v25, 0x0

    aget v25, v14, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    const/high16 v26, 0x42200000    # 40.0f

    cmpl-float v25, v25, v26

    if-lez v25, :cond_51

    const/16 v25, 0x1

    aget v25, v13, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    const/high16 v26, 0x41f00000    # 30.0f

    cmpl-float v25, v25, v26

    if-gtz v25, :cond_53

    :cond_51
    const/16 v25, 0x0

    aget v25, v14, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    const/high16 v26, 0x42200000    # 40.0f

    cmpl-float v25, v25, v26

    if-lez v25, :cond_52

    const/16 v25, 0x2

    aget v25, v13, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    const/high16 v26, 0x42200000    # 40.0f

    cmpl-float v25, v25, v26

    if-gtz v25, :cond_53

    :cond_52
    const/16 v25, 0x1

    aget v25, v13, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    const/high16 v26, 0x41f00000    # 30.0f

    cmpl-float v25, v25, v26

    if-lez v25, :cond_54

    const/16 v25, 0x2

    aget v25, v13, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    const/high16 v26, 0x42200000    # 40.0f

    cmpl-float v25, v25, v26

    if-lez v25, :cond_54

    .line 1609
    :cond_53
    const/4 v10, 0x1

    .line 1624
    :cond_54
    :goto_15
    if-eqz v10, :cond_56

    .line 1628
    sget-boolean v25, Lcom/vivo/services/motion/AllConfig;->mIsAKMVirtGryo:Z

    if-eqz v25, :cond_62

    .line 1631
    const/high16 v25, 0x43200000    # 160.0f

    const/16 v26, 0x1

    aget v26, v11, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v26

    cmpg-float v25, v25, v26

    if-ltz v25, :cond_55

    const/high16 v25, 0x437a0000    # 250.0f

    const/16 v26, 0x0

    aget v26, v11, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v26

    cmpg-float v25, v25, v26

    if-ltz v25, :cond_55

    const/high16 v25, 0x437a0000    # 250.0f

    const/16 v26, 0x2

    aget v26, v11, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v26

    cmpg-float v25, v25, v26

    if-gez v25, :cond_56

    .line 1633
    :cond_55
    const/4 v10, 0x0

    .line 1653
    :cond_56
    :goto_16
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vivo/services/motion/DirectCallingService;->pick_hand:I

    .line 1655
    return v10

    .line 1488
    .restart local v4    # "DataCount":[I
    .restart local v19    # "n":I
    :cond_57
    const/16 v25, 0x0

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v27, v0

    add-int/lit8 v27, v27, 0x1

    move/from16 v0, v27

    neg-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v28, v0

    mul-int v27, v27, v28

    :try_start_2
    div-int/lit8 v27, v27, 0x14

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    aput v27, v6, v25

    goto/16 :goto_11

    .line 1494
    :cond_58
    const/16 v25, 0x1

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v27, v0

    add-int/lit8 v27, v27, 0x1

    move/from16 v0, v27

    neg-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v28, v0

    mul-int v27, v27, v28

    div-int/lit8 v27, v27, 0x14

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    aput v27, v6, v25

    goto/16 :goto_12

    .line 1500
    :cond_59
    const/16 v25, 0x2

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v27, v0

    add-int/lit8 v27, v27, 0x1

    move/from16 v0, v27

    neg-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v28, v0

    mul-int v27, v27, v28

    div-int/lit8 v27, v27, 0x14

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    aput v27, v6, v25
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_13

    .line 1543
    .end local v4    # "DataCount":[I
    .end local v19    # "n":I
    :cond_5a
    const/16 v25, 0x0

    aget v25, v11, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    const/high16 v26, 0x42340000    # 45.0f

    cmpl-float v25, v25, v26

    if-lez v25, :cond_5b

    const/16 v25, 0x1

    aget v25, v11, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    const/high16 v26, 0x41f00000    # 30.0f

    cmpl-float v25, v25, v26

    if-gtz v25, :cond_5d

    :cond_5b
    const/16 v25, 0x0

    aget v25, v11, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    const/high16 v26, 0x42200000    # 40.0f

    cmpl-float v25, v25, v26

    if-lez v25, :cond_5c

    const/16 v25, 0x2

    aget v25, v11, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    const/high16 v26, 0x42340000    # 45.0f

    cmpl-float v25, v25, v26

    if-gtz v25, :cond_5d

    :cond_5c
    const/16 v25, 0x1

    aget v25, v11, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    const/high16 v26, 0x41f00000    # 30.0f

    cmpl-float v25, v25, v26

    if-lez v25, :cond_38

    const/16 v25, 0x2

    aget v25, v11, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    const/high16 v26, 0x42340000    # 45.0f

    cmpl-float v25, v25, v26

    if-lez v25, :cond_38

    .line 1547
    :cond_5d
    const/4 v10, 0x1

    goto/16 :goto_14

    .line 1612
    :cond_5e
    sget-boolean v25, Lcom/vivo/services/motion/AllConfig;->mIsPhyGryo:Z

    if-eqz v25, :cond_54

    .line 1614
    const/16 v25, 0x2

    const/16 v26, 0x2

    aget v26, v24, v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_61

    const/16 v25, 0x2

    const/16 v26, 0x1

    aget v26, v24, v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_61

    const/16 v25, 0x2

    const/16 v26, 0x0

    aget v26, v24, v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_61

    const/high16 v25, 0x42340000    # 45.0f

    const/16 v26, 0x0

    aget v26, v14, v26

    cmpg-float v25, v25, v26

    if-gtz v25, :cond_61

    .line 1617
    const/16 v25, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService;->pick_hand:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_5f

    const/high16 v25, 0x42340000    # 45.0f

    const/16 v26, 0x1

    aget v26, v14, v26

    cmpg-float v25, v25, v26

    if-gtz v25, :cond_5f

    const/high16 v25, 0x42340000    # 45.0f

    const/16 v26, 0x2

    aget v26, v14, v26

    cmpg-float v25, v25, v26

    if-lez v25, :cond_60

    :cond_5f
    const/16 v25, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService;->pick_hand:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_61

    const/high16 v25, -0x3dcc0000    # -45.0f

    const/16 v26, 0x1

    aget v26, v13, v26

    cmpl-float v25, v25, v26

    if-ltz v25, :cond_61

    const/high16 v25, -0x3dcc0000    # -45.0f

    const/16 v26, 0x2

    aget v26, v13, v26

    cmpl-float v25, v25, v26

    if-ltz v25, :cond_61

    .line 1619
    :cond_60
    const/4 v10, 0x1

    .line 1621
    :cond_61
    const-string v25, "DirectCallingService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "xyz[2]: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0x2

    aget v27, v24, v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "xyz[1]: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0x1

    aget v27, v24, v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "xyz[0]: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0x0

    aget v27, v24, v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "pick_hand:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService;->pick_hand:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    .line 1635
    :cond_62
    sget-boolean v25, Lcom/vivo/services/motion/AllConfig;->mIsALPSVirtGryo:Z

    if-nez v25, :cond_63

    sget-boolean v25, Lcom/vivo/services/motion/AllConfig;->mIsYASVirtGryo:Z

    if-nez v25, :cond_63

    sget-boolean v25, Lcom/vivo/services/motion/AllConfig;->mIsADSPAKMVirtGryo:Z

    if-eqz v25, :cond_65

    .line 1642
    :cond_63
    const/high16 v25, 0x43160000    # 150.0f

    const/16 v26, 0x1

    aget v26, v11, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v26

    cmpg-float v25, v25, v26

    if-ltz v25, :cond_64

    const/high16 v25, 0x437a0000    # 250.0f

    const/16 v26, 0x0

    aget v26, v11, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v26

    cmpg-float v25, v25, v26

    if-ltz v25, :cond_64

    const/high16 v25, 0x437a0000    # 250.0f

    const/16 v26, 0x2

    aget v26, v11, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v26

    cmpg-float v25, v25, v26

    if-gez v25, :cond_56

    .line 1644
    :cond_64
    const/4 v10, 0x0

    goto/16 :goto_16

    .line 1648
    :cond_65
    const/high16 v25, 0x43340000    # 180.0f

    const/16 v26, 0x1

    aget v26, v11, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v26

    cmpg-float v25, v25, v26

    if-ltz v25, :cond_66

    const/high16 v25, 0x43870000    # 270.0f

    const/16 v26, 0x0

    aget v26, v11, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v26

    cmpg-float v25, v25, v26

    if-ltz v25, :cond_66

    const/high16 v25, 0x43870000    # 270.0f

    const/16 v26, 0x2

    aget v26, v11, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v26

    cmpg-float v25, v25, v26

    if-gez v25, :cond_56

    .line 1650
    :cond_66
    const/4 v10, 0x0

    goto/16 :goto_16
.end method

.method degreeAnalist_2()Z
    .locals 22

    .prologue
    .line 1660
    const/4 v4, 0x0

    .line 1661
    .local v4, "degreeFlag":Z
    const/4 v15, 0x3

    new-array v5, v15, [F

    .line 1662
    .local v5, "degreeSum":[F
    const/4 v15, 0x3

    new-array v7, v15, [F

    .line 1663
    .local v7, "degreeSump":[F
    const/4 v15, 0x3

    new-array v6, v15, [F

    .line 1664
    .local v6, "degreeSumn":[F
    const-wide/16 v10, 0x0

    .line 1665
    .local v10, "timeDelta":J
    const/4 v3, 0x0

    .line 1666
    .local v3, "dataStore":I
    const-wide/16 v12, 0x0

    .line 1667
    .local v12, "timeSum":J
    const/4 v15, 0x3

    new-array v14, v15, [I

    .line 1668
    .local v14, "xyz":[I
    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x2

    const/16 v18, -0x1

    aput v18, v14, v17

    aput v18, v14, v16

    aput v18, v14, v15

    .line 1670
    const-string v15, "GYRO_SUM "

    const-string v16, "YASVirtGryo style"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    sget-object v16, Lcom/vivo/services/motion/DirectCallingService;->mDataLock:Ljava/lang/Object;

    monitor-enter v16

    .line 1673
    const/4 v8, 0x0

    .local v8, "m":I
    :goto_0
    const/16 v15, 0x3c

    if-ge v8, v15, :cond_5

    .line 1675
    if-nez v8, :cond_2

    .line 1677
    const-wide/16 v10, 0x14

    .line 1683
    :goto_1
    const/4 v9, 0x0

    .local v9, "n":I
    :goto_2
    const/4 v15, 0x3

    if-ge v9, v15, :cond_0

    .line 1686
    const-wide/16 v18, 0x32

    cmp-long v15, v18, v10

    if-gez v15, :cond_3

    .line 1695
    :cond_0
    const-wide/16 v18, 0x27

    cmp-long v15, v18, v10

    if-gez v15, :cond_1

    :try_start_0
    const-string v15, "GYRO_SUM "

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "timeDelta error : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1698
    :cond_1
    const-string v15, "DirectCallingService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "GYRO_SUM , raw_data : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->gyro_data_buf:[[F

    move-object/from16 v18, v0

    aget-object v18, v18, v8

    const/16 v19, 0x0

    aget v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->gyro_data_buf:[[F

    move-object/from16 v18, v0

    aget-object v18, v18, v8

    const/16 v19, 0x1

    aget v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->gyro_data_buf:[[F

    move-object/from16 v18, v0

    aget-object v18, v18, v8

    const/16 v19, 0x2

    aget v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 1681
    .end local v9    # "n":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vivo/services/motion/DirectCallingService;->time_buf:[J

    add-int/lit8 v17, v8, -0x1

    aget-wide v18, v15, v17

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vivo/services/motion/DirectCallingService;->time_buf:[J

    aget-wide v20, v15, v8

    sub-long v10, v18, v20

    goto/16 :goto_1

    .line 1688
    .restart local v9    # "n":I
    :cond_3
    aget v15, v5, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->gyro_data_buf:[[F

    move-object/from16 v17, v0

    aget-object v17, v17, v8

    aget v17, v17, v9

    long-to-float v0, v10

    move/from16 v18, v0

    mul-float v17, v17, v18

    add-float v15, v15, v17

    aput v15, v5, v9

    .line 1690
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->gyro_data_buf:[[F

    move-object/from16 v17, v0

    aget-object v17, v17, v8

    aget v17, v17, v9

    cmpg-float v15, v15, v17

    if-gez v15, :cond_4

    aget v15, v7, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->gyro_data_buf:[[F

    move-object/from16 v17, v0

    aget-object v17, v17, v8

    aget v17, v17, v9

    long-to-float v0, v10

    move/from16 v18, v0

    mul-float v17, v17, v18

    add-float v15, v15, v17

    aput v15, v7, v9

    .line 1683
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 1691
    :cond_4
    aget v15, v6, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->gyro_data_buf:[[F

    move-object/from16 v17, v0

    aget-object v17, v17, v8

    aget v17, v17, v9

    long-to-float v0, v10

    move/from16 v18, v0

    mul-float v17, v17, v18

    add-float v15, v15, v17

    aput v15, v6, v9

    goto :goto_3

    .line 1739
    .end local v9    # "n":I
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v15

    .line 1705
    :cond_5
    const/4 v8, 0x0

    :goto_4
    const/16 v15, 0x3c

    if-ge v8, v15, :cond_9

    .line 1707
    const/4 v15, -0x1

    const/16 v17, 0x0

    :try_start_1
    aget v17, v14, v17

    move/from16 v0, v17

    if-ne v15, v0, :cond_a

    const/high16 v15, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->gyro_data_buf:[[F

    move-object/from16 v17, v0

    aget-object v17, v17, v8

    const/16 v18, 0x0

    aget v17, v17, v18

    cmpg-float v15, v15, v17

    if-gtz v15, :cond_a

    const/4 v15, 0x0

    const/16 v17, 0x2

    aput v17, v14, v15

    .line 1710
    :cond_6
    :goto_5
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService;->pick_hand:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v15, v0, :cond_d

    .line 1712
    const/4 v15, -0x1

    const/16 v17, 0x2

    aget v17, v14, v17

    move/from16 v0, v17

    if-ne v15, v0, :cond_b

    const/high16 v15, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->gyro_data_buf:[[F

    move-object/from16 v17, v0

    aget-object v17, v17, v8

    const/16 v18, 0x2

    aget v17, v17, v18

    cmpg-float v15, v15, v17

    if-gtz v15, :cond_b

    const/4 v15, 0x2

    const/16 v17, 0x2

    aput v17, v14, v15

    .line 1714
    :cond_7
    :goto_6
    const/4 v15, -0x1

    const/16 v17, 0x1

    aget v17, v14, v17

    move/from16 v0, v17

    if-ne v15, v0, :cond_c

    const/high16 v15, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->gyro_data_buf:[[F

    move-object/from16 v17, v0

    aget-object v17, v17, v8

    const/16 v18, 0x1

    aget v17, v17, v18

    cmpg-float v15, v15, v17

    if-gtz v15, :cond_c

    const/4 v15, 0x1

    const/16 v17, 0x2

    aput v17, v14, v15

    .line 1724
    :cond_8
    :goto_7
    const/4 v15, -0x1

    const/16 v17, 0x2

    aget v17, v14, v17

    move/from16 v0, v17

    if-eq v15, v0, :cond_11

    const/4 v15, -0x1

    const/16 v17, 0x1

    aget v17, v14, v17

    move/from16 v0, v17

    if-eq v15, v0, :cond_11

    const/4 v15, -0x1

    const/16 v17, 0x0

    aget v17, v14, v17

    move/from16 v0, v17

    if-eq v15, v0, :cond_11

    .line 1726
    :cond_9
    const/4 v2, 0x0

    .line 1727
    .local v2, "DataCount":I
    const/4 v8, 0x0

    :goto_8
    const/4 v15, 0x6

    if-ge v8, v15, :cond_13

    .line 1729
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->gyro_data_buf:[[F

    move-object/from16 v17, v0

    aget-object v17, v17, v8

    const/16 v18, 0x0

    aget v17, v17, v18

    cmpg-float v15, v15, v17

    if-gez v15, :cond_12

    add-int/lit8 v2, v2, 0x1

    .line 1727
    :goto_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 1708
    .end local v2    # "DataCount":I
    :cond_a
    const/4 v15, -0x1

    const/16 v17, 0x0

    aget v17, v14, v17

    move/from16 v0, v17

    if-ne v15, v0, :cond_6

    const/high16 v15, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->gyro_data_buf:[[F

    move-object/from16 v17, v0

    aget-object v17, v17, v8

    const/16 v18, 0x0

    aget v17, v17, v18

    cmpl-float v15, v15, v17

    if-ltz v15, :cond_6

    const/4 v15, 0x0

    const/16 v17, -0x2

    aput v17, v14, v15

    goto/16 :goto_5

    .line 1713
    :cond_b
    const/4 v15, -0x1

    const/16 v17, 0x2

    aget v17, v14, v17

    move/from16 v0, v17

    if-ne v15, v0, :cond_7

    const/high16 v15, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->gyro_data_buf:[[F

    move-object/from16 v17, v0

    aget-object v17, v17, v8

    const/16 v18, 0x2

    aget v17, v17, v18

    cmpl-float v15, v15, v17

    if-ltz v15, :cond_7

    const/4 v15, 0x2

    const/16 v17, -0x2

    aput v17, v14, v15

    goto/16 :goto_6

    .line 1715
    :cond_c
    const/4 v15, -0x1

    const/16 v17, 0x1

    aget v17, v14, v17

    move/from16 v0, v17

    if-ne v15, v0, :cond_8

    const/high16 v15, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->gyro_data_buf:[[F

    move-object/from16 v17, v0

    aget-object v17, v17, v8

    const/16 v18, 0x1

    aget v17, v17, v18

    cmpl-float v15, v15, v17

    if-ltz v15, :cond_8

    const/4 v15, 0x1

    const/16 v17, -0x2

    aput v17, v14, v15

    goto/16 :goto_7

    .line 1717
    :cond_d
    const/4 v15, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService;->pick_hand:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v15, v0, :cond_8

    .line 1719
    const/4 v15, -0x1

    const/16 v17, 0x2

    aget v17, v14, v17

    move/from16 v0, v17

    if-ne v15, v0, :cond_f

    const/high16 v15, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->gyro_data_buf:[[F

    move-object/from16 v17, v0

    aget-object v17, v17, v8

    const/16 v18, 0x2

    aget v17, v17, v18

    cmpg-float v15, v15, v17

    if-gtz v15, :cond_f

    const/4 v15, 0x2

    const/16 v17, -0x2

    aput v17, v14, v15

    .line 1721
    :cond_e
    :goto_a
    const/4 v15, -0x1

    const/16 v17, 0x1

    aget v17, v14, v17

    move/from16 v0, v17

    if-ne v15, v0, :cond_10

    const/high16 v15, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->gyro_data_buf:[[F

    move-object/from16 v17, v0

    aget-object v17, v17, v8

    const/16 v18, 0x1

    aget v17, v17, v18

    cmpg-float v15, v15, v17

    if-gtz v15, :cond_10

    const/4 v15, 0x1

    const/16 v17, -0x2

    aput v17, v14, v15

    goto/16 :goto_7

    .line 1720
    :cond_f
    const/4 v15, -0x1

    const/16 v17, 0x2

    aget v17, v14, v17

    move/from16 v0, v17

    if-ne v15, v0, :cond_e

    const/high16 v15, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->gyro_data_buf:[[F

    move-object/from16 v17, v0

    aget-object v17, v17, v8

    const/16 v18, 0x2

    aget v17, v17, v18

    cmpl-float v15, v15, v17

    if-ltz v15, :cond_e

    const/4 v15, 0x2

    const/16 v17, 0x2

    aput v17, v14, v15

    goto :goto_a

    .line 1722
    :cond_10
    const/4 v15, -0x1

    const/16 v17, 0x1

    aget v17, v14, v17

    move/from16 v0, v17

    if-ne v15, v0, :cond_8

    const/high16 v15, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->gyro_data_buf:[[F

    move-object/from16 v17, v0

    aget-object v17, v17, v8

    const/16 v18, 0x1

    aget v17, v17, v18

    cmpl-float v15, v15, v17

    if-ltz v15, :cond_8

    const/4 v15, 0x1

    const/16 v17, 0x2

    aput v17, v14, v15

    goto/16 :goto_7

    .line 1705
    :cond_11
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_4

    .line 1730
    .restart local v2    # "DataCount":I
    :cond_12
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_9

    .line 1732
    :cond_13
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vivo/services/motion/DirectCallingService;->gyro_data_buf:[[F

    const/16 v17, 0x0

    aget-object v15, v15, v17

    const/16 v17, 0x0

    aget v15, v15, v17

    float-to-int v9, v15

    .line 1733
    .restart local v9    # "n":I
    const/4 v15, 0x6

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move/from16 v0, v17

    if-ne v15, v0, :cond_14

    .line 1735
    if-lez v9, :cond_2d

    add-int/lit8 v15, v9, 0x1

    mul-int/2addr v15, v9

    div-int/lit8 v3, v15, 0x2

    .line 1739
    :cond_14
    :goto_b
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1740
    const/4 v15, 0x0

    const/16 v16, 0x0

    aget v16, v5, v16

    const/high16 v17, 0x43340000    # 180.0f

    mul-float v16, v16, v17

    const v17, 0x45444000    # 3140.0f

    div-float v16, v16, v17

    aput v16, v5, v15

    .line 1741
    const/4 v15, 0x1

    const/16 v16, 0x1

    aget v16, v5, v16

    const/high16 v17, 0x43340000    # 180.0f

    mul-float v16, v16, v17

    const v17, 0x45444000    # 3140.0f

    div-float v16, v16, v17

    aput v16, v5, v15

    .line 1742
    const/4 v15, 0x2

    const/16 v16, 0x2

    aget v16, v5, v16

    const/high16 v17, 0x43340000    # 180.0f

    mul-float v16, v16, v17

    const v17, 0x45444000    # 3140.0f

    div-float v16, v16, v17

    aput v16, v5, v15

    .line 1743
    const-string v15, "DirectCallingService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "degreeSum[0]:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x0

    aget v17, v5, v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "degreeSum[1]:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x1

    aget v17, v5, v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "degreeSum[2]:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x2

    aget v17, v5, v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    const/4 v15, 0x0

    const/16 v16, 0x0

    aget v16, v7, v16

    const/high16 v17, 0x43340000    # 180.0f

    mul-float v16, v16, v17

    const v17, 0x45444000    # 3140.0f

    div-float v16, v16, v17

    aput v16, v7, v15

    .line 1746
    const/4 v15, 0x1

    const/16 v16, 0x1

    aget v16, v7, v16

    const/high16 v17, 0x43340000    # 180.0f

    mul-float v16, v16, v17

    const v17, 0x45444000    # 3140.0f

    div-float v16, v16, v17

    aput v16, v7, v15

    .line 1747
    const/4 v15, 0x2

    const/16 v16, 0x2

    aget v16, v7, v16

    const/high16 v17, 0x43340000    # 180.0f

    mul-float v16, v16, v17

    const v17, 0x45444000    # 3140.0f

    div-float v16, v16, v17

    aput v16, v7, v15

    .line 1748
    const/4 v15, 0x0

    const/16 v16, 0x0

    aget v16, v6, v16

    const/high16 v17, 0x43340000    # 180.0f

    mul-float v16, v16, v17

    const v17, 0x45444000    # 3140.0f

    div-float v16, v16, v17

    aput v16, v6, v15

    .line 1749
    const/4 v15, 0x1

    const/16 v16, 0x1

    aget v16, v6, v16

    const/high16 v17, 0x43340000    # 180.0f

    mul-float v16, v16, v17

    const v17, 0x45444000    # 3140.0f

    div-float v16, v16, v17

    aput v16, v6, v15

    .line 1750
    const/4 v15, 0x2

    const/16 v16, 0x2

    aget v16, v6, v16

    const/high16 v17, 0x43340000    # 180.0f

    mul-float v16, v16, v17

    const v17, 0x45444000    # 3140.0f

    div-float v16, v16, v17

    aput v16, v6, v15

    .line 1752
    const-string v15, "DirectCallingService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "degreeSump[0]: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x0

    aget v17, v7, v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "degreeSump[1]: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x1

    aget v17, v7, v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "degreeSump[2]:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x2

    aget v17, v7, v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1753
    const-string v15, "DirectCallingService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "degreeSumn[0]: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x0

    aget v17, v6, v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "degreeSumn[1]: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x1

    aget v17, v6, v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "degreeSumn[2]:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x2

    aget v17, v6, v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1755
    const/4 v15, 0x0

    aget v15, v5, v15

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    const/high16 v16, 0x42200000    # 40.0f

    cmpl-float v15, v15, v16

    if-lez v15, :cond_15

    const/4 v15, 0x1

    aget v15, v5, v15

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    const/high16 v16, 0x41f00000    # 30.0f

    cmpl-float v15, v15, v16

    if-gtz v15, :cond_1a

    :cond_15
    const/4 v15, 0x0

    aget v15, v5, v15

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    const/high16 v16, 0x42200000    # 40.0f

    cmpl-float v15, v15, v16

    if-lez v15, :cond_16

    const/4 v15, 0x2

    aget v15, v5, v15

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    const/high16 v16, 0x42200000    # 40.0f

    cmpl-float v15, v15, v16

    if-gtz v15, :cond_1a

    :cond_16
    const/4 v15, 0x1

    aget v15, v5, v15

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    const/high16 v16, 0x41f00000    # 30.0f

    cmpl-float v15, v15, v16

    if-lez v15, :cond_17

    const/4 v15, 0x2

    aget v15, v5, v15

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    const/high16 v16, 0x42200000    # 40.0f

    cmpl-float v15, v15, v16

    if-gtz v15, :cond_1a

    :cond_17
    const/4 v15, 0x2

    aget v15, v5, v15

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    const/high16 v16, 0x42880000    # 68.0f

    cmpl-float v15, v15, v16

    if-lez v15, :cond_18

    const/4 v15, 0x0

    aget v15, v5, v15

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    const/16 v16, 0x1

    aget v16, v5, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v16

    add-float v15, v15, v16

    const/high16 v16, 0x41f00000    # 30.0f

    cmpl-float v15, v15, v16

    if-gtz v15, :cond_1a

    :cond_18
    const/4 v15, 0x1

    aget v15, v5, v15

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    const/high16 v16, 0x42880000    # 68.0f

    cmpl-float v15, v15, v16

    if-lez v15, :cond_19

    const/4 v15, 0x0

    aget v15, v5, v15

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    const/16 v16, 0x2

    aget v16, v5, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v16

    add-float v15, v15, v16

    const/high16 v16, 0x41e00000    # 28.0f

    cmpl-float v15, v15, v16

    if-gtz v15, :cond_1a

    :cond_19
    const/4 v15, 0x0

    aget v15, v5, v15

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    const/high16 v16, 0x42880000    # 68.0f

    cmpl-float v15, v15, v16

    if-lez v15, :cond_1b

    const/4 v15, 0x1

    aget v15, v5, v15

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    const/16 v16, 0x2

    aget v16, v5, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v16

    add-float v15, v15, v16

    const/high16 v16, 0x42000000    # 32.0f

    cmpl-float v15, v15, v16

    if-lez v15, :cond_1b

    .line 1762
    :cond_1a
    const/4 v4, 0x1

    .line 1765
    :cond_1b
    sget-boolean v15, Lcom/vivo/services/motion/AllConfig;->mIsYASVirtGryo:Z

    if-eqz v15, :cond_26

    .line 1767
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService;->pick_hand:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_20

    .line 1769
    const v15, 0x40333333    # 2.8f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->gyro_data_buf:[[F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-object v16, v16, v17

    const/16 v17, 0x0

    aget v16, v16, v17

    cmpg-float v15, v15, v16

    if-gez v15, :cond_1f

    const v15, 0x40333333    # 2.8f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->gyro_data_buf:[[F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-object v16, v16, v17

    const/16 v17, 0x2

    aget v16, v16, v17

    cmpg-float v15, v15, v16

    if-gez v15, :cond_1f

    .line 1770
    const/4 v15, 0x0

    aget v15, v7, v15

    const/high16 v16, 0x40000000    # 2.0f

    mul-float v15, v15, v16

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    const/high16 v16, 0x420c0000    # 35.0f

    cmpl-float v15, v15, v16

    if-lez v15, :cond_1c

    const/4 v15, 0x1

    aget v15, v7, v15

    const/high16 v16, 0x40000000    # 2.0f

    mul-float v15, v15, v16

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    const/high16 v16, 0x41f00000    # 30.0f

    cmpl-float v15, v15, v16

    if-gtz v15, :cond_1e

    :cond_1c
    const/4 v15, 0x0

    aget v15, v7, v15

    const/high16 v16, 0x40000000    # 2.0f

    mul-float v15, v15, v16

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    const/high16 v16, 0x420c0000    # 35.0f

    cmpl-float v15, v15, v16

    if-lez v15, :cond_1d

    const/4 v15, 0x2

    aget v15, v7, v15

    const/high16 v16, 0x40000000    # 2.0f

    mul-float v15, v15, v16

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    const/high16 v16, 0x420c0000    # 35.0f

    cmpl-float v15, v15, v16

    if-gtz v15, :cond_1e

    :cond_1d
    const/4 v15, 0x1

    aget v15, v7, v15

    const/high16 v16, 0x40000000    # 2.0f

    mul-float v15, v15, v16

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    const/high16 v16, 0x41f00000    # 30.0f

    cmpl-float v15, v15, v16

    if-lez v15, :cond_1f

    const/4 v15, 0x2

    aget v15, v7, v15

    const/high16 v16, 0x40000000    # 2.0f

    mul-float v15, v15, v16

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    const/high16 v16, 0x420c0000    # 35.0f

    cmpl-float v15, v15, v16

    if-lez v15, :cond_1f

    .line 1773
    :cond_1e
    const/4 v4, 0x1

    .line 1775
    :cond_1f
    const/high16 v15, 0x42c80000    # 100.0f

    const/16 v16, 0x0

    aget v16, v7, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v16

    const/16 v17, 0x2

    aget v17, v7, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    add-float v16, v16, v17

    cmpg-float v15, v15, v16

    if-gez v15, :cond_20

    const/high16 v15, 0x420c0000    # 35.0f

    const/16 v16, 0x2

    aget v16, v7, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v16

    cmpg-float v15, v15, v16

    if-gez v15, :cond_20

    const/high16 v15, 0x420c0000    # 35.0f

    const/16 v16, 0x0

    aget v16, v7, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v16

    cmpg-float v15, v15, v16

    if-gez v15, :cond_20

    .line 1776
    const/4 v4, 0x1

    .line 1778
    :cond_20
    const/4 v15, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService;->pick_hand:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_26

    .line 1780
    const v15, 0x40333333    # 2.8f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->gyro_data_buf:[[F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-object v16, v16, v17

    const/16 v17, 0x0

    aget v16, v16, v17

    cmpg-float v15, v15, v16

    if-gez v15, :cond_24

    const v15, -0x3fcccccd    # -2.8f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->gyro_data_buf:[[F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-object v16, v16, v17

    const/16 v17, 0x2

    aget v16, v16, v17

    cmpl-float v15, v15, v16

    if-lez v15, :cond_24

    .line 1781
    const/4 v15, 0x0

    aget v15, v6, v15

    const/high16 v16, 0x40000000    # 2.0f

    mul-float v15, v15, v16

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    const/high16 v16, 0x420c0000    # 35.0f

    cmpl-float v15, v15, v16

    if-lez v15, :cond_21

    const/4 v15, 0x1

    aget v15, v6, v15

    const/high16 v16, 0x40000000    # 2.0f

    mul-float v15, v15, v16

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    const/high16 v16, 0x41f00000    # 30.0f

    cmpl-float v15, v15, v16

    if-gtz v15, :cond_23

    :cond_21
    const/4 v15, 0x0

    aget v15, v6, v15

    const/high16 v16, 0x40000000    # 2.0f

    mul-float v15, v15, v16

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    const/high16 v16, 0x420c0000    # 35.0f

    cmpl-float v15, v15, v16

    if-lez v15, :cond_22

    const/4 v15, 0x2

    aget v15, v6, v15

    const/high16 v16, 0x40000000    # 2.0f

    mul-float v15, v15, v16

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    const/high16 v16, 0x420c0000    # 35.0f

    cmpl-float v15, v15, v16

    if-gtz v15, :cond_23

    :cond_22
    const/4 v15, 0x1

    aget v15, v6, v15

    const/high16 v16, 0x40000000    # 2.0f

    mul-float v15, v15, v16

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    const/high16 v16, 0x41f00000    # 30.0f

    cmpl-float v15, v15, v16

    if-lez v15, :cond_24

    const/4 v15, 0x2

    aget v15, v6, v15

    const/high16 v16, 0x40000000    # 2.0f

    mul-float v15, v15, v16

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    const/high16 v16, 0x420c0000    # 35.0f

    cmpl-float v15, v15, v16

    if-lez v15, :cond_24

    .line 1784
    :cond_23
    const/4 v4, 0x1

    .line 1786
    :cond_24
    const/high16 v15, 0x42c80000    # 100.0f

    const/16 v16, 0x0

    aget v16, v7, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v16

    const/16 v17, 0x2

    aget v17, v6, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    add-float v16, v16, v17

    cmpg-float v15, v15, v16

    if-gez v15, :cond_26

    const/high16 v15, 0x420c0000    # 35.0f

    const/16 v16, 0x2

    aget v16, v6, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v16

    cmpg-float v15, v15, v16

    if-ltz v15, :cond_25

    const/high16 v15, 0x420c0000    # 35.0f

    const/16 v16, 0x0

    aget v16, v7, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v16

    cmpg-float v15, v15, v16

    if-gez v15, :cond_26

    .line 1787
    :cond_25
    const/4 v4, 0x1

    .line 1790
    :cond_26
    const/4 v15, 0x2

    const/16 v16, 0x2

    aget v16, v14, v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_29

    const/4 v15, 0x2

    const/16 v16, 0x0

    aget v16, v14, v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_29

    const/high16 v15, 0x41f00000    # 30.0f

    const/16 v16, 0x0

    aget v16, v7, v16

    cmpg-float v15, v15, v16

    if-gtz v15, :cond_29

    .line 1793
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService;->pick_hand:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_27

    const/high16 v15, 0x420c0000    # 35.0f

    const/16 v16, 0x2

    aget v16, v7, v16

    cmpg-float v15, v15, v16

    if-lez v15, :cond_28

    :cond_27
    const/4 v15, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService;->pick_hand:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_29

    const/high16 v15, -0x3df40000    # -35.0f

    const/16 v16, 0x2

    aget v16, v6, v16

    cmpl-float v15, v15, v16

    if-ltz v15, :cond_29

    .line 1795
    :cond_28
    const/4 v4, 0x1

    .line 1797
    :cond_29
    const-string v15, "DirectCallingService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "xyz[2]: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x2

    aget v17, v14, v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "xyz[0]: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x0

    aget v17, v14, v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "pick_hand:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService;->pick_hand:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1799
    if-eqz v4, :cond_2c

    .line 1804
    if-eqz v3, :cond_2a

    .line 1806
    const/4 v15, 0x0

    aget v16, v5, v15

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    int-to-float v0, v3

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x3ff25604189374bcL    # 1.146

    mul-double v18, v18, v20

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    aput v16, v5, v15

    .line 1807
    const-string v15, "DirectCallingService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "dataStore: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1809
    :cond_2a
    const/high16 v15, 0x430a0000    # 138.0f

    const/16 v16, 0x1

    aget v16, v5, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v16

    cmpg-float v15, v15, v16

    if-ltz v15, :cond_2b

    const/high16 v15, 0x43340000    # 180.0f

    const/16 v16, 0x0

    aget v16, v5, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v16

    cmpg-float v15, v15, v16

    if-ltz v15, :cond_2b

    const/high16 v15, 0x43390000    # 185.0f

    const/16 v16, 0x2

    aget v16, v5, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v16

    cmpg-float v15, v15, v16

    if-gez v15, :cond_2c

    .line 1811
    :cond_2b
    const/4 v4, 0x0

    .line 1813
    :cond_2c
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/vivo/services/motion/DirectCallingService;->pick_hand:I

    .line 1815
    return v4

    .line 1736
    :cond_2d
    neg-int v15, v9

    add-int/lit8 v15, v15, 0x1

    neg-int v15, v15

    neg-int v0, v9

    move/from16 v17, v0

    mul-int v15, v15, v17

    :try_start_2
    div-int/lit8 v3, v15, 0x2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_b
.end method

.method pickupDegreeAnalist()Z
    .locals 14

    .prologue
    .line 1225
    const/4 v4, 0x0

    .line 1226
    .local v4, "pickupFlag":Z
    const/4 v5, 0x3

    new-array v0, v5, [F

    .line 1227
    .local v0, "degreeSum":[F
    const-wide/16 v8, 0x0

    .line 1228
    .local v8, "timeSum":J
    const-wide/16 v6, 0x0

    .line 1229
    .local v6, "timeDelta":J
    const/4 v1, 0x0

    .line 1231
    .local v1, "integral_count":I
    sget-boolean v5, Lcom/vivo/services/motion/AllConfig;->mIsAKMVirtGryo:Z

    if-nez v5, :cond_0

    sget-boolean v5, Lcom/vivo/services/motion/AllConfig;->mIsALPSVirtGryo:Z

    if-nez v5, :cond_0

    sget-boolean v5, Lcom/vivo/services/motion/AllConfig;->mIsYASVirtGryo:Z

    if-nez v5, :cond_0

    sget-boolean v5, Lcom/vivo/services/motion/AllConfig;->mIsADSPAKMVirtGryo:Z

    if-eqz v5, :cond_2

    :cond_0
    const-wide/16 v6, 0x14

    .line 1234
    :goto_0
    const-string v5, "DirectCallingService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "GYRO_SUM_PICK , pick_up_cnt_motion : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/vivo/services/motion/DirectCallingService;->pick_up_cnt_motion:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/vivo/services/motion/DirectCallingService;->pick_up_cnt_threshhold:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    iget v5, p0, Lcom/vivo/services/motion/DirectCallingService;->pick_up_cnt_motion:I

    iget v10, p0, Lcom/vivo/services/motion/DirectCallingService;->pick_up_cnt_threshhold:I

    if-ne v5, v10, :cond_d

    .line 1239
    sget-boolean v5, Lcom/vivo/services/motion/AllConfig;->mIsAKMVirtGryo:Z

    if-nez v5, :cond_1

    sget-boolean v5, Lcom/vivo/services/motion/AllConfig;->mIsALPSVirtGryo:Z

    if-nez v5, :cond_1

    sget-boolean v5, Lcom/vivo/services/motion/AllConfig;->mIsYASVirtGryo:Z

    if-nez v5, :cond_1

    sget-boolean v5, Lcom/vivo/services/motion/AllConfig;->mIsADSPAKMVirtGryo:Z

    if-eqz v5, :cond_3

    .line 1240
    :cond_1
    iget v5, p0, Lcom/vivo/services/motion/DirectCallingService;->pick_up_cnt_motion:I

    add-int/lit8 v1, v5, 0xa

    .line 1243
    :goto_1
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_2
    const/4 v5, 0x3

    if-ge v3, v5, :cond_4

    .line 1245
    iget-object v5, p0, Lcom/vivo/services/motion/DirectCallingService;->degreeSumCall:[F

    const/4 v10, 0x0

    aput v10, v5, v3

    .line 1243
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1232
    .end local v3    # "n":I
    :cond_2
    const-wide/16 v6, 0x28

    goto :goto_0

    .line 1242
    :cond_3
    iget v5, p0, Lcom/vivo/services/motion/DirectCallingService;->pick_up_cnt_motion:I

    add-int/lit8 v1, v5, 0x5

    goto :goto_1

    .line 1247
    .restart local v3    # "n":I
    :cond_4
    const/4 v2, 0x0

    .local v2, "m":I
    :goto_3
    if-ge v2, v1, :cond_7

    .line 1249
    if-lez v2, :cond_5

    .line 1251
    iget-object v5, p0, Lcom/vivo/services/motion/DirectCallingService;->time_buf:[J

    add-int/lit8 v10, v2, -0x1

    aget-wide v10, v5, v10

    iget-object v5, p0, Lcom/vivo/services/motion/DirectCallingService;->time_buf:[J

    aget-wide v12, v5, v2

    sub-long v6, v10, v12

    .line 1253
    :cond_5
    const/4 v3, 0x0

    :goto_4
    const/4 v5, 0x3

    if-ge v3, v5, :cond_6

    .line 1255
    iget-object v5, p0, Lcom/vivo/services/motion/DirectCallingService;->degreeSumCall:[F

    aget v10, v0, v3

    iget-object v11, p0, Lcom/vivo/services/motion/DirectCallingService;->gyro_data_buf:[[F

    aget-object v11, v11, v2

    aget v11, v11, v3

    long-to-float v12, v6

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    aput v10, v0, v3

    aput v10, v5, v3

    .line 1253
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1257
    :cond_6
    const-string v5, "DirectCallingService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "GYRO_SUM_PICK , raw_data : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/vivo/services/motion/DirectCallingService;->gyro_data_buf:[[F

    aget-object v11, v11, v2

    const/4 v12, 0x0

    aget v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/vivo/services/motion/DirectCallingService;->gyro_data_buf:[[F

    aget-object v11, v11, v2

    const/4 v12, 0x1

    aget v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/vivo/services/motion/DirectCallingService;->gyro_data_buf:[[F

    aget-object v11, v11, v2

    const/4 v12, 0x2

    aget v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    add-long/2addr v8, v6

    .line 1263
    const-wide/16 v10, 0x5dc

    cmp-long v5, v8, v10

    if-lez v5, :cond_c

    .line 1282
    .end local v2    # "m":I
    :cond_7
    :goto_5
    const/4 v5, 0x0

    const/4 v10, 0x0

    aget v10, v0, v10

    const/high16 v11, 0x43340000    # 180.0f

    mul-float/2addr v10, v11

    const v11, 0x45444000    # 3140.0f

    div-float/2addr v10, v11

    aput v10, v0, v5

    .line 1283
    const/4 v5, 0x1

    const/4 v10, 0x1

    aget v10, v0, v10

    const/high16 v11, 0x43340000    # 180.0f

    mul-float/2addr v10, v11

    const v11, 0x45444000    # 3140.0f

    div-float/2addr v10, v11

    aput v10, v0, v5

    .line 1284
    const/4 v5, 0x2

    const/4 v10, 0x2

    aget v10, v0, v10

    const/high16 v11, 0x43340000    # 180.0f

    mul-float/2addr v10, v11

    const v11, 0x45444000    # 3140.0f

    div-float/2addr v10, v11

    aput v10, v0, v5

    .line 1285
    const-string v5, "DirectCallingService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "pickup_degreeSum[0]:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    aget v11, v0, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "degreeSum[1]:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    aget v11, v0, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "degreeSum[2]:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x2

    aget v11, v0, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    const/4 v5, 0x0

    aget v5, v0, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v10, 0x41a00000    # 20.0f

    cmpl-float v5, v5, v10

    if-lez v5, :cond_8

    const/4 v5, 0x1

    aget v5, v0, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v10, 0x41800000    # 16.0f

    cmpl-float v5, v5, v10

    if-gtz v5, :cond_a

    :cond_8
    const/4 v5, 0x0

    aget v5, v0, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v10, 0x41a00000    # 20.0f

    cmpl-float v5, v5, v10

    if-lez v5, :cond_9

    const/4 v5, 0x2

    aget v5, v0, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v10, 0x41880000    # 17.0f

    cmpl-float v5, v5, v10

    if-gtz v5, :cond_a

    :cond_9
    const/4 v5, 0x1

    aget v5, v0, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v10, 0x41800000    # 16.0f

    cmpl-float v5, v5, v10

    if-lez v5, :cond_b

    const/4 v5, 0x2

    aget v5, v0, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v10, 0x41a00000    # 20.0f

    cmpl-float v5, v5, v10

    if-lez v5, :cond_b

    .line 1291
    :cond_a
    const/4 v4, 0x1

    .line 1293
    :cond_b
    return v4

    .line 1247
    .restart local v2    # "m":I
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    .line 1271
    .end local v2    # "m":I
    .end local v3    # "n":I
    :cond_d
    const/4 v3, 0x0

    .restart local v3    # "n":I
    :goto_6
    const/4 v5, 0x3

    if-ge v3, v5, :cond_e

    .line 1273
    iget-object v5, p0, Lcom/vivo/services/motion/DirectCallingService;->degreeSumCall:[F

    iget-object v10, p0, Lcom/vivo/services/motion/DirectCallingService;->degreeSumCall:[F

    aget v10, v10, v3

    iget-object v11, p0, Lcom/vivo/services/motion/DirectCallingService;->gyro_data_buf:[[F

    const/4 v12, 0x0

    aget-object v11, v11, v12

    aget v11, v11, v3

    long-to-float v12, v6

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    aput v10, v5, v3

    aput v10, v0, v3

    .line 1271
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 1275
    :cond_e
    const-string v5, "DirectCallingService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "GYRO_SUM_PICK , raw_data : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/vivo/services/motion/DirectCallingService;->gyro_data_buf:[[F

    const/4 v12, 0x0

    aget-object v11, v11, v12

    const/4 v12, 0x0

    aget v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/vivo/services/motion/DirectCallingService;->gyro_data_buf:[[F

    const/4 v12, 0x0

    aget-object v11, v11, v12

    const/4 v12, 0x1

    aget v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/vivo/services/motion/DirectCallingService;->gyro_data_buf:[[F

    const/4 v12, 0x0

    aget-object v11, v11, v12

    const/4 v12, 0x2

    aget v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5
.end method

.method public startMotionRecognitionService(Landroid/content/Context;Landroid/os/Handler;)Z
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/16 v12, 0x4e20

    const/16 v11, 0x8

    const/4 v10, 0x0

    const/4 v9, 0x4

    const/4 v8, 0x1

    .line 2124
    const-string v3, "DirectCallingService"

    const-string v4, "startMotionRecognitionService."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2125
    iget-boolean v3, p0, Lcom/vivo/services/motion/DirectCallingService;->isDirectCallingServiceWorking:Z

    if-nez v3, :cond_4

    .line 2127
    iput-boolean v8, p0, Lcom/vivo/services/motion/DirectCallingService;->isDirectCallingServiceWorking:Z

    .line 2128
    invoke-direct {p0}, Lcom/vivo/services/motion/DirectCallingService;->resetAllDataBuf()V

    .line 2129
    invoke-direct {p0}, Lcom/vivo/services/motion/DirectCallingService;->clearGyrdata()V

    .line 2130
    iput v10, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionDetState:I

    .line 2131
    iput-object p2, p0, Lcom/vivo/services/motion/DirectCallingService;->mCallBackHandler:Landroid/os/Handler;

    .line 2132
    iput-object p1, p0, Lcom/vivo/services/motion/DirectCallingService;->mContext:Landroid/content/Context;

    .line 2139
    new-instance v3, Lcom/vivo/services/motion/DirectCallingService$DirectCallingServiceHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/vivo/services/motion/DirectCallingService$DirectCallingServiceHandler;-><init>(Lcom/vivo/services/motion/DirectCallingService;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/vivo/services/motion/DirectCallingService;->mServiceHandler:Landroid/os/Handler;

    .line 2140
    const-string v3, "sensor"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;

    iput-object v3, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionDetSensorManager:Landroid/hardware/SensorManager;

    .line 2141
    const-string v3, "ro.product.model.bbk"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2143
    .local v2, "prop":Ljava/lang/String;
    iget-object v3, p0, Lcom/vivo/services/motion/DirectCallingService;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/vivo/services/motion/DirectCallingService;->mAudioManager:Landroid/media/AudioManager;

    .line 2144
    iget-object v3, p0, Lcom/vivo/services/motion/DirectCallingService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v10}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v3

    iput v3, p0, Lcom/vivo/services/motion/DirectCallingService;->callVibrateSetting:I

    .line 2146
    iget-object v3, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionDetSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v9}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 2147
    .local v1, "GyroSensor":Landroid/hardware/Sensor;
    const-string v0, ""

    .line 2148
    .local v0, "GyroName":Ljava/lang/String;
    if-nez v1, :cond_5

    .line 2149
    const-string v3, "MotionDet"

    const-string v4, "GyroSensor is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2153
    :goto_0
    const-string v3, "MotionDet"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "name "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2154
    const-string v3, "MotionDet"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tag"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/vivo/services/motion/AllConfig;->mIsPhyGryo:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2155
    const-string v3, "akm8963-pseudo-gyro"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "AK8963 Gyroscope"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "akm09911-pseudo-gyro"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "AK09911-pseudo-gyro"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "akm09912-pseudo-gyro"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2158
    :cond_0
    sget-boolean v3, Lcom/vivo/services/motion/AllConfig;->mIsArchADSP:Z

    if-eqz v3, :cond_6

    sput-boolean v8, Lcom/vivo/services/motion/AllConfig;->mIsAKMVirtGryo:Z

    .line 2160
    :goto_1
    const-string v3, "MotionDet"

    const-string v4, "akm pseudo-gyro"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2185
    :cond_1
    :goto_2
    sget-object v3, Lcom/vivo/services/motion/DirectCallingService;->last_mag_data:[F

    sget-object v4, Lcom/vivo/services/motion/DirectCallingService;->last_mag_data:[F

    sget-object v5, Lcom/vivo/services/motion/DirectCallingService;->last_mag_data:[F

    const/4 v6, 0x2

    const/4 v7, 0x0

    aput v7, v5, v6

    aput v7, v4, v8

    aput v7, v3, v10

    .line 2186
    iput v10, p0, Lcom/vivo/services/motion/DirectCallingService;->mag_ab:I

    .line 2187
    sget-boolean v3, Lcom/vivo/services/motion/AllConfig;->mNeedMag:Z

    if-eqz v3, :cond_e

    .line 2188
    iput-boolean v8, p0, Lcom/vivo/services/motion/DirectCallingService;->mag_vibrator_state:Z

    .line 2191
    :goto_3
    iput v10, p0, Lcom/vivo/services/motion/DirectCallingService;->mag_vibrator_counter:I

    .line 2193
    const-string v3, "MotionDet"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tage22222"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/vivo/services/motion/AllConfig;->mIsPhyGryo:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2194
    sget-boolean v3, Lcom/vivo/services/motion/AllConfig;->mIsAKMVirtGryo:Z

    if-nez v3, :cond_2

    sget-boolean v3, Lcom/vivo/services/motion/AllConfig;->mIsYASVirtGryo:Z

    if-eqz v3, :cond_f

    .line 2196
    :cond_2
    iput v9, p0, Lcom/vivo/services/motion/DirectCallingService;->pick_up_cnt_threshhold:I

    .line 2197
    iput v10, p0, Lcom/vivo/services/motion/DirectCallingService;->VibratorState:I

    .line 2198
    iput v10, p0, Lcom/vivo/services/motion/DirectCallingService;->VibratorStateCount:I

    .line 2199
    iput v10, p0, Lcom/vivo/services/motion/DirectCallingService;->VibratorStaticCount:I

    .line 2205
    :goto_4
    iput-boolean v8, p0, Lcom/vivo/services/motion/DirectCallingService;->first_flag:Z

    .line 2206
    const-string v3, "MotionDet"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "first_flag "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/vivo/services/motion/DirectCallingService;->first_flag:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2208
    iget-object v3, p0, Lcom/vivo/services/motion/DirectCallingService;->acceleromererListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    const/4 v4, -0x1

    # setter for: Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->last_prox:I
    invoke-static {v3, v4}, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->access$4202(Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;I)I

    .line 2209
    iget-object v3, p0, Lcom/vivo/services/motion/DirectCallingService;->MagneticListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    const/4 v4, -0x1

    # setter for: Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->last_prox:I
    invoke-static {v3, v4}, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->access$4202(Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;I)I

    .line 2210
    iget-object v3, p0, Lcom/vivo/services/motion/DirectCallingService;->GproScopeListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    const/4 v4, -0x1

    # setter for: Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->last_prox:I
    invoke-static {v3, v4}, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->access$4202(Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;I)I

    .line 2211
    iget-object v3, p0, Lcom/vivo/services/motion/DirectCallingService;->RotationVectorListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    const/4 v4, -0x1

    # setter for: Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->last_prox:I
    invoke-static {v3, v4}, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->access$4202(Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;I)I

    .line 2212
    iget-object v3, p0, Lcom/vivo/services/motion/DirectCallingService;->ProximityListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    const/4 v4, -0x1

    # setter for: Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->last_prox:I
    invoke-static {v3, v4}, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->access$4202(Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;I)I

    .line 2213
    const-string v3, "MotionDet"

    const-string v4, "set init proximity value while regiseter"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2215
    sget-boolean v3, Lcom/vivo/services/motion/AllConfig;->mIsArchADSP:Z

    if-eqz v3, :cond_13

    .line 2218
    sget-boolean v3, Lcom/vivo/services/motion/AllConfig;->mIsADSPAKMVirtGryo:Z

    if-eqz v3, :cond_10

    .line 2220
    iget-object v3, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionDetSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/vivo/services/motion/DirectCallingService;->acceleromererListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    iget-object v5, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionDetSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v5, v8}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v5

    const/16 v6, 0x61a8

    invoke-virtual {v3, v4, v5, v6, p2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 2222
    sget-boolean v3, Lcom/vivo/services/motion/AllConfig;->mNeedMag:Z

    if-eqz v3, :cond_3

    .line 2223
    iget-object v3, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionDetSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/vivo/services/motion/DirectCallingService;->MagneticListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    iget-object v5, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionDetSensorManager:Landroid/hardware/SensorManager;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v8, p2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 2225
    :cond_3
    iget-object v3, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionDetSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/vivo/services/motion/DirectCallingService;->GproScopeListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    iget-object v5, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionDetSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v5, v9}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v8, p2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 2227
    iget-object v3, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionDetSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/vivo/services/motion/DirectCallingService;->ProximityListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    iget-object v5, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionDetSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v5, v11}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v12, p2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 2230
    const-string v3, "MotionDet"

    const-string v4, "mIsADSPAKMVirtGryo"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2324
    .end local v0    # "GyroName":Ljava/lang/String;
    .end local v1    # "GyroSensor":Landroid/hardware/Sensor;
    .end local v2    # "prop":Ljava/lang/String;
    :cond_4
    :goto_5
    return v8

    .line 2151
    .restart local v0    # "GyroName":Ljava/lang/String;
    .restart local v1    # "GyroSensor":Landroid/hardware/Sensor;
    .restart local v2    # "prop":Ljava/lang/String;
    :cond_5
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 2159
    :cond_6
    sput-boolean v8, Lcom/vivo/services/motion/AllConfig;->mIsAKMVirtGryo:Z

    goto/16 :goto_1

    .line 2161
    :cond_7
    const-string v3, "hscdtd007a-pseudo-gyro"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2162
    sput-boolean v8, Lcom/vivo/services/motion/AllConfig;->mIsALPSVirtGryo:Z

    .line 2163
    const-string v3, "MotionDet"

    const-string v4, "hscdtd007a-pseudo-gyro"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2164
    :cond_8
    const-string v3, "lsm330_gyr"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2165
    sput-boolean v8, Lcom/vivo/services/motion/AllConfig;->mIsPhyGryo:Z

    .line 2166
    const-string v3, "MotionDet"

    const-string v4, "lsm330_gyr"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2167
    :cond_9
    const-string v3, "LSM6DS0 Gyroscope"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "LSM6DS3 Gyroscope"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "BMI160"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2168
    :cond_a
    sput-boolean v8, Lcom/vivo/services/motion/AllConfig;->mIsPhyGryo:Z

    .line 2169
    const-string v3, "MotionDet"

    const-string v4, "physical Gyroscope"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2170
    :cond_b
    const-string v3, "YAS533 Gyroscope"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "yas533-pseudo-gyro"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "yas537-pseudo-gyro"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "YAS537-pseudo-gyro"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "YAS533-pseudo-gyro"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2174
    :cond_c
    const-string v3, "PD1613"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 2176
    sput-boolean v8, Lcom/vivo/services/motion/AllConfig;->mIsAKMVirtGryo:Z

    .line 2177
    const-string v3, "MotionDet"

    const-string v4, "yas pseudo-gyro PD1613 force set mIsAKMVirtGryo true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2180
    :cond_d
    sput-boolean v8, Lcom/vivo/services/motion/AllConfig;->mIsYASVirtGryo:Z

    .line 2181
    const-string v3, "MotionDet"

    const-string v4, "yas pseudo-gyro"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2190
    :cond_e
    iput-boolean v10, p0, Lcom/vivo/services/motion/DirectCallingService;->mag_vibrator_state:Z

    goto/16 :goto_3

    .line 2203
    :cond_f
    const/4 v3, 0x3

    iput v3, p0, Lcom/vivo/services/motion/DirectCallingService;->pick_up_cnt_threshhold:I

    goto/16 :goto_4

    .line 2233
    :cond_10
    sget-boolean v3, Lcom/vivo/services/motion/AllConfig;->mIsAKMVirtGryo:Z

    if-eqz v3, :cond_11

    .line 2235
    iget-object v3, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionDetSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/vivo/services/motion/DirectCallingService;->acceleromererListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    iget-object v5, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionDetSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v5, v8}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v5

    const/16 v6, 0x2710

    invoke-virtual {v3, v4, v5, v6, p2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 2237
    iget-object v3, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionDetSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/vivo/services/motion/DirectCallingService;->MagneticListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    iget-object v5, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionDetSensorManager:Landroid/hardware/SensorManager;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v8, p2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 2239
    iget-object v3, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionDetSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/vivo/services/motion/DirectCallingService;->GproScopeListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    iget-object v5, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionDetSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v5, v9}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v5

    const/16 v6, 0x2710

    invoke-virtual {v3, v4, v5, v6, p2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 2243
    iget-object v3, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionDetSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/vivo/services/motion/DirectCallingService;->ProximityListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    iget-object v5, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionDetSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v5, v11}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v12, p2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    goto/16 :goto_5

    .line 2246
    :cond_11
    sget-boolean v3, Lcom/vivo/services/motion/AllConfig;->mIsYASVirtGryo:Z

    if-eqz v3, :cond_12

    .line 2248
    iget-object v3, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionDetSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/vivo/services/motion/DirectCallingService;->acceleromererListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    iget-object v5, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionDetSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v5, v8}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v5

    const/16 v6, 0x61a8

    invoke-virtual {v3, v4, v5, v6, p2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 2250
    iget-object v3, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionDetSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/vivo/services/motion/DirectCallingService;->MagneticListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    iget-object v5, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionDetSensorManager:Landroid/hardware/SensorManager;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v8, p2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 2252
    iget-object v3, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionDetSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/vivo/services/motion/DirectCallingService;->GproScopeListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    iget-object v5, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionDetSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v5, v9}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v8, p2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 2254
    iget-object v3, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionDetSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/vivo/services/motion/DirectCallingService;->ProximityListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    iget-object v5, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionDetSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v5, v11}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v12, p2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 2257
    const-string v3, "MotionDet"

    const-string v4, "is ADSP Arch mIsYASVirtGryo"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 2261
    :cond_12
    iget-object v3, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionDetSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/vivo/services/motion/DirectCallingService;->acceleromererListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    iget-object v5, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionDetSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v5, v8}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v5

    const/16 v6, 0x61a8

    invoke-virtual {v3, v4, v5, v6, p2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 2263
    iget-object v3, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionDetSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/vivo/services/motion/DirectCallingService;->GproScopeListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    iget-object v5, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionDetSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v5, v9}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v5

    const v6, 0x9c40

    invoke-virtual {v3, v4, v5, v6, p2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 2267
    iget-object v3, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionDetSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/vivo/services/motion/DirectCallingService;->ProximityListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    iget-object v5, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionDetSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v5, v11}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v12, p2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    goto/16 :goto_5

    .line 2273
    :cond_13
    sget-boolean v3, Lcom/vivo/services/motion/AllConfig;->mIsAKMVirtGryo:Z

    if-eqz v3, :cond_14

    .line 2275
    iget-object v3, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionDetSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/vivo/services/motion/DirectCallingService;->acceleromererListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    iget-object v5, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionDetSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v5, v8}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v5

    const/16 v6, 0x2710

    invoke-virtual {v3, v4, v5, v6, p2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 2277
    iget-object v3, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionDetSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/vivo/services/motion/DirectCallingService;->MagneticListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    iget-object v5, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionDetSensorManager:Landroid/hardware/SensorManager;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v8, p2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 2279
    iget-object v3, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionDetSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/vivo/services/motion/DirectCallingService;->GproScopeListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    iget-object v5, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionDetSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v5, v9}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v5

    const/16 v6, 0x2710

    invoke-virtual {v3, v4, v5, v6, p2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 2283
    iget-object v3, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionDetSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/vivo/services/motion/DirectCallingService;->ProximityListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    iget-object v5, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionDetSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v5, v11}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v12, p2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    goto/16 :goto_5

    .line 2287
    :cond_14
    sget-boolean v3, Lcom/vivo/services/motion/AllConfig;->mIsYASVirtGryo:Z

    if-eqz v3, :cond_15

    .line 2289
    iget-object v3, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionDetSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/vivo/services/motion/DirectCallingService;->acceleromererListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    iget-object v5, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionDetSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v5, v8}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v5

    const/16 v6, 0x61a8

    invoke-virtual {v3, v4, v5, v6, p2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 2291
    iget-object v3, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionDetSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/vivo/services/motion/DirectCallingService;->MagneticListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    iget-object v5, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionDetSensorManager:Landroid/hardware/SensorManager;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v8, p2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 2293
    iget-object v3, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionDetSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/vivo/services/motion/DirectCallingService;->GproScopeListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    iget-object v5, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionDetSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v5, v9}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v8, p2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 2295
    iget-object v3, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionDetSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/vivo/services/motion/DirectCallingService;->ProximityListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    iget-object v5, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionDetSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v5, v11}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v12, p2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 2298
    const-string v3, "MotionDet"

    const-string v4, "mIsYASVirtGryo"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 2300
    :cond_15
    sget-boolean v3, Lcom/vivo/services/motion/AllConfig;->mIsALPSVirtGryo:Z

    if-eqz v3, :cond_16

    .line 2302
    iget-object v3, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionDetSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/vivo/services/motion/DirectCallingService;->acceleromererListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    iget-object v5, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionDetSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v5, v8}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v5

    const/16 v6, 0x61a8

    invoke-virtual {v3, v4, v5, v6, p2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 2304
    iget-object v3, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionDetSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/vivo/services/motion/DirectCallingService;->GproScopeListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    iget-object v5, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionDetSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v5, v9}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v8, p2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 2306
    iget-object v3, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionDetSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/vivo/services/motion/DirectCallingService;->ProximityListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    iget-object v5, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionDetSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v5, v11}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v12, p2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    goto/16 :goto_5

    .line 2312
    :cond_16
    iget-object v3, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionDetSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/vivo/services/motion/DirectCallingService;->acceleromererListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    iget-object v5, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionDetSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v5, v8}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v5

    const/16 v6, 0x61a8

    invoke-virtual {v3, v4, v5, v6, p2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 2314
    iget-object v3, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionDetSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/vivo/services/motion/DirectCallingService;->GproScopeListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    iget-object v5, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionDetSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v5, v9}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v5

    const v6, 0x9c40

    invoke-virtual {v3, v4, v5, v6, p2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 2318
    iget-object v3, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionDetSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/vivo/services/motion/DirectCallingService;->ProximityListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    iget-object v5, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionDetSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v5, v11}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v12, p2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    goto/16 :goto_5
.end method

.method public stopMotionRecognitionService()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2329
    iget-boolean v0, p0, Lcom/vivo/services/motion/DirectCallingService;->isDirectCallingServiceWorking:Z

    if-ne v0, v2, :cond_2

    .line 2331
    iget-object v0, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionDetSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/vivo/services/motion/DirectCallingService;->acceleromererListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 2332
    iget-object v0, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionDetSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/vivo/services/motion/DirectCallingService;->GproScopeListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 2334
    sget-boolean v0, Lcom/vivo/services/motion/AllConfig;->mIsYASVirtGryo:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/vivo/services/motion/AllConfig;->mIsAKMVirtGryo:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/vivo/services/motion/AllConfig;->mIsADSPAKMVirtGryo:Z

    if-eqz v0, :cond_1

    .line 2336
    :cond_0
    iget-object v0, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionDetSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/vivo/services/motion/DirectCallingService;->MagneticListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 2340
    :cond_1
    iget-object v0, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionDetSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/vivo/services/motion/DirectCallingService;->ProximityListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 2341
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/services/motion/DirectCallingService;->isDirectCallingServiceWorking:Z

    .line 2342
    sget-object v1, Lcom/vivo/services/motion/DirectCallingService;->mHandleLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2343
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/vivo/services/motion/DirectCallingService;->mCallBackHandler:Landroid/os/Handler;

    .line 2344
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/services/motion/DirectCallingService;->mServiceHandler:Landroid/os/Handler;

    .line 2345
    monitor-exit v1

    .line 2347
    :cond_2
    return v2

    .line 2345
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method subMotionAccDevAnalist()Z
    .locals 11

    .prologue
    .line 651
    const/4 v7, 0x1

    .line 652
    .local v7, "result":Z
    const/4 v5, 0x0

    .line 653
    .local v5, "loop_idx":I
    iget v4, p0, Lcom/vivo/services/motion/DirectCallingService;->prox_close_acc_x:F

    .line 654
    .local v4, "accx":F
    iget-object v8, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionAccDevParaX:Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;

    iget v8, v8, Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;->curr_device_Acc:F

    iget-object v9, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionAccDevParaX:Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;

    iget v9, v9, Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;->old_device_Acc:F

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 655
    .local v0, "DiffAccX":F
    iget-object v8, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionAccDevParaY:Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;

    iget v8, v8, Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;->curr_device_Acc:F

    iget-object v9, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionAccDevParaY:Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;

    iget v9, v9, Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;->old_device_Acc:F

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 656
    .local v1, "DiffAccY":F
    iget-object v8, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionAccDevParaZ:Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;

    iget v8, v8, Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;->curr_device_Acc:F

    iget-object v9, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionAccDevParaZ:Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;

    iget v9, v9, Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;->old_device_Acc:F

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 657
    .local v2, "DiffAccZ":F
    const-string v8, "MotionDet_3"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Perhapse acc diff_data:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    const-string v8, "MotionDet_3"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Perhapse acc curr_data:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionAccDevParaX:Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;

    iget v10, v10, Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;->curr_device_Acc:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionAccDevParaY:Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;

    iget v10, v10, Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;->curr_device_Acc:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionAccDevParaZ:Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;

    iget v10, v10, Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;->curr_device_Acc:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    const/high16 v8, 0x40800000    # 4.0f

    cmpg-float v8, v0, v8

    if-gez v8, :cond_0

    const/high16 v8, 0x40800000    # 4.0f

    cmpg-float v8, v1, v8

    if-gez v8, :cond_0

    const/high16 v8, 0x40800000    # 4.0f

    cmpg-float v8, v2, v8

    if-gez v8, :cond_0

    .line 661
    iget-object v8, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionAccDevParaX:Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;

    iget v8, v8, Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;->curr_device_Acc:F

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const/high16 v9, 0x40800000    # 4.0f

    cmpg-float v8, v8, v9

    if-gez v8, :cond_0

    iget-object v8, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionAccDevParaY:Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;

    iget v8, v8, Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;->curr_device_Acc:F

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const/high16 v9, 0x40800000    # 4.0f

    cmpg-float v8, v8, v9

    if-gez v8, :cond_0

    iget-object v8, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionAccDevParaZ:Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;

    iget v8, v8, Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;->curr_device_Acc:F

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const/high16 v9, 0x40a00000    # 5.0f

    cmpl-float v8, v8, v9

    if-lez v8, :cond_0

    .line 665
    const-string v8, "MotionDet_3"

    const-string v9, "Motion Direct FLAT-----"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    const/4 v7, 0x0

    .line 670
    :cond_0
    const-string v8, "ro.product.model.bbk"

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 672
    .local v6, "prop":Ljava/lang/String;
    iget-object v8, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionAccDevParaY:Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;

    iget v8, v8, Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;->curr_device_Acc:F

    const/high16 v9, -0x3f600000    # -5.0f

    cmpg-float v8, v8, v9

    if-ltz v8, :cond_1

    iget-object v8, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionAccDevParaZ:Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;

    iget v8, v8, Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;->curr_device_Acc:F

    const/high16 v9, -0x3f000000    # -8.0f

    cmpg-float v8, v8, v9

    if-gez v8, :cond_3

    .line 674
    :cond_1
    const/4 v8, 0x0

    cmpl-float v8, v0, v8

    if-gtz v8, :cond_2

    const/4 v8, 0x0

    cmpl-float v8, v1, v8

    if-gtz v8, :cond_2

    const/4 v8, 0x0

    cmpl-float v8, v2, v8

    if-lez v8, :cond_3

    .line 676
    :cond_2
    const-string v8, "MotionDet_3"

    const-string v9, "Motion Direct Down  FLAT-----"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    const/4 v7, 0x0

    .line 681
    :cond_3
    sget-boolean v8, Lcom/vivo/services/motion/AllConfig;->mIsYASVirtGryo:Z

    if-nez v8, :cond_4

    sget-boolean v8, Lcom/vivo/services/motion/AllConfig;->mIsADSPAKMVirtGryo:Z

    if-eqz v8, :cond_e

    .line 683
    :cond_4
    iget-object v8, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionAccDevParaY:Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;

    iget v8, v8, Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;->curr_device_Acc:F

    const v9, 0x413ccccd    # 11.8f

    cmpl-float v8, v8, v9

    if-lez v8, :cond_5

    .line 685
    const-string v8, "MotionDet_acc"

    const-string v9, "acc_y not satisfy motion"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    const/4 v7, 0x0

    .line 700
    :cond_5
    :goto_0
    const/high16 v8, 0x41000000    # 8.0f

    iget-object v9, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionAccDevParaX:Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;

    iget v9, v9, Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;->curr_device_Acc:F

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpg-float v8, v8, v9

    if-ltz v8, :cond_6

    const/high16 v8, 0x40c00000    # 6.0f

    iget-object v9, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionAccDevParaZ:Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;

    iget v9, v9, Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;->curr_device_Acc:F

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_7

    :cond_6
    const/high16 v8, -0x40400000    # -1.5f

    iget-object v9, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionAccDevParaY:Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;

    iget v9, v9, Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;->curr_device_Acc:F

    cmpl-float v8, v8, v9

    if-lez v8, :cond_7

    .line 702
    const-string v8, "MotionDet_acc"

    const-string v9, "phone is xz big"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    const/4 v7, 0x0

    .line 707
    :cond_7
    iget v8, p0, Lcom/vivo/services/motion/DirectCallingService;->prox_close_acc_z:F

    const/high16 v9, -0x3f000000    # -8.0f

    cmpg-float v8, v8, v9

    if-gez v8, :cond_8

    iget v8, p0, Lcom/vivo/services/motion/DirectCallingService;->prox_close_acc_z:F

    const/high16 v9, -0x3ec00000    # -12.0f

    cmpl-float v8, v8, v9

    if-lez v8, :cond_8

    iget v8, p0, Lcom/vivo/services/motion/DirectCallingService;->prox_close_acc_x:F

    const/high16 v9, 0x3f800000    # 1.0f

    cmpg-float v8, v8, v9

    if-gez v8, :cond_8

    iget v8, p0, Lcom/vivo/services/motion/DirectCallingService;->prox_close_acc_x:F

    const/high16 v9, -0x40800000    # -1.0f

    cmpl-float v8, v8, v9

    if-lez v8, :cond_8

    iget v8, p0, Lcom/vivo/services/motion/DirectCallingService;->prox_close_acc_y:F

    const/high16 v9, 0x3f800000    # 1.0f

    cmpg-float v8, v8, v9

    if-gez v8, :cond_8

    iget v8, p0, Lcom/vivo/services/motion/DirectCallingService;->prox_close_acc_y:F

    const/high16 v9, -0x40800000    # -1.0f

    cmpl-float v8, v8, v9

    if-lez v8, :cond_8

    .line 711
    const-string v8, "MotionDet_acc"

    const-string v9, "phone is over turn not triger"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    const/4 v7, 0x0

    .line 715
    :cond_8
    iget v8, p0, Lcom/vivo/services/motion/DirectCallingService;->prox_close_acc_y:F

    const/high16 v9, -0x3f400000    # -6.0f

    cmpg-float v8, v8, v9

    if-gez v8, :cond_9

    iget v8, p0, Lcom/vivo/services/motion/DirectCallingService;->prox_close_acc_y:F

    const/high16 v9, -0x3ec00000    # -12.0f

    cmpl-float v8, v8, v9

    if-lez v8, :cond_9

    .line 717
    const-string v8, "MotionDet_acc"

    const-string v9, "phone is head down not triger"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    const/4 v7, 0x0

    .line 721
    :cond_9
    iget v8, p0, Lcom/vivo/services/motion/DirectCallingService;->prox_close_acc_x:F

    iget v9, p0, Lcom/vivo/services/motion/DirectCallingService;->prox_close_acc_x:F

    mul-float/2addr v8, v9

    iget v9, p0, Lcom/vivo/services/motion/DirectCallingService;->prox_close_acc_y:F

    iget v10, p0, Lcom/vivo/services/motion/DirectCallingService;->prox_close_acc_y:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    iget v9, p0, Lcom/vivo/services/motion/DirectCallingService;->prox_close_acc_z:F

    iget v10, p0, Lcom/vivo/services/motion/DirectCallingService;->prox_close_acc_z:F

    mul-float/2addr v9, v10

    add-float v3, v8, v9

    .line 722
    .local v3, "accsq":F
    const/high16 v8, 0x41800000    # 16.0f

    cmpl-float v8, v8, v3

    if-gtz v8, :cond_a

    const/high16 v8, 0x43820000    # 260.0f

    cmpg-float v8, v8, v3

    if-gez v8, :cond_b

    .line 724
    :cond_a
    const-string v8, "MotionDet_acc"

    const-string v9, "phone move"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    const/4 v7, 0x0

    .line 728
    :cond_b
    if-eqz v7, :cond_d

    .line 731
    const/4 v8, 0x0

    cmpg-float v8, v8, v4

    if-gez v8, :cond_c

    const/4 v8, 0x1

    iput v8, p0, Lcom/vivo/services/motion/DirectCallingService;->pick_hand:I

    .line 732
    :cond_c
    const/4 v8, 0x0

    cmpl-float v8, v8, v4

    if-lez v8, :cond_d

    const/4 v8, 0x2

    iput v8, p0, Lcom/vivo/services/motion/DirectCallingService;->pick_hand:I

    .line 735
    :cond_d
    const-string v8, "MotionDet_acc"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "prox_close_acc_x:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/vivo/services/motion/DirectCallingService;->prox_close_acc_x:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "prox_close_acc_y:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/vivo/services/motion/DirectCallingService;->prox_close_acc_y:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "prox_close_acc_z:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/vivo/services/motion/DirectCallingService;->prox_close_acc_z:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "accsq "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    return v7

    .line 691
    .end local v3    # "accsq":F
    :cond_e
    iget-object v8, p0, Lcom/vivo/services/motion/DirectCallingService;->MotionAccDevParaY:Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;

    iget v8, v8, Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;->curr_device_Acc:F

    const/high16 v9, 0x41700000    # 15.0f

    cmpl-float v8, v8, v9

    if-lez v8, :cond_5

    .line 693
    const-string v8, "MotionDet_acc"

    const-string v9, "acc_y not satisfy motion"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method subMotionAngVerAnalist()Z
    .locals 50

    .prologue
    .line 753
    const/16 v22, 0x1

    .line 758
    .local v22, "loop_idx":I
    const/16 v34, 0x1

    .line 759
    .local v34, "result":Z
    new-instance v15, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;

    const/16 v46, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v15, v0, v1}, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;-><init>(Lcom/vivo/services/motion/DirectCallingService;Lcom/vivo/services/motion/DirectCallingService$1;)V

    .line 760
    .local v15, "gpro_max_x":Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;
    new-instance v16, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;

    const/16 v46, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v46

    invoke-direct {v0, v1, v2}, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;-><init>(Lcom/vivo/services/motion/DirectCallingService;Lcom/vivo/services/motion/DirectCallingService$1;)V

    .line 761
    .local v16, "gpro_max_y":Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;
    new-instance v17, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;

    const/16 v46, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v46

    invoke-direct {v0, v1, v2}, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;-><init>(Lcom/vivo/services/motion/DirectCallingService;Lcom/vivo/services/motion/DirectCallingService$1;)V

    .line 762
    .local v17, "gpro_max_z":Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;
    new-instance v18, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;

    const/16 v46, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v46

    invoke-direct {v0, v1, v2}, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;-><init>(Lcom/vivo/services/motion/DirectCallingService;Lcom/vivo/services/motion/DirectCallingService$1;)V

    .line 763
    .local v18, "gpro_min_x":Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;
    new-instance v19, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;

    const/16 v46, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v46

    invoke-direct {v0, v1, v2}, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;-><init>(Lcom/vivo/services/motion/DirectCallingService;Lcom/vivo/services/motion/DirectCallingService$1;)V

    .line 764
    .local v19, "gpro_min_y":Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;
    new-instance v20, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;

    const/16 v46, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v46

    invoke-direct {v0, v1, v2}, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;-><init>(Lcom/vivo/services/motion/DirectCallingService;Lcom/vivo/services/motion/DirectCallingService$1;)V

    .line 765
    .local v20, "gpro_min_z":Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;
    new-instance v12, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;

    const/16 v46, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v12, v0, v1}, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;-><init>(Lcom/vivo/services/motion/DirectCallingService;Lcom/vivo/services/motion/DirectCallingService$1;)V

    .line 766
    .local v12, "gpro_abs_max_x":Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;
    new-instance v13, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;

    const/16 v46, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v13, v0, v1}, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;-><init>(Lcom/vivo/services/motion/DirectCallingService;Lcom/vivo/services/motion/DirectCallingService$1;)V

    .line 767
    .local v13, "gpro_abs_max_y":Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;
    new-instance v14, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;

    const/16 v46, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v14, v0, v1}, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;-><init>(Lcom/vivo/services/motion/DirectCallingService;Lcom/vivo/services/motion/DirectCallingService$1;)V

    .line 768
    .local v14, "gpro_abs_max_z":Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->GproScopeListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->data_collect_idx:I

    move/from16 v46, v0

    add-int/lit8 v38, v46, -0x1

    .line 769
    .local v38, "safe_det_idx":I
    if-gez v38, :cond_0

    .line 771
    add-int/lit8 v38, v38, 0x40

    .line 773
    :cond_0
    const-string v46, "GPRO_RAW_DATA"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "safe:"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    const/16 v22, 0x0

    .line 775
    :goto_0
    const/16 v46, 0x40

    move/from16 v0, v22

    move/from16 v1, v46

    if-ge v0, v1, :cond_8

    .line 778
    sub-int v46, v22, v38

    if-lez v46, :cond_6

    sub-int v23, v22, v38

    .line 779
    .local v23, "lose_idx":I
    :goto_1
    const/16 v46, 0xa

    move/from16 v0, v23

    move/from16 v1, v46

    if-ge v0, v1, :cond_1

    .line 781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->GproScopeListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->data_collect_buf:[[F

    move-object/from16 v46, v0

    aget-object v46, v46, v22

    const/16 v47, 0x0

    const/16 v48, 0x0

    aput v48, v46, v47

    .line 782
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->GproScopeListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->data_collect_buf:[[F

    move-object/from16 v46, v0

    aget-object v46, v46, v22

    const/16 v47, 0x1

    const/16 v48, 0x0

    aput v48, v46, v47

    .line 783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->GproScopeListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->data_collect_buf:[[F

    move-object/from16 v46, v0

    aget-object v46, v46, v22

    const/16 v47, 0x2

    const/16 v48, 0x0

    aput v48, v46, v47

    .line 785
    :cond_1
    const-string v46, "GPRO_RAW_DATA"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "raw_data+"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->GproScopeListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->data_collect_buf:[[F

    move-object/from16 v48, v0

    aget-object v48, v48, v22

    const/16 v49, 0x0

    aget v48, v48, v49

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, ","

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->GproScopeListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->data_collect_buf:[[F

    move-object/from16 v48, v0

    aget-object v48, v48, v22

    const/16 v49, 0x1

    aget v48, v48, v49

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, ","

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->GproScopeListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->data_collect_buf:[[F

    move-object/from16 v48, v0

    aget-object v48, v48, v22

    const/16 v49, 0x2

    aget v48, v48, v49

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, ","

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_2
    const/16 v46, 0x3

    move/from16 v0, v21

    move/from16 v1, v46

    if-ge v0, v1, :cond_7

    .line 792
    sget-boolean v46, Lcom/vivo/services/motion/AllConfig;->mIsAKMVirtGryo:Z

    if-eqz v46, :cond_5

    .line 797
    add-int/lit8 v7, v22, -0x1

    .line 798
    .local v7, "data_id":I
    if-gez v7, :cond_2

    const/16 v7, 0x3f

    .line 799
    :cond_2
    move/from16 v0, v38

    if-ne v0, v7, :cond_3

    move/from16 v7, v22

    .line 801
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->GproScopeListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->data_collect_buf:[[F

    move-object/from16 v46, v0

    aget-object v46, v46, v22

    aget v46, v46, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->GproScopeListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->data_collect_buf:[[F

    move-object/from16 v47, v0

    aget-object v47, v47, v7

    aget v47, v47, v21

    sub-float v8, v46, v47

    .line 803
    .local v8, "data_temp":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService;->MOTION_AKM_MAX:F

    move/from16 v46, v0

    cmpg-float v46, v46, v8

    if-gtz v46, :cond_4

    .line 805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->GproScopeListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->data_collect_buf:[[F

    move-object/from16 v46, v0

    aget-object v46, v46, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->GproScopeListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->data_collect_buf:[[F

    move-object/from16 v47, v0

    aget-object v47, v47, v7

    aget v47, v47, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService;->MOTION_AKM_MAX:F

    move/from16 v48, v0

    add-float v47, v47, v48

    aput v47, v46, v21

    .line 808
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService;->MOTION_AKM_MAX:F

    move/from16 v46, v0

    move/from16 v0, v46

    neg-float v0, v0

    move/from16 v46, v0

    cmpl-float v46, v46, v8

    if-ltz v46, :cond_5

    .line 810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->GproScopeListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->data_collect_buf:[[F

    move-object/from16 v46, v0

    aget-object v46, v46, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->GproScopeListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->data_collect_buf:[[F

    move-object/from16 v47, v0

    aget-object v47, v47, v7

    aget v47, v47, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService;->MOTION_AKM_MAX:F

    move/from16 v48, v0

    sub-float v47, v47, v48

    aput v47, v46, v21

    .line 813
    .end local v7    # "data_id":I
    .end local v8    # "data_temp":F
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->GproScopeListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->data_collect_buf:[[F

    move-object/from16 v46, v0

    aget-object v46, v46, v22

    aget v46, v46, v21

    move/from16 v0, v46

    float-to-double v0, v0

    move-wide/from16 v46, v0

    const-wide v48, 0x3fe3333333333333L    # 0.6

    div-double v46, v46, v48

    move-wide/from16 v0, v46

    double-to-int v0, v0

    move/from16 v39, v0

    .line 814
    .local v39, "tem_value":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->GproScopeListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->data_collect_buf:[[F

    move-object/from16 v46, v0

    aget-object v46, v46, v22

    move/from16 v0, v39

    int-to-float v0, v0

    move/from16 v47, v0

    const v48, 0x3f19999a    # 0.6f

    mul-float v47, v47, v48

    aput v47, v46, v21

    .line 790
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_2

    .line 778
    .end local v21    # "i":I
    .end local v23    # "lose_idx":I
    .end local v39    # "tem_value":I
    :cond_6
    sub-int v46, v22, v38

    add-int/lit8 v23, v46, 0x40

    goto/16 :goto_1

    .line 816
    .restart local v21    # "i":I
    .restart local v23    # "lose_idx":I
    :cond_7
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_0

    .line 819
    .end local v21    # "i":I
    .end local v23    # "lose_idx":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->GproScopeListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->data_collect_buf:[[F

    move-object/from16 v46, v0

    const/16 v47, 0x0

    aget-object v46, v46, v47

    const/16 v47, 0x0

    aget v46, v46, v47

    move/from16 v0, v46

    iput v0, v15, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    .line 820
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->GproScopeListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->data_collect_buf:[[F

    move-object/from16 v46, v0

    const/16 v47, 0x0

    aget-object v46, v46, v47

    const/16 v47, 0x1

    aget v46, v46, v47

    move/from16 v0, v46

    move-object/from16 v1, v16

    iput v0, v1, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    .line 821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->GproScopeListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->data_collect_buf:[[F

    move-object/from16 v46, v0

    const/16 v47, 0x0

    aget-object v46, v46, v47

    const/16 v47, 0x2

    aget v46, v46, v47

    move/from16 v0, v46

    move-object/from16 v1, v17

    iput v0, v1, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    .line 822
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->GproScopeListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->data_collect_buf:[[F

    move-object/from16 v46, v0

    const/16 v47, 0x0

    aget-object v46, v46, v47

    const/16 v47, 0x0

    aget v46, v46, v47

    move/from16 v0, v46

    move-object/from16 v1, v18

    iput v0, v1, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    .line 823
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->GproScopeListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->data_collect_buf:[[F

    move-object/from16 v46, v0

    const/16 v47, 0x0

    aget-object v46, v46, v47

    const/16 v47, 0x1

    aget v46, v46, v47

    move/from16 v0, v46

    move-object/from16 v1, v19

    iput v0, v1, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    .line 824
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->GproScopeListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->data_collect_buf:[[F

    move-object/from16 v46, v0

    const/16 v47, 0x0

    aget-object v46, v46, v47

    const/16 v47, 0x2

    aget v46, v46, v47

    move/from16 v0, v46

    move-object/from16 v1, v20

    iput v0, v1, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    .line 825
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->GproScopeListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->data_collect_buf:[[F

    move-object/from16 v46, v0

    const/16 v47, 0x0

    aget-object v46, v46, v47

    const/16 v47, 0x0

    aget v30, v46, v47

    .line 826
    .local v30, "prev_x_value":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->GproScopeListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->data_collect_buf:[[F

    move-object/from16 v46, v0

    const/16 v47, 0x0

    aget-object v46, v46, v47

    const/16 v47, 0x1

    aget v31, v46, v47

    .line 827
    .local v31, "prev_y_value":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->GproScopeListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->data_collect_buf:[[F

    move-object/from16 v46, v0

    const/16 v47, 0x0

    aget-object v46, v46, v47

    const/16 v47, 0x2

    aget v32, v46, v47

    .line 828
    .local v32, "prev_z_value":F
    const/16 v46, 0x0

    move/from16 v0, v46

    iput v0, v15, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_idx:I

    .line 829
    const/16 v46, 0x0

    move/from16 v0, v46

    move-object/from16 v1, v16

    iput v0, v1, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_idx:I

    .line 830
    const/16 v46, 0x0

    move/from16 v0, v46

    move-object/from16 v1, v17

    iput v0, v1, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_idx:I

    .line 831
    const/16 v46, 0x0

    move/from16 v0, v46

    move-object/from16 v1, v18

    iput v0, v1, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_idx:I

    .line 832
    const/16 v46, 0x0

    move/from16 v0, v46

    move-object/from16 v1, v19

    iput v0, v1, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_idx:I

    .line 833
    const/16 v46, 0x0

    move/from16 v0, v46

    move-object/from16 v1, v20

    iput v0, v1, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_idx:I

    .line 834
    const/16 v22, 0x0

    .line 835
    const/16 v35, 0x0

    .line 836
    .local v35, "rise_x_cnt":I
    const/16 v36, 0x0

    .line 837
    .local v36, "rise_y_cnt":I
    const/16 v37, 0x0

    .line 838
    .local v37, "rise_z_cnt":I
    const/4 v9, 0x0

    .line 839
    .local v9, "fall_x_cnt":I
    const/4 v10, 0x0

    .line 840
    .local v10, "fall_y_cnt":I
    const/4 v11, 0x0

    .line 841
    .local v11, "fall_z_cnt":I
    const/4 v4, 0x0

    .line 842
    .local v4, "crest_x_cnt":I
    const/4 v5, 0x0

    .line 843
    .local v5, "crest_y_cnt":I
    const/4 v6, 0x0

    .line 844
    .local v6, "crest_z_cnt":I
    const/16 v43, 0x0

    .line 845
    .local v43, "x_rise_crest":I
    const/16 v44, 0x0

    .line 846
    .local v44, "y_rise_crest":I
    const/16 v45, 0x0

    .line 847
    .local v45, "z_rise_crest":I
    :goto_3
    const/16 v46, 0x40

    move/from16 v0, v22

    move/from16 v1, v46

    if-ge v0, v1, :cond_24

    .line 849
    const/16 v46, 0x8

    move/from16 v0, v22

    move/from16 v1, v46

    if-ge v0, v1, :cond_9

    .line 851
    sget-boolean v46, Lcom/vivo/services/motion/AllConfig;->mIsAKMVirtGryo:Z

    if-nez v46, :cond_9

    sget-boolean v46, Lcom/vivo/services/motion/AllConfig;->mIsALPSVirtGryo:Z

    if-nez v46, :cond_9

    sget-boolean v46, Lcom/vivo/services/motion/AllConfig;->mIsYASVirtGryo:Z

    if-nez v46, :cond_9

    sget-boolean v46, Lcom/vivo/services/motion/AllConfig;->mIsADSPAKMVirtGryo:Z

    if-eqz v46, :cond_16

    .line 863
    :cond_9
    iget v0, v15, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    move/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->GproScopeListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->data_collect_buf:[[F

    move-object/from16 v47, v0

    aget-object v47, v47, v22

    const/16 v48, 0x0

    aget v47, v47, v48

    cmpg-float v46, v46, v47

    if-gez v46, :cond_a

    .line 865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->GproScopeListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->data_collect_buf:[[F

    move-object/from16 v46, v0

    aget-object v46, v46, v22

    const/16 v47, 0x0

    aget v46, v46, v47

    move/from16 v0, v46

    iput v0, v15, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    .line 866
    move/from16 v0, v22

    iput v0, v15, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_idx:I

    .line 868
    :cond_a
    move-object/from16 v0, v16

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    move/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->GproScopeListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->data_collect_buf:[[F

    move-object/from16 v47, v0

    aget-object v47, v47, v22

    const/16 v48, 0x1

    aget v47, v47, v48

    cmpg-float v46, v46, v47

    if-gez v46, :cond_b

    .line 870
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->GproScopeListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->data_collect_buf:[[F

    move-object/from16 v46, v0

    aget-object v46, v46, v22

    const/16 v47, 0x1

    aget v46, v46, v47

    move/from16 v0, v46

    move-object/from16 v1, v16

    iput v0, v1, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    .line 871
    move/from16 v0, v22

    move-object/from16 v1, v16

    iput v0, v1, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_idx:I

    .line 873
    :cond_b
    move-object/from16 v0, v17

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    move/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->GproScopeListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->data_collect_buf:[[F

    move-object/from16 v47, v0

    aget-object v47, v47, v22

    const/16 v48, 0x2

    aget v47, v47, v48

    cmpg-float v46, v46, v47

    if-gez v46, :cond_c

    .line 875
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->GproScopeListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->data_collect_buf:[[F

    move-object/from16 v46, v0

    aget-object v46, v46, v22

    const/16 v47, 0x2

    aget v46, v46, v47

    move/from16 v0, v46

    move-object/from16 v1, v17

    iput v0, v1, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    .line 876
    move/from16 v0, v22

    move-object/from16 v1, v17

    iput v0, v1, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_idx:I

    .line 877
    const-string v46, "GPRO_MAX_DATA"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "gpro_max_z.gpro_value data "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v17

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    move/from16 v48, v0

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, " "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v17

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_idx:I

    move/from16 v48, v0

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    :cond_c
    move-object/from16 v0, v18

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    move/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->GproScopeListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->data_collect_buf:[[F

    move-object/from16 v47, v0

    aget-object v47, v47, v22

    const/16 v48, 0x0

    aget v47, v47, v48

    cmpl-float v46, v46, v47

    if-lez v46, :cond_d

    .line 881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->GproScopeListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->data_collect_buf:[[F

    move-object/from16 v46, v0

    aget-object v46, v46, v22

    const/16 v47, 0x0

    aget v46, v46, v47

    move/from16 v0, v46

    move-object/from16 v1, v18

    iput v0, v1, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    .line 882
    move/from16 v0, v22

    move-object/from16 v1, v18

    iput v0, v1, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_idx:I

    .line 884
    :cond_d
    move-object/from16 v0, v19

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    move/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->GproScopeListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->data_collect_buf:[[F

    move-object/from16 v47, v0

    aget-object v47, v47, v22

    const/16 v48, 0x1

    aget v47, v47, v48

    cmpl-float v46, v46, v47

    if-lez v46, :cond_e

    .line 886
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->GproScopeListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->data_collect_buf:[[F

    move-object/from16 v46, v0

    aget-object v46, v46, v22

    const/16 v47, 0x1

    aget v46, v46, v47

    move/from16 v0, v46

    move-object/from16 v1, v19

    iput v0, v1, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    .line 887
    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_idx:I

    .line 889
    :cond_e
    move-object/from16 v0, v20

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    move/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->GproScopeListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->data_collect_buf:[[F

    move-object/from16 v47, v0

    aget-object v47, v47, v22

    const/16 v48, 0x2

    aget v47, v47, v48

    cmpl-float v46, v46, v47

    if-lez v46, :cond_f

    .line 891
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->GproScopeListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->data_collect_buf:[[F

    move-object/from16 v46, v0

    aget-object v46, v46, v22

    const/16 v47, 0x2

    aget v46, v46, v47

    move/from16 v0, v46

    move-object/from16 v1, v20

    iput v0, v1, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    .line 892
    move/from16 v0, v22

    move-object/from16 v1, v20

    iput v0, v1, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_idx:I

    .line 893
    const-string v46, "GPRO_MAX_DATA"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "gpro_min_z.gpro_value data "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v20

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    move/from16 v48, v0

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, " "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v20

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_idx:I

    move/from16 v48, v0

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->GproScopeListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->data_collect_buf:[[F

    move-object/from16 v46, v0

    aget-object v46, v46, v22

    const/16 v47, 0x0

    aget v46, v46, v47

    cmpg-float v46, v30, v46

    if-gez v46, :cond_18

    .line 898
    add-int/lit8 v35, v35, 0x1

    .line 904
    :cond_10
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->GproScopeListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->data_collect_buf:[[F

    move-object/from16 v46, v0

    aget-object v46, v46, v22

    const/16 v47, 0x1

    aget v46, v46, v47

    cmpg-float v46, v31, v46

    if-gez v46, :cond_19

    .line 906
    add-int/lit8 v36, v36, 0x1

    .line 912
    :cond_11
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->GproScopeListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->data_collect_buf:[[F

    move-object/from16 v46, v0

    aget-object v46, v46, v22

    const/16 v47, 0x2

    aget v46, v46, v47

    cmpg-float v46, v32, v46

    if-gez v46, :cond_1a

    .line 914
    add-int/lit8 v37, v37, 0x1

    .line 929
    :cond_12
    :goto_6
    if-lez v35, :cond_1b

    if-nez v9, :cond_1b

    .line 931
    const/16 v43, 0x1

    .line 950
    :cond_13
    :goto_7
    if-lez v36, :cond_1e

    if-nez v10, :cond_1e

    .line 952
    const/16 v44, 0x1

    .line 971
    :cond_14
    :goto_8
    if-lez v37, :cond_21

    if-nez v11, :cond_21

    .line 973
    const/16 v45, 0x1

    .line 991
    :cond_15
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->GproScopeListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->data_collect_buf:[[F

    move-object/from16 v46, v0

    aget-object v46, v46, v22

    const/16 v47, 0x0

    aget v30, v46, v47

    .line 992
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->GproScopeListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->data_collect_buf:[[F

    move-object/from16 v46, v0

    aget-object v46, v46, v22

    const/16 v47, 0x1

    aget v31, v46, v47

    .line 993
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->GproScopeListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->data_collect_buf:[[F

    move-object/from16 v46, v0

    aget-object v46, v46, v22

    const/16 v47, 0x2

    aget v32, v46, v47

    .line 1000
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_3

    .line 856
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->GproScopeListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->data_collect_buf:[[F

    move-object/from16 v46, v0

    aget-object v46, v46, v22

    const/16 v47, 0x0

    aget v46, v46, v47

    invoke-static/range {v46 .. v46}, Ljava/lang/Math;->abs(F)F

    move-result v46

    move/from16 v0, v46

    float-to-double v0, v0

    move-wide/from16 v46, v0

    const-wide/high16 v48, 0x4024000000000000L    # 10.0

    cmpl-double v46, v46, v48

    if-gtz v46, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->GproScopeListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->data_collect_buf:[[F

    move-object/from16 v46, v0

    aget-object v46, v46, v22

    const/16 v47, 0x1

    aget v46, v46, v47

    invoke-static/range {v46 .. v46}, Ljava/lang/Math;->abs(F)F

    move-result v46

    move/from16 v0, v46

    float-to-double v0, v0

    move-wide/from16 v46, v0

    const-wide/high16 v48, 0x4024000000000000L    # 10.0

    cmpl-double v46, v46, v48

    if-gtz v46, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->GproScopeListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->data_collect_buf:[[F

    move-object/from16 v46, v0

    aget-object v46, v46, v22

    const/16 v47, 0x2

    aget v46, v46, v47

    invoke-static/range {v46 .. v46}, Ljava/lang/Math;->abs(F)F

    move-result v46

    move/from16 v0, v46

    float-to-double v0, v0

    move-wide/from16 v46, v0

    const-wide/high16 v48, 0x4024000000000000L    # 10.0

    cmpl-double v46, v46, v48

    if-lez v46, :cond_9

    .line 858
    :cond_17
    add-int/lit8 v22, v22, 0x1

    .line 859
    goto/16 :goto_3

    .line 900
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->GproScopeListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->data_collect_buf:[[F

    move-object/from16 v46, v0

    aget-object v46, v46, v22

    const/16 v47, 0x0

    aget v46, v46, v47

    cmpl-float v46, v30, v46

    if-lez v46, :cond_10

    .line 902
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_4

    .line 908
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->GproScopeListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->data_collect_buf:[[F

    move-object/from16 v46, v0

    aget-object v46, v46, v22

    const/16 v47, 0x1

    aget v46, v46, v47

    cmpl-float v46, v31, v46

    if-lez v46, :cond_11

    .line 910
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_5

    .line 916
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->GproScopeListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->data_collect_buf:[[F

    move-object/from16 v46, v0

    aget-object v46, v46, v22

    const/16 v47, 0x2

    aget v46, v46, v47

    cmpl-float v46, v32, v46

    if-lez v46, :cond_12

    .line 918
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_6

    .line 933
    :cond_1b
    if-nez v35, :cond_1c

    if-lez v9, :cond_1c

    .line 935
    const/16 v43, 0x0

    goto/16 :goto_7

    .line 937
    :cond_1c
    if-lez v35, :cond_13

    if-lez v9, :cond_13

    .line 939
    add-int/lit8 v4, v4, 0x1

    .line 940
    const/16 v46, 0x1

    move/from16 v0, v43

    move/from16 v1, v46

    if-ne v0, v1, :cond_1d

    .line 942
    const/16 v35, 0x0

    goto/16 :goto_7

    .line 946
    :cond_1d
    const/4 v9, 0x0

    goto/16 :goto_7

    .line 954
    :cond_1e
    if-nez v36, :cond_1f

    if-lez v10, :cond_1f

    .line 956
    const/16 v44, 0x2

    goto/16 :goto_8

    .line 958
    :cond_1f
    if-lez v36, :cond_14

    if-lez v10, :cond_14

    .line 960
    add-int/lit8 v5, v5, 0x1

    .line 961
    const/16 v46, 0x1

    move/from16 v0, v44

    move/from16 v1, v46

    if-ne v0, v1, :cond_20

    .line 963
    const/16 v36, 0x0

    goto/16 :goto_8

    .line 967
    :cond_20
    const/4 v10, 0x0

    goto/16 :goto_8

    .line 975
    :cond_21
    if-nez v37, :cond_22

    if-lez v11, :cond_22

    .line 977
    const/16 v45, 0x2

    goto/16 :goto_9

    .line 979
    :cond_22
    if-lez v37, :cond_15

    if-lez v11, :cond_15

    .line 981
    add-int/lit8 v6, v6, 0x1

    .line 982
    const/16 v46, 0x1

    move/from16 v0, v45

    move/from16 v1, v46

    if-ne v0, v1, :cond_23

    .line 984
    const/16 v37, 0x0

    goto/16 :goto_9

    .line 988
    :cond_23
    const/4 v11, 0x0

    goto/16 :goto_9

    .line 1006
    :cond_24
    iget v0, v15, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_idx:I

    move/from16 v46, v0

    sub-int v24, v38, v46

    .line 1007
    .local v24, "max_t_x":I
    move-object/from16 v0, v16

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_idx:I

    move/from16 v46, v0

    sub-int v25, v38, v46

    .line 1008
    .local v25, "max_t_y":I
    move-object/from16 v0, v17

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_idx:I

    move/from16 v46, v0

    sub-int v26, v38, v46

    .line 1009
    .local v26, "max_t_z":I
    if-ltz v24, :cond_2f

    .line 1010
    :goto_a
    if-ltz v25, :cond_30

    .line 1011
    :goto_b
    if-ltz v26, :cond_31

    .line 1013
    :goto_c
    move-object/from16 v0, v18

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_idx:I

    move/from16 v46, v0

    sub-int v27, v38, v46

    .line 1014
    .local v27, "min_t_x":I
    move-object/from16 v0, v19

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_idx:I

    move/from16 v46, v0

    sub-int v28, v38, v46

    .line 1015
    .local v28, "min_t_y":I
    move-object/from16 v0, v20

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_idx:I

    move/from16 v46, v0

    sub-int v29, v38, v46

    .line 1016
    .local v29, "min_t_z":I
    if-ltz v27, :cond_32

    .line 1017
    :goto_d
    if-ltz v28, :cond_33

    .line 1018
    :goto_e
    if-ltz v29, :cond_34

    .line 1020
    :goto_f
    iget v0, v15, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    move/from16 v46, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    move/from16 v47, v0

    mul-float v46, v46, v47

    const/16 v47, 0x0

    cmpg-float v46, v46, v47

    if-gez v46, :cond_37

    iget v0, v15, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    move/from16 v46, v0

    invoke-static/range {v46 .. v46}, Ljava/lang/Math;->abs(F)F

    move-result v46

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService;->WIN_RESAMPLE:F

    move/from16 v47, v0

    cmpl-float v46, v46, v47

    if-lez v46, :cond_37

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    move/from16 v46, v0

    invoke-static/range {v46 .. v46}, Ljava/lang/Math;->abs(F)F

    move-result v46

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService;->WIN_RESAMPLE:F

    move/from16 v47, v0

    cmpl-float v46, v46, v47

    if-lez v46, :cond_37

    .line 1024
    move/from16 v0, v24

    move/from16 v1, v27

    if-ge v0, v1, :cond_35

    move-object v12, v15

    .line 1025
    :goto_10
    move/from16 v0, v24

    move/from16 v1, v27

    if-ge v0, v1, :cond_36

    move/from16 v40, v24

    .line 1032
    .local v40, "triger_t_x":I
    :goto_11
    move-object/from16 v0, v16

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    move/from16 v46, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    move/from16 v47, v0

    mul-float v46, v46, v47

    const/16 v47, 0x0

    cmpg-float v46, v46, v47

    if-gez v46, :cond_3c

    move-object/from16 v0, v16

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    move/from16 v46, v0

    invoke-static/range {v46 .. v46}, Ljava/lang/Math;->abs(F)F

    move-result v46

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService;->WIN_RESAMPLE:F

    move/from16 v47, v0

    cmpl-float v46, v46, v47

    if-lez v46, :cond_3c

    move-object/from16 v0, v19

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    move/from16 v46, v0

    invoke-static/range {v46 .. v46}, Ljava/lang/Math;->abs(F)F

    move-result v46

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService;->WIN_RESAMPLE:F

    move/from16 v47, v0

    cmpl-float v46, v46, v47

    if-lez v46, :cond_3c

    .line 1036
    move/from16 v0, v25

    move/from16 v1, v28

    if-ge v0, v1, :cond_3a

    move-object/from16 v13, v16

    .line 1037
    :goto_12
    move/from16 v0, v25

    move/from16 v1, v28

    if-ge v0, v1, :cond_3b

    move/from16 v41, v25

    .line 1044
    .local v41, "triger_t_y":I
    :goto_13
    move-object/from16 v0, v17

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    move/from16 v46, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    move/from16 v47, v0

    mul-float v46, v46, v47

    const/16 v47, 0x0

    cmpg-float v46, v46, v47

    if-gez v46, :cond_41

    move-object/from16 v0, v17

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    move/from16 v46, v0

    invoke-static/range {v46 .. v46}, Ljava/lang/Math;->abs(F)F

    move-result v46

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService;->WIN_RESAMPLE:F

    move/from16 v47, v0

    cmpl-float v46, v46, v47

    if-lez v46, :cond_41

    move-object/from16 v0, v20

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    move/from16 v46, v0

    invoke-static/range {v46 .. v46}, Ljava/lang/Math;->abs(F)F

    move-result v46

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService;->WIN_RESAMPLE:F

    move/from16 v47, v0

    cmpl-float v46, v46, v47

    if-lez v46, :cond_41

    sub-int v46, v26, v29

    invoke-static/range {v46 .. v46}, Ljava/lang/Math;->abs(I)I

    move-result v46

    const/16 v47, 0xf

    move/from16 v0, v46

    move/from16 v1, v47

    if-le v0, v1, :cond_41

    .line 1049
    move/from16 v0, v26

    move/from16 v1, v29

    if-ge v0, v1, :cond_3f

    move-object/from16 v14, v17

    .line 1050
    :goto_14
    move/from16 v0, v26

    move/from16 v1, v29

    if-ge v0, v1, :cond_40

    move/from16 v42, v26

    .line 1051
    .local v42, "triger_t_z":I
    :goto_15
    const-string v46, "GPRO_MAX_DATA"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "gpro_abs_max_z 1 "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    iget v0, v14, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    move/from16 v48, v0

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    :goto_16
    const-string v46, "MotionDet"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "Perhapse Total crest:"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, ","

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, ","

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    const-string v46, "MotionDet"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "Perhapse triger idx:"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, ","

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, ","

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    const-string v46, "MotionDet"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "Perhapse triger value:"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    iget v0, v12, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    move/from16 v48, v0

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, ","

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    iget v0, v13, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    move/from16 v48, v0

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, ","

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    iget v0, v14, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    move/from16 v48, v0

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    const-string v46, "MotionDet_1"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "x:"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->GproScopeListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->data_collect_buf:[[F

    move-object/from16 v48, v0

    aget-object v48, v48, v38

    const/16 v49, 0x0

    aget v48, v48, v49

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, ","

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, "y:"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->GproScopeListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->data_collect_buf:[[F

    move-object/from16 v48, v0

    aget-object v48, v48, v38

    const/16 v49, 0x1

    aget v48, v48, v49

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, "z:"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->GproScopeListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->data_collect_buf:[[F

    move-object/from16 v48, v0

    aget-object v48, v48, v38

    const/16 v49, 0x2

    aget v48, v48, v49

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    const-string v46, "ro.product.model.bbk"

    const/16 v47, 0x0

    invoke-static/range {v46 .. v47}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 1069
    .local v33, "prop":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->GproScopeListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->data_collect_buf:[[F

    move-object/from16 v46, v0

    aget-object v46, v46, v38

    const/16 v47, 0x1

    aget v46, v46, v47

    invoke-static/range {v46 .. v46}, Ljava/lang/Math;->abs(F)F

    move-result v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->GproScopeListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->data_collect_buf:[[F

    move-object/from16 v47, v0

    aget-object v47, v47, v38

    const/16 v48, 0x0

    aget v47, v47, v48

    invoke-static/range {v47 .. v47}, Ljava/lang/Math;->abs(F)F

    move-result v47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService;->GproScopeListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->data_collect_buf:[[F

    move-object/from16 v48, v0

    aget-object v48, v48, v38

    const/16 v49, 0x2

    aget v48, v48, v49

    invoke-static/range {v48 .. v48}, Ljava/lang/Math;->abs(F)F

    move-result v48

    add-float v47, v47, v48

    cmpl-float v46, v46, v47

    if-lez v46, :cond_44

    .line 1073
    iget v0, v13, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    move/from16 v46, v0

    invoke-static/range {v46 .. v46}, Ljava/lang/Math;->abs(F)F

    move-result v46

    iget v0, v12, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    move/from16 v47, v0

    invoke-static/range {v47 .. v47}, Ljava/lang/Math;->abs(F)F

    move-result v47

    iget v0, v14, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    move/from16 v48, v0

    invoke-static/range {v48 .. v48}, Ljava/lang/Math;->abs(F)F

    move-result v48

    add-float v47, v47, v48

    cmpl-float v46, v46, v47

    if-lez v46, :cond_25

    .line 1075
    const/16 v34, 0x0

    .line 1079
    :cond_25
    const-string v46, "MotionDet"

    const-string v47, "Angular velocity condition is not satisfied case 5"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    :goto_17
    const-string v46, "MotionDet"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "max_z/max_y:"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    iget v0, v14, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    move/from16 v48, v0

    iget v0, v13, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    move/from16 v49, v0

    div-float v48, v48, v49

    invoke-static/range {v48 .. v48}, Ljava/lang/Math;->abs(F)F

    move-result v48

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, "max_z/max_x:"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    iget v0, v14, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    move/from16 v48, v0

    iget v0, v12, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    move/from16 v49, v0

    div-float v48, v48, v49

    invoke-static/range {v48 .. v48}, Ljava/lang/Math;->abs(F)F

    move-result v48

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    const-string v46, "MotionDet_2"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "max_x:"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    iget v0, v12, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    move/from16 v48, v0

    invoke-static/range {v48 .. v48}, Ljava/lang/Math;->abs(F)F

    move-result v48

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, "max_y:"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    iget v0, v13, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    move/from16 v48, v0

    invoke-static/range {v48 .. v48}, Ljava/lang/Math;->abs(F)F

    move-result v48

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, "max_z:"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    iget v0, v14, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    move/from16 v48, v0

    invoke-static/range {v48 .. v48}, Ljava/lang/Math;->abs(F)F

    move-result v48

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    iget v0, v14, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    move/from16 v46, v0

    iget v0, v13, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    move/from16 v47, v0

    div-float v46, v46, v47

    invoke-static/range {v46 .. v46}, Ljava/lang/Math;->abs(F)F

    move-result v46

    const v47, 0x3ecccccd    # 0.4f

    cmpg-float v46, v46, v47

    if-ltz v46, :cond_26

    iget v0, v14, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    move/from16 v46, v0

    iget v0, v12, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    move/from16 v47, v0

    div-float v46, v46, v47

    invoke-static/range {v46 .. v46}, Ljava/lang/Math;->abs(F)F

    move-result v46

    const v47, 0x3e99999a    # 0.3f

    cmpg-float v46, v46, v47

    if-gez v46, :cond_27

    .line 1118
    :cond_26
    const-string v46, "MotionDet"

    const-string v47, "PD1222 Angular velocity condition is not satisfied case 4"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    :cond_27
    if-nez v34, :cond_28

    .line 1122
    const/16 v46, 0x0

    move/from16 v0, v46

    iput v0, v15, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    .line 1123
    const/16 v46, 0x0

    move/from16 v0, v46

    move-object/from16 v1, v16

    iput v0, v1, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    .line 1124
    const/16 v46, 0x0

    move/from16 v0, v46

    move-object/from16 v1, v17

    iput v0, v1, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    .line 1125
    const/16 v46, 0x0

    move/from16 v0, v46

    move-object/from16 v1, v18

    iput v0, v1, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    .line 1126
    const/16 v46, 0x0

    move/from16 v0, v46

    move-object/from16 v1, v19

    iput v0, v1, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    .line 1127
    const/16 v46, 0x0

    move/from16 v0, v46

    move-object/from16 v1, v20

    iput v0, v1, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    .line 1143
    :cond_28
    sget-boolean v46, Lcom/vivo/services/motion/AllConfig;->mIsAKMVirtGryo:Z

    if-eqz v46, :cond_47

    .line 1145
    const/16 v46, 0x1

    move/from16 v0, v34

    move/from16 v1, v46

    if-ne v0, v1, :cond_2a

    iget v0, v12, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    move/from16 v46, v0

    invoke-static/range {v46 .. v46}, Ljava/lang/Math;->abs(F)F

    move-result v46

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService;->MOTION_MIN_1222:F

    move/from16 v47, v0

    cmpg-float v46, v46, v47

    if-ltz v46, :cond_29

    iget v0, v12, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    move/from16 v46, v0

    invoke-static/range {v46 .. v46}, Ljava/lang/Math;->abs(F)F

    move-result v46

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService;->MOTION_MAX_AKM:F

    move/from16 v47, v0

    cmpl-float v46, v46, v47

    if-lez v46, :cond_2a

    .line 1147
    :cond_29
    const-string v46, "MotionDet"

    const-string v47, "MotionDet MAX:X ERROR"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    :cond_2a
    const/16 v46, 0x1

    move/from16 v0, v34

    move/from16 v1, v46

    if-ne v0, v1, :cond_2c

    iget v0, v13, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    move/from16 v46, v0

    invoke-static/range {v46 .. v46}, Ljava/lang/Math;->abs(F)F

    move-result v46

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService;->MOTION_MIN_Y_1222:F

    move/from16 v47, v0

    cmpg-float v46, v46, v47

    if-ltz v46, :cond_2b

    iget v0, v13, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    move/from16 v46, v0

    invoke-static/range {v46 .. v46}, Ljava/lang/Math;->abs(F)F

    move-result v46

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService;->MOTION_MAX_AKM:F

    move/from16 v47, v0

    cmpl-float v46, v46, v47

    if-lez v46, :cond_2c

    .line 1152
    :cond_2b
    const-string v46, "MotionDet"

    const-string v47, "MotionDet MAX:Y ERROR"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    :cond_2c
    const/16 v46, 0x1

    move/from16 v0, v34

    move/from16 v1, v46

    if-ne v0, v1, :cond_2e

    iget v0, v14, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    move/from16 v46, v0

    invoke-static/range {v46 .. v46}, Ljava/lang/Math;->abs(F)F

    move-result v46

    move/from16 v0, v46

    float-to-double v0, v0

    move-wide/from16 v46, v0

    const-wide v48, 0x3ff3333333333333L    # 1.2

    cmpg-double v46, v46, v48

    if-ltz v46, :cond_2d

    iget v0, v14, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    move/from16 v46, v0

    invoke-static/range {v46 .. v46}, Ljava/lang/Math;->abs(F)F

    move-result v46

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService;->MOTION_MAX_AKM:F

    move/from16 v47, v0

    cmpl-float v46, v46, v47

    if-lez v46, :cond_2e

    .line 1157
    :cond_2d
    const-string v46, "MotionDet"

    const-string v47, "MotionDet MAX:Z ERROR"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    const/16 v34, 0x0

    .line 1219
    :cond_2e
    :goto_18
    const-string v46, "MotionDet+++++"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "result:"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    return v34

    .line 1009
    .end local v27    # "min_t_x":I
    .end local v28    # "min_t_y":I
    .end local v29    # "min_t_z":I
    .end local v33    # "prop":Ljava/lang/String;
    .end local v40    # "triger_t_x":I
    .end local v41    # "triger_t_y":I
    .end local v42    # "triger_t_z":I
    :cond_2f
    add-int/lit8 v24, v24, 0x40

    goto/16 :goto_a

    .line 1010
    :cond_30
    add-int/lit8 v25, v25, 0x40

    goto/16 :goto_b

    .line 1011
    :cond_31
    add-int/lit8 v26, v26, 0x40

    goto/16 :goto_c

    .line 1016
    .restart local v27    # "min_t_x":I
    .restart local v28    # "min_t_y":I
    .restart local v29    # "min_t_z":I
    :cond_32
    add-int/lit8 v27, v27, 0x40

    goto/16 :goto_d

    .line 1017
    :cond_33
    add-int/lit8 v28, v28, 0x40

    goto/16 :goto_e

    .line 1018
    :cond_34
    add-int/lit8 v29, v29, 0x40

    goto/16 :goto_f

    :cond_35
    move-object/from16 v12, v18

    .line 1024
    goto/16 :goto_10

    :cond_36
    move/from16 v40, v27

    .line 1025
    goto/16 :goto_11

    .line 1029
    :cond_37
    iget v0, v15, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    move/from16 v46, v0

    invoke-static/range {v46 .. v46}, Ljava/lang/Math;->abs(F)F

    move-result v46

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    move/from16 v47, v0

    invoke-static/range {v47 .. v47}, Ljava/lang/Math;->abs(F)F

    move-result v47

    cmpl-float v46, v46, v47

    if-lez v46, :cond_38

    move-object v12, v15

    .line 1030
    :goto_19
    iget v0, v15, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    move/from16 v46, v0

    invoke-static/range {v46 .. v46}, Ljava/lang/Math;->abs(F)F

    move-result v46

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    move/from16 v47, v0

    invoke-static/range {v47 .. v47}, Ljava/lang/Math;->abs(F)F

    move-result v47

    cmpl-float v46, v46, v47

    if-lez v46, :cond_39

    move/from16 v40, v24

    .restart local v40    # "triger_t_x":I
    :goto_1a
    goto/16 :goto_11

    .end local v40    # "triger_t_x":I
    :cond_38
    move-object/from16 v12, v18

    .line 1029
    goto :goto_19

    :cond_39
    move/from16 v40, v27

    .line 1030
    goto :goto_1a

    .restart local v40    # "triger_t_x":I
    :cond_3a
    move-object/from16 v13, v19

    .line 1036
    goto/16 :goto_12

    :cond_3b
    move/from16 v41, v28

    .line 1037
    goto/16 :goto_13

    .line 1041
    :cond_3c
    move-object/from16 v0, v16

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    move/from16 v46, v0

    invoke-static/range {v46 .. v46}, Ljava/lang/Math;->abs(F)F

    move-result v46

    move-object/from16 v0, v19

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    move/from16 v47, v0

    invoke-static/range {v47 .. v47}, Ljava/lang/Math;->abs(F)F

    move-result v47

    cmpl-float v46, v46, v47

    if-lez v46, :cond_3d

    move-object/from16 v13, v16

    .line 1042
    :goto_1b
    move-object/from16 v0, v16

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    move/from16 v46, v0

    invoke-static/range {v46 .. v46}, Ljava/lang/Math;->abs(F)F

    move-result v46

    move-object/from16 v0, v19

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    move/from16 v47, v0

    invoke-static/range {v47 .. v47}, Ljava/lang/Math;->abs(F)F

    move-result v47

    cmpl-float v46, v46, v47

    if-lez v46, :cond_3e

    move/from16 v41, v25

    .restart local v41    # "triger_t_y":I
    :goto_1c
    goto/16 :goto_13

    .end local v41    # "triger_t_y":I
    :cond_3d
    move-object/from16 v13, v19

    .line 1041
    goto :goto_1b

    :cond_3e
    move/from16 v41, v28

    .line 1042
    goto :goto_1c

    .restart local v41    # "triger_t_y":I
    :cond_3f
    move-object/from16 v14, v20

    .line 1049
    goto/16 :goto_14

    :cond_40
    move/from16 v42, v29

    .line 1050
    goto/16 :goto_15

    .line 1056
    :cond_41
    const-string v46, "GPRO_MAX_DATA"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "gpro_abs_max_z 2 "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    iget v0, v14, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    move/from16 v48, v0

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    move-object/from16 v0, v17

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    move/from16 v46, v0

    invoke-static/range {v46 .. v46}, Ljava/lang/Math;->abs(F)F

    move-result v46

    move-object/from16 v0, v20

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    move/from16 v47, v0

    invoke-static/range {v47 .. v47}, Ljava/lang/Math;->abs(F)F

    move-result v47

    cmpl-float v46, v46, v47

    if-lez v46, :cond_42

    move-object/from16 v14, v17

    .line 1059
    :goto_1d
    move-object/from16 v0, v17

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    move/from16 v46, v0

    invoke-static/range {v46 .. v46}, Ljava/lang/Math;->abs(F)F

    move-result v46

    move-object/from16 v0, v20

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    move/from16 v47, v0

    invoke-static/range {v47 .. v47}, Ljava/lang/Math;->abs(F)F

    move-result v47

    cmpl-float v46, v46, v47

    if-lez v46, :cond_43

    move/from16 v42, v26

    .restart local v42    # "triger_t_z":I
    :goto_1e
    goto/16 :goto_16

    .end local v42    # "triger_t_z":I
    :cond_42
    move-object/from16 v14, v20

    .line 1058
    goto :goto_1d

    :cond_43
    move/from16 v42, v29

    .line 1059
    goto :goto_1e

    .line 1081
    .restart local v33    # "prop":Ljava/lang/String;
    .restart local v42    # "triger_t_z":I
    :cond_44
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService;->MAX_CREST_CNT_1222:I

    move/from16 v46, v0

    move/from16 v0, v46

    if-ge v4, v0, :cond_45

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService;->MAX_CREST_CNT_1222:I

    move/from16 v46, v0

    move/from16 v0, v46

    if-ge v5, v0, :cond_45

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService;->MAX_CREST_CNT_1222:I

    move/from16 v46, v0

    move/from16 v0, v46

    if-lt v6, v0, :cond_46

    .line 1083
    :cond_45
    const/16 v34, 0x0

    .line 1084
    const-string v46, "MotionDet"

    const-string v47, "Angular velocity condition is not satisfied case 2"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17

    .line 1100
    :cond_46
    const-string v46, "MotionDet"

    const-string v47, "Angular velocity condition is satisfied"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17

    .line 1161
    :cond_47
    sget-boolean v46, Lcom/vivo/services/motion/AllConfig;->mIsALPSVirtGryo:Z

    if-nez v46, :cond_48

    sget-boolean v46, Lcom/vivo/services/motion/AllConfig;->mIsYASVirtGryo:Z

    if-eqz v46, :cond_4e

    .line 1164
    :cond_48
    const/16 v46, 0x1

    move/from16 v0, v34

    move/from16 v1, v46

    if-ne v0, v1, :cond_4a

    iget v0, v12, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    move/from16 v46, v0

    invoke-static/range {v46 .. v46}, Ljava/lang/Math;->abs(F)F

    move-result v46

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService;->MOTION_MIN:F

    move/from16 v47, v0

    cmpg-float v46, v46, v47

    if-ltz v46, :cond_49

    iget v0, v12, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    move/from16 v46, v0

    invoke-static/range {v46 .. v46}, Ljava/lang/Math;->abs(F)F

    move-result v46

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService;->MOTION_MAX:F

    move/from16 v47, v0

    cmpl-float v46, v46, v47

    if-lez v46, :cond_4a

    .line 1166
    :cond_49
    const-string v46, "MotionDet"

    const-string v47, "MotionDet MAX:X ERROR"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    const/16 v34, 0x0

    .line 1169
    :cond_4a
    const/16 v46, 0x1

    move/from16 v0, v34

    move/from16 v1, v46

    if-ne v0, v1, :cond_4c

    iget v0, v13, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    move/from16 v46, v0

    invoke-static/range {v46 .. v46}, Ljava/lang/Math;->abs(F)F

    move-result v46

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService;->MOTION_MIN_Y_1222:F

    move/from16 v47, v0

    cmpg-float v46, v46, v47

    if-ltz v46, :cond_4b

    iget v0, v13, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    move/from16 v46, v0

    invoke-static/range {v46 .. v46}, Ljava/lang/Math;->abs(F)F

    move-result v46

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService;->MOTION_MAX:F

    move/from16 v47, v0

    cmpl-float v46, v46, v47

    if-lez v46, :cond_4c

    .line 1171
    :cond_4b
    const-string v46, "MotionDet"

    const-string v47, "MotionDet MAX:Y ERROR"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    const/16 v34, 0x0

    .line 1174
    :cond_4c
    const/16 v46, 0x1

    move/from16 v0, v34

    move/from16 v1, v46

    if-ne v0, v1, :cond_2e

    iget v0, v14, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    move/from16 v46, v0

    invoke-static/range {v46 .. v46}, Ljava/lang/Math;->abs(F)F

    move-result v46

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService;->MOTION_MIN_1222:F

    move/from16 v47, v0

    cmpg-float v46, v46, v47

    if-ltz v46, :cond_4d

    iget v0, v14, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    move/from16 v46, v0

    invoke-static/range {v46 .. v46}, Ljava/lang/Math;->abs(F)F

    move-result v46

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService;->MOTION_MAX:F

    move/from16 v47, v0

    cmpl-float v46, v46, v47

    if-lez v46, :cond_2e

    .line 1176
    :cond_4d
    const-string v46, "MotionDet"

    const-string v47, "MotionDet MAX:Z ERROR"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    const/16 v34, 0x0

    goto/16 :goto_18

    .line 1180
    :cond_4e
    sget-boolean v46, Lcom/vivo/services/motion/AllConfig;->mIsADSPAKMVirtGryo:Z

    if-eqz v46, :cond_54

    .line 1183
    const/16 v46, 0x1

    move/from16 v0, v34

    move/from16 v1, v46

    if-ne v0, v1, :cond_50

    iget v0, v12, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    move/from16 v46, v0

    invoke-static/range {v46 .. v46}, Ljava/lang/Math;->abs(F)F

    move-result v46

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService;->MOTION_MIN_Y_1222:F

    move/from16 v47, v0

    cmpg-float v46, v46, v47

    if-ltz v46, :cond_4f

    iget v0, v12, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    move/from16 v46, v0

    invoke-static/range {v46 .. v46}, Ljava/lang/Math;->abs(F)F

    move-result v46

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService;->MOTION_MAX:F

    move/from16 v47, v0

    cmpl-float v46, v46, v47

    if-lez v46, :cond_50

    .line 1185
    :cond_4f
    const-string v46, "MotionDet"

    const-string v47, "MotionDet MAX:X ERROR"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    const/16 v34, 0x0

    .line 1188
    :cond_50
    const/16 v46, 0x1

    move/from16 v0, v34

    move/from16 v1, v46

    if-ne v0, v1, :cond_52

    iget v0, v13, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    move/from16 v46, v0

    invoke-static/range {v46 .. v46}, Ljava/lang/Math;->abs(F)F

    move-result v46

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService;->MOTION_MIN_Y_1222:F

    move/from16 v47, v0

    cmpg-float v46, v46, v47

    if-ltz v46, :cond_51

    iget v0, v13, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    move/from16 v46, v0

    invoke-static/range {v46 .. v46}, Ljava/lang/Math;->abs(F)F

    move-result v46

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService;->MOTION_MAX:F

    move/from16 v47, v0

    cmpl-float v46, v46, v47

    if-lez v46, :cond_52

    .line 1190
    :cond_51
    const-string v46, "MotionDet"

    const-string v47, "MotionDet MAX:Y ERROR"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    :cond_52
    const/16 v46, 0x1

    move/from16 v0, v34

    move/from16 v1, v46

    if-ne v0, v1, :cond_2e

    iget v0, v14, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    move/from16 v46, v0

    invoke-static/range {v46 .. v46}, Ljava/lang/Math;->abs(F)F

    move-result v46

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService;->MOTION_MIN_Y_1222:F

    move/from16 v47, v0

    cmpg-float v46, v46, v47

    if-ltz v46, :cond_53

    iget v0, v14, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    move/from16 v46, v0

    invoke-static/range {v46 .. v46}, Ljava/lang/Math;->abs(F)F

    move-result v46

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService;->MOTION_MAX:F

    move/from16 v47, v0

    cmpl-float v46, v46, v47

    if-lez v46, :cond_2e

    .line 1195
    :cond_53
    const-string v46, "MotionDet"

    const-string v47, "MotionDet MAX:Z ERROR"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    const/16 v34, 0x0

    goto/16 :goto_18

    .line 1201
    :cond_54
    const/16 v46, 0x1

    move/from16 v0, v34

    move/from16 v1, v46

    if-ne v0, v1, :cond_56

    iget v0, v12, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    move/from16 v46, v0

    invoke-static/range {v46 .. v46}, Ljava/lang/Math;->abs(F)F

    move-result v46

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService;->MOTION_MIN:F

    move/from16 v47, v0

    cmpg-float v46, v46, v47

    if-ltz v46, :cond_55

    iget v0, v12, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    move/from16 v46, v0

    invoke-static/range {v46 .. v46}, Ljava/lang/Math;->abs(F)F

    move-result v46

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService;->MOTION_MAX:F

    move/from16 v47, v0

    cmpl-float v46, v46, v47

    if-lez v46, :cond_56

    .line 1203
    :cond_55
    const-string v46, "MotionDet"

    const-string v47, "MotionDet MAX:X ERROR"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    const/16 v34, 0x0

    .line 1206
    :cond_56
    const/16 v46, 0x1

    move/from16 v0, v34

    move/from16 v1, v46

    if-ne v0, v1, :cond_58

    iget v0, v13, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    move/from16 v46, v0

    invoke-static/range {v46 .. v46}, Ljava/lang/Math;->abs(F)F

    move-result v46

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService;->MOTION_MIN:F

    move/from16 v47, v0

    cmpg-float v46, v46, v47

    if-ltz v46, :cond_57

    iget v0, v13, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    move/from16 v46, v0

    invoke-static/range {v46 .. v46}, Ljava/lang/Math;->abs(F)F

    move-result v46

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService;->MOTION_MAX:F

    move/from16 v47, v0

    cmpl-float v46, v46, v47

    if-lez v46, :cond_58

    .line 1208
    :cond_57
    const-string v46, "MotionDet"

    const-string v47, "MotionDet MAX:Y ERROR"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    const/16 v34, 0x0

    .line 1211
    :cond_58
    const/16 v46, 0x1

    move/from16 v0, v34

    move/from16 v1, v46

    if-ne v0, v1, :cond_2e

    iget v0, v14, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    move/from16 v46, v0

    invoke-static/range {v46 .. v46}, Ljava/lang/Math;->abs(F)F

    move-result v46

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService;->MOTION_MIN:F

    move/from16 v47, v0

    cmpg-float v46, v46, v47

    if-ltz v46, :cond_59

    iget v0, v14, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    move/from16 v46, v0

    invoke-static/range {v46 .. v46}, Ljava/lang/Math;->abs(F)F

    move-result v46

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService;->MOTION_MAX:F

    move/from16 v47, v0

    cmpl-float v46, v46, v47

    if-lez v46, :cond_2e

    .line 1213
    :cond_59
    const-string v46, "MotionDet"

    const-string v47, "MotionDet MAX:Z ERROR"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    const/16 v34, 0x0

    goto/16 :goto_18
.end method
