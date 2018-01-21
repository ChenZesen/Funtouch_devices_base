.class public Lcom/vivo/services/motion/MotionRecognitionManager;
.super Ljava/lang/Object;
.source "MotionRecognitionManager.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/services/motion/MotionRecognitionManager$1;,
        Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionHandler;,
        Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionThead;,
        Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;
    }
.end annotation


# static fields
.field public static final ACTION_TYPE_DIRECT_CALL:I = 0x1

.field public static final ACTION_TYPE_MESSAGE_REMIND:I = 0x2

.field public static final ACTION_TYPE_MOVE:I = 0x13

.field public static final ACTION_TYPE_PHONE_ACROSS:I = 0x9

.field public static final ACTION_TYPE_PHONE_AWAY:I = 0x12

.field public static final ACTION_TYPE_PHONE_CLOSE:I = 0x11

.field public static final ACTION_TYPE_PHONE_PICK_UP:I = 0x14

.field public static final ACTION_TYPE_PICK_UP:I = 0x5

.field public static final ACTION_TYPE_POCKET_MODE:I = 0x6

.field public static final ACTION_TYPE_PROXACROSS_DETECT:I = 0x4

.field public static final ACTION_TYPE_SCREEN_DOWN:I = 0x15

.field public static final ACTION_TYPE_SCREEN_DOWN_NO:I = 0x17

.field public static final ACTION_TYPE_SCREEN_DOWN_PICK_UP:I = 0x18

.field public static final ACTION_TYPE_SCREEN_DOWN_YES:I = 0x16

.field public static final ACTION_TYPE_SCREEN_OFF_WAKEUP:I = 0x8

.field public static final ACTION_TYPE_SHAKE:I = 0x7

.field public static final ACTION_TYPE_WAVE_DETECT:I = 0x3

.field public static final GESTURE_TYPE:I = 0x50

.field public static final GESTURE_TYPE_ERROR:I = 0x54

.field public static final GESTURE_TYPE_M:I = 0x51

.field public static final GESTURE_TYPE_S:I = 0x52

.field public static final GESTURE_TYPE_V:I = 0x53

.field private static final HALL_STATE_PATH:Ljava/lang/String; = "/sys/class/switch/hall/state"

.field public static final MSG_ACTION_CAL_FINISH:I = 0x10

.field private static final TAG:Ljava/lang/String; = "MotionRecognitionManager"

.field private static mMotionRecognitionThead:Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionThead;

.field private static newState:I

.field static final sListenersClassList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAllConfig:Lcom/vivo/services/motion/AllConfig;

.field private mDirectCallingService:Lcom/vivo/services/motion/DirectCallingService;

.field private mGestureService:Lcom/vivo/services/motion/GestureService;

.field private final mICallBack:Landroid/os/IBinder;

.field private mMessageRemindService:Lcom/vivo/services/motion/MessageRemindService;

.field private mMotionRecognitionHandler:Landroid/os/Handler;

.field private mMotionRecognitionLooper:Landroid/os/Looper;

.field private mMotionRecognitionMainLooper:Landroid/os/Looper;

.field private mMoveService:Lcom/vivo/services/motion/MoveService;

.field private mNeedVibrator:Z

.field private mPhoneAcrossService:Lcom/vivo/services/motion/PhoneAcrossService;

.field private mPhonePickUpService:Lcom/vivo/services/motion/PhonePickUpService;

.field private mPhoneScreenDownPickUpService:Lcom/vivo/services/motion/PhoneScreenDownPickUpService;

.field private mPhoneScreenDownService:Lcom/vivo/services/motion/PhoneScreenDownService;

.field private mPocketModeService:Lcom/vivo/services/motion/PocketModeService;

.field private mProximityAcrossService:Lcom/vivo/services/motion/ProximityAcrossService;

.field private mScreenOffWakeupService:Lcom/vivo/services/motion/ScreenOffWakeupService;

.field private mShakeDetectService:Lcom/vivo/services/motion/ShakeDetectService;

.field private mShakeDetectServiceTwo:Lcom/vivo/services/motion/ShakeDetectServiceTwo;

.field public mVivoCollectData:Lcom/vivo/common/VivoCollectData;

