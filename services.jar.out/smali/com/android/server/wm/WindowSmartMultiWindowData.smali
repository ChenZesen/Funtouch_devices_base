.class public Lcom/android/server/wm/WindowSmartMultiWindowData;
.super Ljava/lang/Object;
.source "WindowSmartMultiWindowData.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation


# static fields
.field private static final CAUSE_SCALE_DISPLAYMODE:I = 0x2

.field private static final DEBUG_LAYOUT_SMARTWINDOW:Z

.field private static final DEBUG_MUST_LOG:Z = true

.field private static final DEBUG_TIME:Z

.field private static final HOME_STACK_ID:I = 0x0

.field private static final QIYI_DISPLAYMODE:I = 0x2

.field private static final TAG_SMARTWINDOW:Ljava/lang/String; = "vivo_debug_WindowSmartMultiWindowData"

.field private static final TAG_TIME:Ljava/lang/String; = "vivo_debug_time"

.field private static final mAdjustPopupWindowPositionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mMustScaleWindowList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mMustScaleWindowType:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mSpecialInputMethodPkg:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mSpecialInputMethodType:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mSpecialNoCropPkg:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mSpeicalPkg:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mSurfaceMayCauseScaleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final notAddStatusBarPkg:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isSpecialToken:Z

.field private mCauseModeBack:I

.field private mCauseScaleFindSurfaceView:Z

.field private mDisplayMode:I

.field private mFindSurfaceView:Z

.field private mForceResize:Z

.field private mImeOffsetX:I

.field private mImeOffsetY:I

.field private mImeScaleValue:F

.field private mIsCauseScaleWindow:Z

.field private mIsNeedIncludeStatusbar:Z

.field private mIsQiYiWindow:Z

.field private mMustCauseScaleWindow:Z

.field private mMustScaleWindow:Z

.field private mMustScaleWindowNoCondition:Z

.field private mOriginalmRequestedHeight:I

.field private mOriginalmRequestedWidth:I

.field private mPid:I

.field private mQiYiModeBack:I

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSpec:Lcom/android/server/wm/TransformParam;

.field private mSpecialInputMethod:Z

.field private mStatusBarHeight:I

.field public mWin:Lcom/android/server/wm/WindowState;

.field final mWms:Lcom/android/server/wm/WindowManagerService;

.field private requestedOrientation:I

