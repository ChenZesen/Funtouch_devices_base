.class public Lcom/android/server/VivoSmartMultiWindowMgr;
.super Ljava/lang/Object;
.source "VivoSmartMultiWindowMgr.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation


# static fields
.field public static final ALLOW_SPLIT:Ljava/lang/String; = "vivo_smartmulitwindow_is_allowed_split"

.field static final DEBUG_SMARTMULTIWINDOW_ALL:Z

.field static final DEBUG_SMARTMULTIWINDOW_IMPORTANT:Z

.field public static final DEFAULT_SCALE_VALUE:F = 0.45f

.field public static final DISPLAYINFO_LEN:I = 0x10

.field public static G_WEIXIN_ACTIVITY:Ljava/lang/String; = null

.field public static G_WEIXIN_CHATACTIVITY:Ljava/lang/String; = null

.field public static G_WEIXIN_CHATACTIVITY_TOKEN:Ljava/lang/String; = null

.field public static G_WEIXIN_MAINACTIVITY:Ljava/lang/String; = null

.field public static G_WEIXIN_PKG:Ljava/lang/String; = null

.field public static final HOME_STACK_ID:I = 0x0

.field static final INSTANCE:Lcom/android/server/VivoSmartMultiWindowMgr;

.field public static final MINILAUNCHER1_CLS:Ljava/lang/String; = "com.vivo.minilauncher1.Launcher"

.field public static final MINILAUNCHER1_PKG:Ljava/lang/String; = "com.vivo.minilauncher1"

.field public static final MINILAUNCHER2_CLS:Ljava/lang/String; = "com.vivo.minilauncher2.Launcher"

.field public static final MINILAUNCHER2_PKG:Ljava/lang/String; = "com.vivo.minilauncher2"

.field public static final SMARTMULTIWINDOW_PKG:Ljava/lang/String; = "com.vivo.smartmultiwindow"

.field static final TAG_AMS_SERVICE:Ljava/lang/String; = "AMS"

.field static final TAG_IMPORTANT:Ljava/lang/String; = "vivo_debug_info_VivoSmartMultiWindowMgr"

.field static final TAG_WMS_SERVICE:Ljava/lang/String; = "WMS"


# instance fields
.field public allowSplitApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private getAllowSplitApps:Z

.field private getMustFullScreenActivity:Z

.field public handleAppDied:Z

.field public isFocusedStackChange:Z

.field public isGoingToExitSmartMultiWindow:Z

.field public isVivoMovingTaskToStack:Z

.field public mAllowSplit:I

.field private mAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

.field public mAnimation:Z

.field public mAnotherWindowNeedPaused:Z

.field public mBottomStackActivity:Ljava/lang/String;

.field public mBottomStackId:I

.field public mBottomStackRect:Landroid/graphics/Rect;

