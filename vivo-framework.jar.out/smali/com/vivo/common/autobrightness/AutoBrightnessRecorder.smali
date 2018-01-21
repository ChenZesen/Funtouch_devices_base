.class public Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;
.super Ljava/lang/Object;
.source "AutoBrightnessRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/common/autobrightness/AutoBrightnessRecorder$SettingsObserver;,
        Lcom/vivo/common/autobrightness/AutoBrightnessRecorder$AnimateInfo;
    }
.end annotation


# static fields
.field private static final ALS_MEMORY_SOLUTION:I

.field private static final ANSWER_NORMAL_DELAY:I = 0x32

.field private static final ANSWER_NO_DELAY:I = 0x0

.field private static final BRIGHTNESS_CHANGED_BY_AUTO:I = 0x0

.field private static final INVALID_BRIGHTNESS:I = -0x1

.field private static final INVALID_TIME:J = -0x1L

.field private static final MAX_SCREEN_BRIGHTNESS:I = 0xff

.field private static final MIN_SCREEN_BRIGHTNESS:I = 0x14

.field private static final STATE_UPSLIDE_HELPER_HIDE:I = 0x0

.field private static final STATE_UPSLIDE_HELPER_SHOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AutoBrightnessRecorder"

.field private static final UPSLIDE_HELPER_SHOW:Ljava/lang/String; = "upslide_helper_show"

.field private static mActivityManager:Landroid/app/ActivityManager;

.field private static mAnimatedInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vivo/common/autobrightness/AutoBrightnessRecorder$AnimateInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static mAnswerDelayTime:I

.field private static mAutoBrightnessTimeStamp:J

.field private static mAutoBrightnessValue:I

.field private static mCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$UserChangeBrightnessCallback;

.field private static mChangedBrighness:I

.field private static mChangedTimeStamp:J

.field private static mChanging:Z

.field private static mContentResolver:Landroid/content/ContentResolver;

.field private static mContext:Landroid/content/Context;

.field private static mIActivityManager:Landroid/app/IActivityManager;

.field private static mLock:Ljava/lang/Object;

.field private static mObservedBrightness:I

.field private static mObservedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vivo/common/autobrightness/AutoBrightnessRecorder$AnimateInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static mObservedTimeStamp:J

.field private static mPrevChangedBrighness:I

.field private static mRampAnimatedBrightness:I

.field private static mRampCurrentBrightness:I

.field private static mRampEndBrighness:I

.field private static mRampStartBrighness:I

.field private static mRegisteredProcessObserver:Z

.field private static mScreenState:I

.field private static mSettingObserver:Lcom/vivo/common/autobrightness/AutoBrightnessRecorder$SettingsObserver;

.field private static mStartTimeStamp:J

.field private static mSuperPowerSavingOn:Z

.field private static mUpslideHelperShow:Z

.field private static final mUseAlsMemory:Z

.field private static mUseAutobrightness:Z

.field private static mWaitFristBrightness:Z

.field private static recorder:Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;


# instance fields
.field private mAimateResetHandler:Landroid/os/Handler;

.field private mAnimateResetRunnable:Ljava/lang/Runnable;

.field private mBrightnessInfo:Lcom/vivo/common/autobrightness/AutobrightInfo;

.field private mHandler:Landroid/os/Handler;

.field private mLux:I

.field private mObserveHandler:Landroid/os/Handler;

.field private mPackageHandler:Landroid/os/Handler;

.field private mPackageRunnable:Ljava/lang/Runnable;

.field private mProcessObserver:Landroid/app/IProcessObserver;

.field private mProximityStatus:Z

.field private mRunnable:Ljava/lang/Runnable;