.field private stack:Lcom/android/server/wm/TaskStack;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    sget-boolean v0, Landroid/util/VivoSmartMultiWindowConfig;->DEBUG_TIME:Z

    sput-boolean v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->DEBUG_TIME:Z

    .line 28
    sget-boolean v0, Landroid/util/VivoSmartMultiWindowConfig;->DEBUG_LAYOUT:Z

    sput-boolean v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->DEBUG_LAYOUT_SMARTWINDOW:Z

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mSpeicalPkg:Ljava/util/ArrayList;

    .line 76
    sget-object v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mSpeicalPkg:Ljava/util/ArrayList;

    const-string v1, "com.tencent.androidqqmail"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mSpeicalPkg:Ljava/util/ArrayList;

    const-string v1, "com.tencent.mtt/.MainActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mSpeicalPkg:Ljava/util/ArrayList;

    const-string v1, "com.sankuai.meituan/com.sankuai.meituan.activity.MainActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mSpeicalPkg:Ljava/util/ArrayList;

    const-string v1, "com.sankuai.meituan.activity.MainActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mSpeicalPkg:Ljava/util/ArrayList;

    const-string v1, "com.sankuai.meituan/.activity.MainActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->notAddStatusBarPkg:Ljava/util/ArrayList;

    .line 85
    sget-object v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->notAddStatusBarPkg:Ljava/util/ArrayList;

    const-string v1, "com.tencent.mobileqq/.activity.SplashActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->notAddStatusBarPkg:Ljava/util/ArrayList;

    const-string v1, "com.tencent.mobileqq/com.tencent.mobileqq.activity.SplashActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mSpecialNoCropPkg:Ljava/util/ArrayList;

    .line 92
    sget-object v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mSpecialNoCropPkg:Ljava/util/ArrayList;

    const-string v1, "com.UCMobile"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    sget-object v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mSpecialNoCropPkg:Ljava/util/ArrayList;

    const-string v1, "com.sohu.sohuvideo/.ui.PlayActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mSpecialNoCropPkg:Ljava/util/ArrayList;

    const-string v1, "com.sohu.sohuvideo/com.sohu.sohuvideo.ui.PlayActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mSpecialNoCropPkg:Ljava/util/ArrayList;

    const-string v1, "com.xunlei.kankan/.player.KankanPlayerActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    sget-object v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mSpecialNoCropPkg:Ljava/util/ArrayList;

    const-string v1, "com.xunlei.kankan/com.xunlei.kankan.player.KankanPlayerActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    sget-object v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mSpecialNoCropPkg:Ljava/util/ArrayList;

    const-string v1, "com.pplive.androidphone/.ui.VideoPlayerFragmentActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    sget-object v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mSpecialNoCropPkg:Ljava/util/ArrayList;

    const-string v1, "com.pplive.androidphone/com.pplive.androidphone.ui.VideoPlayerFragmentActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    sget-object v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mSpecialNoCropPkg:Ljava/util/ArrayList;

    const-string v1, "com.viber.voip/.messages.ui.media.ViewMediaActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    sget-object v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mSpecialNoCropPkg:Ljava/util/ArrayList;

    const-string v1, "com.viber.voip/.camrecorder.CustomCamPreviewActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    sget-object v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mSpecialNoCropPkg:Ljava/util/ArrayList;

    const-string v1, "com.whatsapp/.VideoPreviewActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mSpecialInputMethodPkg:Ljava/util/ArrayList;

    .line 113
    sget-object v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mSpecialInputMethodPkg:Ljava/util/ArrayList;

    const-string v1, "com.tencent.qqsports/.bbs.BbsTopicDetailActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mSpecialInputMethodType:Ljava/util/ArrayList;

    .line 117
    sget-object v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mSpecialInputMethodType:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mAdjustPopupWindowPositionList:Ljava/util/ArrayList;

    .line 122
    sget-object v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mAdjustPopupWindowPositionList:Ljava/util/ArrayList;

    const-string v1, "com.taobao.taobao"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    sget-object v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mAdjustPopupWindowPositionList:Ljava/util/ArrayList;

    const-string v1, "com.tencent.mobileqq/.activity.SplashActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mSurfaceMayCauseScaleList:Ljava/util/ArrayList;

    .line 129
    sget-object v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mSurfaceMayCauseScaleList:Ljava/util/ArrayList;

    const-string v1, "com.netease.nr.base.activity.BaseActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    sget-object v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mSurfaceMayCauseScaleList:Ljava/util/ArrayList;

    const-string v1, "com.ss.android.article.news.activity.MainActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    sget-object v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mSurfaceMayCauseScaleList:Ljava/util/ArrayList;

    const-string v1, "com.ss.android.article.base.feature.detail2.view.NewVideoDetailActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    sget-object v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mSurfaceMayCauseScaleList:Ljava/util/ArrayList;

    const-string v1, "com.ss.android.article.news/.activity.MainActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mMustScaleWindowList:Ljava/util/ArrayList;

    .line 138
    sget-object v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mMustScaleWindowList:Ljava/util/ArrayList;

    const-string v1, "com.taobao.allspark.activity.AllSparkMainActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mMustScaleWindowType:Ljava/util/ArrayList;

    .line 142
    sget-object v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mMustScaleWindowType:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowState;)V
    .locals 5
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v2, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    .line 31
    iput v3, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mPid:I

    .line 33
    iput-object v2, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->stack:Lcom/android/server/wm/TaskStack;

    .line 34
    new-instance v2, Lcom/android/server/wm/TransformParam;

    invoke-direct {v2}, Lcom/android/server/wm/TransformParam;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mSpec:Lcom/android/server/wm/TransformParam;

    .line 37
    iput-boolean v3, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->isSpecialToken:Z

    .line 38
    iput v3, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mDisplayMode:I

    .line 39
    iput-boolean v3, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mIsNeedIncludeStatusbar:Z

    .line 40
    iput v4, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->requestedOrientation:I

    .line 42
    iput-boolean v3, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mSpecialInputMethod:Z

    .line 43
    iput-boolean v3, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mForceResize:Z

    .line 46
    iput v4, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mImeOffsetX:I

    .line 47
    iput v4, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mImeOffsetY:I

    .line 48
    iput v4, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mStatusBarHeight:I

    .line 49
    const v2, 0x3f7fbe77    # 0.999f

    iput v2, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mImeScaleValue:F

    .line 51
    iput v4, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mOriginalmRequestedWidth:I

    .line 52
    iput v4, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mOriginalmRequestedHeight:I

    .line 54
    iput v3, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mScreenWidth:I

    .line 55
    iput v3, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mScreenHeight:I

    .line 59
    iput-boolean v3, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mIsQiYiWindow:Z

    .line 60
    iput-boolean v3, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mMustScaleWindow:Z

    .line 62
    iput v4, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mQiYiModeBack:I

    .line 63
    iput-boolean v3, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mFindSurfaceView:Z

    .line 67
    iput-boolean v3, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mIsCauseScaleWindow:Z

    .line 68
    iput-boolean v3, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mMustCauseScaleWindow:Z

    .line 70
    iput v4, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mCauseModeBack:I

    .line 71
    iput-boolean v3, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mCauseScaleFindSurfaceView:Z

    .line 73
    iput-boolean v3, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mMustScaleWindowNoCondition:Z

    .line 147
    iput-object p2, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    .line 148
    iput-object p1, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWms:Lcom/android/server/wm/WindowManagerService;

    .line 150
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mPid:I

    .line 152
    iget-object v2, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_0

    .line 153
    iget-object v2, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v3, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mPid:I

    iput v3, v2, Lcom/android/server/wm/AppWindowToken;->pid:I

    .line 157
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d5

    if-ne v2, v3, :cond_7

    .line 159
    iget-object v2, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v3, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mPid:I

    invoke-static {v2, v3}, Lcom/android/server/wm/WindowSmartMultiWindowData;->getTaskStackWithPidLw(Lcom/android/server/wm/DisplayContent;I)Lcom/android/server/wm/TaskStack;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->stack:Lcom/android/server/wm/TaskStack;

    .line 182
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_3

    .line 183
    iget-object v2, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v2, v2, Lcom/android/server/wm/AppWindowToken;->isSpecialToken:Z

    iput-boolean v2, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->isSpecialToken:Z

    .line 184
    iget-object v2, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v2, v2, Lcom/android/server/wm/AppWindowToken;->mDisplayMode:I

    iput v2, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mDisplayMode:I

    .line 185
    iget-object v2, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v2, v2, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    iput v2, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->requestedOrientation:I

    .line 187
    iget-object v2, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->toString()Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "classname":Ljava/lang/String;
    if-eqz v0, :cond_3

    const-string v2, "com.tencent.mm/.ui.LauncherUI"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.tencent.mm/.ui.chatting.ChattingUI"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 189
    :cond_2
    iput v4, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->requestedOrientation:I

    .line 194
    .end local v0    # "classname":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v2}, Lcom/android/server/wm/WindowSmartMultiWindowData;->isIncludeStatusBarWindow(Lcom/android/server/wm/WindowState;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mIsNeedIncludeStatusbar:Z

    .line 196
    iget-object v2, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v2}, Lcom/android/server/wm/WindowSmartMultiWindowData;->isSpeicalInputMethod(Lcom/android/server/wm/WindowState;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mSpecialInputMethod:Z

    .line 198
    iget-object v2, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_4

    .line 199
    iget-object v2, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->toString()Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, "pkg":Ljava/lang/String;
    if-eqz v1, :cond_4

    const-string v2, "org.iqiyi.video.activity.PlayerActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 201
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mIsQiYiWindow:Z

    .line 206
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v2}, Lcom/android/server/wm/WindowSmartMultiWindowData;->isMayCauseScaleWindow(Lcom/android/server/wm/WindowState;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mIsCauseScaleWindow:Z

    .line 208
    iget-boolean v2, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mIsCauseScaleWindow:Z

    if-nez v2, :cond_5

    .line 209
    iget-object v2, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v2}, Lcom/android/server/wm/WindowSmartMultiWindowData;->isWindowMustScale(Lcom/android/server/wm/WindowState;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mMustScaleWindowNoCondition:Z

    .line 211
    :cond_5
    sget-boolean v2, Lcom/android/server/wm/WindowSmartMultiWindowData;->DEBUG_LAYOUT_SMARTWINDOW:Z

    if-eqz v2, :cond_6

    .line 212
    const-string v2, "vivo_debug_WindowSmartMultiWindowData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TAG_SMARTWINDOW construct win type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mPid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mPid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", this.mWin.mAppToken = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", this.stack = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->stack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", win = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", packagename = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isSpecialToken = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->isSpecialToken:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mDisplayMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mDisplayMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mIsNeedIncludeStatusbar = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mIsNeedIncludeStatusbar:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_6
    return-void

    .line 161
    :cond_7
    iget-object v2, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d3

    if-ne v2, v3, :cond_1

    .line 162
    iget-object v2, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v3, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mPid:I

    invoke-static {v2, v3}, Lcom/android/server/wm/WindowSmartMultiWindowData;->getTaskStackWithPidLw(Lcom/android/server/wm/DisplayContent;I)Lcom/android/server/wm/TaskStack;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->stack:Lcom/android/server/wm/TaskStack;

    goto/16 :goto_0
.end method

.method private adjustImeHandWrittingShownFrame(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;FF)V
    .locals 13
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "parent"    # Lcom/android/server/wm/WindowState;
    .param p3, "xOffset"    # F
    .param p4, "yOffset"    # F

    .prologue
    .line 1525
    iget v10, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mImeOffsetX:I

    int-to-float v10, v10

    iget-object v11, p1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    iget-object v12, p2, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v12

    int-to-float v11, v11

    iget v12, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mImeScaleValue:F

    mul-float/2addr v11, v12

    iget-object v12, p2, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->left:F

    add-float/2addr v11, v12

    iget-object v12, p1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    sub-float/2addr v11, v12

    add-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mImeOffsetX:I

    .line 1526
    iget v10, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mImeOffsetY:I

    int-to-float v10, v10

    iget-object v11, p1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    iget-object v12, p2, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    int-to-float v11, v11

    iget v12, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mImeScaleValue:F

    mul-float/2addr v11, v12

    iget-object v12, p2, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->top:F

    add-float/2addr v11, v12

    iget-object v12, p1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    sub-float/2addr v11, v12

    add-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mImeOffsetY:I

    .line 1527
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v10, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    if-eqz v10, :cond_0

    iget-object v10, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v11, 0x7db

    if-eq v10, v11, :cond_1

    .line 1553
    :cond_0
    :goto_0
    return-void

    .line 1530
    :cond_1
    iget-object v10, p1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v1, v10, Landroid/graphics/Rect;->left:I

    .line 1531
    .local v1, "frameleft":I
    iget-object v10, p1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v3, v10, Landroid/graphics/Rect;->top:I

    .line 1532
    .local v3, "frametop":I
    iget-object v10, p1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v2, v10, Landroid/graphics/Rect;->right:I

    .line 1533
    .local v2, "frameright":I
    iget-object v10, p1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    .line 1534
    .local v0, "framebottom":I
    iget-object v10, p2, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v5, v10, Landroid/graphics/Rect;->left:I

    .line 1535
    .local v5, "parentleft":I
    iget-object v10, p2, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v7, v10, Landroid/graphics/Rect;->top:I

    .line 1536
    .local v7, "parenttop":I
    iget-object v10, p2, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v6, v10, Landroid/graphics/Rect;->right:I

    .line 1537
    .local v6, "parentright":I
    iget-object v10, p2, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v4, v10, Landroid/graphics/Rect;->bottom:I

    .line 1538
    .local v4, "parentbottom":I
    if-nez v1, :cond_3

    if-nez v3, :cond_3

    if-ne v2, v6, :cond_3

    .line 1539
    move v8, v5

    .line 1540
    .local v8, "xoffset":I
    iget-object v10, p2, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->left:F

    float-to-int v10, v10

    iput v10, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mImeOffsetX:I

    .line 1541
    iget-object v10, p2, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    float-to-int v9, v10

    .line 1542
    .local v9, "yoffset":I
    if-ne v0, v7, :cond_4

    .line 1543
    iget-object v10, p2, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    sub-int v11, v0, v3

    int-to-float v11, v11

    iget v12, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mImeScaleValue:F

    mul-float/2addr v11, v12

    sub-float/2addr v10, v11

    float-to-int v9, v10

    .line 1547
    :cond_2
    :goto_1
    iput v9, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mImeOffsetY:I

    .line 1550
    .end local v8    # "xoffset":I
    .end local v9    # "yoffset":I
    :cond_3
    const-string v10, "vivo_debug_WindowSmartMultiWindowData"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ajust handw frameleft = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", frametop = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", frameright = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", framebottom = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", parentleft = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", parenttop = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", parentright = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", parentbottom = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    const-string v10, "vivo_debug_WindowSmartMultiWindowData"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ajust handw screenwidth = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mScreenWidth:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", screenheight = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mScreenHeight:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mImeOffsetX = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mImeOffsetX:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mImeOffsetY = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mImeOffsetY:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mStatusBarHeight = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mStatusBarHeight:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1544
    .restart local v8    # "xoffset":I
    .restart local v9    # "yoffset":I
    :cond_4
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    if-ne v0, v10, :cond_2

    .line 1545
    iget-object v10, p2, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    sub-int v11, v4, v7

    int-to-float v11, v11

    iget v12, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mImeScaleValue:F

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    sub-int v11, v0, v3

    int-to-float v11, v11

    iget v12, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mImeScaleValue:F

    mul-float/2addr v11, v12

    sub-float/2addr v10, v11

    float-to-int v9, v10

    goto/16 :goto_1
.end method

.method private fixSurfaceCrop(Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFF)V
    .locals 5
    .param p1, "stackrect"    # Landroid/graphics/Rect;
    .param p2, "clipRect"    # Landroid/graphics/Rect;
    .param p3, "surfacex"    # F
    .param p4, "surfacey"    # F
    .param p5, "surfacew"    # F
    .param p6, "surfaceh"    # F
    .param p7, "scaleW"    # F
    .param p8, "scaleH"    # F

    .prologue
    const/4 v4, 0x1

    const v3, -0x3a63b800    # -5001.0f

    .line 1081
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1153
    :cond_0
    :goto_0
    return-void

    .line 1085
    :cond_1
    sget-boolean v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->DEBUG_LAYOUT_SMARTWINDOW:Z

    if-eqz v0, :cond_2

    .line 1086
    const-string v0, "vivo_debug_WindowSmartMultiWindowData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TAG_SMARTWINDOW fixSurfaceCrop win = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", stackrect = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", clipRect = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", surfacex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", surfacey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", surfacew = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", surfaceh = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", scaleW = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", scaleH = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    :cond_2
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    add-float v1, p4, p6

    cmpl-float v0, v0, v1

    if-gez v0, :cond_3

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    cmpg-float v0, v0, p4

    if-lez v0, :cond_3

    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    add-float v1, p3, p5

    cmpl-float v0, v0, v1

    if-gez v0, :cond_3

    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    cmpg-float v0, v0, p3

    if-gtz v0, :cond_5

    .line 1100
    :cond_3
    sget-boolean v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->DEBUG_LAYOUT_SMARTWINDOW:Z

    if-eqz v0, :cond_4

    .line 1101
    const-string v0, "vivo_debug_WindowSmartMultiWindowData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TAG_SMARTWINDOW fixSurfaceCropInmode is out of stack visible bounds ..... win = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", packagename = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iput v3, v0, Landroid/graphics/RectF;->left:F

    .line 1109
    iget-object v0, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iput v3, v0, Landroid/graphics/RectF;->top:F

    goto/16 :goto_0

    .line 1111
    :cond_5
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    cmpl-float v0, v0, p3

    if-lez v0, :cond_6

    .line 1112
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    sub-float/2addr v0, p3

    div-float/2addr v0, p7

    float-to-int v0, v0

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 1115
    :cond_6
    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    add-float v1, p3, p5

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7

    .line 1116
    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    cmpl-float v0, v0, p3

    if-lez v0, :cond_b

    .line 1117
    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    sub-float/2addr v0, p3

    div-float/2addr v0, p7

    float-to-int v0, v0

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 1124
    :cond_7
    :goto_1
    iget v0, p2, Landroid/graphics/Rect;->right:I

    if-gez v0, :cond_8

    .line 1125
    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    cmpl-float v0, v0, p3

    if-lez v0, :cond_c

    .line 1126
    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    sub-float/2addr v0, p3

    div-float/2addr v0, p7

    float-to-int v0, v0

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 1132
    :cond_8
    :goto_2
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    cmpl-float v0, v0, p4

    if-lez v0, :cond_9

    .line 1133
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float/2addr v0, p4

    div-float/2addr v0, p8

    float-to-int v0, v0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 1136
    :cond_9
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    add-float v1, p4, p6

    cmpg-float v0, v0, v1

    if-gez v0, :cond_a

    .line 1137
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    cmpl-float v0, v0, p4

    if-lez v0, :cond_d

    .line 1138
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    sub-float/2addr v0, p4

    div-float/2addr v0, p8

    float-to-int v0, v0

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 1145
    :cond_a
    :goto_3
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    if-gez v0, :cond_0

    .line 1146
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    cmpl-float v0, v0, p4

    if-lez v0, :cond_e

    .line 1147
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    sub-float/2addr v0, p4

    div-float/2addr v0, p8

    float-to-int v0, v0

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0

    .line 1119
    :cond_b
    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    add-float v1, p3, p5

    iget v2, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    div-float/2addr v1, p7

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p2, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 1128
    :cond_c
    iput v4, p2, Landroid/graphics/Rect;->right:I

    goto :goto_2

    .line 1140
    :cond_d
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    add-float v1, p4, p6

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    div-float/2addr v1, p8

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_3

    .line 1149
    :cond_e
    iput v4, p2, Landroid/graphics/Rect;->right:I

    goto/16 :goto_0
.end method

.method public static getTaskStackWithOwnPackageNameLw(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;)Lcom/android/server/wm/TaskStack;
    .locals 2
    .param p0, "displaycontent"    # Lcom/android/server/wm/DisplayContent;
    .param p1, "ownpkg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 846
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 861
    :cond_0
    :goto_0
    return-object v1

    .line 849
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v0

    .line 850
    .local v0, "window":Lcom/android/server/wm/WindowList;
    if-nez v0, :cond_0

    goto :goto_0
.end method

.method public static getTaskStackWithPidLw(Lcom/android/server/wm/DisplayContent;I)Lcom/android/server/wm/TaskStack;
    .locals 9
    .param p0, "displaycontent"    # Lcom/android/server/wm/DisplayContent;
    .param p1, "pid"    # I

    .prologue
    const/4 v5, 0x0

    .line 866
    if-nez p0, :cond_1

    move-object v0, v5

    .line 910
    :cond_0
    :goto_0
    return-object v0

    .line 869
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v4

    .line 870
    .local v4, "window":Lcom/android/server/wm/WindowList;
    if-nez v4, :cond_2

    move-object v0, v5

    .line 871
    goto :goto_0

    .line 873
    :cond_2
    const/4 v2, 0x0

    .line 874
    .local v2, "taskstack":Lcom/android/server/wm/TaskStack;
    const/4 v0, 0x0

    .line 875
    .local v0, "dststack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "k":I
    :goto_1
    if-ltz v1, :cond_5

    .line 876
    invoke-virtual {v4, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 877
    .local v3, "win":Lcom/android/server/wm/WindowState;
    sget-boolean v6, Lcom/android/server/wm/WindowSmartMultiWindowData;->DEBUG_LAYOUT_SMARTWINDOW:Z

    if-eqz v6, :cond_4

    .line 878
    iget-object v6, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    if-eqz v6, :cond_3

    .line 879
    const-string v6, "vivo_debug_WindowSmartMultiWindowData"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TAG_SMARTWINDOW getTaskStackWithPidLw win = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", type = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", packagename = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v8, v8, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    :cond_3
    iget-object v6, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v6, :cond_4

    .line 886
    const-string v6, "vivo_debug_WindowSmartMultiWindowData"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TAG_SMARTWINDOW getTaskStackWithPidLw win.mAppToken = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", win.mAppToken.pid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v8, v8, Lcom/android/server/wm/AppWindowToken;->pid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    :cond_4
    iget-object v6, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v6, :cond_7

    iget-object v6, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v6, v6, Lcom/android/server/wm/AppWindowToken;->pid:I

    if-ne v6, p1, :cond_7

    .line 893
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 894
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 904
    .end local v3    # "win":Lcom/android/server/wm/WindowState;
    :cond_5
    if-nez v0, :cond_0

    .line 905
    move-object v0, v2

    .line 906
    if-nez v2, :cond_0

    move-object v0, v5

    .line 907
    goto/16 :goto_0

    .line 898
    .restart local v3    # "win":Lcom/android/server/wm/WindowState;
    :cond_6
    if-nez v2, :cond_7

    .line 899
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v2

    .line 875
    :cond_7
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_1
.end method

.method private isIncludeStatusBarWindow(Lcom/android/server/wm/WindowState;)Z
    .locals 7
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/4 v3, 0x0

    .line 1170
    if-eqz p1, :cond_0

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v4, :cond_1

    .line 1188
    :cond_0
    :goto_0
    return v3

    .line 1173
    :cond_1
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1174
    .local v2, "pkg":Ljava/lang/String;
    sget-boolean v4, Lcom/android/server/wm/WindowSmartMultiWindowData;->DEBUG_LAYOUT_SMARTWINDOW:Z

    if-eqz v4, :cond_2

    .line 1175
    const-string v4, "vivo_debug_WindowSmartMultiWindowData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isIncludeStatusBarWindow pkg = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    :cond_2
    sget-object v4, Lcom/android/server/wm/WindowSmartMultiWindowData;->mSpeicalPkg:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1184
    .local v1, "item":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1185
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private isMayCauseScaleWindow(Lcom/android/server/wm/WindowState;)Z
    .locals 5
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/4 v3, 0x0

    .line 1631
    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v4, :cond_1

    .line 1644
    :cond_0
    :goto_0
    return v3

    .line 1634
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1635
    .local v2, "pkg":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1638
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v4, Lcom/android/server/wm/WindowSmartMultiWindowData;->mSurfaceMayCauseScaleList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 1639
    sget-object v4, Lcom/android/server/wm/WindowSmartMultiWindowData;->mSurfaceMayCauseScaleList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1640
    .local v1, "item":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1641
    const/4 v3, 0x1

    goto :goto_0

    .line 1638
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private isNeedNotFixCrop(Lcom/android/server/wm/WindowState;)Z
    .locals 5
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/4 v3, 0x0

    .line 1204
    if-eqz p1, :cond_0

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v4, :cond_1

    .line 1213
    :cond_0
    :goto_0
    return v3

    .line 1207
    :cond_1
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1208
    .local v2, "pkg":Ljava/lang/String;
    sget-object v4, Lcom/android/server/wm/WindowSmartMultiWindowData;->mSpecialNoCropPkg:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1209
    .local v1, "item":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1210
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private isSpeicalInputMethod(Lcom/android/server/wm/WindowState;)Z
    .locals 7
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/4 v6, 0x0

    .line 1217
    if-eqz p1, :cond_0

    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v5, :cond_0

    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    if-nez v5, :cond_1

    :cond_0
    move v5, v6

    .line 1234
    :goto_0
    return v5

    .line 1220
    :cond_1
    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1221
    .local v4, "windowtype":I
    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1222
    .local v2, "pkg":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v5, Lcom/android/server/wm/WindowSmartMultiWindowData;->mSpecialInputMethodPkg:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 1223
    sget-object v5, Lcom/android/server/wm/WindowSmartMultiWindowData;->mSpecialInputMethodPkg:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1224
    .local v1, "item":Ljava/lang/String;
    sget-object v5, Lcom/android/server/wm/WindowSmartMultiWindowData;->mSpecialInputMethodType:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1225
    .local v3, "type":I
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-ne v3, v4, :cond_2

    .line 1226
    const/4 v5, 0x1

    goto :goto_0

    .line 1222
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1    # "item":Ljava/lang/String;
    .end local v3    # "type":I
    :cond_3
    move v5, v6

    .line 1234
    goto :goto_0
.end method

.method private isWindowMustScale(Lcom/android/server/wm/WindowState;)Z
    .locals 7
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/4 v6, 0x0

    .line 1711
    if-eqz p1, :cond_0

    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v5, :cond_0

    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    if-nez v5, :cond_1

    :cond_0
    move v5, v6

    .line 1726
    :goto_0
    return v5

    .line 1714
    :cond_1
    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1715
    .local v4, "windowtype":I
    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1716
    .local v2, "pkg":Ljava/lang/String;
    if-nez v2, :cond_2

    move v5, v6

    .line 1717
    goto :goto_0

    .line 1719
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v5, Lcom/android/server/wm/WindowSmartMultiWindowData;->mMustScaleWindowList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_4

    .line 1720
    sget-object v5, Lcom/android/server/wm/WindowSmartMultiWindowData;->mMustScaleWindowList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1721
    .local v1, "item":Ljava/lang/String;
    sget-object v5, Lcom/android/server/wm/WindowSmartMultiWindowData;->mMustScaleWindowType:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1722
    .local v3, "type":I
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-ne v3, v4, :cond_3

    .line 1723
    const/4 v5, 0x1

    goto :goto_0

    .line 1719
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1    # "item":Ljava/lang/String;
    .end local v3    # "type":I
    :cond_4
    move v5, v6

    .line 1726
    goto :goto_0
.end method

.method private mustAdjustPopupWindowPosition(Lcom/android/server/wm/WindowState;)Z
    .locals 7
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/4 v4, 0x0

    .line 1305
    if-eqz p1, :cond_0

    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v5, :cond_0

    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    if-eqz v5, :cond_0

    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x3e8

    if-eq v5, v6, :cond_1

    .line 1318
    :cond_0
    :goto_0
    return v4

    .line 1308
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1309
    .local v3, "title":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v5, "PopupWindow"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1312
    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1313
    .local v2, "pkg":Ljava/lang/String;
    sget-object v5, Lcom/android/server/wm/WindowSmartMultiWindowData;->mAdjustPopupWindowPositionList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1314
    .local v1, "item":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1315
    const/4 v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method final adjustImeInputWindowdLw(IIF)V
    .locals 15
    .param p1, "xIME"    # I
    .param p2, "yIME"    # I
    .param p3, "imeScale"    # F

    .prologue
    .line 1323
    move/from16 v0, p3

    iput v0, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mImeScaleValue:F

    .line 1324
    iget-object v12, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v12, v12, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    if-nez v12, :cond_1

    .line 1419
    :cond_0
    :goto_0
    return-void

    .line 1327
    :cond_1
    const/4 v8, 0x0

    .line 1328
    .local v8, "isImeMain":Z
    const/4 v7, 0x0

    .line 1329
    .local v7, "isHandWriting":Z
    iget-object v12, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v12, v12, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v13, 0x7db

    if-ne v12, v13, :cond_2

    .line 1330
    const/4 v8, 0x1

    .line 1333
    :cond_2
    if-nez v8, :cond_3

    iget-object v12, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v12, v12, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v12, :cond_3

    iget-object v12, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v12, v12, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v12, v12, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    if-eqz v12, :cond_3

    iget-object v12, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v12, v12, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v12, v12, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v13, 0x7db

    if-ne v12, v13, :cond_3

    iget-object v12, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v12, v12, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    if-nez v12, :cond_3

    iget-object v12, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v12, v12, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    if-nez v12, :cond_3

    iget-object v12, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v12, v12, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->right:I

    iget-object v13, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v13, v13, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v13, v13, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    if-ne v12, v13, :cond_3

    iget-object v12, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v12, v12, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    iget-object v13, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v13, v13, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v13, v13, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    if-ne v12, v13, :cond_3

    .line 1337
    const/4 v7, 0x1

    .line 1340
    :cond_3
    iget-object v12, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v6, v12, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    .line 1341
    .local v6, "inputhandle":Lcom/android/server/input/InputWindowHandle;
    if-eqz v6, :cond_0

    .line 1346
    if-eqz v8, :cond_4

    iget-object v12, v6, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    iget-object v13, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v13, v13, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    iget-object v14, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v14}, Lcom/android/server/wm/WindowState;->getGivenVisibleInsetsLw()Landroid/graphics/Rect;

    move-result-object v14

    iget v14, v14, Landroid/graphics/Rect;->top:I

    div-int/lit8 v14, v14, 0x2

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Region;->contains(II)Z

    move-result v12

    if-eqz v12, :cond_4

    iget-object v12, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mMultiWindowWmsInstance:Lcom/android/server/wm/VivoSmartMultiWindowWms;

    sget-boolean v12, Lcom/android/server/wm/VivoSmartMultiWindowWms;->IME_SUSPENDED:Z

    if-nez v12, :cond_4

    .line 1347
    const/4 v7, 0x1

    .line 1350
    :cond_4
    const-string v12, "vivo_debug_time"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "adjustImeInputWindowow begin inputhandle.touchableRegion = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v6, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    const-string v12, "vivo_debug_time"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "adjustImeInputWindowow begin mShownFrame = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v14, v14, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", frame = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v14, v14, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    const/4 v10, 0x0

    .line 1355
    .local v10, "xOffset":I
    const/4 v11, 0x0

    .line 1356
    .local v11, "yOffset":I
    if-eqz v8, :cond_c

    .line 1357
    iget-object v12, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v12, v12, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    sub-int v10, p1, v12

    .line 1358
    iget-object v12, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v12, v12, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    sub-int v12, p2, v12

    iget-object v13, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v13}, Lcom/android/server/wm/WindowState;->getGivenVisibleInsetsLw()Landroid/graphics/Rect;

    move-result-object v13

    iget v13, v13, Landroid/graphics/Rect;->top:I

    sub-int v11, v12, v13

    .line 1364
    :goto_1
    if-eqz v8, :cond_d

    move/from16 v3, p1

    .line 1365
    .local v3, "imeleft":I
    :goto_2
    if-eqz v8, :cond_e

    move/from16 v4, p2

    .line 1366
    .local v4, "imetop":I
    :goto_3
    iget-object v12, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v12, v12, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    iget v13, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mImeScaleValue:F

    mul-float/2addr v12, v13

    float-to-int v5, v12

    .line 1367
    .local v5, "imewidth":I
    iget-object v12, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v12, v12, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    iget v13, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mImeScaleValue:F

    mul-float/2addr v12, v13

    float-to-int v2, v12

    .line 1368
    .local v2, "imeheight":I
    iget-object v12, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v12}, Lcom/android/server/wm/WindowState;->getGivenVisibleInsetsLw()Landroid/graphics/Rect;

    move-result-object v12

    iget v12, v12, Landroid/graphics/Rect;->top:I

    if-eqz v12, :cond_5

    if-eqz v8, :cond_5

    .line 1369
    iget-object v12, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v12}, Lcom/android/server/wm/WindowState;->getGivenVisibleInsetsLw()Landroid/graphics/Rect;

    move-result-object v12

    iget v12, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v12

    .line 1372
    :cond_5
    iget-object v12, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v12}, Landroid/app/SmartMultWindowSharedPreferences;->getCurrentAppDisplayMode(Landroid/content/Context;)I

    move-result v9

    .line 1373
    .local v9, "mode":I
    if-nez p1, :cond_6

    const/16 v12, -0x3e8

    move/from16 v0, p2

    if-eq v0, v12, :cond_7

    :cond_6
    iget-object v12, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mMultiWindowWmsInstance:Lcom/android/server/wm/VivoSmartMultiWindowWms;

    sget-boolean v12, Lcom/android/server/wm/VivoSmartMultiWindowWms;->IME_SUSPENDED:Z

    if-nez v12, :cond_7

    if-nez v9, :cond_8

    .line 1375
    :cond_7
    iget-object v12, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v12, v12, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v13, 0x7db

    if-ne v12, v13, :cond_0

    .line 1377
    iget-object v12, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v12, v12, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v3, v12, Landroid/graphics/Rect;->left:I

    .line 1378
    iget-object v12, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v12, v12, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v4, v12, Landroid/graphics/Rect;->top:I

    .line 1379
    const/4 v10, 0x0

    .line 1380
    const/4 v11, 0x0

    .line 1382
    :cond_8
    new-instance v1, Landroid/graphics/Rect;

    add-int v12, v3, v5

    add-int v13, v4, v2

    invoke-direct {v1, v3, v4, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1384
    .local v1, "actuallbounds":Landroid/graphics/Rect;
    iget-object v12, v6, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v12, v10, v11}, Landroid/graphics/Region;->translate(II)V

    .line 1385
    const/16 v12, 0x3e8

    iput v12, v6, Lcom/android/server/input/InputWindowHandle;->mSplitInputHandleId:I

    .line 1386
    const/4 v12, 0x0

    iput v12, v6, Lcom/android/server/input/InputWindowHandle;->frameLeft:I

    .line 1387
    const/4 v12, 0x0

    iput v12, v6, Lcom/android/server/input/InputWindowHandle;->frameTop:I

    .line 1388
    iput v5, v6, Lcom/android/server/input/InputWindowHandle;->frameRight:I

    .line 1389
    iput v2, v6, Lcom/android/server/input/InputWindowHandle;->frameBottom:I

    .line 1390
    iput v3, v6, Lcom/android/server/input/InputWindowHandle;->mSplitStackLeft:I

    .line 1391
    iput v4, v6, Lcom/android/server/input/InputWindowHandle;->mSplitStackTop:I

    .line 1392
    iget v12, v1, Landroid/graphics/Rect;->right:I

    iput v12, v6, Lcom/android/server/input/InputWindowHandle;->mSplitStackRight:I

    .line 1393
    iget v12, v1, Landroid/graphics/Rect;->bottom:I

    iput v12, v6, Lcom/android/server/input/InputWindowHandle;->mSplitStackBottom:I

    .line 1394
    const/high16 v12, 0x3f800000    # 1.0f

    iget v13, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mImeScaleValue:F

    div-float/2addr v12, v13

    iput v12, v6, Lcom/android/server/input/InputWindowHandle;->mSplitScaleFactor:F

    .line 1395
    iput v3, v6, Lcom/android/server/input/InputWindowHandle;->mSplitFrameLeft:I

    .line 1396
    iput v4, v6, Lcom/android/server/input/InputWindowHandle;->mSplitFrameTop:I

    .line 1397
    iget v12, v1, Landroid/graphics/Rect;->right:I

    iput v12, v6, Lcom/android/server/input/InputWindowHandle;->mSplitFrameRight:I

    .line 1398
    iget v12, v1, Landroid/graphics/Rect;->bottom:I

    iput v12, v6, Lcom/android/server/input/InputWindowHandle;->mSplitFrameBottom:I

    .line 1399
    iget-object v12, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v12}, Lcom/android/server/wm/WindowState;->getGivenVisibleInsetsLw()Landroid/graphics/Rect;

    move-result-object v12

    iget v12, v12, Landroid/graphics/Rect;->top:I

    if-eqz v12, :cond_9

    if-eqz v8, :cond_9

    .line 1400
    if-nez v7, :cond_9

    iget-object v12, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mMultiWindowWmsInstance:Lcom/android/server/wm/VivoSmartMultiWindowWms;

    sget-boolean v12, Lcom/android/server/wm/VivoSmartMultiWindowWms;->IME_SUSPENDED:Z

    if-nez v12, :cond_9

    .line 1401
    move/from16 v0, p2

    iput v0, v6, Lcom/android/server/input/InputWindowHandle;->mSplitFrameTop:I

    .line 1407
    :cond_9
    if-nez v9, :cond_b

    iget-object v12, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v12, v12, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v12, v12, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    const-string v13, "com.touchtype.swiftkey"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_a

    iget-object v12, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v12, v12, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v12, v12, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    const-string v13, "com.google.android.inputmethod.pinyin"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 1409
    :cond_a
    const-string v12, "vivo_debug_time"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "adjustImeInputWindowLw touchableRegion getBounds left: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v6, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v14}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v14

    iget v14, v14, Landroid/graphics/Rect;->left:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", top: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v6, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v14}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v14

    iget v14, v14, Landroid/graphics/Rect;->top:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    iget-object v12, v6, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v12}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v12

    iget v12, v12, Landroid/graphics/Rect;->top:I

    iput v12, v6, Lcom/android/server/input/InputWindowHandle;->mSplitFrameTop:I

    .line 1416
    :cond_b
    const-string v12, "vivo_debug_time"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "adjustImeInputWindowow end inputhandle.touchableRegion = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v6, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " isImeMain "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " isHandWriting "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    const-string v12, "vivo_debug_time"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "adjustImeInputWindowow end mShownFrame = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v14, v14, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", frame = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v14, v14, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1360
    .end local v1    # "actuallbounds":Landroid/graphics/Rect;
    .end local v2    # "imeheight":I
    .end local v3    # "imeleft":I
    .end local v4    # "imetop":I
    .end local v5    # "imewidth":I
    .end local v9    # "mode":I
    :cond_c
    iget-object v12, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v12, v12, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->left:F

    float-to-int v12, v12

    iget-object v13, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v13, v13, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    sub-int v10, v12, v13

    .line 1361
    iget-object v12, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v12, v12, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->top:F

    float-to-int v12, v12

    iget-object v13, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v13, v13, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    sub-int v11, v12, v13

    goto/16 :goto_1

    .line 1364
    :cond_d
    iget-object v12, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v12, v12, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->left:F

    float-to-int v3, v12

    goto/16 :goto_2

    .line 1365
    .restart local v3    # "imeleft":I
    :cond_e
    iget-object v12, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v12, v12, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->top:F

    float-to-int v4, v12

    goto/16 :goto_3