.field public mDisplayInfo:[F

.field public mDisplayReady:Z

.field public mDragToFullScreenIndex:I

.field public mExecuteAppTransition:I

.field public mExitByRecentTask:Z

.field public mFirstStartSplit:Z

.field public mFocusedStackId:I

.field public mFocusedWindowIndex:I

.field public mFullScreenPrepare:Z

.field public mHasSplitActivity:Z

.field public mImeWindowVis:I

.field public mLastSplitMode:Z

.field public mLocalConfigList:[Lcom/android/server/ScreenLandPortParm;

.field public mLockInputMontor:Z

.field public mMustChangeFocusedStack:Z

.field public mNeedDrawFrameLayer:Z

.field public mNeedSplitModeAnim:Z

.field public mNotifyDraw:Z

.field public mNotifySplitMode:Z

.field public mOneDisplayLandInfo:[F

.field public mOneDisplayPortInfo:[F

.field public mRecentRotation:I

.field public mSensorActuallyRotation:I

.field public mSetResize:Z

.field public mSourceRecordPkgOne:Ljava/lang/String;

.field public mSourceRecordPkgTwo:Ljava/lang/String;

.field public mSpeicalApp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mSplitMode:Z

.field public mStackDisplayModeList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mStackRectList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field public mStartSplitNoExecuteAppTransition:Z

.field public mSwitchWindowKey:I

.field public mTmpDisplayMode:I

.field public mTopStackActivity:Ljava/lang/String;

.field public mTopStackId:I

.field public mTopStackRect:Landroid/graphics/Rect;

.field private mWmsInstance:Lcom/android/server/wm/VivoSmartMultiWindowWms;

.field public mustFullScreenActivitys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public taskResumed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    sget-boolean v0, Landroid/util/VivoSmartMultiWindowConfig;->DEBUG_ALL:Z

    sput-boolean v0, Lcom/android/server/VivoSmartMultiWindowMgr;->DEBUG_SMARTMULTIWINDOW_ALL:Z

    .line 29
    sget-boolean v0, Landroid/util/VivoSmartMultiWindowConfig;->DEBUG_IMPORTANT:Z

    sput-boolean v0, Lcom/android/server/VivoSmartMultiWindowMgr;->DEBUG_SMARTMULTIWINDOW_IMPORTANT:Z

    .line 33
    new-instance v0, Lcom/android/server/VivoSmartMultiWindowMgr;

    invoke-direct {v0}, Lcom/android/server/VivoSmartMultiWindowMgr;-><init>()V

    sput-object v0, Lcom/android/server/VivoSmartMultiWindowMgr;->INSTANCE:Lcom/android/server/VivoSmartMultiWindowMgr;

    .line 104
    const-string v0, "com.tencent.mm"

    sput-object v0, Lcom/android/server/VivoSmartMultiWindowMgr;->G_WEIXIN_PKG:Ljava/lang/String;

    .line 105
    const-string v0, "com.tencent.mm.ui.LauncherUI"

    sput-object v0, Lcom/android/server/VivoSmartMultiWindowMgr;->G_WEIXIN_MAINACTIVITY:Ljava/lang/String;

    .line 106
    const-string v0, "com.tencent.mm.ui.chatting.ChattingUI"

    sput-object v0, Lcom/android/server/VivoSmartMultiWindowMgr;->G_WEIXIN_CHATACTIVITY:Ljava/lang/String;

    .line 107
    const-string v0, "com.tencent.mm/.ui.LauncherUI"

    sput-object v0, Lcom/android/server/VivoSmartMultiWindowMgr;->G_WEIXIN_ACTIVITY:Ljava/lang/String;

    .line 108
    const-string v0, "com.tencent.mm/.ui.chatting.ChattingUI"

    sput-object v0, Lcom/android/server/VivoSmartMultiWindowMgr;->G_WEIXIN_CHATACTIVITY_TOKEN:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, 0x10

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput v1, p0, Lcom/android/server/VivoSmartMultiWindowMgr;->mImeWindowVis:I

    .line 46
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/server/ScreenLandPortParm;

    iput-object v0, p0, Lcom/android/server/VivoSmartMultiWindowMgr;->mLocalConfigList:[Lcom/android/server/ScreenLandPortParm;

    .line 48
    const/16 v0, 0x20

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/VivoSmartMultiWindowMgr;->mDisplayInfo:[F

    .line 49
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/android/server/VivoSmartMultiWindowMgr;->mOneDisplayPortInfo:[F

    .line 50
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/android/server/VivoSmartMultiWindowMgr;->mOneDisplayLandInfo:[F

    .line 51
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/VivoSmartMultiWindowMgr;->mStackDisplayModeList:Landroid/util/SparseArray;

    .line 52
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/VivoSmartMultiWindowMgr;->mStackRectList:Landroid/util/SparseArray;

    .line 53
    iput-boolean v1, p0, Lcom/android/server/VivoSmartMultiWindowMgr;->mSplitMode:Z

    .line 58
    iput-object v2, p0, Lcom/android/server/VivoSmartMultiWindowMgr;->mAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    .line 59
    iput-object v2, p0, Lcom/android/server/VivoSmartMultiWindowMgr;->mWmsInstance:Lcom/android/server/wm/VivoSmartMultiWindowWms;

    .line 61
    iput v3, p0, Lcom/android/server/VivoSmartMultiWindowMgr;->mDragToFullScreenIndex:I

    .line 62
    iput v1, p0, Lcom/android/server/VivoSmartMultiWindowMgr;->mSwitchWindowKey:I

    .line 63
    iput-object v2, p0, Lcom/android/server/VivoSmartMultiWindowMgr;->mSourceRecordPkgOne:Ljava/lang/String;

    .line 64
    iput-object v2, p0, Lcom/android/server/VivoSmartMultiWindowMgr;->mSourceRecordPkgTwo:Ljava/lang/String;

    .line 65
    iput v1, p0, Lcom/android/server/VivoSmartMultiWindowMgr;->mFocusedWindowIndex:I

    .line 66
    iput-boolean v1, p0, Lcom/android/server/VivoSmartMultiWindowMgr;->mAnotherWindowNeedPaused:Z

    .line 67
    iput-boolean v1, p0, Lcom/android/server/VivoSmartMultiWindowMgr;->mDisplayReady:Z

    .line 68
    iput v3, p0, Lcom/android/server/VivoSmartMultiWindowMgr;->mSensorActuallyRotation:I

    .line 69
    iput v1, p0, Lcom/android/server/VivoSmartMultiWindowMgr;->mAllowSplit:I

    .line 70
    iput-boolean v1, p0, Lcom/android/server/VivoSmartMultiWindowMgr;->isFocusedStackChange:Z

    .line 71
    iput-boolean v1, p0, Lcom/android/server/VivoSmartMultiWindowMgr;->getAllowSplitApps:Z

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/VivoSmartMultiWindowMgr;->allowSplitApps:Ljava/util/ArrayList;

    .line 74
    iput-boolean v1, p0, Lcom/android/server/VivoSmartMultiWindowMgr;->getMustFullScreenActivity:Z

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/VivoSmartMultiWindowMgr;->mustFullScreenActivitys:Ljava/util/ArrayList;

    .line 77
    iput v3, p0, Lcom/android/server/VivoSmartMultiWindowMgr;->mTopStackId:I

    .line 78
    iput v3, p0, Lcom/android/server/VivoSmartMultiWindowMgr;->mBottomStackId:I

    .line 80
    iput v1, p0, Lcom/android/server/VivoSmartMultiWindowMgr;->mTmpDisplayMode:I

    .line 82
    iput-boolean v1, p0, Lcom/android/server/VivoSmartMultiWindowMgr;->mLockInputMontor:Z

    .line 85
    iput-boolean v1, p0, Lcom/android/server/VivoSmartMultiWindowMgr;->mNeedSplitModeAnim:Z

    .line 88
    iput-boolean v1, p0, Lcom/android/server/VivoSmartMultiWindowMgr;->mNeedDrawFrameLayer:Z

    .line 90
    iput v3, p0, Lcom/android/server/VivoSmartMultiWindowMgr;->mFocusedStackId:I

    .line 92
    iput-boolean v1, p0, Lcom/android/server/VivoSmartMultiWindowMgr;->isGoingToExitSmartMultiWindow:Z

    .line 93
    iput-boolean v1, p0, Lcom/android/server/VivoSmartMultiWindowMgr;->mAnimation:Z

    .line 94
    iput-boolean v1, p0, Lcom/android/server/VivoSmartMultiWindowMgr;->mSetResize:Z

    .line 96
    iput-boolean v1, p0, Lcom/android/server/VivoSmartMultiWindowMgr;->mStartSplitNoExecuteAppTransition:Z

    .line 97
    iput-boolean v1, p0, Lcom/android/server/VivoSmartMultiWindowMgr;->mHasSplitActivity:Z

    .line 98
    iput-boolean v1, p0, Lcom/android/server/VivoSmartMultiWindowMgr;->mFirstStartSplit:Z

    .line 99
    iput-boolean v1, p0, Lcom/android/server/VivoSmartMultiWindowMgr;->taskResumed:Z

    .line 100
    iput-boolean v1, p0, Lcom/android/server/VivoSmartMultiWindowMgr;->mNotifyDraw:Z

    .line 101
    iput v1, p0, Lcom/android/server/VivoSmartMultiWindowMgr;->mExecuteAppTransition:I

    .line 102
    iput-boolean v1, p0, Lcom/android/server/VivoSmartMultiWindowMgr;->handleAppDied:Z

    .line 103
    iput-boolean v1, p0, Lcom/android/server/VivoSmartMultiWindowMgr;->isVivoMovingTaskToStack:Z

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/VivoSmartMultiWindowMgr;->mSpeicalApp:Ljava/util/HashMap;

    .line 113
    iput-boolean v1, p0, Lcom/android/server/VivoSmartMultiWindowMgr;->mMustChangeFocusedStack:Z

    .line 114
    iput-boolean v1, p0, Lcom/android/server/VivoSmartMultiWindowMgr;->mLastSplitMode:Z

    .line 115
    iput-boolean v1, p0, Lcom/android/server/VivoSmartMultiWindowMgr;->mNotifySplitMode:Z

    .line 116
    iput-boolean v1, p0, Lcom/android/server/VivoSmartMultiWindowMgr;->mFullScreenPrepare:Z

    .line 118
    iput-boolean v1, p0, Lcom/android/server/VivoSmartMultiWindowMgr;->mExitByRecentTask:Z

    .line 119
    iput-object v2, p0, Lcom/android/server/VivoSmartMultiWindowMgr;->mTopStackActivity:Ljava/lang/String;

    .line 120
    iput-object v2, p0, Lcom/android/server/VivoSmartMultiWindowMgr;->mTopStackRect:Landroid/graphics/Rect;

    .line 121
    iput-object v2, p0, Lcom/android/server/VivoSmartMultiWindowMgr;->mBottomStackActivity:Ljava/lang/String;

    .line 122
    iput-object v2, p0, Lcom/android/server/VivoSmartMultiWindowMgr;->mBottomStackRect:Landroid/graphics/Rect;

    .line 123
    iput v1, p0, Lcom/android/server/VivoSmartMultiWindowMgr;->mRecentRotation:I

    .line 127
    return-void
.end method

.method public static getInstance()Lcom/android/server/VivoSmartMultiWindowMgr;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lcom/android/server/VivoSmartMultiWindowMgr;->INSTANCE:Lcom/android/server/VivoSmartMultiWindowMgr;

    return-object v0
.end method


# virtual methods
.method public GetAllowSplitAppsReady()Z
    .locals 1

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/android/server/VivoSmartMultiWindowMgr;->getAllowSplitApps:Z

    return v0
.end method

.method public final getDisplayInfo(I)[F
    .locals 1
    .param p1, "rotate"    # I

    .prologue
    .line 196
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/android/server/VivoSmartMultiWindowMgr;->mOneDisplayLandInfo:[F

    .line 202
    :goto_0
    return-object v0

    .line 199
    :cond_1
    if-eqz p1, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 200
    :cond_2
    iget-object v0, p0, Lcom/android/server/VivoSmartMultiWindowMgr;->mOneDisplayPortInfo:[F

    goto :goto_0

    .line 202
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getLocalConfiguration(Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;
    .locals 3
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "landscape"    # Z

    .prologue
    .line 274
    if-nez p1, :cond_0

    .line 281
    :goto_0
    return-object p1

    .line 277
    :cond_0
    if-eqz p2, :cond_1

    new-instance v0, Lcom/android/server/ScreenLandPortParm;

    iget-object v1, p0, Lcom/android/server/VivoSmartMultiWindowMgr;->mLocalConfigList:[Lcom/android/server/ScreenLandPortParm;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Lcom/android/server/ScreenLandPortParm;-><init>(Lcom/android/server/ScreenLandPortParm;)V

    .line 280
    .local v0, "param":Lcom/android/server/ScreenLandPortParm;
    :goto_1
    invoke-virtual {p0, p1, v0}, Lcom/android/server/VivoSmartMultiWindowMgr;->updateConfiguration(Landroid/content/res/Configuration;Lcom/android/server/ScreenLandPortParm;)V

    goto :goto_0

    .line 277
    .end local v0    # "param":Lcom/android/server/ScreenLandPortParm;
    :cond_1
    new-instance v0, Lcom/android/server/ScreenLandPortParm;

    iget-object v1, p0, Lcom/android/server/VivoSmartMultiWindowMgr;->mLocalConfigList:[Lcom/android/server/ScreenLandPortParm;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Lcom/android/server/ScreenLandPortParm;-><init>(Lcom/android/server/ScreenLandPortParm;)V

    goto :goto_1
.end method

.method public final getLocalConfiguration(Z)Lcom/android/server/ScreenLandPortParm;
    .locals 4
    .param p1, "landscape"    # Z

    .prologue
    .line 188
    new-instance v1, Lcom/android/server/ScreenLandPortParm;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/android/server/ScreenLandPortParm;

    iget-object v2, p0, Lcom/android/server/VivoSmartMultiWindowMgr;->mLocalConfigList:[Lcom/android/server/ScreenLandPortParm;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-direct {v0, v2}, Lcom/android/server/ScreenLandPortParm;-><init>(Lcom/android/server/ScreenLandPortParm;)V

    :goto_0
    invoke-direct {v1, v0}, Lcom/android/server/ScreenLandPortParm;-><init>(Lcom/android/server/ScreenLandPortParm;)V

    return-object v1

    :cond_0
    new-instance v0, Lcom/android/server/ScreenLandPortParm;

    iget-object v2, p0, Lcom/android/server/VivoSmartMultiWindowMgr;->mLocalConfigList:[Lcom/android/server/ScreenLandPortParm;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-direct {v0, v2}, Lcom/android/server/ScreenLandPortParm;-><init>(Lcom/android/server/ScreenLandPortParm;)V

    goto :goto_0
.end method

.method public getMustFullScreenActivityReady()Z
    .locals 1

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/android/server/VivoSmartMultiWindowMgr;->getMustFullScreenActivity:Z

    return v0
.end method

.method public getSpecialConfigurationOrientation(Ljava/lang/String;)I
    .locals 3
    .param p1, "clsname"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 250
    if-nez p1, :cond_1

    .line 254
    :cond_0
    :goto_0
    return v1

    .line 253
    :cond_1
    iget-object v2, p0, Lcom/android/server/VivoSmartMultiWindowMgr;->mSpeicalApp:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 254
    .local v0, "orientation":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public getSplitDisplayInfo()[F
    .locals 1

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/android/server/VivoSmartMultiWindowMgr;->mDisplayReady:Z

    if-nez v0, :cond_0

    .line 208
    const/4 v0, 0x0

    .line 210
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/VivoSmartMultiWindowMgr;->mDisplayInfo:[F

    goto :goto_0
.end method

.method public isSplitMode()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/android/server/VivoSmartMultiWindowMgr;->mSplitMode:Z

    return v0
.end method

.method public setGetAllowSplitAppsState(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 227
    iput-boolean p1, p0, Lcom/android/server/VivoSmartMultiWindowMgr;->getAllowSplitApps:Z

    .line 228
    return-void
.end method

.method public setMustFullScreenActivityState(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 235
    iput-boolean p1, p0, Lcom/android/server/VivoSmartMultiWindowMgr;->getMustFullScreenActivity:Z

    .line 236
    return-void
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;Lcom/android/server/ScreenLandPortParm;)V
    .locals 1
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "param"    # Lcom/android/server/ScreenLandPortParm;

    .prologue
    .line 259
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    iget v0, p2, Lcom/android/server/ScreenLandPortParm;->orientation:I

    iput v0, p1, Landroid/content/res/Configuration;->orientation:I

    .line 263
    iget v0, p2, Lcom/android/server/ScreenLandPortParm;->screenWidthDp:I

    iput v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 264
    iget v0, p2, Lcom/android/server/ScreenLandPortParm;->screenHeightDp:I

    iput v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 265
    iget v0, p2, Lcom/android/server/ScreenLandPortParm;->smallestScreenWidthDp:I

    iput v0, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 266
    iget v0, p2, Lcom/android/server/ScreenLandPortParm;->densityDpi:I

    iput v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 267
    iget v0, p2, Lcom/android/server/ScreenLandPortParm;->compatScreenWidthDp:I

    iput v0, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    .line 268
    iget v0, p2, Lcom/android/server/ScreenLandPortParm;->compatScreenHeightDp:I

    iput v0, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    .line 269
    iget v0, p2, Lcom/android/server/ScreenLandPortParm;->compatSmallestScreenWidthDp:I

    iput v0, p1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    goto :goto_0
.end method

.method public updateSpecialConfiguration(Ljava/lang/String;I)V
    .locals 3
    .param p1, "clsname"    # Ljava/lang/String;
    .param p2, "orientation"    # I

    .prologue
    .line 239
    if-nez p1, :cond_0

    .line 247
    :goto_0
    return-void

    .line 242
    :cond_0
    sget-boolean v0, Lcom/android/server/VivoSmartMultiWindowMgr;->DEBUG_SMARTMULTIWINDOW_IMPORTANT:Z

    if-eqz v0, :cond_1

    .line 243
    const-string v0, "vivo_debug_info_VivoSmartMultiWindowMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSpecialConfiguration clsname = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", orientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/android/server/VivoSmartMultiWindowMgr;->mSpeicalApp:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public vivoConfigurationReady(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "rotatedconfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v2, 0x1

    .line 139
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    iget-object v1, p0, Lcom/android/server/VivoSmartMultiWindowMgr;->mLocalConfigList:[Lcom/android/server/ScreenLandPortParm;

    monitor-enter v1

    .line 143
    :try_start_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_2

    .line 145
    iget-object v0, p0, Lcom/android/server/VivoSmartMultiWindowMgr;->mLocalConfigList:[Lcom/android/server/ScreenLandPortParm;

    const/4 v2, 0x0

    new-instance v3, Lcom/android/server/ScreenLandPortParm;

    invoke-direct {v3, p1}, Lcom/android/server/ScreenLandPortParm;-><init>(Landroid/content/res/Configuration;)V

    aput-object v3, v0, v2

    .line 146
    iget-object v0, p0, Lcom/android/server/VivoSmartMultiWindowMgr;->mLocalConfigList:[Lcom/android/server/ScreenLandPortParm;

    const/4 v2, 0x1

    new-instance v3, Lcom/android/server/ScreenLandPortParm;

    invoke-direct {v3, p2}, Lcom/android/server/ScreenLandPortParm;-><init>(Landroid/content/res/Configuration;)V

    aput-object v3, v0, v2

    .line 147
    monitor-exit v1

    goto :goto_0

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 149
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/server/VivoSmartMultiWindowMgr;->mLocalConfigList:[Lcom/android/server/ScreenLandPortParm;

    const/4 v2, 0x1

    new-instance v3, Lcom/android/server/ScreenLandPortParm;

    invoke-direct {v3, p1}, Lcom/android/server/ScreenLandPortParm;-><init>(Landroid/content/res/Configuration;)V

    aput-object v3, v0, v2

    .line 150
    iget-object v0, p0, Lcom/android/server/VivoSmartMultiWindowMgr;->mLocalConfigList:[Lcom/android/server/ScreenLandPortParm;

    const/4 v2, 0x0

    new-instance v3, Lcom/android/server/ScreenLandPortParm;

    invoke-direct {v3, p2}, Lcom/android/server/ScreenLandPortParm;-><init>(Landroid/content/res/Configuration;)V

    aput-object v3, v0, v2

    .line 151
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public vivoDisplayReady()V
    .locals 3

    .prologue
    .line 214
    invoke-static {}, Lcom/android/server/am/VivoSmartMultiWindowAms;->getInstance()Lcom/android/server/am/VivoSmartMultiWindowAms;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/VivoSmartMultiWindowMgr;->mAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    .line 215
    invoke-static {}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->getInstance()Lcom/android/server/wm/VivoSmartMultiWindowWms;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/VivoSmartMultiWindowMgr;->mWmsInstance:Lcom/android/server/wm/VivoSmartMultiWindowWms;

    .line 216
    sget-boolean v0, Lcom/android/server/VivoSmartMultiWindowMgr;->DEBUG_SMARTMULTIWINDOW_ALL:Z

    if-eqz v0, :cond_0

    .line 217
    const-string v0, "vivo_debug_info_VivoSmartMultiWindowMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vivoDisplayReady mAmsInstance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/VivoSmartMultiWindowMgr;->mAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mWmsInstance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/VivoSmartMultiWindowMgr;->mWmsInstance:Lcom/android/server/wm/VivoSmartMultiWindowWms;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_0
    return-void
.end method