.field private mThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 50
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isUseAlsMemory()Z

    move-result v0

    sput-boolean v0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mUseAlsMemory:Z

    .line 51
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->getAlsMemorySolution()I

    move-result v0

    sput v0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->ALS_MEMORY_SOLUTION:I

    .line 53
    sput-object v6, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->recorder:Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;

    .line 54
    sput-boolean v3, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mUseAutobrightness:Z

    .line 55
    sput v2, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mAutoBrightnessValue:I

    .line 56
    sput-wide v4, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mAutoBrightnessTimeStamp:J

    .line 57
    const/4 v0, 0x1

    sput-boolean v0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mWaitFristBrightness:Z

    .line 58
    sput-boolean v3, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mChanging:Z

    .line 59
    sput v2, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mPrevChangedBrighness:I

    .line 61
    sput v2, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mChangedBrighness:I

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    sget v1, Lcom/vivo/common/autobrightness/RecordInfo;->ID_MAX:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mAnimatedInfoList:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    sget v1, Lcom/vivo/common/autobrightness/RecordInfo;->ID_MAX:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mObservedList:Ljava/util/List;

    .line 64
    sput v2, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mRampStartBrighness:I

    .line 65
    sput v2, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mRampCurrentBrightness:I

    .line 66
    sput v2, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mRampEndBrighness:I

    .line 67
    sput v2, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mRampAnimatedBrightness:I

    .line 68
    sput-wide v4, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mChangedTimeStamp:J

    .line 69
    sput-wide v4, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mStartTimeStamp:J

    .line 70
    sput v2, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mObservedBrightness:I

    .line 71
    sput-wide v4, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mObservedTimeStamp:J

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mLock:Ljava/lang/Object;

    .line 74
    sget v0, Lcom/vivo/common/autobrightness/ScreenState;->STATE_SCREEN_BRIGHT:I

    sput v0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mScreenState:I

    .line 75
    sput-boolean v3, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mSuperPowerSavingOn:Z

    .line 77
    sput-object v6, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$UserChangeBrightnessCallback;

    .line 81
    sput-boolean v3, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mRegisteredProcessObserver:Z

    .line 82
    sput-boolean v3, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mUpslideHelperShow:Z

    .line 85
    sput v3, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mAnswerDelayTime:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Lcom/vivo/common/autobrightness/AutobrightInfo;

    invoke-direct {v0}, Lcom/vivo/common/autobrightness/AutobrightInfo;-><init>()V

    iput-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mBrightnessInfo:Lcom/vivo/common/autobrightness/AutobrightInfo;

    .line 92
    const/16 v0, 0xa

    iput v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mLux:I

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mProximityStatus:Z

    .line 110
    new-instance v0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder$1;

    invoke-direct {v0, p0}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder$1;-><init>(Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;)V

    iput-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mPackageRunnable:Ljava/lang/Runnable;

    .line 129
    new-instance v0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder$2;

    invoke-direct {v0, p0}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder$2;-><init>(Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;)V

    iput-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mProcessObserver:Landroid/app/IProcessObserver;

    .line 176
    new-instance v0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder$3;

    invoke-direct {v0, p0}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder$3;-><init>(Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;)V

    iput-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mRunnable:Ljava/lang/Runnable;

    .line 195
    new-instance v0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder$4;

    invoke-direct {v0, p0}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder$4;-><init>(Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;)V

    iput-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mAnimateResetRunnable:Ljava/lang/Runnable;

    .line 203
    sput-object p1, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mContext:Landroid/content/Context;

    .line 204
    sget-object v0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    sput-object v0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mActivityManager:Landroid/app/ActivityManager;

    .line 205
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    sput-object v0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mIActivityManager:Landroid/app/IActivityManager;

    .line 206
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sput-object v0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mContentResolver:Landroid/content/ContentResolver;

    .line 207
    invoke-direct {p0}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->getSystemBrightness()I

    move-result v0

    sput v0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mObservedBrightness:I

    .line 208
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AutoBrightnessRecorder"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mThread:Landroid/os/HandlerThread;

    .line 209
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 210
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mHandler:Landroid/os/Handler;

    .line 211
    new-instance v0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder$SettingsObserver;

    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder$SettingsObserver;-><init>(Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;Landroid/os/Handler;)V

    sput-object v0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mSettingObserver:Lcom/vivo/common/autobrightness/AutoBrightnessRecorder$SettingsObserver;

    .line 212
    invoke-direct {p0}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->registerObserver()V

    .line 213
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mAimateResetHandler:Landroid/os/Handler;

    .line 214
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mPackageHandler:Landroid/os/Handler;

    .line 215
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mObserveHandler:Landroid/os/Handler;

    .line 216
    return-void
.end method