.end method

.method public adjustImeShownFrameLw(FFFLandroid/graphics/Matrix;)V
    .locals 4
    .param p1, "xIME"    # F
    .param p2, "yIME"    # F
    .param p3, "imeScale"    # F
    .param p4, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    const/16 v3, 0x7db

    const/high16 v2, -0x3b860000    # -1000.0f

    .line 1428
    iput p3, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mImeScaleValue:F

    .line 1429
    iget-object v1, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v1, v3, :cond_4

    .line 1430
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_3

    cmpl-float v1, p2, v2

    if-nez v1, :cond_3

    .line 1431
    iget-object v1, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mImeOffsetX:I

    .line 1432
    iget-object v1, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mImeOffsetY:I

    .line 1440
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getGivenVisibleInsetsLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v1, v3, :cond_0

    cmpl-float v1, p2, v2

    if-eqz v1, :cond_0

    .line 1441
    iget v1, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mImeOffsetY:I

    iget-object v2, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getGivenVisibleInsetsLw()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mImeOffsetY:I

    .line 1446
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/SmartMultWindowSharedPreferences;->getCurrentAppDisplayMode(Landroid/content/Context;)I

    move-result v0

    .line 1447
    .local v0, "mode":I
    iget-object v1, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mMultiWindowWmsInstance:Lcom/android/server/wm/VivoSmartMultiWindowWms;

    sget-boolean v1, Lcom/android/server/wm/VivoSmartMultiWindowWms;->IME_SUSPENDED:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_2

    .line 1448
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mImeOffsetX:I

    .line 1449
    iget-object v1, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mImeOffsetY:I

    .line 1451
    :cond_2
    invoke-virtual {p4}, Landroid/graphics/Matrix;->reset()V

    .line 1452
    iget v1, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mImeScaleValue:F

    iget v2, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mImeScaleValue:F

    invoke-virtual {p4, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1453
    iget v1, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mImeOffsetX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mImeOffsetY:I

    int-to-float v2, v2

    invoke-virtual {p4, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1455
    const-string v1, "vivo_debug_time"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjustImeShownFrameLw end mFrame = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", matrix = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mImeScaleValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mImeScaleValue:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mWin.mAttrs = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mMultiWindowWmsInstance:Lcom/android/server/wm/VivoSmartMultiWindowWms;

    sget-boolean v3, Lcom/android/server/wm/VivoSmartMultiWindowWms;->IME_SUSPENDED:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mIsImWindow = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mWin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    return-void

    .line 1434
    .end local v0    # "mode":I
    :cond_3
    float-to-int v1, p1

    iput v1, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mImeOffsetX:I

    .line 1435
    float-to-int v1, p2

    iput v1, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mImeOffsetY:I

    goto/16 :goto_0

    .line 1438
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowSmartMultiWindowData;->calculateImeParam(FF)V

    goto/16 :goto_0
.end method

.method final adjustInputWindowLw()V
    .locals 15

    .prologue
    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 233
    iget-object v10, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    if-nez v10, :cond_1

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    iget-object v10, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v10, v10, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v10, :cond_6

    .line 237
    iget-object v10, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v10, v10, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v10, v10, Lcom/android/server/wm/AppWindowToken;->isSpecialToken:Z

    iput-boolean v10, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->isSpecialToken:Z

    .line 238
    iget-object v10, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v10, v10, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v10, v10, Lcom/android/server/wm/AppWindowToken;->mDisplayMode:I

    iput v10, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mDisplayMode:I

    .line 239
    iget-object v10, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v10, v10, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v10, v10, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    iput v10, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->requestedOrientation:I

    .line 241
    iget-object v10, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v10, v10, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v10}, Lcom/android/server/wm/AppWindowToken;->toString()Ljava/lang/String;

    move-result-object v1

    .line 242
    .local v1, "classname":Ljava/lang/String;
    if-eqz v1, :cond_3

    const-string v10, "com.tencent.mm/.ui.LauncherUI"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "com.tencent.mm/.ui.chatting.ChattingUI"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 243
    :cond_2
    const/4 v10, -0x1

    iput v10, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->requestedOrientation:I

    .line 247
    :cond_3
    iget-object v10, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, v10}, Lcom/android/server/wm/WindowSmartMultiWindowData;->isQiyiMustScaleWindow(Lcom/android/server/wm/WindowState;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 248
    iput-boolean v12, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->isSpecialToken:Z

    .line 249
    iput v13, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mDisplayMode:I

    .line 253
    :cond_4
    iget-object v10, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, v10}, Lcom/android/server/wm/WindowSmartMultiWindowData;->isMustCauseScaleWindow(Lcom/android/server/wm/WindowState;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 254
    iput-boolean v12, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->isSpecialToken:Z

    .line 255
    iput v13, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mDisplayMode:I

    .line 258
    :cond_5
    iget-boolean v10, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mMustScaleWindowNoCondition:Z

    if-eqz v10, :cond_6

    .line 259
    iput-boolean v12, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->isSpecialToken:Z

    .line 260
    iput v13, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mDisplayMode:I

    .line 263
    .end local v1    # "classname":Ljava/lang/String;
    :cond_6
    iget-object v10, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v10, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    .line 264
    .local v3, "inputhandle":Lcom/android/server/input/InputWindowHandle;
    if-eqz v3, :cond_0

    .line 268
    const/4 v5, 0x0

    .line 269
    .local v5, "m":Z
    iget-object v10, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v10, v10, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v10, v10, 0x28

    if-eqz v10, :cond_a

    .line 270
    const/4 v5, 0x0

    .line 275
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowSmartMultiWindowData;->getStackSmartMultiWindowData()Lcom/android/server/wm/StackSmartMultiWindowData;

    move-result-object v8

    .line 276
    .local v8, "stackdata":Lcom/android/server/wm/StackSmartMultiWindowData;
    iget-object v10, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v10, v10, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v10, :cond_9

    :cond_7
    if-eqz v8, :cond_9

    invoke-virtual {v8}, Lcom/android/server/wm/StackSmartMultiWindowData;->isFullScreen()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-virtual {v8}, Lcom/android/server/wm/StackSmartMultiWindowData;->getMustFullMode()Z

    move-result v10

    if-eqz v10, :cond_9

    iget v10, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mDisplayMode:I

    if-eqz v10, :cond_9

    :cond_8
    iget-boolean v10, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->isSpecialToken:Z

    if-eqz v10, :cond_b

    iget v10, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mDisplayMode:I

    if-nez v10, :cond_b

    .line 277
    :cond_9
    iget-object v4, v3, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    .line 278
    .local v4, "localRegion":Landroid/graphics/Region;
    iget-object v10, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mSpec:Lcom/android/server/wm/TransformParam;

    invoke-virtual {v10}, Lcom/android/server/wm/TransformParam;->reset()V

    .line 285
    iput v11, v3, Lcom/android/server/input/InputWindowHandle;->mSplitInputHandleId:I

    .line 286
    iput v11, v3, Lcom/android/server/input/InputWindowHandle;->mSplitStackLeft:I

    .line 287
    iput v11, v3, Lcom/android/server/input/InputWindowHandle;->mSplitStackTop:I

    .line 288
    iput v11, v3, Lcom/android/server/input/InputWindowHandle;->mSplitStackRight:I

    .line 289
    iput v11, v3, Lcom/android/server/input/InputWindowHandle;->mSplitStackBottom:I

    .line 290
    iput v11, v3, Lcom/android/server/input/InputWindowHandle;->mSplitFrameLeft:I

    .line 291
    iput v11, v3, Lcom/android/server/input/InputWindowHandle;->mSplitFrameTop:I

    .line 292
    iput v11, v3, Lcom/android/server/input/InputWindowHandle;->mSplitFrameRight:I

    .line 293
    iput v11, v3, Lcom/android/server/input/InputWindowHandle;->mSplitFrameBottom:I

    .line 294
    iput v14, v3, Lcom/android/server/input/InputWindowHandle;->mSplitScaleFactor:F

    goto/16 :goto_0

    .line 272
    .end local v4    # "localRegion":Landroid/graphics/Region;
    .end local v8    # "stackdata":Lcom/android/server/wm/StackSmartMultiWindowData;
    :cond_a
    const/4 v5, 0x1

    goto :goto_1

    .line 298
    .restart local v8    # "stackdata":Lcom/android/server/wm/StackSmartMultiWindowData;
    :cond_b
    invoke-virtual {v8}, Lcom/android/server/wm/StackSmartMultiWindowData;->getActualBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 299
    .local v0, "actuallbounds":Landroid/graphics/Rect;
    iget v10, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mDisplayMode:I

    iget-boolean v11, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->isSpecialToken:Z

    iget v12, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->requestedOrientation:I

    invoke-virtual {v8, v10, v11, v12}, Lcom/android/server/wm/StackSmartMultiWindowData;->getTouchableBounds(IZI)Landroid/graphics/Rect;

    move-result-object v9

    .line 300
    .local v9, "touchbounds":Landroid/graphics/Rect;
    iget-object v10, v3, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v10}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 301
    .local v2, "handleoriginalbounds":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/server/wm/WindowSmartMultiWindowData;->getTransformParam()Lcom/android/server/wm/TransformParam;

    move-result-object v6

    .line 302
    .local v6, "mspec":Lcom/android/server/wm/TransformParam;
    if-eqz v6, :cond_0

    .line 305
    sget-boolean v10, Lcom/android/server/wm/WindowSmartMultiWindowData;->DEBUG_LAYOUT_SMARTWINDOW:Z

    if-eqz v10, :cond_c

    .line 306
    const-string v10, "vivo_debug_WindowSmartMultiWindowData"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "adjustInputWindowLw mWin = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", type = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v12, v12, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", actuallbounds = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", touchbounds = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", handleoriginalbounds = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_c
    iget-object v10, v3, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v10, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 309
    const/16 v10, 0x3e8

    iput v10, v3, Lcom/android/server/input/InputWindowHandle;->mSplitInputHandleId:I

    .line 310
    iget v10, v9, Landroid/graphics/Rect;->left:I

    iput v10, v3, Lcom/android/server/input/InputWindowHandle;->mSplitStackLeft:I

    .line 311
    iget v10, v9, Landroid/graphics/Rect;->top:I

    iput v10, v3, Lcom/android/server/input/InputWindowHandle;->mSplitStackTop:I

    .line 312
    iget v10, v9, Landroid/graphics/Rect;->right:I

    iput v10, v3, Lcom/android/server/input/InputWindowHandle;->mSplitStackRight:I

    .line 313
    iget v10, v9, Landroid/graphics/Rect;->bottom:I

    iput v10, v3, Lcom/android/server/input/InputWindowHandle;->mSplitStackBottom:I

    .line 314
    iget v10, v6, Lcom/android/server/wm/TransformParam;->scale:F

    div-float v10, v14, v10

    iput v10, v3, Lcom/android/server/input/InputWindowHandle;->mSplitScaleFactor:F

    .line 316
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 317
    .local v7, "splitbounds":Landroid/graphics/Rect;
    sget-boolean v10, Lcom/android/server/wm/WindowSmartMultiWindowData;->DEBUG_LAYOUT_SMARTWINDOW:Z

    if-eqz v10, :cond_d

    .line 318
    const-string v10, "vivo_debug_WindowSmartMultiWindowData"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "adjustInputWindowLw mWin = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", type = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v12, v12, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", handleoriginalbounds = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", splitbounds = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_d
    if-eqz v2, :cond_e

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_e

    invoke-virtual {v2, v9}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e

    .line 322
    iget-object v10, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v10, v10, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->left:F

    float-to-int v10, v10

    iput v10, v7, Landroid/graphics/Rect;->left:I

    .line 323
    iget-object v10, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v10, v10, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    float-to-int v10, v10

    iput v10, v7, Landroid/graphics/Rect;->top:I

    .line 324
    iget v10, v7, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    iget v12, v6, Lcom/android/server/wm/TransformParam;->scale:F

    mul-float/2addr v11, v12

    float-to-int v11, v11

    add-int/2addr v10, v11

    iput v10, v7, Landroid/graphics/Rect;->right:I

    .line 325
    iget v10, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v11, v11

    iget v12, v6, Lcom/android/server/wm/TransformParam;->scale:F

    mul-float/2addr v11, v12

    float-to-int v11, v11

    add-int/2addr v10, v11

    iput v10, v7, Landroid/graphics/Rect;->bottom:I

    .line 328
    :cond_e
    iget v10, v7, Landroid/graphics/Rect;->left:I

    iput v10, v3, Lcom/android/server/input/InputWindowHandle;->mSplitFrameLeft:I

    .line 329
    iget v10, v7, Landroid/graphics/Rect;->top:I

    iput v10, v3, Lcom/android/server/input/InputWindowHandle;->mSplitFrameTop:I

    .line 330
    iget v10, v7, Landroid/graphics/Rect;->right:I

    iput v10, v3, Lcom/android/server/input/InputWindowHandle;->mSplitFrameRight:I

    .line 331
    iget v10, v7, Landroid/graphics/Rect;->bottom:I

    iput v10, v3, Lcom/android/server/input/InputWindowHandle;->mSplitFrameBottom:I

    .line 333
    sget-boolean v10, Lcom/android/server/wm/WindowSmartMultiWindowData;->DEBUG_LAYOUT_SMARTWINDOW:Z

    if-eqz v10, :cond_0

    .line 334
    const-string v10, "vivo_debug_WindowSmartMultiWindowData"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "adjustInputWindowLw mWin = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", type = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v12, v12, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mSplitFrameLeft = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v3, Lcom/android/server/input/InputWindowHandle;->mSplitFrameLeft:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mSplitFrameTop = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v3, Lcom/android/server/input/InputWindowHandle;->mSplitFrameTop:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mSplitFrameRight = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v3, Lcom/android/server/input/InputWindowHandle;->mSplitFrameRight:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mSplitFrameBottom = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v3, Lcom/android/server/input/InputWindowHandle;->mSplitFrameBottom:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const-string v10, "vivo_debug_WindowSmartMultiWindowData"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "adjustInputWindowLw mWin = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", type = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v12, v12, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mSplitStackLeft = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v3, Lcom/android/server/input/InputWindowHandle;->mSplitStackLeft:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mSplitStackTop = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v3, Lcom/android/server/input/InputWindowHandle;->mSplitStackTop:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mSplitStackRight = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v3, Lcom/android/server/input/InputWindowHandle;->mSplitStackRight:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mSplitStackBottom = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v3, Lcom/android/server/input/InputWindowHandle;->mSplitStackBottom:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public adjustShownFrameLw(Landroid/graphics/Matrix;)V
    .locals 4
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 833
    invoke-virtual {p0}, Lcom/android/server/wm/WindowSmartMultiWindowData;->getTransformParam()Lcom/android/server/wm/TransformParam;

    move-result-object v0

    .line 834
    .local v0, "spec":Lcom/android/server/wm/TransformParam;
    sget-boolean v1, Lcom/android/server/wm/WindowSmartMultiWindowData;->DEBUG_LAYOUT_SMARTWINDOW:Z

    if-eqz v1, :cond_0

    .line 835
    const-string v1, "vivo_debug_WindowSmartMultiWindowData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "matrix = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", spec = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mWin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/TransformParam;->noChange()Z

    move-result v1

    if-nez v1, :cond_1

    .line 839
    iget v1, v0, Lcom/android/server/wm/TransformParam;->scale:F

    iget v2, v0, Lcom/android/server/wm/TransformParam;->scale:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 840
    iget v1, v0, Lcom/android/server/wm/TransformParam;->offsetx:F

    iget v2, v0, Lcom/android/server/wm/TransformParam;->offsety:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 842
    :cond_1
    return-void
