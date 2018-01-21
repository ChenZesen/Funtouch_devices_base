.class public Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;
.super Ljava/lang/Object;
.source "ScreenBrightnessModeRestore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$RestoreHandler;
    }
.end annotation


# static fields
.field private static final BLACK_MODE_PKG_LIST:[Ljava/lang/String;

.field private static final JSON_KEY_CHANGEBY:Ljava/lang/String; = "changeBy"

.field private static final JSON_KEY_OFFBY:Ljava/lang/String; = "offBy"

.field private static final MSG_BOOT_GET_LAST_LOW_LUX_APP:I = 0x6

.field private static final MSG_FOREGROUND_ACTIVITY_CHANGED:I = 0x1

.field private static final MSG_FOREGROUND_APP_CHANGE:I = 0x0

.field private static final MSG_ON_GET_SETTINGS_ARG3:I = 0x4

.field private static final MSG_ON_GET_SETTINGS_ARG4:I = 0x3

.field private static final MSG_PROCESS_DIED:I = 0x2

.field private static final MSG_SET_BACKLIGHT:I = 0x5

.field private static final TAG:Ljava/lang/String; = "ScreenBrightnessModeRestore"

.field private static final USE_PRELAST_PKG_LIST:[Ljava/lang/String;

.field private static final USE_RESTORE:Z

.field private static final WHITE_MODE_PKG_LIST:[Ljava/lang/String;

.field private static mActivityManager:Landroid/app/ActivityManager;

.field private static mAutoBacklightChangeBy:Ljava/lang/String;

.field private static mIActivityManager:Landroid/app/IActivityManager;

.field private static mInstance:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

.field private static mLock:Ljava/lang/Object;


# instance fields
.field private bBrighnessInitStatus:Z

.field private bBrightnessRestoreStatus:Z

.field private mAppName:Ljava/lang/String;

.field private mBeforeChengedScreenBrightness:I

.field private mBrightnessRatio:F

.field private mCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$ModeRestoreCallback;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mCurrentForceGroundPid:I

.field private mLastChangeBy:Ljava/lang/String;

.field private mLastForceGroundPid:I

.field private mLastOffBy:Ljava/lang/String;

.field private mLastScreenBrightness:I

.field private mLastScreenMode:I

.field private mLastSettingBrightness:I

.field private mLastSettingMode:I

.field private mLooper:Landroid/os/Looper;

.field private mModifyRecorder:Lcom/vivo/common/autobrightness/UserModifyRecorder;

.field private mPackageHandler:Landroid/os/Handler;

.field private mPreLastScreenBrightness:I

.field private mProcessObserver:Landroid/app/IProcessObserver;

.field private mRatioCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$BrightnessRatioCallback;

.field private mRealtimeSettingBrightness:I

.field private mRegisteredProcessObserver:Z

.field private mRestoreHandler:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$RestoreHandler;

.field private mRunnable:Ljava/lang/Runnable;

.field private mRunnableRollback:Ljava/lang/Runnable;

.field private mScreenBrightnessChangedBy:Ljava/lang/String;

.field private mScreenBrightnessModeOffBy:Ljava/lang/String;

.field private mShouldRestore:Z

.field private mSystemReady:Z

.field private mUseAutoBrightness:Z

.field private mWaitToRestore:Z

.field private mWaitToRestoreBrightness:Z

.field private mWaitToRestoreMode:Z

.field private mWaitToRollbackChangedBrightness:Z

.field private shouldWriteBackToSettings:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 37
    const-string v0, "persist.screenmode.restore"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->USE_RESTORE:Z

    .line 42
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.android.systemui"

    aput-object v1, v0, v4

    const-string v1, "com.android.settings"

    aput-object v1, v0, v3

    const-string v1, "android"

    aput-object v1, v0, v5

    const-string v1, "com.vivo.upslide"

    aput-object v1, v0, v6

    const-string v1, "com.bbk.SuperPowerSave"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.iqoo.powersaving"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.iqoo.engineermode"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.vivo.easyshare"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.bbk.scene.indoor"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.vivo.childrenmode"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.qihoo360.ilauncher"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.gau.go.launcherex"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.apusapps.launcher"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.dianxinos.dxhome"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.nd.android.pandahome2"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "com.moxiu.launcher"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "com.Dean.launcher"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "com.zeroteam.zerolauncher"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "com.fhhr.launcherEx"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "com.kk.launcher"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "com.lo.launcher"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "com.kugou.launcher"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "com.nearme.launcher"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "com.ouchn.desktop"

    aput-object v2, v0, v1

    sput-object v0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->WHITE_MODE_PKG_LIST:[Ljava/lang/String;

    .line 53
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.theotino.chinadaily"

    aput-object v1, v0, v4

    const-string v1, "com.qiyi.video.pad"

    aput-object v1, v0, v3

    const-string v1, "tv.pps.mobile"

    aput-object v1, v0, v5

    const-string v1, "com.qiyi.video"

    aput-object v1, v0, v6

    const-string v1, "com.tencent.qqlive"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.qiyi.video.pad.intel"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.tudou.android"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.sina.weibo"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "cn.com.sina.sports"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.sohu.sohuvideo"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.ifeng.newvideo"

    aput-object v2, v0, v1

    sput-object v0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->BLACK_MODE_PKG_LIST:[Ljava/lang/String;

    .line 68
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.qiyi.video.pad"

    aput-object v1, v0, v4

    const-string v1, "tv.pps.mobile"

    aput-object v1, v0, v3

    const-string v1, "com.qiyi.video"

    aput-object v1, v0, v5

    const-string v1, "com.qiyi.video.pad.intel"

    aput-object v1, v0, v6

    const-string v1, "com.ifeng.newvideo"

    aput-object v1, v0, v7

    sput-object v0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->USE_PRELAST_PKG_LIST:[Ljava/lang/String;

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mLock:Ljava/lang/Object;

    .line 102
    const-string v0, ""

    sput-object v0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mAutoBacklightChangeBy:Ljava/lang/String;

    .line 108
    const/4 v0, 0x0

    sput-object v0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mInstance:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-boolean v2, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mRegisteredProcessObserver:Z

    .line 78
    iput-boolean v2, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mShouldRestore:Z

    .line 79
    iput-boolean v2, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mSystemReady:Z

    .line 86
    iput v1, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mCurrentForceGroundPid:I

    .line 87
    iput v1, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mLastForceGroundPid:I

    .line 88
    iput v1, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mLastScreenMode:I

    .line 89
    iput v1, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mPreLastScreenBrightness:I

    .line 90
    iput v1, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mLastScreenBrightness:I

    .line 92
    iput-boolean v2, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mWaitToRestore:Z

    .line 93
    iput-boolean v2, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mWaitToRestoreMode:Z

    .line 94
    iput-boolean v2, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mWaitToRestoreBrightness:Z

    .line 95
    iput-object v3, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mScreenBrightnessModeOffBy:Ljava/lang/String;

    .line 96
    iput-object v3, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mAppName:Ljava/lang/String;

    .line 99
    iput-boolean v2, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mWaitToRollbackChangedBrightness:Z

    .line 100
    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mScreenBrightnessChangedBy:Ljava/lang/String;

    .line 104
    iput v1, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mBeforeChengedScreenBrightness:I

    .line 105
    iput v1, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mRealtimeSettingBrightness:I

    .line 106
    iput-boolean v4, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->shouldWriteBackToSettings:Z

    .line 107
    iput-boolean v2, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mUseAutoBrightness:Z

    .line 109
    iput-object v3, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$ModeRestoreCallback;

    .line 110
    iput-object v3, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mModifyRecorder:Lcom/vivo/common/autobrightness/UserModifyRecorder;

    .line 111
    iput v1, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mLastSettingMode:I

    .line 112
    iput v1, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mLastSettingBrightness:I

    .line 113
    const-string v0, "unknwon"

    iput-object v0, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mLastOffBy:Ljava/lang/String;

    .line 114
    const-string v0, "unknwon"

    iput-object v0, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mLastChangeBy:Ljava/lang/String;

    .line 124
    iput-object v3, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mRestoreHandler:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$RestoreHandler;

    .line 125
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mBrightnessRatio:F

    .line 126
    iput-object v3, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mRatioCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$BrightnessRatioCallback;

    .line 127
    iput-boolean v4, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->bBrighnessInitStatus:Z

    .line 128
    iput-boolean v2, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->bBrightnessRestoreStatus:Z

    .line 244
    new-instance v0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$1;

    invoke-direct {v0, p0}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$1;-><init>(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;)V

    iput-object v0, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mRunnable:Ljava/lang/Runnable;

    .line 299
    new-instance v0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$2;

    invoke-direct {v0, p0}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$2;-><init>(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;)V

    iput-object v0, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mRunnableRollback:Ljava/lang/Runnable;

    .line 378
    new-instance v0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$3;

    invoke-direct {v0, p0}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$3;-><init>(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;)V

    iput-object v0, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mProcessObserver:Landroid/app/IProcessObserver;

    .line 131
    iput-object p1, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mContext:Landroid/content/Context;

    .line 132
    iget-object v0, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mContentResolver:Landroid/content/ContentResolver;

    .line 133
    iget-object v0, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    sput-object v0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mActivityManager:Landroid/app/ActivityManager;

    .line 134
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    sput-object v0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mIActivityManager:Landroid/app/IActivityManager;

    .line 135
    iput-object p2, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mLooper:Landroid/os/Looper;

    .line 136
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mPackageHandler:Landroid/os/Handler;

    .line 137
    new-instance v0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$RestoreHandler;

    invoke-direct {v0, p0, p2}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$RestoreHandler;-><init>(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mRestoreHandler:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$RestoreHandler;

    .line 138
    new-instance v0, Lcom/vivo/common/autobrightness/UserModifyRecorder;

    iget-object v1, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1, v2}, Lcom/vivo/common/autobrightness/UserModifyRecorder;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mModifyRecorder:Lcom/vivo/common/autobrightness/UserModifyRecorder;

    .line 139
    invoke-virtual {p0}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->onSystemReady()V

    .line 140
    return-void
.end method

.method static synthetic access$000(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;)F
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    .prologue
    .line 35
    iget v0, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mBrightnessRatio:F

    return v0
.end method

.method static synthetic access$1000(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mWaitToRestoreMode:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mWaitToRestoreMode:Z

    return p1
.end method

.method static synthetic access$102(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;F)F
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;
    .param p1, "x1"    # F

    .prologue
    .line 35
    iput p1, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mBrightnessRatio:F

    return p1
.end method

.method static synthetic access$1100(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    .prologue
    .line 35
    iget v0, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mLastScreenMode:I

    return v0
.end method

.method static synthetic access$1200(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->bBrightnessRestoreStatus:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mScreenBrightnessModeOffBy:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->USE_PRELAST_PKG_LIST:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # [Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->isInList(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    .prologue
    .line 35
    iget v0, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mPreLastScreenBrightness:I

    return v0
.end method

.method static synthetic access$1800(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    .prologue
    .line 35
    iget v0, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mBeforeChengedScreenBrightness:I

    return v0
.end method

.method static synthetic access$1900(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;)Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$RestoreHandler;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mRestoreHandler:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$RestoreHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;)Lcom/vivo/common/autobrightness/CameraLumaCallback$BrightnessRatioCallback;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mRatioCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$BrightnessRatioCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;IIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->onForegroundActivitiesChangedInner(IIZ)V

    return-void
.end method

.method static synthetic access$500(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;II)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->onProcessDiedInner(II)V

    return-void
.end method

.method static synthetic access$600(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->onGetSettingsInner(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;IILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->onGetSettingsInner(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    .prologue
    .line 35
    iget v0, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mLastScreenBrightness:I

    return v0
.end method

.method static synthetic access$900(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mWaitToRestoreBrightness:Z

    return v0
.end method

.method static synthetic access$902(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mWaitToRestoreBrightness:Z

    return p1
.end method

.method private getAppNameFromUid(I)Ljava/lang/String;
    .locals 4
    .param p1, "uid"    # I

    .prologue
    .line 709
    move v0, p1

    .line 710
    .local v0, "uidInt":I
    const-string v1, "ScreenBrightnessModeRestore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pakage name is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "with :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    iget-object v1, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance(Landroid/content/Context;Landroid/os/Looper;)Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 143
    sget-object v1, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 144
    :try_start_0
    sget-object v0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mInstance:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    invoke-direct {v0, p0, p1}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    sput-object v0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mInstance:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    .line 147
    :cond_0
    sget-object v0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mInstance:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    monitor-exit v1

    return-object v0

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isAuto(I)Z
    .locals 1
    .param p1, "mode"    # I

    .prologue
    const/4 v0, 0x1

    .line 462
    if-ne p1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInList(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "list"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 431
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 441
    :cond_0
    :goto_0
    return v4

    .line 434
    :cond_1
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 435
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 436
    const/4 v4, 0x1

    goto :goto_0

    .line 434
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 168
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    const-string v0, "ScreenBrightnessModeRestore"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_0
    return-void
.end method

.method private onForegroundActivitiesChangedInner(IIZ)V
    .locals 6
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "foregroundActivities"    # Z

    .prologue
    const-wide/16 v4, 0x2

    const/4 v3, -0x1

    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onForegroundActivitiesChangedInner pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCurrentForceGroundPid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mCurrentForceGroundPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mLastForceGroundPid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mLastForceGroundPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->log(Ljava/lang/String;)V

    .line 317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onForegroundActivitiesChangedInner mWaitToRestore="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mWaitToRestore:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mWaitToRollbackChangedBrightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mWaitToRollbackChangedBrightness:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->log(Ljava/lang/String;)V

    .line 320
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isUseBrightnessSceneRatio()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p3, :cond_0

    .line 321
    iget-object v1, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mRestoreHandler:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$RestoreHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$RestoreHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 322
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 323
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 324
    iget-object v1, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mRestoreHandler:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$RestoreHandler;

    invoke-virtual {v1, v0}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$RestoreHandler;->sendMessage(Landroid/os/Message;)Z

    .line 328
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    if-eqz p3, :cond_1

    .line 329
    iget-object v1, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mModifyRecorder:Lcom/vivo/common/autobrightness/UserModifyRecorder;

    invoke-virtual {v1, p2}, Lcom/vivo/common/autobrightness/UserModifyRecorder;->onForegroundActivitiesChanged(I)V

    .line 332
    :cond_1
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isBrightnessModeRestore()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 333
    iget v1, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mLastForceGroundPid:I

    if-eq v1, v3, :cond_2

    iget v1, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mCurrentForceGroundPid:I

    iget v2, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mLastForceGroundPid:I

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mLastForceGroundPid:I

    if-eq p1, v1, :cond_2

    .line 335
    iget-object v1, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mPackageHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 349
    :cond_2
    :goto_0
    iput p1, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mCurrentForceGroundPid:I

    .line 350
    return-void

    .line 338
    :cond_3
    iget v1, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mLastForceGroundPid:I

    if-eq v1, v3, :cond_4

    iget v1, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mCurrentForceGroundPid:I

    iget v2, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mLastForceGroundPid:I

    if-ne v1, v2, :cond_4

    iget v1, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mLastForceGroundPid:I

    if-eq p1, v1, :cond_4

    iget-boolean v1, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mWaitToRestore:Z

    if-eqz v1, :cond_4

    .line 340
    iget-object v1, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mPackageHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 341
    :cond_4
    iget v1, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mLastForceGroundPid:I

    if-eq v1, v3, :cond_2

    iget v1, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mCurrentForceGroundPid:I

    iget v2, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mLastForceGroundPid:I

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mLastForceGroundPid:I

    if-eq p1, v1, :cond_2

    iget-boolean v1, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mWaitToRollbackChangedBrightness:Z

    if-eqz v1, :cond_2

    .line 344
    const-string v1, "onForegroundActivitiesChangedInner post mRunnableRollback"

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->log(Ljava/lang/String;)V

    .line 345
    iget-object v1, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mPackageHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mRunnableRollback:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private onGetSettingsInner(IILjava/lang/String;)V
    .locals 4
    .param p1, "brightness"    # I
    .param p2, "mode"    # I
    .param p3, "offBy"    # Ljava/lang/String;

    .prologue
    .line 606
    const/4 v0, 0x0

    .line 608
    .local v0, "modeChanged":Z
    const-string v1, "ScreenBrightnessModeRestore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGetSettingsInner bright:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mLastScreenBrightness:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", animating brightness:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " offBy:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    invoke-direct {p0, p2}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->isAuto(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 611
    iget v1, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mLastScreenBrightness:I

    iput v1, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mPreLastScreenBrightness:I

    .line 612
    iput p1, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mLastScreenBrightness:I

    .line 614
    :cond_0
    iget v1, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mLastScreenMode:I

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->isAuto(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p2}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->isAuto(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 615
    const/4 v0, 0x1

    .line 616
    const-string v1, "ScreenBrightnessModeRestore"

    const-string v2, "modeChanged"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :cond_1
    iput p2, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mLastScreenMode:I

    .line 620
    if-eqz p3, :cond_2

    .line 621
    iput-object p3, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mScreenBrightnessModeOffBy:Ljava/lang/String;

    .line 623
    :cond_2
    if-eqz v0, :cond_3

    .line 624
    const-string v1, "ScreenBrightnessModeRestore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Need this mCurrentForceGroundPid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mCurrentForceGroundPid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mLastForceGroundPid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mLastForceGroundPid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    iget v1, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mCurrentForceGroundPid:I

    iput v1, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mLastForceGroundPid:I

    .line 626
    sget-object v1, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->BLACK_MODE_PKG_LIST:[Ljava/lang/String;

    invoke-direct {p0, p3, v1}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->isInList(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mWaitToRestore:Z

    .line 628
    :cond_3
    invoke-direct {p0, p2}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->isAuto(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 629
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mWaitToRestore:Z

    .line 631
    :cond_4
    return-void
.end method

.method private onGetSettingsInner(IILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "brightness"    # I
    .param p2, "mode"    # I
    .param p3, "offBy"    # Ljava/lang/String;
    .param p4, "changeBy"    # Ljava/lang/String;

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 467
    iget v2, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mLastSettingBrightness:I

    if-ne v2, p1, :cond_0

    iget v2, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mLastSettingMode:I

    if-ne v2, p2, :cond_0

    iget-object v2, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mLastOffBy:Ljava/lang/String;

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mLastChangeBy:Ljava/lang/String;

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 471
    :cond_0
    iput p1, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mLastSettingBrightness:I

    .line 472
    iput p2, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mLastSettingMode:I

    .line 473
    iput-object p3, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mLastOffBy:Ljava/lang/String;

    .line 474
    iput-object p4, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mLastChangeBy:Ljava/lang/String;

    .line 481
    iget-object v2, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mModifyRecorder:Lcom/vivo/common/autobrightness/UserModifyRecorder;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/vivo/common/autobrightness/UserModifyRecorder;->onGetSettings(IILjava/lang/String;Ljava/lang/String;)V

    .line 483
    if-eqz p4, :cond_1

    const-string v2, "android"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    iget v2, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mLastScreenMode:I

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->bBrighnessInitStatus:Z

    if-eqz v2, :cond_5

    :cond_2
    if-ne p2, v6, :cond_5

    .line 484
    invoke-direct {p0, v6}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->setWriteFlag(Z)V

    .line 485
    iput-boolean v5, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->bBrighnessInitStatus:Z

    .line 490
    :goto_0
    sget-boolean v2, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->USE_RESTORE:Z

    if-nez v2, :cond_6

    .line 575
    :cond_3
    :goto_1
    return-void

    .line 476
    :cond_4
    const-string v2, "onGetSettingsInner same arg, no change."

    invoke-direct {p0, v2}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 487
    :cond_5
    invoke-direct {p0, v5}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->setWriteFlag(Z)V

    goto :goto_0

    .line 494
    :cond_6
    if-eqz p4, :cond_7

    .line 495
    sput-object p4, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mAutoBacklightChangeBy:Ljava/lang/String;

    .line 497
    :cond_7
    const/4 v0, 0x0

    .line 498
    .local v0, "modeChanged":Z
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isBrightnessModeRestore()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 499
    const-string v2, "ScreenBrightnessModeRestore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onGetSettingsInner_111 bright:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mLastScreenBrightness:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", animating brightness:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " offBy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " changeBy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    if-eqz p3, :cond_8

    .line 502
    sget-object v2, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->WHITE_MODE_PKG_LIST:[Ljava/lang/String;

    invoke-direct {p0, p3, v2}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->isInList(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 504
    iput p2, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mLastScreenMode:I

    .line 511
    :cond_8
    :goto_2
    if-eqz p4, :cond_3

    .line 513
    sget-object v2, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->WHITE_MODE_PKG_LIST:[Ljava/lang/String;

    invoke-direct {p0, p4, v2}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->isInList(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 515
    const-string v2, "ScreenBrightnessModeRestore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onGetSettingsInner_222 mLastScreenBrightness:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mLastScreenBrightness:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iput p1, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mLastScreenBrightness:I

    goto/16 :goto_1

    .line 507
    :cond_9
    iget v2, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mCurrentForceGroundPid:I

    iput v2, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mLastForceGroundPid:I

    .line 508
    iput-boolean v6, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mWaitToRestoreMode:Z

    goto :goto_2

    .line 520
    :cond_a
    const-string v2, "ScreenBrightnessModeRestore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onGetSettingsInner_333 mLastForceGroundPid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mLastForceGroundPid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    iget v2, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mCurrentForceGroundPid:I

    iput v2, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mLastForceGroundPid:I

    .line 522
    iput-boolean v6, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mWaitToRestoreBrightness:Z

    goto/16 :goto_1

    .line 526
    :cond_b
    const-string v2, "ScreenBrightnessModeRestore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onGetSettingsInner bright:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mLastScreenBrightness:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", animating brightness:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " offBy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " changeBy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget v1, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mRealtimeSettingBrightness:I

    .line 528
    .local v1, "tempPreBrightness":I
    iput p1, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mRealtimeSettingBrightness:I

    .line 529
    invoke-direct {p0, p2}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->isAuto(I)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 531
    iget v2, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mLastScreenBrightness:I

    iput v2, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mPreLastScreenBrightness:I

    .line 532
    iput p1, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mLastScreenBrightness:I

    .line 534
    :cond_c
    iget v2, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mLastScreenMode:I

    invoke-direct {p0, v2}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->isAuto(I)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-direct {p0, p2}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->isAuto(I)Z

    move-result v2

    if-nez v2, :cond_d

    .line 535
    const/4 v0, 0x1

    .line 536
    const-string v2, "ScreenBrightnessModeRestore"

    const-string v3, "modeChanged"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    :cond_d
    iput p2, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mLastScreenMode:I

    .line 540
    if-eqz p3, :cond_e

    .line 541
    iput-object p3, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mScreenBrightnessModeOffBy:Ljava/lang/String;

    .line 543
    :cond_e
    if-eqz v0, :cond_f

    .line 544
    const-string v2, "ScreenBrightnessModeRestore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Need this mCurrentForceGroundPid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mCurrentForceGroundPid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mLastForceGroundPid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mLastForceGroundPid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    iget v2, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mCurrentForceGroundPid:I

    iput v2, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mLastForceGroundPid:I

    .line 546
    sget-object v2, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->BLACK_MODE_PKG_LIST:[Ljava/lang/String;

    invoke-direct {p0, p3, v2}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->isInList(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mWaitToRestore:Z

    .line 548
    :cond_f
    invoke-direct {p0, p2}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->isAuto(I)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 549
    iput-boolean v5, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mWaitToRestore:Z

    .line 552
    :cond_10
    invoke-direct {p0, p2}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->isAuto(I)Z

    move-result v2

    if-nez v2, :cond_13

    .line 553
    iget-object v2, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mScreenBrightnessChangedBy:Ljava/lang/String;

    if-eqz v2, :cond_3

    if-eqz p4, :cond_3

    .line 554
    sget-object v2, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->BLACK_MODE_PKG_LIST:[Ljava/lang/String;

    invoke-direct {p0, p4, v2}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->isInList(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 555
    iget-object v2, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mScreenBrightnessChangedBy:Ljava/lang/String;

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 556
    iget v2, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mCurrentForceGroundPid:I

    iput v2, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mLastForceGroundPid:I

    .line 557
    iput-boolean v6, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mWaitToRollbackChangedBrightness:Z

    .line 558
    iput v1, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mBeforeChengedScreenBrightness:I

    .line 559
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGetSettingsInner mWaitToRollbackChangedBrightness:true mLastForceGroundPid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mLastForceGroundPid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mBeforeChengedScreenBrightness:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mBeforeChengedScreenBrightness:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->log(Ljava/lang/String;)V

    .line 565
    :cond_11
    :goto_3
    iput-object p4, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mScreenBrightnessChangedBy:Ljava/lang/String;

    goto/16 :goto_1

    .line 562
    :cond_12
    iput-boolean v5, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mWaitToRollbackChangedBrightness:Z

    .line 563
    iput v7, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mBeforeChengedScreenBrightness:I

    goto :goto_3

    .line 568
    :cond_13
    iget-boolean v2, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mWaitToRollbackChangedBrightness:Z

    if-eqz v2, :cond_3

    .line 569
    iput-boolean v5, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mWaitToRollbackChangedBrightness:Z

    .line 570
    iput v7, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mBeforeChengedScreenBrightness:I

    .line 571
    iput-object p4, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mScreenBrightnessChangedBy:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method private onProcessDiedInner(II)V
    .locals 6
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .prologue
    const-wide/16 v4, 0x2

    .line 353
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isBrightnessModeRestore()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 354
    invoke-direct {p0, p2}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->getAppNameFromUid(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mAppName:Ljava/lang/String;

    .line 355
    const-string v0, "ScreenBrightnessModeRestore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onProcessDiedInner, pid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , mCurrentForceGroundPid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mCurrentForceGroundPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mAppName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mAppName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mWaitToRestore="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mWaitToRestore:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v0, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mAppName:Ljava/lang/String;

    sget-object v1, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->WHITE_MODE_PKG_LIST:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->isInList(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mPackageHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    iget-boolean v0, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mWaitToRestore:Z

    if-eqz v0, :cond_2

    .line 361
    invoke-direct {p0, p2}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->getAppNameFromUid(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mAppName:Ljava/lang/String;

    .line 362
    const-string v0, "ScreenBrightnessModeRestore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onProcessDiedInner, pid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , mCurrentForceGroundPid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mCurrentForceGroundPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mAppName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mAppName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mWaitToRestore="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mWaitToRestore:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v0, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mAppName:Ljava/lang/String;

    sget-object v1, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->BLACK_MODE_PKG_LIST:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->isInList(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mPackageHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 366
    :cond_2
    iget-boolean v0, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mWaitToRollbackChangedBrightness:Z

    if-eqz v0, :cond_0

    .line 367
    invoke-direct {p0, p2}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->getAppNameFromUid(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mAppName:Ljava/lang/String;

    .line 368
    const-string v0, "ScreenBrightnessModeRestore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onProcessDiedInner, pid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , mCurrentForceGroundPid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mCurrentForceGroundPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mAppName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mAppName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mWaitToRollbackChangedBrightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mWaitToRollbackChangedBrightness:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v0, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mAppName:Ljava/lang/String;

    sget-object v1, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->BLACK_MODE_PKG_LIST:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->isInList(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    const-string v0, "onProcessDiedInner post mRunnableRollback"

    invoke-direct {p0, v0}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->log(Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mPackageHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mRunnableRollback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method private registerProcessObserver()V
    .locals 3

    .prologue
    .line 408
    :try_start_0
    sget-object v1, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mIActivityManager:Landroid/app/IActivityManager;

    if-eqz v1, :cond_0

    .line 409
    sget-object v1, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mIActivityManager:Landroid/app/IActivityManager;

    iget-object v2, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 410
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mRegisteredProcessObserver:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 412
    :catch_0
    move-exception v0

    .line 413
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "registerProcessObserver failed."

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setWriteFlag(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .prologue
    .line 704
    const-string v0, "ScreenBrightnessModeRestore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWriteFlag flag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    iput-boolean p1, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->shouldWriteBackToSettings:Z

    .line 706
    return-void
.end method

.method private unregisterProcessObserver()V
    .locals 3

    .prologue
    .line 420
    :try_start_0
    sget-object v1, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mIActivityManager:Landroid/app/IActivityManager;

    if-eqz v1, :cond_0

    .line 421
    sget-object v1, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mIActivityManager:Landroid/app/IActivityManager;

    iget-object v2, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    .line 422
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mRegisteredProcessObserver:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 424
    :catch_0
    move-exception v0

    .line 425
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "registerProcessObserver failed."

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->log(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getBrightnessRatio()F
    .locals 1

    .prologue
    .line 156
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isUseBrightnessSceneRatio()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    const/high16 v0, 0x3f800000    # 1.0f

    .line 159
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mBrightnessRatio:F

    goto :goto_0
.end method

.method public getBrightnessRestoreStatus()Z
    .locals 1

    .prologue
    .line 724
    iget-boolean v0, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->bBrightnessRestoreStatus:Z

    return v0
.end method

.method public onGetSettings(IILjava/lang/String;)V
    .locals 3
    .param p1, "brightness"    # I
    .param p2, "mode"    # I
    .param p3, "offBy"    # Ljava/lang/String;

    .prologue
    .line 634
    sget-boolean v1, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->USE_RESTORE:Z

    if-nez v1, :cond_0

    .line 644
    :goto_0
    return-void

    .line 639
    :cond_0
    iget-object v1, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mRestoreHandler:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$RestoreHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$RestoreHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 640
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 641
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 642
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 643
    iget-object v1, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mRestoreHandler:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$RestoreHandler;

    invoke-virtual {v1, v0}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$RestoreHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onGetSettings(IILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "brightness"    # I
    .param p2, "mode"    # I
    .param p3, "offBy"    # Ljava/lang/String;
    .param p4, "changeBy"    # Ljava/lang/String;

    .prologue
    .line 579
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isDebug()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 580
    const-string v3, "ScreenBrightnessModeRestore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onGetSettings brightness="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " offBy="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " changeBy="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mLastScreenMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mLastScreenMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :cond_0
    if-eqz p3, :cond_1

    if-nez p4, :cond_4

    .line 583
    :cond_1
    const-string v4, "ScreenBrightnessModeRestore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onGetSettings invalid arg: offBy="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez p3, :cond_2

    const-string v3, "NULL"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " changeBy="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez p4, :cond_3

    const-string v3, "NULL"

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    :goto_2
    return-void

    .line 583
    :cond_2
    const-string v3, "NotNULL"

    goto :goto_0

    :cond_3
    const-string v3, "NotNULL"

    goto :goto_1

    .line 588
    :cond_4
    iget-object v3, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mRestoreHandler:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$RestoreHandler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$RestoreHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 589
    .local v1, "msg":Landroid/os/Message;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 591
    .local v2, "obj":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "offBy"

    invoke-virtual {v2, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 592
    const-string v3, "changeBy"

    invoke-virtual {v2, v3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 598
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 599
    iput p2, v1, Landroid/os/Message;->arg2:I

    .line 600
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 601
    iget-object v3, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mRestoreHandler:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$RestoreHandler;

    invoke-virtual {v3, v1}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$RestoreHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 593
    :catch_0
    move-exception v0

    .line 595
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "ScreenBrightnessModeRestore"

    const-string v4, "onGetSettings JSON put exception."

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public onSystemReady()V
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 445
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mSystemReady:Z

    .line 446
    sget-boolean v0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->USE_RESTORE:Z

    if-nez v0, :cond_0

    .line 459
    :goto_0
    return-void

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "screen_brightness_mode_off_by"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 451
    iget-object v0, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "screen_brightness_change_by"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 452
    iget-object v0, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "screen_brightness_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mLastScreenMode:I

    .line 455
    iget-object v0, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "screen_brightness"

    const/16 v2, 0x70

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mLastScreenBrightness:I

    .line 458
    invoke-direct {p0}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->registerProcessObserver()V

    goto :goto_0
.end method

.method public setBrightnessRatioCallback(Lcom/vivo/common/autobrightness/CameraLumaCallback$BrightnessRatioCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/vivo/common/autobrightness/CameraLumaCallback$BrightnessRatioCallback;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mRatioCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$BrightnessRatioCallback;

    .line 153
    return-void
.end method

.method public setBrightnessRestoreStatus(Z)V
    .locals 3
    .param p1, "bStatus"    # Z

    .prologue
    .line 719
    iput-boolean p1, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->bBrightnessRestoreStatus:Z

    .line 720
    const-string v0, "ScreenBrightnessModeRestore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "xuguodong bBrightnessRestoreStatus ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->bBrightnessRestoreStatus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    return-void
.end method

.method public setPowerSaving(Z)V
    .locals 1
    .param p1, "saving"    # Z

    .prologue
    .line 715
    iget-object v0, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mModifyRecorder:Lcom/vivo/common/autobrightness/UserModifyRecorder;

    invoke-virtual {v0, p1}, Lcom/vivo/common/autobrightness/UserModifyRecorder;->setPowerSaving(Z)V

    .line 716
    return-void
.end method

.method public setUseAutoBrightness(Z)V
    .locals 3
    .param p1, "use"    # Z

    .prologue
    .line 697
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 698
    const-string v0, "ScreenBrightnessModeRestore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUseAutoBrightness use="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    :cond_0
    iput-boolean p1, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mUseAutoBrightness:Z

    .line 701
    return-void
.end method

.method public setUserBrightnessCallback(Lcom/vivo/common/autobrightness/CameraLumaCallback$ModeRestoreCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/vivo/common/autobrightness/CameraLumaCallback$ModeRestoreCallback;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$ModeRestoreCallback;

    .line 164
    iget-object v0, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mModifyRecorder:Lcom/vivo/common/autobrightness/UserModifyRecorder;

    iget-object v1, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$ModeRestoreCallback;

    invoke-virtual {v0, v1}, Lcom/vivo/common/autobrightness/UserModifyRecorder;->setCallback(Lcom/vivo/common/autobrightness/CameraLumaCallback$ModeRestoreCallback;)V

    .line 165
    return-void
.end method

.method public setbacklight(I)V
    .locals 3
    .param p1, "backlight"    # I

    .prologue
    .line 685
    iget-object v1, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mModifyRecorder:Lcom/vivo/common/autobrightness/UserModifyRecorder;

    invoke-virtual {v1, p1}, Lcom/vivo/common/autobrightness/UserModifyRecorder;->onLcmBacklighChanged(I)V

    .line 688
    iget-object v1, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mRestoreHandler:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$RestoreHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$RestoreHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 689
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 690
    iget-object v1, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mRestoreHandler:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$RestoreHandler;

    invoke-virtual {v1, v0}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$RestoreHandler;->sendMessage(Landroid/os/Message;)Z

    .line 691
    return-void
.end method

.method public setbacklightInner(I)V
    .locals 3
    .param p1, "backlight"    # I

    .prologue
    .line 649
    iget-object v0, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mModifyRecorder:Lcom/vivo/common/autobrightness/UserModifyRecorder;

    invoke-virtual {v0, p1}, Lcom/vivo/common/autobrightness/UserModifyRecorder;->onLcmBacklighChanged(I)V

    .line 651
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 652
    const-string v0, "ScreenBrightnessModeRestore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setbacklight shouldWriteBackToSettings="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->shouldWriteBackToSettings:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mBacklightMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mUseAutoBrightness:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    :cond_0
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isUseRgbSensor()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 655
    iget-boolean v0, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->shouldWriteBackToSettings:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mUseAutoBrightness:Z

    if-eqz v0, :cond_4

    .line 656
    if-lez p1, :cond_3

    .line 657
    const-string v0, "ScreenBrightnessModeRestore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " backlight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    iget-object v0, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "screen_brightness"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 679
    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->shouldWriteBackToSettings:Z

    .line 681
    :cond_2
    return-void

    .line 660
    :cond_3
    const-string v0, "ScreenBrightnessModeRestore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " backlight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", this value should not be written back to settings db"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 664
    :cond_4
    const-string v0, "ScreenBrightnessModeRestore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAutoBacklightChangeBy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mAutoBacklightChangeBy:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    sget-object v0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mAutoBacklightChangeBy:Ljava/lang/String;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mAutoBacklightChangeBy:Ljava/lang/String;

    const-string v1, "com.bbk.SuperPowerSave"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 666
    const-string v0, "ScreenBrightnessModeRestore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "****backlight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 667
    :cond_5
    iget-boolean v0, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mUseAutoBrightness:Z

    if-eqz v0, :cond_1

    if-lez p1, :cond_1

    .line 668
    const-string v0, "ScreenBrightnessModeRestore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "++++++backlight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    iget-object v0, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$ModeRestoreCallback;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mAutoBacklightChangeBy:Ljava/lang/String;

    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mAutoBacklightChangeBy:Ljava/lang/String;

    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mAutoBacklightChangeBy:Ljava/lang/String;

    const-string v1, "com.vivo.upslide"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 673
    :cond_6
    iget-object v0, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$ModeRestoreCallback;

    invoke-interface {v0, p1}, Lcom/vivo/common/autobrightness/CameraLumaCallback$ModeRestoreCallback;->setSecondUserBrightness(I)V

    goto/16 :goto_0

    .line 675
    :cond_7
    const-string v0, "ScreenBrightnessModeRestore"

    const-string v1, "setbacklight mCallback is NULL."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