.field private mWaveDetectService:Lcom/vivo/services/motion/WaveDetectService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    sput-object v0, Lcom/vivo/services/motion/MotionRecognitionManager;->mMotionRecognitionThead:Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionThead;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/vivo/services/motion/MotionRecognitionManager;->sListenersClassList:Ljava/util/ArrayList;

    .line 85
    const/4 v0, -0x1

    sput v0, Lcom/vivo/services/motion/MotionRecognitionManager;->newState:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object v1, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mDirectCallingService:Lcom/vivo/services/motion/DirectCallingService;

    .line 63
    iput-object v1, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mMessageRemindService:Lcom/vivo/services/motion/MessageRemindService;

    .line 64
    iput-object v1, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mWaveDetectService:Lcom/vivo/services/motion/WaveDetectService;

    .line 65
    iput-object v1, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mProximityAcrossService:Lcom/vivo/services/motion/ProximityAcrossService;

    .line 66
    iput-object v1, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mPocketModeService:Lcom/vivo/services/motion/PocketModeService;

    .line 67
    iput-object v1, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mScreenOffWakeupService:Lcom/vivo/services/motion/ScreenOffWakeupService;

    .line 68
    iput-object v1, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mPhoneAcrossService:Lcom/vivo/services/motion/PhoneAcrossService;

    .line 69
    iput-object v1, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mShakeDetectService:Lcom/vivo/services/motion/ShakeDetectService;

    .line 70
    iput-object v1, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mShakeDetectServiceTwo:Lcom/vivo/services/motion/ShakeDetectServiceTwo;

    .line 71
    iput-object v1, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mMoveService:Lcom/vivo/services/motion/MoveService;

    .line 72
    iput-object v1, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mPhonePickUpService:Lcom/vivo/services/motion/PhonePickUpService;

    .line 73
    iput-object v1, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mPhoneScreenDownService:Lcom/vivo/services/motion/PhoneScreenDownService;

    .line 74
    iput-object v1, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mPhoneScreenDownPickUpService:Lcom/vivo/services/motion/PhoneScreenDownPickUpService;

    .line 75
    iput-object v1, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mGestureService:Lcom/vivo/services/motion/GestureService;

    .line 78
    iput-object v1, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mMotionRecognitionHandler:Landroid/os/Handler;

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mNeedVibrator:Z

    .line 87
    iput-object v1, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mAllConfig:Lcom/vivo/services/motion/AllConfig;

    .line 90
    iput-object v1, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mVivoCollectData:Lcom/vivo/common/VivoCollectData;

    .line 669
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mICallBack:Landroid/os/IBinder;

    .line 400
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 2
    .param p1, "MainLooper"    # Landroid/os/Looper;

    .prologue
    const/4 v1, 0x0

    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object v1, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mDirectCallingService:Lcom/vivo/services/motion/DirectCallingService;

    .line 63
    iput-object v1, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mMessageRemindService:Lcom/vivo/services/motion/MessageRemindService;

    .line 64
    iput-object v1, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mWaveDetectService:Lcom/vivo/services/motion/WaveDetectService;

    .line 65
    iput-object v1, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mProximityAcrossService:Lcom/vivo/services/motion/ProximityAcrossService;

    .line 66
    iput-object v1, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mPocketModeService:Lcom/vivo/services/motion/PocketModeService;

    .line 67
    iput-object v1, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mScreenOffWakeupService:Lcom/vivo/services/motion/ScreenOffWakeupService;

    .line 68
    iput-object v1, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mPhoneAcrossService:Lcom/vivo/services/motion/PhoneAcrossService;

    .line 69
    iput-object v1, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mShakeDetectService:Lcom/vivo/services/motion/ShakeDetectService;

    .line 70
    iput-object v1, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mShakeDetectServiceTwo:Lcom/vivo/services/motion/ShakeDetectServiceTwo;

    .line 71
    iput-object v1, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mMoveService:Lcom/vivo/services/motion/MoveService;

    .line 72
    iput-object v1, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mPhonePickUpService:Lcom/vivo/services/motion/PhonePickUpService;

    .line 73
    iput-object v1, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mPhoneScreenDownService:Lcom/vivo/services/motion/PhoneScreenDownService;

    .line 74
    iput-object v1, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mPhoneScreenDownPickUpService:Lcom/vivo/services/motion/PhoneScreenDownPickUpService;

    .line 75
    iput-object v1, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mGestureService:Lcom/vivo/services/motion/GestureService;

    .line 78
    iput-object v1, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mMotionRecognitionHandler:Landroid/os/Handler;

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mNeedVibrator:Z

    .line 87
    iput-object v1, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mAllConfig:Lcom/vivo/services/motion/AllConfig;

    .line 90
    iput-object v1, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mVivoCollectData:Lcom/vivo/common/VivoCollectData;

    .line 669
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mICallBack:Landroid/os/IBinder;

    .line 404
    monitor-enter p0

    .line 406
    :try_start_0
    new-instance v0, Lcom/vivo/services/motion/AllConfig;

    invoke-direct {v0}, Lcom/vivo/services/motion/AllConfig;-><init>()V

    iput-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mAllConfig:Lcom/vivo/services/motion/AllConfig;

    .line 407
    iput-object p1, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mMotionRecognitionMainLooper:Landroid/os/Looper;

    .line 408
    invoke-static {}, Lcom/vivo/services/motion/DirectCallingService;->getInstance()Lcom/vivo/services/motion/DirectCallingService;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mDirectCallingService:Lcom/vivo/services/motion/DirectCallingService;

    .line 409
    invoke-static {}, Lcom/vivo/services/motion/MessageRemindService;->getInstance()Lcom/vivo/services/motion/MessageRemindService;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mMessageRemindService:Lcom/vivo/services/motion/MessageRemindService;

    .line 410
    invoke-static {}, Lcom/vivo/services/motion/WaveDetectService;->getInstance()Lcom/vivo/services/motion/WaveDetectService;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mWaveDetectService:Lcom/vivo/services/motion/WaveDetectService;

    .line 411
    invoke-static {}, Lcom/vivo/services/motion/ProximityAcrossService;->getInstance()Lcom/vivo/services/motion/ProximityAcrossService;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mProximityAcrossService:Lcom/vivo/services/motion/ProximityAcrossService;

    .line 412
    invoke-static {}, Lcom/vivo/services/motion/PocketModeService;->getInstance()Lcom/vivo/services/motion/PocketModeService;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mPocketModeService:Lcom/vivo/services/motion/PocketModeService;

    .line 413
    sget-boolean v0, Lcom/vivo/services/motion/AllConfig;->mIsShakeTwo:Z

    if-eqz v0, :cond_1

    .line 415
    invoke-static {}, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->getInstance()Lcom/vivo/services/motion/ShakeDetectServiceTwo;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mShakeDetectServiceTwo:Lcom/vivo/services/motion/ShakeDetectServiceTwo;

    .line 421
    :goto_0
    invoke-static {}, Lcom/vivo/services/motion/ScreenOffWakeupService;->getInstance()Lcom/vivo/services/motion/ScreenOffWakeupService;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mScreenOffWakeupService:Lcom/vivo/services/motion/ScreenOffWakeupService;

    .line 422
    invoke-static {}, Lcom/vivo/services/motion/PhoneAcrossService;->getInstance()Lcom/vivo/services/motion/PhoneAcrossService;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mPhoneAcrossService:Lcom/vivo/services/motion/PhoneAcrossService;

    .line 423
    invoke-static {}, Lcom/vivo/services/motion/MoveService;->getInstance()Lcom/vivo/services/motion/MoveService;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mMoveService:Lcom/vivo/services/motion/MoveService;

    .line 424
    invoke-static {}, Lcom/vivo/services/motion/PhonePickUpService;->getInstance()Lcom/vivo/services/motion/PhonePickUpService;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mPhonePickUpService:Lcom/vivo/services/motion/PhonePickUpService;

    .line 425
    invoke-static {}, Lcom/vivo/services/motion/PhoneScreenDownService;->getInstance()Lcom/vivo/services/motion/PhoneScreenDownService;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mPhoneScreenDownService:Lcom/vivo/services/motion/PhoneScreenDownService;

    .line 426
    invoke-static {}, Lcom/vivo/services/motion/PhoneScreenDownPickUpService;->getInstance()Lcom/vivo/services/motion/PhoneScreenDownPickUpService;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mPhoneScreenDownPickUpService:Lcom/vivo/services/motion/PhoneScreenDownPickUpService;

    .line 427
    invoke-static {}, Lcom/vivo/services/motion/GestureService;->getInstance()Lcom/vivo/services/motion/GestureService;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mGestureService:Lcom/vivo/services/motion/GestureService;

    .line 428
    iget-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mMotionRecognitionLooper:Landroid/os/Looper;

    if-nez v0, :cond_0

    .line 430
    new-instance v0, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionThead;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionThead;-><init>(Lcom/vivo/services/motion/MotionRecognitionManager;Lcom/vivo/services/motion/MotionRecognitionManager$1;)V

    sput-object v0, Lcom/vivo/services/motion/MotionRecognitionManager;->mMotionRecognitionThead:Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionThead;

    .line 431
    sget-object v0, Lcom/vivo/services/motion/MotionRecognitionManager;->mMotionRecognitionThead:Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionThead;

    invoke-virtual {v0}, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionThead;->start()V

    .line 433
    :cond_0
    sget-object v0, Lcom/vivo/services/motion/MotionRecognitionManager;->mMotionRecognitionThead:Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionThead;

    invoke-virtual {v0}, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionThead;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mMotionRecognitionLooper:Landroid/os/Looper;

    .line 434
    new-instance v0, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionHandler;

    iget-object v1, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mMotionRecognitionLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionHandler;-><init>(Lcom/vivo/services/motion/MotionRecognitionManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mMotionRecognitionHandler:Landroid/os/Handler;

    .line 435
    monitor-exit p0

    .line 436
    return-void

    .line 419
    :cond_1
    invoke-static {}, Lcom/vivo/services/motion/ShakeDetectService;->getInstance()Lcom/vivo/services/motion/ShakeDetectService;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mShakeDetectService:Lcom/vivo/services/motion/ShakeDetectService;

    goto :goto_0

    .line 435
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 32
    sget v0, Lcom/vivo/services/motion/MotionRecognitionManager;->newState:I

    return v0
.end method

.method static synthetic access$002(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 32
    sput p0, Lcom/vivo/services/motion/MotionRecognitionManager;->newState:I

    return p0
.end method

.method static synthetic access$200(Lcom/vivo/services/motion/MotionRecognitionManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/MotionRecognitionManager;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mNeedVibrator:Z

    return v0
.end method

.method private static checkService()Lcom/vivo/services/motion/IMotionManager;
    .locals 3

    .prologue
    .line 673
    const-string v2, "motion_manager"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 674
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/vivo/services/motion/IMotionManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/vivo/services/motion/IMotionManager;

    move-result-object v1

    .line 676
    .local v1, "service":Lcom/vivo/services/motion/IMotionManager;
    return-object v1
.end method

.method private disableMotionRecognitionLocked(Landroid/content/Context;I)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "actionType"    # I

    .prologue
    const/4 v5, 0x1

    .line 524
    sget-object v2, Lcom/vivo/services/motion/MotionRecognitionManager;->sListenersClassList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;

    .line 526
    .local v0, "i":Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;
    invoke-virtual {v0, p2}, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;->hasActionType(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 528
    const-string v2, "MotionRecognitionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Still has action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "not disable"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    .end local v0    # "i":Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;
    :goto_0
    return v5

    .line 533
    :cond_1
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 536
    :sswitch_0
    iget-object v2, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mDirectCallingService:Lcom/vivo/services/motion/DirectCallingService;

    invoke-virtual {v2}, Lcom/vivo/services/motion/DirectCallingService;->stopMotionRecognitionService()Z

    goto :goto_0

    .line 540
    :sswitch_1
    iget-object v2, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mMessageRemindService:Lcom/vivo/services/motion/MessageRemindService;

    invoke-virtual {v2}, Lcom/vivo/services/motion/MessageRemindService;->stopMotionRecognitionService()Z

    goto :goto_0

    .line 544
    :sswitch_2
    iget-object v2, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mWaveDetectService:Lcom/vivo/services/motion/WaveDetectService;

    invoke-virtual {v2}, Lcom/vivo/services/motion/WaveDetectService;->stopMotionRecognitionService()Z

    goto :goto_0

    .line 548
    :sswitch_3
    iget-object v2, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mProximityAcrossService:Lcom/vivo/services/motion/ProximityAcrossService;

    invoke-virtual {v2}, Lcom/vivo/services/motion/ProximityAcrossService;->stopMotionRecognitionService()Z

    goto :goto_0

    .line 552
    :sswitch_4
    iget-object v2, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mPocketModeService:Lcom/vivo/services/motion/PocketModeService;

    invoke-virtual {v2}, Lcom/vivo/services/motion/PocketModeService;->stopMotionRecognitionService()Z

    goto :goto_0

    .line 556
    :sswitch_5
    sget-boolean v2, Lcom/vivo/services/motion/AllConfig;->mIsShakeTwo:Z

    if-eqz v2, :cond_2

    .line 558
    iget-object v2, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mShakeDetectServiceTwo:Lcom/vivo/services/motion/ShakeDetectServiceTwo;

    invoke-virtual {v2}, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->stopMotionRecognitionService()Z

    goto :goto_0

    .line 562
    :cond_2
    iget-object v2, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mShakeDetectService:Lcom/vivo/services/motion/ShakeDetectService;

    invoke-virtual {v2}, Lcom/vivo/services/motion/ShakeDetectService;->stopMotionRecognitionService()Z

    goto :goto_0

    .line 567
    :sswitch_6
    iget-object v2, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mScreenOffWakeupService:Lcom/vivo/services/motion/ScreenOffWakeupService;

    invoke-virtual {v2}, Lcom/vivo/services/motion/ScreenOffWakeupService;->stopMotionRecognitionService()Z

    goto :goto_0

    .line 571
    :sswitch_7
    iget-object v2, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mPhoneAcrossService:Lcom/vivo/services/motion/PhoneAcrossService;

    invoke-virtual {v2}, Lcom/vivo/services/motion/PhoneAcrossService;->stopMotionRecognitionService()Z

    goto :goto_0

    .line 575
    :sswitch_8
    iget-object v2, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mMoveService:Lcom/vivo/services/motion/MoveService;

    invoke-virtual {v2}, Lcom/vivo/services/motion/MoveService;->stopMotionRecognitionService()Z

    goto :goto_0

    .line 579
    :sswitch_9
    iget-object v2, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mPhonePickUpService:Lcom/vivo/services/motion/PhonePickUpService;

    invoke-virtual {v2}, Lcom/vivo/services/motion/PhonePickUpService;->stopMotionRecognitionService()Z

    goto :goto_0

    .line 583
    :sswitch_a
    iget-object v2, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mPhoneScreenDownService:Lcom/vivo/services/motion/PhoneScreenDownService;

    invoke-virtual {v2}, Lcom/vivo/services/motion/PhoneScreenDownService;->stopMotionRecognitionService()Z

    goto :goto_0

    .line 587
    :sswitch_b
    iget-object v2, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mPhoneScreenDownPickUpService:Lcom/vivo/services/motion/PhoneScreenDownPickUpService;

    invoke-virtual {v2}, Lcom/vivo/services/motion/PhoneScreenDownPickUpService;->stopMotionRecognitionService()Z

    goto :goto_0

    .line 591
    :sswitch_c
    iget-object v2, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mGestureService:Lcom/vivo/services/motion/GestureService;

    invoke-virtual {v2}, Lcom/vivo/services/motion/GestureService;->stopMotionRecognitionService()Z

    goto :goto_0

    .line 533
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x6 -> :sswitch_4
        0x7 -> :sswitch_5
        0x8 -> :sswitch_6
        0x9 -> :sswitch_7
        0x13 -> :sswitch_8
        0x14 -> :sswitch_9
        0x15 -> :sswitch_a
        0x18 -> :sswitch_b
        0x50 -> :sswitch_c
    .end sparse-switch
.end method

.method private enableMotionRecognitionLocked(Landroid/content/Context;I)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "actionType"    # I

    .prologue
    const/4 v6, 0x1

    .line 440
    sget-object v3, Lcom/vivo/services/motion/MotionRecognitionManager;->sListenersClassList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;

    .line 442
    .local v0, "i":Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;
    invoke-virtual {v0, p2}, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;->hasActionType(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 445
    const-string v3, "sys.super_power_save"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 446
    .local v2, "isSuperPower":Z
    if-eqz v2, :cond_3

    if-eq p2, v6, :cond_1

    const/4 v3, 0x4

    if-ne p2, v3, :cond_3

    .line 449
    :cond_1
    const-string v3, "MotionRecognitionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSuperPower:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",actionType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    .end local v0    # "i":Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;
    .end local v2    # "isSuperPower":Z
    :cond_2
    return v6

    .line 453
    .restart local v0    # "i":Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;
    .restart local v2    # "isSuperPower":Z
    :cond_3
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 456
    :sswitch_0
    iget-object v3, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mDirectCallingService:Lcom/vivo/services/motion/DirectCallingService;

    iget-object v4, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mMotionRecognitionHandler:Landroid/os/Handler;

    invoke-virtual {v3, p1, v4}, Lcom/vivo/services/motion/DirectCallingService;->startMotionRecognitionService(Landroid/content/Context;Landroid/os/Handler;)Z

    goto :goto_0

    .line 460
    :sswitch_1
    iget-object v3, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mMessageRemindService:Lcom/vivo/services/motion/MessageRemindService;

    iget-object v4, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mMotionRecognitionHandler:Landroid/os/Handler;

    invoke-virtual {v3, p1, v4}, Lcom/vivo/services/motion/MessageRemindService;->startMotionRecognitionService(Landroid/content/Context;Landroid/os/Handler;)Z

    goto :goto_0

    .line 464
    :sswitch_2
    iget-object v3, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mWaveDetectService:Lcom/vivo/services/motion/WaveDetectService;

    iget-object v4, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mMotionRecognitionHandler:Landroid/os/Handler;

    invoke-virtual {v3, p1, v4}, Lcom/vivo/services/motion/WaveDetectService;->startMotionRecognitionService(Landroid/content/Context;Landroid/os/Handler;)Z

    goto :goto_0

    .line 468
    :sswitch_3
    iget-object v3, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mProximityAcrossService:Lcom/vivo/services/motion/ProximityAcrossService;

    iget-object v4, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mMotionRecognitionHandler:Landroid/os/Handler;

    invoke-virtual {v3, p1, v4}, Lcom/vivo/services/motion/ProximityAcrossService;->startMotionRecognitionService(Landroid/content/Context;Landroid/os/Handler;)Z

    goto :goto_0

    .line 472
    :sswitch_4
    iget-object v3, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mPocketModeService:Lcom/vivo/services/motion/PocketModeService;

    iget-object v4, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mMotionRecognitionHandler:Landroid/os/Handler;

    invoke-virtual {v3, p1, v4}, Lcom/vivo/services/motion/PocketModeService;->startMotionRecognitionService(Landroid/content/Context;Landroid/os/Handler;)Z

    goto :goto_0

    .line 476
    :sswitch_5
    sget-boolean v3, Lcom/vivo/services/motion/AllConfig;->mIsShakeTwo:Z

    if-eqz v3, :cond_4

    .line 478
    iget-object v3, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mShakeDetectServiceTwo:Lcom/vivo/services/motion/ShakeDetectServiceTwo;

    iget-object v4, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mMotionRecognitionHandler:Landroid/os/Handler;

    invoke-virtual {v3, p1, v4}, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->startMotionRecognitionService(Landroid/content/Context;Landroid/os/Handler;)Z

    goto :goto_0

    .line 482
    :cond_4
    iget-object v3, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mShakeDetectService:Lcom/vivo/services/motion/ShakeDetectService;

    iget-object v4, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mMotionRecognitionHandler:Landroid/os/Handler;

    invoke-virtual {v3, p1, v4}, Lcom/vivo/services/motion/ShakeDetectService;->startMotionRecognitionService(Landroid/content/Context;Landroid/os/Handler;)Z

    goto/16 :goto_0

    .line 487
    :sswitch_6
    iget-object v3, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mScreenOffWakeupService:Lcom/vivo/services/motion/ScreenOffWakeupService;

    iget-object v4, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mMotionRecognitionHandler:Landroid/os/Handler;

    invoke-virtual {v3, p1, v4}, Lcom/vivo/services/motion/ScreenOffWakeupService;->startMotionRecognitionService(Landroid/content/Context;Landroid/os/Handler;)Z

    goto/16 :goto_0

    .line 491
    :sswitch_7
    iget-object v3, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mPhoneAcrossService:Lcom/vivo/services/motion/PhoneAcrossService;

    iget-object v4, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mMotionRecognitionHandler:Landroid/os/Handler;

    invoke-virtual {v3, p1, v4}, Lcom/vivo/services/motion/PhoneAcrossService;->startMotionRecognitionService(Landroid/content/Context;Landroid/os/Handler;)Z

    goto/16 :goto_0

    .line 495
    :sswitch_8
    iget-object v3, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mMoveService:Lcom/vivo/services/motion/MoveService;

    iget-object v4, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mMotionRecognitionHandler:Landroid/os/Handler;

    invoke-virtual {v3, p1, v4}, Lcom/vivo/services/motion/MoveService;->startMotionRecognitionService(Landroid/content/Context;Landroid/os/Handler;)Z

    goto/16 :goto_0

    .line 499
    :sswitch_9
    iget-object v3, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mPhonePickUpService:Lcom/vivo/services/motion/PhonePickUpService;

    iget-object v4, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mMotionRecognitionHandler:Landroid/os/Handler;

    invoke-virtual {v3, p1, v4}, Lcom/vivo/services/motion/PhonePickUpService;->startMotionRecognitionService(Landroid/content/Context;Landroid/os/Handler;)Z

    goto/16 :goto_0

    .line 503
    :sswitch_a
    iget-object v3, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mPhoneScreenDownService:Lcom/vivo/services/motion/PhoneScreenDownService;

    iget-object v4, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mMotionRecognitionHandler:Landroid/os/Handler;

    invoke-virtual {v3, p1, v4}, Lcom/vivo/services/motion/PhoneScreenDownService;->startMotionRecognitionService(Landroid/content/Context;Landroid/os/Handler;)Z

    goto/16 :goto_0

    .line 507
    :sswitch_b
    iget-object v3, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mPhoneScreenDownPickUpService:Lcom/vivo/services/motion/PhoneScreenDownPickUpService;

    iget-object v4, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mMotionRecognitionHandler:Landroid/os/Handler;

    invoke-virtual {v3, p1, v4}, Lcom/vivo/services/motion/PhoneScreenDownPickUpService;->startMotionRecognitionService(Landroid/content/Context;Landroid/os/Handler;)Z

    goto/16 :goto_0

    .line 511
    :sswitch_c
    iget-object v3, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mGestureService:Lcom/vivo/services/motion/GestureService;

    iget-object v4, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mMotionRecognitionHandler:Landroid/os/Handler;

    invoke-virtual {v3, p1, v4}, Lcom/vivo/services/motion/GestureService;->startMotionRecognitionService(Landroid/content/Context;Landroid/os/Handler;)Z

    goto/16 :goto_0

    .line 453
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x6 -> :sswitch_4
        0x7 -> :sswitch_5
        0x8 -> :sswitch_6
        0x9 -> :sswitch_7
        0x13 -> :sswitch_8
        0x14 -> :sswitch_9
        0x15 -> :sswitch_a
        0x18 -> :sswitch_b
        0x50 -> :sswitch_c
    .end sparse-switch
.end method

.method private forceDisableMotionRecognition(Landroid/content/Context;I)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "actionType"    # I

    .prologue
    .line 602
    sparse-switch p2, :sswitch_data_0

    .line 666
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 605
    :sswitch_0
    iget-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mDirectCallingService:Lcom/vivo/services/motion/DirectCallingService;

    invoke-virtual {v0}, Lcom/vivo/services/motion/DirectCallingService;->stopMotionRecognitionService()Z

    goto :goto_0

    .line 609
    :sswitch_1
    iget-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mMessageRemindService:Lcom/vivo/services/motion/MessageRemindService;

    invoke-virtual {v0}, Lcom/vivo/services/motion/MessageRemindService;->stopMotionRecognitionService()Z

    goto :goto_0

    .line 613
    :sswitch_2
    iget-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mWaveDetectService:Lcom/vivo/services/motion/WaveDetectService;

    invoke-virtual {v0}, Lcom/vivo/services/motion/WaveDetectService;->stopMotionRecognitionService()Z

    goto :goto_0

    .line 617
    :sswitch_3
    iget-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mProximityAcrossService:Lcom/vivo/services/motion/ProximityAcrossService;

    invoke-virtual {v0}, Lcom/vivo/services/motion/ProximityAcrossService;->stopMotionRecognitionService()Z

    goto :goto_0

    .line 621
    :sswitch_4
    iget-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mPocketModeService:Lcom/vivo/services/motion/PocketModeService;

    invoke-virtual {v0}, Lcom/vivo/services/motion/PocketModeService;->stopMotionRecognitionService()Z

    goto :goto_0

    .line 625
    :sswitch_5
    sget-boolean v0, Lcom/vivo/services/motion/AllConfig;->mIsShakeTwo:Z

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mShakeDetectServiceTwo:Lcom/vivo/services/motion/ShakeDetectServiceTwo;

    invoke-virtual {v0}, Lcom/vivo/services/motion/ShakeDetectServiceTwo;->stopMotionRecognitionService()Z

    goto :goto_0

    .line 631
    :cond_0
    iget-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mShakeDetectService:Lcom/vivo/services/motion/ShakeDetectService;

    invoke-virtual {v0}, Lcom/vivo/services/motion/ShakeDetectService;->stopMotionRecognitionService()Z

    goto :goto_0

    .line 636
    :sswitch_6
    iget-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mScreenOffWakeupService:Lcom/vivo/services/motion/ScreenOffWakeupService;

    invoke-virtual {v0}, Lcom/vivo/services/motion/ScreenOffWakeupService;->stopMotionRecognitionService()Z

    goto :goto_0

    .line 640
    :sswitch_7
    iget-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mPhoneAcrossService:Lcom/vivo/services/motion/PhoneAcrossService;

    invoke-virtual {v0}, Lcom/vivo/services/motion/PhoneAcrossService;->stopMotionRecognitionService()Z

    goto :goto_0

    .line 644
    :sswitch_8
    iget-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mMoveService:Lcom/vivo/services/motion/MoveService;

    invoke-virtual {v0}, Lcom/vivo/services/motion/MoveService;->stopMotionRecognitionService()Z

    goto :goto_0

    .line 648
    :sswitch_9
    iget-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mPhonePickUpService:Lcom/vivo/services/motion/PhonePickUpService;

    invoke-virtual {v0}, Lcom/vivo/services/motion/PhonePickUpService;->stopMotionRecognitionService()Z

    goto :goto_0

    .line 652
    :sswitch_a
    iget-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mPhoneScreenDownService:Lcom/vivo/services/motion/PhoneScreenDownService;

    invoke-virtual {v0}, Lcom/vivo/services/motion/PhoneScreenDownService;->stopMotionRecognitionService()Z

    goto :goto_0

    .line 656
    :sswitch_b
    iget-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mPhoneScreenDownPickUpService:Lcom/vivo/services/motion/PhoneScreenDownPickUpService;

    invoke-virtual {v0}, Lcom/vivo/services/motion/PhoneScreenDownPickUpService;->stopMotionRecognitionService()Z

    goto :goto_0

    .line 660
    :sswitch_c
    iget-object v0, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mGestureService:Lcom/vivo/services/motion/GestureService;

    invoke-virtual {v0}, Lcom/vivo/services/motion/GestureService;->stopMotionRecognitionService()Z

    goto :goto_0

    .line 602
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x6 -> :sswitch_4
        0x7 -> :sswitch_5
        0x8 -> :sswitch_6
        0x9 -> :sswitch_7
        0x13 -> :sswitch_8
        0x14 -> :sswitch_9
        0x15 -> :sswitch_a
        0x18 -> :sswitch_b
        0x50 -> :sswitch_c
    .end sparse-switch
.end method

.method public static loadGestureLib()V
    .locals 0

    .prologue
    .line 858
    invoke-static {}, Lcom/vivo/services/motion/GestureService;->loadGestureLib()V

    .line 859
    return-void
.end method


# virtual methods
.method public isTopListener(Lcom/vivo/services/motion/MotionRecognitionListener;)Z
    .locals 5
    .param p1, "listener"    # Lcom/vivo/services/motion/MotionRecognitionListener;

    .prologue
    .line 681
    const/4 v1, 0x0

    .line 682
    .local v1, "ret":Z
    const/4 v0, 0x0

    .line 683
    .local v0, "clients":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/vivo/services/motion/MotionRecognitionManager;->checkService()Lcom/vivo/services/motion/IMotionManager;

    move-result-object v2

    .line 686
    .local v2, "service":Lcom/vivo/services/motion/IMotionManager;
    if-eqz v2, :cond_0

    .line 687
    :try_start_0
    invoke-interface {v2}, Lcom/vivo/services/motion/IMotionManager;->getClients()Ljava/util/List;

    move-result-object v0

    .line 689
    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 690
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 691
    .local v3, "top":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_1

    .line 692
    const/4 v1, 0x1

    .line 697
    .end local v3    # "top":Ljava/lang/String;
    :cond_1
    :goto_0
    return v1

    .line 695
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public registerMotionRecognitionListener(Landroid/content/Context;IILcom/vivo/services/motion/MotionRecognitionListener;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "actionType"    # I
    .param p3, "wait"    # I
    .param p4, "listener"    # Lcom/vivo/services/motion/MotionRecognitionListener;

    .prologue
    .line 711
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/vivo/services/motion/MotionRecognitionManager;->registerMotionRecognitionListenerInternal(Landroid/content/Context;IILcom/vivo/services/motion/MotionRecognitionListener;)Z

    move-result v0

    return v0
.end method

.method public registerMotionRecognitionListener(Landroid/content/Context;ILcom/vivo/services/motion/MotionRecognitionListener;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "actionType"    # I
    .param p3, "listener"    # Lcom/vivo/services/motion/MotionRecognitionListener;

    .prologue
    .line 717
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/vivo/services/motion/MotionRecognitionManager;->registerMotionRecognitionListenerInternal(Landroid/content/Context;IILcom/vivo/services/motion/MotionRecognitionListener;)Z

    move-result v0

    return v0
.end method

.method public registerMotionRecognitionListener(Landroid/content/Context;ILcom/vivo/services/motion/MotionRecognitionListener;Z)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "actionType"    # I
    .param p3, "listener"    # Lcom/vivo/services/motion/MotionRecognitionListener;
    .param p4, "needVibrator"    # Z

    .prologue
    .line 704
    iput-boolean p4, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mNeedVibrator:Z

    .line 705
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/vivo/services/motion/MotionRecognitionManager;->registerMotionRecognitionListenerInternal(Landroid/content/Context;IILcom/vivo/services/motion/MotionRecognitionListener;)Z

    move-result v0

    return v0
.end method

.method public registerMotionRecognitionListenerInternal(Landroid/content/Context;IILcom/vivo/services/motion/MotionRecognitionListener;)Z
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "actionType"    # I
    .param p3, "wait"    # I
    .param p4, "listener"    # Lcom/vivo/services/motion/MotionRecognitionListener;

    .prologue
    .line 723
    sget-object v9, Lcom/vivo/services/motion/MotionRecognitionManager;->sListenersClassList:Ljava/util/ArrayList;

    monitor-enter v9

    .line 725
    :try_start_0
    invoke-static {}, Lcom/vivo/services/motion/MotionRecognitionManager;->checkService()Lcom/vivo/services/motion/IMotionManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 727
    .local v8, "service":Lcom/vivo/services/motion/IMotionManager;
    if-eqz v8, :cond_0

    .line 728
    :try_start_1
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/vivo/services/motion/MotionRecognitionManager;->mICallBack:Landroid/os/IBinder;

    invoke-interface {v8, v1, v2, v3, v4}, Lcom/vivo/services/motion/IMotionManager;->register(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 733
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 734
    .local v0, "m":Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;
    :try_start_2
    sget-object v1, Lcom/vivo/services/motion/MotionRecognitionManager;->sListenersClassList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;

    .line 736
    .local v6, "i":Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;
    invoke-virtual {v6}, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;->getListener()Lcom/vivo/services/motion/MotionRecognitionListener;

    move-result-object v1

    if-ne v1, p4, :cond_1

    .line 738
    move-object v0, v6

    .line 743
    .end local v6    # "i":Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;
    :cond_2
    if-nez v0, :cond_4

    .line 745
    new-instance v0, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;

    .end local v0    # "m":Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;
    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;-><init>(Lcom/vivo/services/motion/MotionRecognitionManager;Lcom/vivo/services/motion/MotionRecognitionListener;Landroid/content/Context;II)V

    .line 746
    .restart local v0    # "m":Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;
    sget-object v1, Lcom/vivo/services/motion/MotionRecognitionManager;->sListenersClassList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 747
    sget-object v1, Lcom/vivo/services/motion/MotionRecognitionManager;->sListenersClassList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 749
    invoke-direct {p0, p1, p2}, Lcom/vivo/services/motion/MotionRecognitionManager;->enableMotionRecognitionLocked(Landroid/content/Context;I)Z

    .line 760
    :cond_3
    :goto_1
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 762
    const-string v1, "MotionRecognitionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerMotionRecognitionListener "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    const/4 v1, 0x1

    return v1

    .line 754
    :cond_4
    :try_start_3
    invoke-virtual {v0, p2}, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;->hasActionType(I)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0x50

    if-ne p2, v1, :cond_3

    .line 756
    :cond_5
    invoke-virtual {v0, p2}, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;->addActionType(I)V

    .line 757
    invoke-direct {p0, p1, p2}, Lcom/vivo/services/motion/MotionRecognitionManager;->enableMotionRecognitionLocked(Landroid/content/Context;I)Z

    goto :goto_1

    .line 760
    .end local v0    # "m":Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "service":Lcom/vivo/services/motion/IMotionManager;
    :catchall_0
    move-exception v1

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 730
    .restart local v8    # "service":Lcom/vivo/services/motion/IMotionManager;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public unregisterMotionRecognitionListener(Landroid/content/Context;ILcom/vivo/services/motion/MotionRecognitionListener;)Z
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "actionType"    # I
    .param p3, "listener"    # Lcom/vivo/services/motion/MotionRecognitionListener;

    .prologue
    .line 815
    if-nez p3, :cond_0

    .line 816
    const/4 v6, 0x0

    .line 853
    :goto_0
    return v6

    .line 818
    :cond_0
    sget-object v7, Lcom/vivo/services/motion/MotionRecognitionManager;->sListenersClassList:Ljava/util/ArrayList;

    monitor-enter v7

    .line 820
    :try_start_0
    invoke-static {}, Lcom/vivo/services/motion/MotionRecognitionManager;->checkService()Lcom/vivo/services/motion/IMotionManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 822
    .local v4, "service":Lcom/vivo/services/motion/IMotionManager;
    if-eqz v4, :cond_1

    .line 823
    :try_start_1
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/vivo/services/motion/IMotionManager;->unregister(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 828
    :cond_1
    :goto_1
    :try_start_2
    sget-object v6, Lcom/vivo/services/motion/MotionRecognitionManager;->sListenersClassList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 829
    .local v5, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v5, :cond_4

    .line 831
    sget-object v6, Lcom/vivo/services/motion/MotionRecognitionManager;->sListenersClassList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;

    .line 832
    .local v2, "m":Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;
    invoke-virtual {v2}, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;->getListener()Lcom/vivo/services/motion/MotionRecognitionListener;

    move-result-object v6

    if-ne v6, p3, :cond_5

    .line 834
    invoke-virtual {v2}, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;->getActionTypes()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 836
    .local v3, "mactionType":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, p2, :cond_2

    .line 838
    invoke-virtual {v2, p2}, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;->removeActionType(I)I

    move-result v6

    if-nez v6, :cond_3

    .line 840
    sget-object v6, Lcom/vivo/services/motion/MotionRecognitionManager;->sListenersClassList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 841
    const-string v6, "MotionRecognitionManager"

    const-string v8, "unregisterMotionRecognitionListener type last"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, p1, v6}, Lcom/vivo/services/motion/MotionRecognitionManager;->disableMotionRecognitionLocked(Landroid/content/Context;I)Z

    .line 850
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "m":Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;
    .end local v3    # "mactionType":Ljava/lang/Integer;
    :cond_4
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 852
    const-string v6, "MotionRecognitionManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unregisterMotionRecognitionListener type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    const/4 v6, 0x1

    goto :goto_0

    .line 829
    .restart local v2    # "m":Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 850
    .end local v0    # "i":I
    .end local v2    # "m":Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;
    .end local v4    # "service":Lcom/vivo/services/motion/IMotionManager;
    .end local v5    # "size":I
    :catchall_0
    move-exception v6

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v6

    .line 825
    .restart local v4    # "service":Lcom/vivo/services/motion/IMotionManager;
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method public unregisterMotionRecognitionListener(Landroid/content/Context;Lcom/vivo/services/motion/MotionRecognitionListener;)Z
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/vivo/services/motion/MotionRecognitionListener;

    .prologue
    const/4 v6, 0x1

    .line 768
    if-nez p2, :cond_0

    .line 769
    const/4 v6, 0x0

    .line 810
    :goto_0
    return v6

    .line 771
    :cond_0
    sget-object v7, Lcom/vivo/services/motion/MotionRecognitionManager;->sListenersClassList:Ljava/util/ArrayList;

    monitor-enter v7

    .line 773
    :try_start_0
    invoke-static {}, Lcom/vivo/services/motion/MotionRecognitionManager;->checkService()Lcom/vivo/services/motion/IMotionManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 775
    .local v4, "service":Lcom/vivo/services/motion/IMotionManager;
    if-eqz v4, :cond_1

    .line 776
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8}, Lcom/vivo/services/motion/IMotionManager;->unregister(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 781
    :cond_1
    :goto_1
    :try_start_2
    sget-object v8, Lcom/vivo/services/motion/MotionRecognitionManager;->sListenersClassList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 782
    .local v5, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v5, :cond_4

    .line 784
    sget-object v8, Lcom/vivo/services/motion/MotionRecognitionManager;->sListenersClassList:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;

    .line 785
    .local v3, "m":Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;
    invoke-virtual {v3}, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;->getListener()Lcom/vivo/services/motion/MotionRecognitionListener;

    move-result-object v8

    if-ne v8, p2, :cond_5

    .line 787
    iget v8, v3, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;->needWait:I

    if-nez v8, :cond_2

    .line 789
    sget-object v8, Lcom/vivo/services/motion/MotionRecognitionManager;->sListenersClassList:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 790
    invoke-virtual {v3}, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;->getActionTypes()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 792
    .local v0, "actionType":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {p0, p1, v8}, Lcom/vivo/services/motion/MotionRecognitionManager;->disableMotionRecognitionLocked(Landroid/content/Context;I)Z

    goto :goto_3

    .line 807
    .end local v0    # "actionType":Ljava/lang/Integer;
    .end local v1    # "i":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "m":Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;
    .end local v4    # "service":Lcom/vivo/services/motion/IMotionManager;
    .end local v5    # "size":I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 798
    .restart local v1    # "i":I
    .restart local v3    # "m":Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;
    .restart local v4    # "service":Lcom/vivo/services/motion/IMotionManager;
    .restart local v5    # "size":I
    :cond_2
    :try_start_3
    invoke-virtual {v3}, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;->getActionTypes()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 800
    .restart local v0    # "actionType":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {p0, p1, v8}, Lcom/vivo/services/motion/MotionRecognitionManager;->forceDisableMotionRecognition(Landroid/content/Context;I)Z

    goto :goto_4

    .line 802
    .end local v0    # "actionType":Ljava/lang/Integer;
    :cond_3
    const/4 v8, 0x1

    iput v8, v3, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;->needDelete:I

    .line 807
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "m":Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;
    :cond_4
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 809
    const-string v7, "MotionRecognitionManager"

    const-string v8, "unregisterMotionRecognitionListener"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 782
    .restart local v3    # "m":Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 778
    .end local v1    # "i":I
    .end local v3    # "m":Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;
    .end local v5    # "size":I
    :catch_0
    move-exception v8

    goto :goto_1
.end method