.end method

.method public beginComputeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 17
    .param p1, "pf"    # Landroid/graphics/Rect;
    .param p2, "df"    # Landroid/graphics/Rect;
    .param p3, "of"    # Landroid/graphics/Rect;
    .param p4, "cf"    # Landroid/graphics/Rect;
    .param p5, "vf"    # Landroid/graphics/Rect;
    .param p6, "dcf"    # Landroid/graphics/Rect;
    .param p7, "sf"    # Landroid/graphics/Rect;
    .param p8, "osf"    # Landroid/graphics/Rect;

    .prologue
    .line 448
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-nez v3, :cond_0

    .line 449
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mSpec:Lcom/android/server/wm/TransformParam;

    invoke-virtual {v3}, Lcom/android/server/wm/TransformParam;->reset()V

    .line 450
    const/4 v3, 0x0

    .line 712
    :goto_0
    return v3

    .line 452
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_5

    .line 453
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v3, v3, Lcom/android/server/wm/AppWindowToken;->isSpecialToken:Z

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->isSpecialToken:Z

    .line 454
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v3, v3, Lcom/android/server/wm/AppWindowToken;->mDisplayMode:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mDisplayMode:I

    .line 455
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v3, v3, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->requestedOrientation:I

    .line 457
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->toString()Ljava/lang/String;

    move-result-object v12

    .line 458
    .local v12, "classname":Ljava/lang/String;
    if-eqz v12, :cond_2

    const-string v3, "com.tencent.mm/.ui.LauncherUI"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "com.tencent.mm/.ui.chatting.ChattingUI"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 459
    :cond_1
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->requestedOrientation:I

    .line 463
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowSmartMultiWindowData;->isQiyiMustScaleWindow(Lcom/android/server/wm/WindowState;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 464
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->isSpecialToken:Z

    .line 465
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mDisplayMode:I

    .line 469
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowSmartMultiWindowData;->isMustCauseScaleWindow(Lcom/android/server/wm/WindowState;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 470
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->isSpecialToken:Z

    .line 471
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mDisplayMode:I

    .line 474
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mMustScaleWindowNoCondition:Z

    if-eqz v3, :cond_5

    .line 475
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->isSpecialToken:Z

    .line 476
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mDisplayMode:I

    .line 479
    .end local v12    # "classname":Ljava/lang/String;
    :cond_5
    sget-boolean v3, Lcom/android/server/wm/WindowSmartMultiWindowData;->DEBUG_LAYOUT_SMARTWINDOW:Z

    if-eqz v3, :cond_6

    const-string v3, "vivo_debug_WindowSmartMultiWindowData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "beginComputeFrameLw mWin = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pf = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", df = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", of = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", cf = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", vf = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", dcf = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", sf = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", attrs = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isSpecialToken = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->isSpecialToken:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mDisplayMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mDisplayMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", requestedOrientation = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->requestedOrientation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowSmartMultiWindowData;->getStackSmartMultiWindowData()Lcom/android/server/wm/StackSmartMultiWindowData;

    move-result-object v2

    .line 485
    .local v2, "stackdata":Lcom/android/server/wm/StackSmartMultiWindowData;
    if-eqz v2, :cond_d

    .line 487
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mDisplayMode:I

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->isSpecialToken:Z

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->requestedOrientation:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wm/StackSmartMultiWindowData;->getTransformParam(IZI)Lcom/android/server/wm/TransformParam;

    move-result-object v15

    .line 488
    .local v15, "spec":Lcom/android/server/wm/TransformParam;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->isSpecialToken:Z

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mDisplayMode:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_8

    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowSmartMultiWindowData;->isQiYiWindow(Lcom/android/server/wm/WindowState;)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowSmartMultiWindowData;->isFindSurfaceView(Lcom/android/server/wm/WindowState;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 489
    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->requestedOrientation:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wm/StackSmartMultiWindowData;->getTransformParam(IZI)Lcom/android/server/wm/TransformParam;

    move-result-object v15

    .line 492
    :cond_8
    if-nez v15, :cond_c

    .line 493
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mSpec:Lcom/android/server/wm/TransformParam;

    invoke-virtual {v3}, Lcom/android/server/wm/TransformParam;->reset()V

    .line 500
    .end local v15    # "spec":Lcom/android/server/wm/TransformParam;
    :goto_1
    sget-boolean v3, Lcom/android/server/wm/WindowSmartMultiWindowData;->DEBUG_LAYOUT_SMARTWINDOW:Z

    if-eqz v3, :cond_9

    .line 501
    const-string v3, "vivo_debug_WindowSmartMultiWindowData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "beginComputeFrameLw mWin = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", spec = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mSpec:Lcom/android/server/wm/TransformParam;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", stackdata = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :cond_9
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lcom/android/server/wm/StackSmartMultiWindowData;->isFullScreen()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v2}, Lcom/android/server/wm/StackSmartMultiWindowData;->getMustFullMode()Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->isSplitNormalMode()Z

    move-result v3

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->isSpecialToken:Z

    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mDisplayMode:I

    if-nez v3, :cond_e

    .line 505
    :cond_b
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 495
    .restart local v15    # "spec":Lcom/android/server/wm/TransformParam;
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mSpec:Lcom/android/server/wm/TransformParam;

    invoke-virtual {v3, v15}, Lcom/android/server/wm/TransformParam;->init(Lcom/android/server/wm/TransformParam;)V

    goto :goto_1

    .line 498
    .end local v15    # "spec":Lcom/android/server/wm/TransformParam;
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mSpec:Lcom/android/server/wm/TransformParam;

    invoke-virtual {v3}, Lcom/android/server/wm/TransformParam;->reset()V

    goto :goto_1

    .line 538
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v14, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 539
    .local v14, "flags":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mDisplayMode:I

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->isSpecialToken:Z

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->requestedOrientation:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget v7, v7, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/StackSmartMultiWindowData;->getExpectBounds(IZILandroid/view/WindowManager$LayoutParams;I)Landroid/graphics/Rect;

    move-result-object v9

    .line 541
    .local v9, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->isSpecialToken:Z

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mDisplayMode:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_10

    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowSmartMultiWindowData;->isQiYiWindow(Lcom/android/server/wm/WindowState;)Z

    move-result v3

    if-eqz v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowSmartMultiWindowData;->isFindSurfaceView(Lcom/android/server/wm/WindowState;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 542
    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->requestedOrientation:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget v7, v7, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/StackSmartMultiWindowData;->getExpectBounds(IZILandroid/view/WindowManager$LayoutParams;I)Landroid/graphics/Rect;

    move-result-object v9

    .line 545
    :cond_10
    sget-boolean v3, Lcom/android/server/wm/WindowSmartMultiWindowData;->DEBUG_LAYOUT_SMARTWINDOW:Z

    if-eqz v3, :cond_11

    .line 546
    const-string v3, "vivo_debug_WindowSmartMultiWindowData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "beginComputeFrameLw mWin = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", bounds = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :cond_11
    if-nez v9, :cond_12

    .line 549
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 551
    :cond_12
    sget-boolean v3, Landroid/util/VivoSmartMultiWindowConfig;->IS_EXPORT:Z

    if-eqz v3, :cond_15

    and-int/lit16 v3, v14, 0x200

    if-eqz v3, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7da

    if-eq v3, v4, :cond_15

    .line 554
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_14

    .line 555
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 556
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 558
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mDecorFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 569
    :goto_2
    const/16 v3, -0x2710

    move-object/from16 v0, p5

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 570
    const/16 v3, -0x2710

    move-object/from16 v0, p5

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 571
    const/16 v3, -0x2710

    move-object/from16 v0, p4

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 572
    const/16 v3, -0x2710

    move-object/from16 v0, p4

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 573
    const/16 v3, -0x2710

    move-object/from16 v0, p3

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 574
    const/16 v3, -0x2710

    move-object/from16 v0, p3

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 575
    const/16 v3, -0x2710

    move-object/from16 v0, p2

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 576
    const/16 v3, -0x2710

    move-object/from16 v0, p2

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 577
    const/16 v3, 0x2710

    move-object/from16 v0, p5

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 578
    const/16 v3, 0x2710

    move-object/from16 v0, p5

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 579
    const/16 v3, 0x2710

    move-object/from16 v0, p4

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 580
    const/16 v3, 0x2710

    move-object/from16 v0, p4

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 581
    const/16 v3, 0x2710

    move-object/from16 v0, p3

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 582
    const/16 v3, 0x2710

    move-object/from16 v0, p3

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 583
    const/16 v3, 0x2710

    move-object/from16 v0, p2

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 584
    const/16 v3, 0x2710

    move-object/from16 v0, p2

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 587
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Rect;->setEmpty()V

    .line 588
    if-eqz p8, :cond_13

    .line 589
    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Rect;->setEmpty()V

    .line 593
    :cond_13
    const-string v3, "vivo_debug_WindowSmartMultiWindowData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "after beginComputeFrameLw mWin = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pf = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", df = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", of = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", cf = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", vf = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", dcf = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", sf = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", osf = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p8

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", attrs = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 560
    :cond_14
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 561
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    invoke-virtual {v3, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 562
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mDisplayMode:I

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->isSpecialToken:Z

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->requestedOrientation:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget v7, v7, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mIsNeedIncludeStatusbar:Z

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/StackSmartMultiWindowData;->getOutDisplayBounds(IZILandroid/view/WindowManager$LayoutParams;IZ)Landroid/graphics/Rect;

    move-result-object v3

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_2

    .line 602
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_17

    .line 603
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 604
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 605
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getOverscanFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 606
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 607
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 608
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mDecorFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 609
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 612
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Rect;->setEmpty()V

    .line 613
    if-eqz p8, :cond_16

    .line 615
    move-object/from16 v0, p8

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 618
    :cond_16
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 621
    :cond_17
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mDisplayMode:I

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->isSpecialToken:Z

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->requestedOrientation:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget v7, v7, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mIsNeedIncludeStatusbar:Z

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/StackSmartMultiWindowData;->getOutDisplayBounds(IZILandroid/view/WindowManager$LayoutParams;IZ)Landroid/graphics/Rect;

    move-result-object v10

    .line 623
    .local v10, "bounds1":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->isSpecialToken:Z

    if-eqz v3, :cond_18

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mDisplayMode:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_19

    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowSmartMultiWindowData;->isQiYiWindow(Lcom/android/server/wm/WindowState;)Z

    move-result v3

    if-eqz v3, :cond_19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowSmartMultiWindowData;->isFindSurfaceView(Lcom/android/server/wm/WindowState;)Z

    move-result v3

    if-nez v3, :cond_19

    .line 624
    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->requestedOrientation:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget v7, v7, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mIsNeedIncludeStatusbar:Z

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/StackSmartMultiWindowData;->getOutDisplayBounds(IZILandroid/view/WindowManager$LayoutParams;IZ)Landroid/graphics/Rect;

    move-result-object v10

    .line 627
    :cond_19
    sget-boolean v3, Lcom/android/server/wm/WindowSmartMultiWindowData;->DEBUG_LAYOUT_SMARTWINDOW:Z

    if-eqz v3, :cond_1a

    .line 628
    const-string v3, "vivo_debug_WindowSmartMultiWindowData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "beginComputeFrameLw mWin = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", bounds1 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    :cond_1a
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 675
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 676
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 677
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    invoke-virtual {v3, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 679
    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    .line 680
    .local v16, "vTmpbottom":I
    move-object/from16 v0, p4

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    .line 681
    .local v11, "cTmpbottom":I
    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 682
    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 683
    move-object/from16 v0, p6

    invoke-virtual {v0, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 684
    sget-boolean v3, Landroid/util/VivoSmartMultiWindowConfig;->IS_EXPORT:Z

    if-eqz v3, :cond_1f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getRotation()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getRotation()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1f

    .line 687
    :cond_1b
    const/4 v13, -0x1

    .line 688
    .local v13, "displaymode":I
    if-eqz v2, :cond_1c

    .line 689
    invoke-virtual {v2}, Lcom/android/server/wm/StackSmartMultiWindowData;->getDisplayMode()I

    move-result v13

    .line 691
    :cond_1c
    const/4 v3, 0x2

    if-eq v13, v3, :cond_1d

    .line 692
    move/from16 v0, v16

    move-object/from16 v1, p4

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 693
    move-object/from16 v0, p5

    iput v11, v0, Landroid/graphics/Rect;->bottom:I

    .line 699
    .end local v13    # "displaymode":I
    :cond_1d
    :goto_3
    if-eqz p8, :cond_1e

    .line 700
    move-object/from16 v0, p8

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 705
    :cond_1e
    const-string v3, "vivo_debug_WindowSmartMultiWindowData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "after beginComputeFrameLw mWin = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", bounds = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", bounds1 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 697
    :cond_1f
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_3
.end method

.method public beginComputeImeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 7
    .param p1, "pf"    # Landroid/graphics/Rect;
    .param p2, "df"    # Landroid/graphics/Rect;
    .param p3, "of"    # Landroid/graphics/Rect;
    .param p4, "cf"    # Landroid/graphics/Rect;
    .param p5, "vf"    # Landroid/graphics/Rect;
    .param p6, "dcf"    # Landroid/graphics/Rect;
    .param p7, "sf"    # Landroid/graphics/Rect;

    .prologue
    const/16 v6, 0x7db

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 1461
    iget-object v1, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    if-nez v1, :cond_1

    .line 1502
    :cond_0
    :goto_0
    return v4

    .line 1464
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1467
    .local v0, "type":I
    const-string v1, "vivo_debug_WindowSmartMultiWindowData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "beginComputeImeFrameLw win = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mAttrs = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pf = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", df = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", of = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", cf = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", vf = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", dcf = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sf = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    const-string v1, "vivo_debug_WindowSmartMultiWindowData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "beginComputeImeFrameLw mRequestedWidth = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget v3, v3, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mRequestedHeight = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget v3, v3, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mFrame = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mShownFrame = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mVisibleInsets = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mContentInsets = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    const-string v1, "vivo_debug_WindowSmartMultiWindowData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "beginComputeImeFrameLw mOverscanInsets = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mOverscanInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mStableInsets = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mGivenContentInsets = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mGivenVisibleInsets = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mSystemDecorRect = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    const-string v1, "vivo_debug_WindowSmartMultiWindowData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "beginComputeImeFrameLw mCompatFrame = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mContainingFrame = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mParentFrame = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mParentFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mDisplayFrame = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mOverscanFrame = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mOverscanFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mStableFrame = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    const-string v1, "vivo_debug_WindowSmartMultiWindowData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "beginComputeImeFrameLw mDecorFrame = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mDecorFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mContentFrame = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mVisibleFrame = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", xOffset = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget v3, v3, Lcom/android/server/wm/WindowState;->mXOffset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", yOffset = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget v3, v3, Lcom/android/server/wm/WindowState;->mYOffset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    if-ne v0, v6, :cond_4

    .line 1476
    iget-object v1, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getGivenVisibleInsetsLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    const-string v2, "com.baidu.input"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 1479
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mMultiWindowWmsInstance:Lcom/android/server/wm/VivoSmartMultiWindowWms;

    sget-boolean v1, Lcom/android/server/wm/VivoSmartMultiWindowWms;->IME_SUSPENDED:Z

    if-nez v1, :cond_4

    .line 1480
    iget-object v1, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mMultiWindowWmsInstance:Lcom/android/server/wm/VivoSmartMultiWindowWms;

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/wm/VivoSmartMultiWindowWms;->IME_SUSPENDED:Z

    .line 1483
    iget-object v1, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v5}, Lcom/android/server/wm/WindowManagerService;->updateImeWindowVisible(I)V

    .line 1494
    :cond_4
    :goto_1
    const-string v1, "vivo_debug_WindowSmartMultiWindowData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "beginComputeImeFrameLw IME_SUSPENDED = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mMultiWindowWmsInstance:Lcom/android/server/wm/VivoSmartMultiWindowWms;

    sget-boolean v3, Lcom/android/server/wm/VivoSmartMultiWindowWms;->IME_SUSPENDED:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    if-ne v0, v6, :cond_0

    .line 1499
    iget v1, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mOriginalmRequestedWidth:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mOriginalmRequestedHeight:I

    if-gtz v1, :cond_0

    goto/16 :goto_0

    .line 1487
    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mMultiWindowWmsInstance:Lcom/android/server/wm/VivoSmartMultiWindowWms;

    sget-boolean v1, Lcom/android/server/wm/VivoSmartMultiWindowWms;->IME_SUSPENDED:Z

    if-eqz v1, :cond_4

    .line 1488
    iget-object v1, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mMultiWindowWmsInstance:Lcom/android/server/wm/VivoSmartMultiWindowWms;

    sput-boolean v4, Lcom/android/server/wm/VivoSmartMultiWindowWms;->IME_SUSPENDED:Z

    .line 1489
    iget-object v1, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v5}, Lcom/android/server/wm/WindowManagerService;->updateImeWindowVisible(I)V

    goto :goto_1
.end method

.method public calculateImeParam(FF)V
    .locals 2
    .param p1, "xOffset"    # F
    .param p2, "yOffset"    # F

    .prologue
    .line 1422
    iget-object v0, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mImeOffsetX:I

    .line 1423
    iget-object v0, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mImeOffsetY:I

    .line 1424
    iget-object v0, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/wm/WindowSmartMultiWindowData;->adjustImeHandWrittingShownFrame(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;FF)V

    .line 1425
    return-void
.end method

.method public computeImeFrameLw()V
    .locals 5

    .prologue
    .line 1511
    iget-object v3, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mOriginalmRequestedWidth:I

    if-lez v3, :cond_0

    iget v3, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mOriginalmRequestedHeight:I

    if-gtz v3, :cond_1

    .line 1522
    :cond_0
    :goto_0
    return-void

    .line 1514
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1515
    .local v2, "type":I
    const/16 v3, 0x7db

    if-ne v2, v3, :cond_0

    .line 1518
    iget-object v3, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mImeScaleValue:F

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 1519
    .local v1, "reqw":I
    iget-object v3, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mImeScaleValue:F

    mul-float/2addr v3, v4

    float-to-int v0, v3

    .line 1520
    .local v0, "reqh":I
    iget-object v3, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v1

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 1521
    iget-object v3, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v0

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method public finishApplyGravity(II)V
    .locals 7
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x2

    .line 1244
    iget-object v4, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v4}, Lcom/android/server/wm/WindowSmartMultiWindowData;->mustAdjustPopupWindowPosition(Lcom/android/server/wm/WindowState;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1303
    :cond_0
    :goto_0
    return-void

    .line 1247
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v4, :cond_4

    .line 1248
    iget-object v4, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v4, v4, Lcom/android/server/wm/AppWindowToken;->isSpecialToken:Z

    iput-boolean v4, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->isSpecialToken:Z

    .line 1249
    iget-object v4, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v4, v4, Lcom/android/server/wm/AppWindowToken;->mDisplayMode:I

    iput v4, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mDisplayMode:I

    .line 1251
    iget-object v4, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, v4}, Lcom/android/server/wm/WindowSmartMultiWindowData;->isQiyiMustScaleWindow(Lcom/android/server/wm/WindowState;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1252
    iput-boolean v6, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->isSpecialToken:Z

    .line 1253
    iput v5, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mDisplayMode:I

    .line 1257
    :cond_2
    iget-object v4, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, v4}, Lcom/android/server/wm/WindowSmartMultiWindowData;->isMustCauseScaleWindow(Lcom/android/server/wm/WindowState;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1258
    iput-boolean v6, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->isSpecialToken:Z

    .line 1259
    iput v5, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mDisplayMode:I

    .line 1262
    :cond_3
    iget-boolean v4, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mMustScaleWindowNoCondition:Z

    if-eqz v4, :cond_4

    .line 1263
    iput-boolean v6, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->isSpecialToken:Z

    .line 1264
    iput v5, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mDisplayMode:I

    .line 1268
    :cond_4
    iget-boolean v4, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->isSpecialToken:Z

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mDisplayMode:I

    if-eq v4, v5, :cond_6

    :cond_5
    iget-object v4, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, v4}, Lcom/android/server/wm/WindowSmartMultiWindowData;->isQiYiWindow(Lcom/android/server/wm/WindowState;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1272
    :cond_6
    iget-boolean v4, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->isSpecialToken:Z

    if-eqz v4, :cond_7

    iget v4, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mDisplayMode:I

    if-eqz v4, :cond_0

    :cond_7
    iget-boolean v4, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->isSpecialToken:Z

    if-eqz v4, :cond_8

    iget v4, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mDisplayMode:I

    if-eq v4, v5, :cond_0

    .line 1275
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/WindowSmartMultiWindowData;->getStackSmartMultiWindowData()Lcom/android/server/wm/StackSmartMultiWindowData;

    move-result-object v3

    .line 1276
    .local v3, "stackdata":Lcom/android/server/wm/StackSmartMultiWindowData;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/server/wm/StackSmartMultiWindowData;->isFullScreen()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/android/server/wm/StackSmartMultiWindowData;->getDisplayMode()I

    move-result v4

    if-eq v4, v5, :cond_0

    .line 1279
    invoke-virtual {v3}, Lcom/android/server/wm/StackSmartMultiWindowData;->getActualBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1280
    .local v0, "actuallbounds":Landroid/graphics/Rect;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1283
    iget-object v4, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v4, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    .line 1284
    .local v1, "frame":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-le p2, v4, :cond_9

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-lt v4, v5, :cond_9

    .line 1285
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int/2addr v4, p2

    iput v4, v1, Landroid/graphics/Rect;->top:I

    goto/16 :goto_0

    .line 1287
    :cond_9
    iget-object v4, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1288
    .local v2, "gravity":I
    and-int/lit8 v4, v2, 0x50

    if-lez v4, :cond_0

    .line 1291
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-gt p2, v4, :cond_0

    .line 1294
    invoke-virtual {v3}, Lcom/android/server/wm/StackSmartMultiWindowData;->isScreenPortrait()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1297
    iget v4, v0, Landroid/graphics/Rect;->top:I

    if-lez v4, :cond_0

    .line 1300
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, p2

    iput v4, v1, Landroid/graphics/Rect;->top:I

    .line 1301
    iget v4, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, p2

    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0
.end method

.method public getConfigurationLocked()Landroid/content/res/Configuration;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 943
    invoke-virtual {p0}, Lcom/android/server/wm/WindowSmartMultiWindowData;->getStackSmartMultiWindowData()Lcom/android/server/wm/StackSmartMultiWindowData;

    move-result-object v2

    .line 947
    .local v2, "stackdata":Lcom/android/server/wm/StackSmartMultiWindowData;
    if-nez v2, :cond_1

    .line 948
    iget-object v4, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v4, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    .line 967
    :cond_0
    :goto_0
    return-object v1

    .line 950
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/wm/StackSmartMultiWindowData;->getDisplayMode()I

    move-result v0

    .line 951
    .local v0, "displaymode":I
    invoke-virtual {p0}, Lcom/android/server/wm/WindowSmartMultiWindowData;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v3

    .line 952
    .local v3, "taskstack":Lcom/android/server/wm/TaskStack;
    if-eqz v3, :cond_2

    iget v5, v3, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-nez v5, :cond_3

    .line 954
    :cond_2
    iget-object v4, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v4, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    goto :goto_0

    .line 956
    :cond_3
    iget-object v5, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v5, v5, Lcom/android/server/wm/AppWindowToken;->mOrientation:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    const/4 v5, 0x1

    if-ne v0, v5, :cond_4

    .line 958
    iget-object v5, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mMultiWindowWmsInstance:Lcom/android/server/wm/VivoSmartMultiWindowWms;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mMultiWindowWmsInstance:Lcom/android/server/wm/VivoSmartMultiWindowWms;

    iget-object v6, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v6, v6, Lcom/android/server/wm/AppWindowToken;->mOrientation:I

    invoke-virtual {v5, v6}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->getConfigurationLocked(I)Landroid/content/res/Configuration;

    move-result-object v1

    .line 960
    .local v1, "localConfiguration":Landroid/content/res/Configuration;
    :goto_1
    if-nez v1, :cond_0

    .line 964
    .end local v1    # "localConfiguration":Landroid/content/res/Configuration;
    :cond_4
    iget-object v5, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mMultiWindowWmsInstance:Lcom/android/server/wm/VivoSmartMultiWindowWms;

    if-eqz v5, :cond_6

    iget-object v4, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mMultiWindowWmsInstance:Lcom/android/server/wm/VivoSmartMultiWindowWms;

    iget v5, v3, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v4, v5}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->getConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v1

    .line 967
    .restart local v1    # "localConfiguration":Landroid/content/res/Configuration;
    :goto_2
    if-nez v1, :cond_0

    iget-object v4, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v4, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    goto :goto_0

    .end local v1    # "localConfiguration":Landroid/content/res/Configuration;
    :cond_5
    move-object v1, v4

    .line 958
    goto :goto_1

    :cond_6
    move-object v1, v4

    .line 964
    goto :goto_2
.end method

.method public getDisplayMode()I
    .locals 2

    .prologue
    .line 972
    invoke-virtual {p0}, Lcom/android/server/wm/WindowSmartMultiWindowData;->getStackSmartMultiWindowData()Lcom/android/server/wm/StackSmartMultiWindowData;

    move-result-object v0

    .line 973
    .local v0, "stackdata":Lcom/android/server/wm/StackSmartMultiWindowData;
    if-nez v0, :cond_0

    .line 974
    const/4 v1, 0x0

    .line 976
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/StackSmartMultiWindowData;->getDisplayMode()I

    move-result v1

    goto :goto_0
.end method

.method public getForceLayoutWindow()Z
    .locals 1

    .prologue
    .line 1240
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mForceResize:Z

    return v0
.end method

.method final getStack()Lcom/android/server/wm/TaskStack;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 765
    iget-object v3, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->stack:Lcom/android/server/wm/TaskStack;

    if-eqz v3, :cond_1

    .line 766
    iget-object v2, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->stack:Lcom/android/server/wm/TaskStack;

    .line 780
    :cond_0
    :goto_0
    return-object v2

    .line 768
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_0

    .line 773
    iget-object v3, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 774
    .local v1, "wtoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v1, :cond_0

    .line 775
    iget-object v0, v1, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    .line 776
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v3, :cond_0

    .line 777
    iget-object v2, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    goto :goto_0
.end method

.method final getStackOnly()Lcom/android/server/wm/TaskStack;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 751
    iget-object v3, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    if-nez v3, :cond_1

    .line 761
    :cond_0
    :goto_0
    return-object v2

    .line 754
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 755
    .local v1, "wtoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v1, :cond_0

    .line 756
    iget-object v0, v1, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    .line 757
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v3, :cond_0

    .line 758
    iget-object v2, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    goto :goto_0
.end method

.method final getStackSmartMultiWindowData()Lcom/android/server/wm/StackSmartMultiWindowData;
    .locals 2

    .prologue
    .line 726
    invoke-virtual {p0}, Lcom/android/server/wm/WindowSmartMultiWindowData;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 727
    .local v0, "taskstack":Lcom/android/server/wm/TaskStack;
    if-nez v0, :cond_0

    .line 728
    const/4 v1, 0x0

    .line 735
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/android/server/wm/TaskStack;->mSmartShowData:Lcom/android/server/wm/StackSmartMultiWindowData;

    goto :goto_0
.end method

.method public final getTransformParam()Lcom/android/server/wm/TransformParam;
    .locals 1

    .prologue
    .line 784
    iget-object v0, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    .line 785
    iget-object v0, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSmartMultiWindowData;->getTransformParam()Lcom/android/server/wm/TransformParam;

    move-result-object v0

    .line 788
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mSpec:Lcom/android/server/wm/TransformParam;

    goto :goto_0
.end method

.method public getWindowTokenOrientaion()I
    .locals 1

    .prologue
    .line 1200
    iget v0, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->requestedOrientation:I

    return v0
.end method

.method public getWindowTokenSpecialDisplayMode()I
    .locals 1

    .prologue
    .line 1192
    iget v0, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mDisplayMode:I

    return v0
.end method

.method public initTransformParam(Lcom/android/server/wm/TransformParam;)V
    .locals 1
    .param p1, "spec"    # Lcom/android/server/wm/TransformParam;

    .prologue
    .line 440
    if-nez p1, :cond_0

    .line 444
    :goto_0
    return-void

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mSpec:Lcom/android/server/wm/TransformParam;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TransformParam;->init(Lcom/android/server/wm/TransformParam;)V

    goto :goto_0
.end method

.method public isCauseScaleFindSurfaceView()Z
    .locals 1

    .prologue
    .line 1707
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mCauseScaleFindSurfaceView:Z

    return v0
.end method

.method public isCauseScaleFindSurfaceView(Lcom/android/server/wm/WindowState;)Z
    .locals 4
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1663
    if-eqz p1, :cond_0

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    if-nez v3, :cond_2

    :cond_0
    move v1, v2

    .line 1676
    :cond_1
    :goto_0
    return v1

    .line 1666
    :cond_2
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowSmartMultiWindowData;->isCauseScaleWindow()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowSmartMultiWindowData;->isCauseScaleFindSurfaceView()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1669
    :cond_3
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    .line 1670
    .local v0, "parent":Lcom/android/server/wm/WindowState;
    :goto_1
    if-eqz v0, :cond_5

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    if-eqz v3, :cond_5

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    if-eqz v3, :cond_5

    .line 1671
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowSmartMultiWindowData;->isCauseScaleWindow()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowSmartMultiWindowData;->isCauseScaleFindSurfaceView()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1674
    :cond_4
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    goto :goto_1

    :cond_5
    move v1, v2

    .line 1676
    goto :goto_0
.end method

.method public isCauseScaleWindow()Z
    .locals 1

    .prologue
    .line 1695
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mIsCauseScaleWindow:Z

    return v0
.end method

.method public isCauseScaleWindow(Lcom/android/server/wm/WindowState;)Z
    .locals 4
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1647
    if-eqz p1, :cond_0

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    if-nez v3, :cond_2

    :cond_0
    move v1, v2

    .line 1660
    :cond_1
    :goto_0
    return v1

    .line 1650
    :cond_2
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowSmartMultiWindowData;->isCauseScaleWindow()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1653
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    .line 1654
    .local v0, "parent":Lcom/android/server/wm/WindowState;
    :goto_1
    if-eqz v0, :cond_3

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    if-eqz v3, :cond_3

    .line 1655
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowSmartMultiWindowData;->isCauseScaleWindow()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1658
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    goto :goto_1

    :cond_3
    move v1, v2

    .line 1660
    goto :goto_0
.end method

.method public isDialogWindow()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1156
    iget-object v2, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    if-nez v2, :cond_1

    .line 1166
    :cond_0
    :goto_0
    return v1

    .line 1159
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1160
    .local v0, "type":I
    const/16 v2, 0x3eb

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/16 v2, 0x7d8

    if-eq v0, v2, :cond_2

    const/16 v2, 0x7d9

    if-ne v0, v2, :cond_0

    .line 1164
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isFindSurfaceView()Z
    .locals 1

    .prologue
    .line 1626
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mFindSurfaceView:Z

    return v0
.end method

.method public isFindSurfaceView(Lcom/android/server/wm/WindowState;)Z
    .locals 4
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1582
    if-eqz p1, :cond_0

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    if-nez v3, :cond_2

    :cond_0
    move v1, v2

    .line 1595
    :cond_1
    :goto_0
    return v1

    .line 1585
    :cond_2
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowSmartMultiWindowData;->isQiYiWindow()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowSmartMultiWindowData;->isFindSurfaceView()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1588
    :cond_3
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    .line 1589
    .local v0, "parent":Lcom/android/server/wm/WindowState;
    :goto_1
    if-eqz v0, :cond_5

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    if-eqz v3, :cond_5

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    if-eqz v3, :cond_5

    .line 1590
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowSmartMultiWindowData;->isQiYiWindow()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowSmartMultiWindowData;->isFindSurfaceView()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1593
    :cond_4
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    goto :goto_1

    :cond_5
    move v1, v2

    .line 1595
    goto :goto_0
.end method

.method public isIgnoreJudgeWindowScreen()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 914
    iget-object v2, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    if-nez v2, :cond_1

    .line 939
    :cond_0
    :goto_0
    return v1

    .line 917
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 918
    .local v0, "type":I
    const/16 v2, 0x7d0

    if-eq v0, v2, :cond_2

    const/16 v2, 0x7d1

    if-eq v0, v2, :cond_2

    const/16 v2, 0x7d4

    if-eq v0, v2, :cond_2

    const/16 v2, 0x7d5

    if-eq v0, v2, :cond_2

    const/16 v2, 0x7d6

    if-eq v0, v2, :cond_2

    const/16 v2, 0x7d9

    if-eq v0, v2, :cond_2

    const/16 v2, 0x7da

    if-eq v0, v2, :cond_2

    const/16 v2, 0x7db

    if-eq v0, v2, :cond_2

    const/16 v2, 0x7dc

    if-eq v0, v2, :cond_2

    const/16 v2, 0x7dd

    if-eq v0, v2, :cond_2

    const/16 v2, 0x7de

    if-eq v0, v2, :cond_2

    const/16 v2, 0x7df

    if-eq v0, v2, :cond_2

    const/16 v2, 0x7e1

    if-eq v0, v2, :cond_2

    const/16 v2, 0x7e3

    if-eq v0, v2, :cond_2

    const/16 v2, 0x7e4

    if-eq v0, v2, :cond_2

    const/16 v2, 0x7e8

    if-eq v0, v2, :cond_2

    const/16 v2, 0x7ef

    if-ne v0, v2, :cond_0

    .line 937
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isMustCauseScaleWindow()Z
    .locals 1

    .prologue
    .line 1701
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mMustCauseScaleWindow:Z

    return v0
.end method

.method public isMustCauseScaleWindow(Lcom/android/server/wm/WindowState;)Z
    .locals 4
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1679
    if-eqz p1, :cond_0

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    if-nez v3, :cond_2

    :cond_0
    move v1, v2

    .line 1692
    :cond_1
    :goto_0
    return v1

    .line 1682
    :cond_2
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowSmartMultiWindowData;->isCauseScaleWindow()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowSmartMultiWindowData;->isMustCauseScaleWindow()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1685
    :cond_3
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    .line 1686
    .local v0, "parent":Lcom/android/server/wm/WindowState;
    :goto_1
    if-eqz v0, :cond_5

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    if-eqz v3, :cond_5

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    if-eqz v3, :cond_5

    .line 1687
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowSmartMultiWindowData;->isCauseScaleWindow()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowSmartMultiWindowData;->isMustCauseScaleWindow()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1690
    :cond_4
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    goto :goto_1

    :cond_5
    move v1, v2

    .line 1692
    goto :goto_0
.end method

.method public isMustScaleWindow()Z
    .locals 1

    .prologue
    .line 1620
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mMustScaleWindow:Z

    return v0
.end method

.method final isNormalType()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 739
    invoke-virtual {p0}, Lcom/android/server/wm/WindowSmartMultiWindowData;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 740
    .local v0, "taskstack":Lcom/android/server/wm/TaskStack;
    if-nez v0, :cond_1

    .line 746
    :cond_0
    :goto_0
    return v1

    .line 743
    :cond_1
    iget-object v2, v0, Lcom/android/server/wm/TaskStack;->mSmartShowData:Lcom/android/server/wm/StackSmartMultiWindowData;

    if-eqz v2, :cond_0

    .line 746
    iget-object v1, v0, Lcom/android/server/wm/TaskStack;->mSmartShowData:Lcom/android/server/wm/StackSmartMultiWindowData;

    invoke-virtual {v1}, Lcom/android/server/wm/StackSmartMultiWindowData;->isFullScreen()Z

    move-result v1

    goto :goto_0
.end method

.method public isQiYiWindow()Z
    .locals 1

    .prologue
    .line 1614
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mIsQiYiWindow:Z

    return v0
.end method

.method public isQiYiWindow(Lcom/android/server/wm/WindowState;)Z
    .locals 4
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1566
    if-eqz p1, :cond_0

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    if-nez v3, :cond_2

    :cond_0
    move v1, v2

    .line 1579
    :cond_1
    :goto_0
    return v1

    .line 1569
    :cond_2
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowSmartMultiWindowData;->isQiYiWindow()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1572
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    .line 1573
    .local v0, "parent":Lcom/android/server/wm/WindowState;
    :goto_1
    if-eqz v0, :cond_3

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    if-eqz v3, :cond_3

    .line 1574
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowSmartMultiWindowData;->isQiYiWindow()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1577
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    goto :goto_1

    :cond_3
    move v1, v2

    .line 1579
    goto :goto_0
.end method

.method public isQiyiMustScaleWindow(Lcom/android/server/wm/WindowState;)Z
    .locals 4
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1598
    if-eqz p1, :cond_0

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    if-nez v3, :cond_2

    :cond_0
    move v1, v2

    .line 1611
    :cond_1
    :goto_0
    return v1

    .line 1601
    :cond_2
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowSmartMultiWindowData;->isQiYiWindow()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowSmartMultiWindowData;->isMustScaleWindow()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1604
    :cond_3
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    .line 1605
    .local v0, "parent":Lcom/android/server/wm/WindowState;
    :goto_1
    if-eqz v0, :cond_5

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    if-eqz v3, :cond_5

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    if-eqz v3, :cond_5

    .line 1606
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowSmartMultiWindowData;->isQiYiWindow()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowSmartMultiWindowData;->isMustScaleWindow()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1609
    :cond_4
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    goto :goto_1

    :cond_5
    move v1, v2

    .line 1611
    goto :goto_0
.end method

.method public isSpecialWindowToken()Z
    .locals 1

    .prologue
    .line 1196
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->isSpecialToken:Z

    return v0
.end method

.method public isSplitTaskWindow()Z
    .locals 2

    .prologue
    .line 980
    invoke-virtual {p0}, Lcom/android/server/wm/WindowSmartMultiWindowData;->getStackSmartMultiWindowData()Lcom/android/server/wm/StackSmartMultiWindowData;

    move-result-object v0

    .line 981
    .local v0, "stackdata":Lcom/android/server/wm/StackSmartMultiWindowData;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/StackSmartMultiWindowData;->isFullScreen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 982
    :cond_0
    const/4 v1, 0x0

    .line 984
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method final isTransformParamChanged()Z
    .locals 2

    .prologue
    .line 792
    invoke-virtual {p0}, Lcom/android/server/wm/WindowSmartMultiWindowData;->getTransformParam()Lcom/android/server/wm/TransformParam;

    move-result-object v0

    .line 793
    .local v0, "spec":Lcom/android/server/wm/TransformParam;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/TransformParam;->noChange()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public needAdjustShownFrameLw()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 800
    iget-object v3, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-nez v3, :cond_1

    .line 829
    :cond_0
    :goto_0
    return v2

    .line 803
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowSmartMultiWindowData;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    .line 804
    .local v1, "taskstack":Lcom/android/server/wm/TaskStack;
    if-eqz v1, :cond_0

    .line 807
    iget-object v0, v1, Lcom/android/server/wm/TaskStack;->mSmartShowData:Lcom/android/server/wm/StackSmartMultiWindowData;

    .line 808
    .local v0, "data":Lcom/android/server/wm/StackSmartMultiWindowData;
    if-eqz v0, :cond_0

    .line 811
    invoke-virtual {v0}, Lcom/android/server/wm/StackSmartMultiWindowData;->isFullScreen()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 812
    invoke-virtual {v0}, Lcom/android/server/wm/StackSmartMultiWindowData;->getMustFullMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 815
    iget-object v3, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->isSplitNormalMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 818
    iget-object v3, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_0

    .line 821
    iget-boolean v3, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->isSpecialToken:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mDisplayMode:I

    if-eqz v3, :cond_0

    .line 824
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 826
    :cond_3
    iget-boolean v3, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->isSpecialToken:Z

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mDisplayMode:I

    if-eqz v3, :cond_0

    .line 829
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/WindowSmartMultiWindowData;->isTransformParamChanged()Z

    move-result v2

    goto :goto_0
.end method

.method public setCauseScaleFindSurfaceView(Z)V
    .locals 0
    .param p1, "find"    # Z

    .prologue
    .line 1704
    iput-boolean p1, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mCauseScaleFindSurfaceView:Z

    .line 1705
    return-void
.end method

.method public setFindSurfaceView(Z)V
    .locals 0
    .param p1, "find"    # Z

    .prologue
    .line 1623
    iput-boolean p1, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mFindSurfaceView:Z

    .line 1624
    return-void
.end method

.method public setForceLayoutWindow(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 1237
    iput-boolean p1, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mForceResize:Z

    .line 1238
    return-void
.end method

.method public setMustCauseScaleWindow(Z)V
    .locals 0
    .param p1, "must"    # Z

    .prologue
    .line 1698
    iput-boolean p1, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mMustCauseScaleWindow:Z

    .line 1699
    return-void
.end method

.method public setMustScaleWindow(Z)V
    .locals 0
    .param p1, "must"    # Z

    .prologue
    .line 1617
    iput-boolean p1, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mMustScaleWindow:Z

    .line 1618
    return-void
.end method

.method public setWindowOriginalRequestWidthHeight(II)V
    .locals 0
    .param p1, "reqw"    # I
    .param p2, "reqh"    # I

    .prologue
    .line 1506
    iput p1, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mOriginalmRequestedWidth:I

    .line 1507
    iput p2, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mOriginalmRequestedHeight:I

    .line 1508
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1558
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " WindowSmartMultiWindowData own stack = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->stack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isSpecialToken = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->isSpecialToken:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mDisplayMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mDisplayMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSpec = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mSpec:Lcom/android/server/wm/TransformParam;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", win = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1562
    .local v0, "str":Ljava/lang/String;
    return-object v0
.end method

.method public updateSurfaceWindowCrop(Landroid/graphics/Rect;FFFF)V
    .locals 14
    .param p1, "clipRect"    # Landroid/graphics/Rect;
    .param p2, "surfacex"    # F
    .param p3, "surfacey"    # F
    .param p4, "surfacew"    # F
    .param p5, "surfaceh"    # F

    .prologue
    .line 994
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    if-nez v1, :cond_1

    .line 1077
    :cond_0
    :goto_0
    return-void

    .line 1002
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v1, :cond_0

    .line 1005
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_7

    .line 1006
    iget-object v1, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v1, v1, Lcom/android/server/wm/AppWindowToken;->isSpecialToken:Z

    iput-boolean v1, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->isSpecialToken:Z

    .line 1007
    iget-object v1, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v1, v1, Lcom/android/server/wm/AppWindowToken;->mDisplayMode:I

    iput v1, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mDisplayMode:I

    .line 1008
    iget-object v1, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v1, v1, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    iput v1, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->requestedOrientation:I

    .line 1010
    iget-object v1, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1011
    .local v10, "classname":Ljava/lang/String;
    if-eqz v10, :cond_4

    const-string v1, "com.tencent.mm/.ui.LauncherUI"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.tencent.mm/.ui.chatting.ChattingUI"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1012
    :cond_3
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->requestedOrientation:I

    .line 1016
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowSmartMultiWindowData;->isQiyiMustScaleWindow(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1017
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->isSpecialToken:Z

    .line 1018
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mDisplayMode:I

    .line 1022
    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowSmartMultiWindowData;->isMustCauseScaleWindow(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1023
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->isSpecialToken:Z

    .line 1024
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mDisplayMode:I

    .line 1027
    :cond_6
    iget-boolean v1, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mMustScaleWindowNoCondition:Z

    if-eqz v1, :cond_7

    .line 1028
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->isSpecialToken:Z

    .line 1029
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mDisplayMode:I

    .line 1032
    .end local v10    # "classname":Ljava/lang/String;
    :cond_7
    iget-object v1, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v1}, Lcom/android/server/wm/WindowSmartMultiWindowData;->isNeedNotFixCrop(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1035
    invoke-virtual {p0}, Lcom/android/server/wm/WindowSmartMultiWindowData;->getStackSmartMultiWindowData()Lcom/android/server/wm/StackSmartMultiWindowData;

    move-result-object v12

    .line 1037
    .local v12, "stackdata":Lcom/android/server/wm/StackSmartMultiWindowData;
    if-eqz v12, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->isSpecialToken:Z

    if-eqz v1, :cond_8

    iget v1, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mDisplayMode:I

    if-eqz v1, :cond_0

    .line 1039
    :cond_8
    invoke-virtual {v12}, Lcom/android/server/wm/StackSmartMultiWindowData;->isFullScreen()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1040
    iget-object v1, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->isSplitNormalMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1043
    sget-boolean v1, Landroid/util/VivoSmartMultiWindowConfig;->IS_EXPORT:Z

    if-eqz v1, :cond_0

    .line 1046
    :cond_9
    invoke-virtual {v12}, Lcom/android/server/wm/StackSmartMultiWindowData;->getActualBounds()Landroid/graphics/Rect;

    move-result-object v13

    .line 1049
    .local v13, "stackfitrect":Landroid/graphics/Rect;
    iget v1, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mDisplayMode:I

    iget-boolean v3, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->isSpecialToken:Z

    iget v8, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->requestedOrientation:I

    invoke-virtual {v12, v1, v3, v8}, Lcom/android/server/wm/StackSmartMultiWindowData;->getTouchableBounds(IZI)Landroid/graphics/Rect;

    move-result-object v2

    .line 1050
    .local v2, "stackscalerect":Landroid/graphics/Rect;
    iget v1, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mDisplayMode:I

    iget-boolean v3, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->isSpecialToken:Z

    iget v8, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->requestedOrientation:I

    invoke-virtual {v12, v1, v3, v8}, Lcom/android/server/wm/StackSmartMultiWindowData;->getTransformParam(IZI)Lcom/android/server/wm/TransformParam;

    move-result-object v11

    .line 1051
    .local v11, "mspec":Lcom/android/server/wm/TransformParam;
    if-eqz v13, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v13}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v11, :cond_0

    .line 1057
    move/from16 v4, p2

    .line 1058
    .local v4, "dispx":F
    move/from16 v5, p3

    .line 1061
    .local v5, "dispy":F
    iget-object v1, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    iget-object v3, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget v3, v3, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v1, v3

    :goto_1
    mul-float v6, p4, v1

    .line 1062
    .local v6, "dispw":F
    iget-object v1, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    iget-object v3, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget v3, v3, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v1, v3

    :goto_2
    mul-float v7, p5, v1

    .line 1063
    .local v7, "disph":F
    sget-boolean v1, Lcom/android/server/wm/WindowSmartMultiWindowData;->DEBUG_LAYOUT_SMARTWINDOW:Z

    if-eqz v1, :cond_a

    .line 1064
    const-string v1, "vivo_debug_WindowSmartMultiWindowData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateSurfaceWindowCrop surfacex = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ", surfacey = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ", surfacew = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ", surfaceh = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ", win = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v8, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    const-string v3, "vivo_debug_WindowSmartMultiWindowData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateSurfaceWindowCrop mspec.scale = "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v8, v11, Lcom/android/server/wm/TransformParam;->scale:F

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ", animscale = "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v1, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    iget-object v9, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget v9, v9, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v1, v9

    :goto_3
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ", win = "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v8, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    :cond_a
    iget-object v1, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    iget-object v3, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget v3, v3, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float v8, v1, v3

    :goto_4
    iget-object v1, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    iget-object v3, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mWin:Lcom/android/server/wm/WindowState;

    iget v3, v3, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float v9, v1, v3

    :goto_5
    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v9}, Lcom/android/server/wm/WindowSmartMultiWindowData;->fixSurfaceCrop(Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFF)V

    goto/16 :goto_0

    .line 1061
    .end local v6    # "dispw":F
    .end local v7    # "disph":F
    :cond_b
    const/high16 v1, 0x3f800000    # 1.0f

    goto/16 :goto_1

    .line 1062
    .restart local v6    # "dispw":F
    :cond_c
    const/high16 v1, 0x3f800000    # 1.0f

    goto/16 :goto_2

    .line 1065
    .restart local v7    # "disph":F
    :cond_d
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_3

    .line 1075
    :cond_e
    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_f
    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_5
.end method

.method public vivoChangeStackModeByActivity(IZ)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "isSpecialToken"    # Z

    .prologue
    .line 988
    iput-boolean p2, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->isSpecialToken:Z

    .line 989
    iput p1, p0, Lcom/android/server/wm/WindowSmartMultiWindowData;->mDisplayMode:I

    .line 990
    return-void
.end method