.method static synthetic access$000(Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->getTopActivityPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 36
    sget v0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mAnswerDelayTime:I

    return v0
.end method

.method static synthetic access$1000()I
    .locals 1

    .prologue
    .line 36
    sget v0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mChangedBrighness:I

    return v0
.end method

.method static synthetic access$102(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 36
    sput p0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mAnswerDelayTime:I

    return p0
.end method

.method static synthetic access$1100(Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;Lcom/vivo/common/autobrightness/AutobrightInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;
    .param p1, "x1"    # Lcom/vivo/common/autobrightness/AutobrightInfo;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->putAutobrightInfo(Lcom/vivo/common/autobrightness/AutobrightInfo;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->resetAnimateInfoLocked()V

    return-void
.end method

.method static synthetic access$200(Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mPackageRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mPackageHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->handleSettingsChangedLocked()V

    return-void
.end method

.method static synthetic access$600()Lcom/vivo/common/autobrightness/CameraLumaCallback$UserChangeBrightnessCallback;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$UserChangeBrightnessCallback;

    return-object v0
.end method

.method static synthetic access$700(Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->resetAnimateInfo()V

    return-void
.end method

.method static synthetic access$800()Z
    .locals 1

    .prologue
    .line 36
    sget-boolean v0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mUpslideHelperShow:Z

    return v0
.end method

.method static synthetic access$900(Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;)Lcom/vivo/common/autobrightness/AutobrightInfo;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mBrightnessInfo:Lcom/vivo/common/autobrightness/AutobrightInfo;

    return-object v0
.end method

.method public static getInstance()Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;
    .locals 1

    .prologue
    .line 296
    sget-object v0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->recorder:Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 300
    sget-object v0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->recorder:Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;

    if-nez v0, :cond_0

    .line 301
    new-instance v0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;

    invoke-direct {v0, p0}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->recorder:Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;

    .line 302
    sget-object v0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->recorder:Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;

    .line 305
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->recorder:Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;Lcom/vivo/common/autobrightness/CameraLumaCallback$UserChangeBrightnessCallback;)Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/vivo/common/autobrightness/CameraLumaCallback$UserChangeBrightnessCallback;

    .prologue
    .line 310
    if-eqz p1, :cond_0

    .line 311
    sput-object p1, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$UserChangeBrightnessCallback;

    .line 313
    :cond_0
    invoke-static {p0}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->getInstance(Landroid/content/Context;)Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;

    move-result-object v0

    return-object v0
.end method

.method private getSystemBrightness()I
    .locals 4

    .prologue
    .line 233
    const/4 v0, -0x1

    .line 235
    .local v0, "brightness":I
    :try_start_0
    sget-object v2, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "screen_brightness"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 240
    :goto_0
    return v0

    .line 236
    :catch_0
    move-exception v1

    .line 238
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "AutoBrightnessRecorder"

    const-string v3, "get system brightness failed."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getTopActivityPackageName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 451
    sget-object v4, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mActivityManager:Landroid/app/ActivityManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 452
    .local v3, "taskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 453
    const/4 v2, 0x0

    .line 465
    :goto_0
    return-object v2

    .line 455
    :cond_0
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 456
    .local v0, "cn":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 457
    .local v2, "runningPackage":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 464
    .local v1, "mTopActivity":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "runningPackage="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mTopActivity="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleSettingsChangedLocked()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 147
    :try_start_0
    sget-object v4, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "upslide_helper_show"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 148
    .local v1, "state":I
    if-ne v1, v2, :cond_0

    :goto_0
    sput-boolean v2, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mUpslideHelperShow:Z

    .line 149
    const-string v2, "AutoBrightnessRecorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSettingsChangedLocked mUpslideHelperShow="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mUpslideHelperShow:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    .end local v1    # "state":I
    :goto_1
    return-void

    .restart local v1    # "state":I
    :cond_0
    move v2, v3

    .line 148
    goto :goto_0

    .line 150
    .end local v1    # "state":I
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "AutoBrightnessRecorder"

    const-string v3, "handleSettingsChangedLocked failed."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private isAutoBrightnessChangedBrightness(IJ)I
    .locals 10
    .param p1, "brightness"    # I
    .param p2, "timeStamp"    # J

    .prologue
    const-wide/16 v6, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 671
    move v0, p1

    .line 672
    .local v0, "autoChanged":I
    sget v1, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mChangedBrighness:I

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->isValidBrightness(I)Z

    move-result v1

    if-eqz v1, :cond_5

    sget v1, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mObservedBrightness:I

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->isValidBrightness(I)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-boolean v1, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mUseAutobrightness:Z

    if-eqz v1, :cond_5

    .line 673
    sget-wide v4, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mObservedTimeStamp:J

    cmp-long v1, v4, v6

    if-eqz v1, :cond_0

    sget-wide v4, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mChangedTimeStamp:J

    cmp-long v1, v4, v6

    if-eqz v1, :cond_0

    .line 674
    sget-wide v4, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mObservedTimeStamp:J

    sget-wide v6, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mChangedTimeStamp:J

    cmp-long v1, v4, v6

    if-lez v1, :cond_1

    sget v1, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mObservedBrightness:I

    sget v4, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mChangedBrighness:I

    if-ne v1, v4, :cond_1

    .line 675
    sget-object v1, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mObservedList:Ljava/util/List;

    new-instance v4, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder$AnimateInfo;

    sget v5, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mObservedBrightness:I

    sget-wide v6, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mObservedTimeStamp:J

    invoke-direct {v4, p0, v5, v6, v7}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder$AnimateInfo;-><init>(Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;IJ)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 676
    const/4 v0, 0x0

    .line 677
    const-string v1, "AutoBrightnessRecorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "auto changed brightness to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mObservedBrightness:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAutoBrightnessChangedBrightness "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", as mObservedTimeStamp="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v4, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mObservedTimeStamp:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " > mChangedTimeStamp="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v4, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mChangedTimeStamp:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "-->"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-wide v6, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mObservedTimeStamp:J

    sget-wide v8, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mChangedTimeStamp:J

    cmp-long v1, v6, v8

    if-lez v1, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", mObservedBrightness="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v4, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mObservedBrightness:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " == mChangedBrighness="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v4, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mChangedBrighness:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "-->"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v4, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mObservedBrightness:I

    sget v5, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mChangedBrighness:I

    if-ne v4, v5, :cond_4

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->log(Ljava/lang/String;)V

    .line 700
    :goto_3
    return v0

    .line 678
    :cond_1
    sget v1, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mRampStartBrighness:I

    sget v4, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mRampAnimatedBrightness:I

    sget v5, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mObservedBrightness:I

    invoke-direct {p0, v1, v4, v5}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->isBrighnessInScope(III)Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mObservedBrightness:I

    sget-wide v4, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mObservedTimeStamp:J

    invoke-direct {p0, v1, v4, v5}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->isBrightnessInAnimatedList(IJ)Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mObservedBrightness:I

    sget-wide v4, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mObservedTimeStamp:J

    invoke-direct {p0, v1, v4, v5}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->isBrightnessInObservedList(IJ)Z

    move-result v1

    if-nez v1, :cond_2

    .line 681
    const/4 v0, 0x0

    .line 682
    sget-object v1, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mObservedList:Ljava/util/List;

    new-instance v4, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder$AnimateInfo;

    sget v5, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mObservedBrightness:I

    sget-wide v6, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mObservedTimeStamp:J

    invoke-direct {v4, p0, v5, v6, v7}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder$AnimateInfo;-><init>(Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;IJ)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 683
    const-string v1, "AutoBrightnessRecorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "auto changed brightness to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mObservedBrightness:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " as mRampStartBrighness"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mRampStartBrighness:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mRampAnimatedBrightness"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mRampAnimatedBrightness:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "force set mObservedBrightness to mChangedBrighness"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    sget v1, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mChangedBrighness:I

    sput v1, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mObservedBrightness:I

    .line 686
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sput-wide v4, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mObservedTimeStamp:J

    goto/16 :goto_0

    .line 689
    :cond_2
    sget-object v1, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mObservedList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto/16 :goto_0

    :cond_3
    move v1, v3

    .line 692
    goto/16 :goto_1

    :cond_4
    move v2, v3

    goto/16 :goto_2

    .line 697
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAutoBrightnessChangedBrightness false, as mChangedBrighness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mChangedBrighness:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mObservedBrightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mObservedBrightness:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mUseAutobrightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mUseAutobrightness:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->log(Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method private isBrighnessInScope(III)Z
    .locals 1
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "cursor"    # I

    .prologue
    .line 362
    const/4 v0, 0x1

    .line 363
    .local v0, "ret":Z
    if-ne p1, p2, :cond_1

    if-eq p3, p2, :cond_1

    .line 364
    const/4 v0, 0x0

    .line 377
    :cond_0
    :goto_0
    return v0

    .line 365
    :cond_1
    if-ge p1, p2, :cond_3

    .line 367
    if-gt p3, p2, :cond_2

    if-ge p3, p1, :cond_0

    .line 368
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 373
    :cond_3
    if-lt p3, p2, :cond_4

    if-le p3, p1, :cond_0

    .line 374
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isBrightnessInAnimatedList(IJ)Z
    .locals 4
    .param p1, "brightness"    # I
    .param p2, "time"    # J

    .prologue
    .line 634
    const/4 v2, 0x0

    .line 635
    .local v2, "ret":Z
    sget-object v3, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mAnimatedInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gez v3, :cond_0

    .line 636
    const/4 v3, 0x0

    .line 645
    :goto_0
    return v3

    .line 638
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v3, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mAnimatedInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 639
    sget-object v3, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mAnimatedInfoList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder$AnimateInfo;

    .line 640
    .local v1, "info":Lcom/vivo/common/autobrightness/AutoBrightnessRecorder$AnimateInfo;
    iget v3, v1, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder$AnimateInfo;->mBrightness:I

    if-ne v3, p1, :cond_2

    .line 641
    const/4 v2, 0x1

    .end local v1    # "info":Lcom/vivo/common/autobrightness/AutoBrightnessRecorder$AnimateInfo;
    :cond_1
    move v3, v2

    .line 645
    goto :goto_0

    .line 638
    .restart local v1    # "info":Lcom/vivo/common/autobrightness/AutoBrightnessRecorder$AnimateInfo;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private isBrightnessInObservedList(IJ)Z
    .locals 4
    .param p1, "brightness"    # I
    .param p2, "time"    # J

    .prologue
    .line 650
    const/4 v2, 0x0

    .line 651
    .local v2, "ret":Z
    sget-object v3, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mObservedList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gez v3, :cond_0

    .line 652
    const-string v3, "isBrightnessInObservedList false,as list size=0"

    invoke-direct {p0, v3}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->log(Ljava/lang/String;)V

    .line 653
    const/4 v3, 0x0

    .line 663
    :goto_0
    return v3

    .line 655
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v3, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mObservedList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 656
    sget-object v3, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mObservedList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder$AnimateInfo;

    .line 657
    .local v1, "info":Lcom/vivo/common/autobrightness/AutoBrightnessRecorder$AnimateInfo;
    iget v3, v1, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder$AnimateInfo;->mBrightness:I

    if-ne v3, p1, :cond_2

    .line 658
    const/4 v2, 0x1

    .line 662
    .end local v1    # "info":Lcom/vivo/common/autobrightness/AutoBrightnessRecorder$AnimateInfo;
    :cond_1
    const-string v3, "isBrightnessInObservedList false,as not in list."

    invoke-direct {p0, v3}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->log(Ljava/lang/String;)V

    move v3, v2

    .line 663
    goto :goto_0

    .line 655
    .restart local v1    # "info":Lcom/vivo/common/autobrightness/AutoBrightnessRecorder$AnimateInfo;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private isRampAnimateTowardsSame(III)Z
    .locals 3
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "animate"    # I

    .prologue
    .line 381
    const/4 v0, 0x1

    .line 382
    .local v0, "same":Z
    sget v1, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mRampStartBrighness:I

    sget v2, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mRampEndBrighness:I

    if-ne v1, v2, :cond_1

    sget v1, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mRampEndBrighness:I

    if-eq v1, p2, :cond_1

    .line 383
    const/4 v0, 0x0

    .line 391
    :cond_0
    :goto_0
    return v0

    .line 384
    :cond_1
    sget v1, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mRampEndBrighness:I

    if-eq p2, v1, :cond_2

    .line 385
    const/4 v0, 0x0

    goto :goto_0

    .line 386
    :cond_2
    sget v1, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mRampStartBrighness:I

    invoke-direct {p0, v1, p2, p1}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->isBrighnessInScope(III)Z

    move-result v1

    if-nez v1, :cond_0

    .line 389
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isScreenOn()Z
    .locals 2

    .prologue
    .line 493
    sget v0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mScreenState:I

    sget v1, Lcom/vivo/common/autobrightness/ScreenState;->STATE_SCREEN_BRIGHT:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isUserChangedBrightness()Z
    .locals 10

    .prologue
    const-wide/16 v6, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 606
    const/4 v0, 0x0

    .line 607
    .local v0, "userChanged":Z
    sget-boolean v1, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mWaitFristBrightness:Z

    if-eqz v1, :cond_0

    .line 608
    const-string v1, "isUserChangedBrightness as mWaitFristBrightness, return false."

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->log(Ljava/lang/String;)V

    .line 609
    sput-boolean v3, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mWaitFristBrightness:Z

    .line 630
    :goto_0
    return v3

    .line 612
    :cond_0
    sget v1, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mChangedBrighness:I

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->isValidBrightness(I)Z

    move-result v1

    if-eqz v1, :cond_5

    sget v1, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mObservedBrightness:I

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->isValidBrightness(I)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-boolean v1, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mUseAutobrightness:Z

    if-eqz v1, :cond_5

    .line 613
    sget-wide v4, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mObservedTimeStamp:J

    cmp-long v1, v4, v6

    if-eqz v1, :cond_2

    sget-wide v4, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mChangedTimeStamp:J

    cmp-long v1, v4, v6

    if-eqz v1, :cond_2

    sget v1, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mPrevChangedBrighness:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_2

    sget-wide v4, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mObservedTimeStamp:J

    sget-wide v6, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mChangedTimeStamp:J

    cmp-long v1, v4, v6

    if-gez v1, :cond_2

    sget v1, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mObservedBrightness:I

    sget v4, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mChangedBrighness:I

    if-eq v1, v4, :cond_1

    invoke-direct {p0}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->getSystemBrightness()I

    move-result v1

    sget v4, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mChangedBrighness:I

    if-ne v1, v4, :cond_2

    sget v1, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mPrevChangedBrighness:I

    sget v4, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mChangedBrighness:I

    if-eq v1, v4, :cond_2

    .line 618
    :cond_1
    const/4 v0, 0x1

    .line 619
    const-string v1, "AutoBrightnessRecorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "user changed brightness to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mObservedBrightness:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isUserChangedBrightness "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", as mObservedTimeStamp="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v4, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mObservedTimeStamp:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " < mChangedTimeStamp="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v4, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mChangedTimeStamp:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "-->"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-wide v6, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mObservedTimeStamp:J

    sget-wide v8, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mChangedTimeStamp:J

    cmp-long v1, v6, v8

    if-gez v1, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", mObservedBrightness="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v4, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mObservedBrightness:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " == mChangedBrighness="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v4, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mChangedBrighness:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "-->"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v4, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mObservedBrightness:I

    sget v5, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mChangedBrighness:I

    if-ne v4, v5, :cond_4

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->log(Ljava/lang/String;)V

    .line 625
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isUserChangedBrightness "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", as getSystemBrightness() ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->getSystemBrightness()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPrevChangedBrighness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mPrevChangedBrighness:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->log(Ljava/lang/String;)V

    :goto_3
    move v3, v0

    .line 630
    goto/16 :goto_0

    :cond_3
    move v1, v3

    .line 621
    goto :goto_1

    :cond_4
    move v2, v3

    goto :goto_2

    .line 627
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isUserChangedBrightness false, as mChangedBrighness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mChangedBrighness:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mObservedBrightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mObservedBrightness:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mUseAutobrightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mUseAutobrightness:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->log(Ljava/lang/String;)V

    goto :goto_3
.end method

.method private isValidBrightness(I)Z
    .locals 2
    .param p1, "brightness"    # I

    .prologue
    .line 395
    const/16 v0, 0x14

    if-lt p1, v0, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    sget v0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mScreenState:I

    sget v1, Lcom/vivo/common/autobrightness/ScreenState;->STATE_SCREEN_BRIGHT:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 227
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    const-string v0, "AutoBrightnessRecorder"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_0
    return-void
.end method

.method private putAutobrightInfo(Lcom/vivo/common/autobrightness/AutobrightInfo;)V
    .locals 6
    .param p1, "ab"    # Lcom/vivo/common/autobrightness/AutobrightInfo;

    .prologue
    const/4 v5, 0x1

    .line 260
    const/4 v3, 0x7

    invoke-static {v3}, Lcom/vivo/common/autobrightness/RecordInfo;->getKeyById(I)Ljava/lang/String;

    move-result-object v2

    .line 263
    .local v2, "key":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mProximityStatus:Z

    if-eqz v3, :cond_0

    .line 264
    iget v3, p1, Lcom/vivo/common/autobrightness/AutobrightInfo;->mLightLux:I

    const/16 v4, 0x14

    if-ge v3, v4, :cond_0

    .line 265
    const/4 v3, 0x0

    iput v3, p1, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    .line 268
    :cond_0
    sget v3, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->ALS_MEMORY_SOLUTION:I

    if-ne v3, v5, :cond_3

    .line 269
    const/4 v1, 0x1

    .line 270
    .local v1, "id":I
    iget v3, p1, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    if-nez v3, :cond_2

    .line 271
    const/4 v1, 0x0

    .line 275
    :cond_1
    :goto_0
    invoke-static {v1}, Lcom/vivo/common/autobrightness/RecordInfo;->getKeyById(I)Ljava/lang/String;

    move-result-object v2

    .line 280
    .end local v1    # "id":I
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "putAutobrightInfo mProximityStatus="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mProximityStatus:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " set mScreenLevel="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " info="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/vivo/common/autobrightness/AutobrightInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->log(Ljava/lang/String;)V

    .line 282
    iput v5, p1, Lcom/vivo/common/autobrightness/AutobrightInfo;->mReason:I

    .line 283
    invoke-static {}, Lcom/vivo/common/autobrightness/RecordInfo;->getCurrentDate()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/vivo/common/autobrightness/AutobrightInfo;->mDate:Ljava/lang/String;

    .line 287
    :try_start_0
    sget-object v3, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Lcom/vivo/common/autobrightness/AutobrightInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 288
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "putAutobrightInfo key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " info="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/vivo/common/autobrightness/AutobrightInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    :goto_2
    return-void

    .line 272
    .restart local v1    # "id":I
    :cond_2
    iget v3, p1, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    sget v4, Lcom/vivo/common/autobrightness/RecordInfo;->ID_MAX:I

    if-ne v3, v4, :cond_1

    .line 273
    const/4 v1, 0x2

    goto :goto_0

    .line 278
    .end local v1    # "id":I
    :cond_3
    iget v3, p1, Lcom/vivo/common/autobrightness/AutobrightInfo;->mScreenLevel:I

    invoke-static {v3}, Lcom/vivo/common/autobrightness/RecordInfo;->getKeyById(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 289
    :catch_0
    move-exception v0

    .line 291
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "AutoBrightnessRecorder"

    const-string v4, "putAutobrightInfo failed."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private registerObserver()V
    .locals 5

    .prologue
    .line 157
    sget-object v1, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 158
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "upslide_helper_show"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mSettingObserver:Lcom/vivo/common/autobrightness/AutoBrightnessRecorder$SettingsObserver;

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 160
    return-void
.end method

.method private registerProcessObserver()V
    .locals 3

    .prologue
    .line 538
    :try_start_0
    sget-object v1, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mIActivityManager:Landroid/app/IActivityManager;

    if-eqz v1, :cond_0

    .line 539
    sget-object v1, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mIActivityManager:Landroid/app/IActivityManager;

    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 540
    const/4 v1, 0x1

    sput-boolean v1, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mRegisteredProcessObserver:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    :cond_0
    :goto_0
    return-void

    .line 542
    :catch_0
    move-exception v0

    .line 543
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "registerProcessObserver failed."

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private resetAnimateInfo()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, -0x1

    .line 317
    const-string v0, "called resetAnimateInfo"

    invoke-direct {p0, v0}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->log(Ljava/lang/String;)V

    .line 318
    sget-object v0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mAnimatedInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 319
    sget-object v0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mObservedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 320
    sput v1, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mRampStartBrighness:I

    .line 321
    sput v1, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mRampCurrentBrightness:I

    .line 322
    sput v1, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mRampEndBrighness:I

    .line 323
    sput v1, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mRampAnimatedBrightness:I

    .line 324
    sput-wide v2, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mChangedTimeStamp:J

    .line 325
    sput-wide v2, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mObservedTimeStamp:J

    .line 326
    return-void
.end method

.method private resetAnimateInfoLocked()V
    .locals 2

    .prologue
    .line 329
    sget-object v1, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 330
    :try_start_0
    invoke-direct {p0}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->resetAnimateInfo()V

    .line 331
    monitor-exit v1

    .line 332
    return-void

    .line 331
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setSystemBrightness(I)V
    .locals 3
    .param p1, "brightness"    # I

    .prologue
    .line 251
    :try_start_0
    sget-object v1, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "screen_brightness"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSystemBrightness brightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :goto_0
    return-void

    .line 253
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AutoBrightnessRecorder"

    const-string v2, "set system brightness failed."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private unregisterProcessObserver()V
    .locals 3

    .prologue
    .line 550
    :try_start_0
    sget-object v1, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mIActivityManager:Landroid/app/IActivityManager;

    if-eqz v1, :cond_0

    .line 551
    sget-object v1, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mIActivityManager:Landroid/app/IActivityManager;

    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    .line 552
    const/4 v1, 0x0

    sput-boolean v1, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mRegisteredProcessObserver:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    :cond_0
    :goto_0
    return-void

    .line 554
    :catch_0
    move-exception v0

    .line 555
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "registerProcessObserver failed."

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateAutobrightnessMode()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 244
    sget-object v3, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "screen_brightness_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 245
    .local v0, "mode":I
    if-ne v0, v1, :cond_0

    :goto_0
    sput-boolean v1, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mUseAutobrightness:Z

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAutobrightnessMode change mUseAutobrightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mUseAutobrightness:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->log(Ljava/lang/String;)V

    .line 247
    return-void

    :cond_0
    move v1, v2

    .line 245
    goto :goto_0
.end method


# virtual methods
.method public onBacklightChanged(IJ)V
    .locals 6
    .param p1, "brightness"    # I
    .param p2, "timeStamp"    # J

    .prologue
    .line 501
    sget-boolean v0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mUseAlsMemory:Z

    if-nez v0, :cond_0

    .line 534
    :goto_0
    return-void

    .line 504
    :cond_0
    sget-object v1, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 505
    :try_start_0
    invoke-direct {p0, p1}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->isValidBrightness(I)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mUseAutobrightness:Z

    if-eqz v0, :cond_4

    .line 506
    sget v0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mChangedBrighness:I

    sput v0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mPrevChangedBrighness:I

    .line 507
    sput p1, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mChangedBrighness:I

    .line 508
    sput-wide p2, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mChangedTimeStamp:J

    .line 509
    invoke-direct {p0}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->isUserChangedBrightness()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 510
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 511
    sget v0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mAnswerDelayTime:I

    if-nez v0, :cond_2

    .line 512
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 516
    :goto_1
    const-string v0, "AutoBrightnessRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "user changed brightness to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :cond_1
    :goto_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 514
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mRunnable:Ljava/lang/Runnable;

    sget v3, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mAnswerDelayTime:I

    int-to-long v4, v3

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 518
    :cond_3
    sget-boolean v0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mUseAutobrightness:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 519
    sget-object v0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mAnimatedInfoList:Ljava/util/List;

    new-instance v2, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder$AnimateInfo;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder$AnimateInfo;-><init>(Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;IJ)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 520
    invoke-direct {p0, p1}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->setSystemBrightness(I)V

    .line 521
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mAimateResetHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mAnimateResetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 522
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mAimateResetHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mAnimateResetRunnable:Ljava/lang/Runnable;

    const-string v3, "persist.animate.down"

    const/16 v4, 0x12c

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    int-to-long v4, v3

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 530
    :cond_4
    const-string v0, "AutoBrightnessRecorder"

    const-string v2, "onBacklightChanged not valid."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public onBrihgtnessChangeObserved(IJ)I
    .locals 4
    .param p1, "brightness"    # I
    .param p2, "timeStamp"    # J

    .prologue
    .line 476
    sget-boolean v0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mUseAlsMemory:Z

    if-nez v0, :cond_0

    .line 477
    const/4 v0, 0x0

    .line 487
    :goto_0
    return v0

    .line 479
    :cond_0
    sget-object v1, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 480
    :try_start_0
    invoke-direct {p0, p1}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->isValidBrightness(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 481
    sput p1, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mObservedBrightness:I

    .line 482
    sput-wide p2, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mObservedTimeStamp:J

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBrihgtnessChangeObserved brightness="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " timeStamp="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->log(Ljava/lang/String;)V

    .line 487
    :goto_1
    invoke-direct {p0, p1, p2, p3}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->isAutoBrightnessChangedBrightness(IJ)I

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 488
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 485
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBrihgtnessChangeObserved brightness="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " not valid."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public setAutoBrightnessValue(I)V
    .locals 4
    .param p1, "brightness"    # I

    .prologue
    .line 441
    sget-boolean v0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mUseAlsMemory:Z

    if-nez v0, :cond_0

    .line 448
    :goto_0
    return-void

    .line 444
    :cond_0
    sget-object v1, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 445
    :try_start_0
    sput p1, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mAutoBrightnessValue:I

    .line 446
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mAutoBrightnessTimeStamp:J

    .line 447
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setLightLux(I)V
    .locals 0
    .param p1, "lux"    # I

    .prologue
    .line 219
    iput p1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mLux:I

    .line 220
    return-void
.end method

.method public setLightSensorEnabled(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 561
    sget-boolean v0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mUseAlsMemory:Z

    if-nez v0, :cond_0

    .line 597
    :goto_0
    return-void

    .line 564
    :cond_0
    sget-object v1, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 565
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "called setLightSensorEnabled enable="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->log(Ljava/lang/String;)V

    .line 566
    sget-boolean v0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mUseAutobrightness:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 567
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 568
    invoke-direct {p0}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->resetAnimateInfo()V

    .line 570
    invoke-direct {p0}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->getSystemBrightness()I

    move-result v0

    sput v0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mObservedBrightness:I

    .line 571
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mObservedTimeStamp:J

    .line 572
    const/4 v0, 0x1

    sput-boolean v0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mWaitFristBrightness:Z

    .line 574
    :cond_1
    sget-boolean v0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mUseAutobrightness:Z

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    .line 575
    const-string v0, "setLightSensorEnabled enable light sensor"

    invoke-direct {p0, v0}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->log(Ljava/lang/String;)V

    .line 576
    const/4 v0, 0x0

    sput v0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mAnswerDelayTime:I

    .line 577
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 578
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mPackageHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mPackageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 579
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mPackageHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mPackageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 580
    sget-boolean v0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mRegisteredProcessObserver:Z

    if-nez v0, :cond_2

    .line 581
    invoke-direct {p0}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->registerProcessObserver()V

    .line 594
    :cond_2
    :goto_1
    sput-boolean p1, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mUseAutobrightness:Z

    .line 596
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 583
    :cond_3
    :try_start_1
    sget-boolean v0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mUseAutobrightness:Z

    if-eqz v0, :cond_4

    if-nez p1, :cond_4

    .line 584
    const-string v0, "setLightSensorEnabled disable light sensor"

    invoke-direct {p0, v0}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->log(Ljava/lang/String;)V

    .line 585
    const/4 v0, 0x0

    sput v0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mAnswerDelayTime:I

    .line 586
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 587
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mPackageHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mPackageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 588
    sget-boolean v0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mRegisteredProcessObserver:Z

    if-eqz v0, :cond_2

    .line 589
    invoke-direct {p0}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->unregisterProcessObserver()V

    goto :goto_1

    .line 592
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLightSensorEnabled no change:mUseAutobrightness="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v2, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mUseAutobrightness:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " enable="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public setProximityStatus(Z)V
    .locals 0
    .param p1, "status"    # Z

    .prologue
    .line 223
    iput-boolean p1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mProximityStatus:Z

    .line 224
    return-void
.end method

.method public setRampAnimatorInfo(III)V
    .locals 2
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "animate"    # I

    .prologue
    const/4 v1, -0x1

    .line 336
    sget-boolean v0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mUseAlsMemory:Z

    if-nez v0, :cond_1

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    invoke-direct {p0}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    sget v0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mRampStartBrighness:I

    if-eq v0, v1, :cond_2

    sget v0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mRampCurrentBrightness:I

    if-eq v0, v1, :cond_2

    sget v0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mRampEndBrighness:I

    if-eq v0, v1, :cond_2

    sget v0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mRampAnimatedBrightness:I

    if-ne v0, v1, :cond_3

    .line 347
    :cond_2
    sget-object v0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mAnimatedInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 348
    sput p1, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mRampStartBrighness:I

    .line 349
    sput p1, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mRampCurrentBrightness:I

    .line 350
    sput p2, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mRampEndBrighness:I

    .line 351
    sput p3, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mRampAnimatedBrightness:I

    .line 358
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRampAnimatorInfo from="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " animate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 352
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->isRampAnimateTowardsSame(III)Z

    move-result v0

    if-nez v0, :cond_4

    .line 353
    invoke-direct {p0}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->resetAnimateInfo()V

    goto :goto_1

    .line 355
    :cond_4
    sput p1, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mRampCurrentBrightness:I

    .line 356
    sput p3, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mRampAnimatedBrightness:I

    goto :goto_1
.end method

.method public setScreenState(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 400
    sget-boolean v0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mUseAlsMemory:Z

    if-nez v0, :cond_0

    .line 421
    :goto_0
    return-void

    .line 404
    :cond_0
    sget v0, Lcom/vivo/common/autobrightness/ScreenState;->STATE_SCREEN_BRIGHT:I

    if-eq p1, v0, :cond_1

    sget v0, Lcom/vivo/common/autobrightness/ScreenState;->STATE_SCREEN_DIM:I

    if-eq p1, v0, :cond_1

    sget v0, Lcom/vivo/common/autobrightness/ScreenState;->STATE_SCREEN_DOZE:I

    if-ne p1, v0, :cond_2

    .line 407
    :cond_1
    sget-object v1, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 408
    :try_start_0
    sput p1, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mScreenState:I

    .line 409
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 410
    :cond_2
    sget v0, Lcom/vivo/common/autobrightness/ScreenState;->STATE_SCREEN_OFF:I

    if-ne p1, v0, :cond_3

    .line 411
    sget-object v1, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 412
    :try_start_1
    sput p1, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mScreenState:I

    .line 413
    const-wide/16 v2, -0x1

    sput-wide v2, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mChangedTimeStamp:J

    .line 414
    const-wide/16 v2, -0x1

    sput-wide v2, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mObservedTimeStamp:J

    .line 415
    invoke-direct {p0}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->resetAnimateInfo()V

    .line 416
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 418
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setSuperPowerSavingStatus(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 600
    sput-boolean p1, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mSuperPowerSavingOn:Z

    .line 601
    return-void
.end method

.method public startAutoBrightnessChange(IIJ)V
    .locals 3
    .param p1, "startValue"    # I
    .param p2, "endValue"    # I
    .param p3, "timeStamp"    # J

    .prologue
    .line 424
    sget-boolean v0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mUseAlsMemory:Z

    if-nez v0, :cond_0

    .line 438
    :goto_0
    return-void

    .line 427
    :cond_0
    sget-object v1, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 428
    :try_start_0
    invoke-direct {p0, p1}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->isValidBrightness(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->isValidBrightness(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 429
    const/4 v0, 0x1

    sput-boolean v0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mChanging:Z

    .line 432
    sput-wide p3, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mStartTimeStamp:J

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startAutoBrightnessChange mChanging,startValue="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " endValue="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " timeStamp="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->log(Ljava/lang/String;)V

    .line 437
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 435
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startAutoBrightnessChange startValue="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " or endValue="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " no valid."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
