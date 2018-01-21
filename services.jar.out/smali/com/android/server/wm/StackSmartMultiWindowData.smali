.class public Lcom/android/server/wm/StackSmartMultiWindowData;
.super Ljava/lang/Object;
.source "StackSmartMultiWindowData.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation


# static fields
.field private static final DEBUG_INFO:Z = false

.field private static final DEBUG_LAYOUT_SMARTWINDOW:Z

.field private static final DEBUG_MUST_LOG:Z = true

.field private static final DEBUG_TIME:Z

.field static final HOME_STACK_ID:I = 0x0

.field private static final SYSTEM_UI_FLAGS_LAYOUT_STABLE_FULLSCREEN:I = 0x500

.field private static final TAG_SMARTWINDOW:Ljava/lang/String; = "vivo_debug_StackSmartMultiWindowData"


# instance fields
.field private final INIT_SCALE_VALUE:F

.field private mAppRotation:I

.field private mDisplayMode:I

.field private mDisplayModeBack:I

.field private mForceLayout:Z

.field public mFullScreen:Z

.field private mIsHomeStack:Z

.field private mLandScapeActualBoundsMode0:Landroid/graphics/Rect;

.field private mLandScapeActualBoundsMode1:Landroid/graphics/Rect;

.field private mLandScapeActualBoundsMode2:Landroid/graphics/Rect;

.field private mLandScapeDisplayBoundsMode0:Landroid/graphics/Rect;

.field private mLandScapeDisplayBoundsMode1:Landroid/graphics/Rect;

.field private mLandScapeDisplayBoundsMode2:Landroid/graphics/Rect;

.field private mLandScapeLogicalBounds:Landroid/graphics/Rect;

.field mLandScapeScaleValueMode0:F

.field mLandScapeScaleValueMode1:F

.field private mLandScapeSpecMode0:Lcom/android/server/wm/TransformParam;

.field private mLandScapeSpecMode1:Lcom/android/server/wm/TransformParam;

.field private mLandScapeTouchBoundsMode0:Landroid/graphics/Rect;

.field private mLandScapeTouchBoundsMode1:Landroid/graphics/Rect;

.field private mMaxScreenParam:I

.field private mMinScreenParam:I

.field private mMustFullMode:Z

.field private mOriginalScreenRotation:I

.field private mPortraitActualBoundsMode0:Landroid/graphics/Rect;

.field private mPortraitActualBoundsMode1:Landroid/graphics/Rect;

.field private mPortraitActualBoundsMode2:Landroid/graphics/Rect;

.field private mPortraitDisplayBoundsMode0:Landroid/graphics/Rect;

.field private mPortraitDisplayBoundsMode1:Landroid/graphics/Rect;

.field private mPortraitDisplayBoundsMode2:Landroid/graphics/Rect;

.field private mPortraitLogicalBounds:Landroid/graphics/Rect;

.field mPortraitScaleValueMode0:F

.field mPortraitScaleValueMode1:F

.field private mPortraitSpecMode0:Lcom/android/server/wm/TransformParam;

.field private mPortraitSpecMode1:Lcom/android/server/wm/TransformParam;

.field private mPortraitTouchBoundsMode0:Landroid/graphics/Rect;

.field private mPortraitTouchBoundsMode1:Landroid/graphics/Rect;

.field private mScrLandAppLandSpecMode2:Lcom/android/server/wm/TransformParam;

.field private mScrLandAppLandTouchBoundsMode2:Landroid/graphics/Rect;

.field private mScrLandAppPortSpecMode2:Lcom/android/server/wm/TransformParam;

.field private mScrLandAppPortTouchBoundsMode2:Landroid/graphics/Rect;

.field private mScrPortAppLandSpecMode2:Lcom/android/server/wm/TransformParam;

.field private mScrPortAppLandTouchBoundsMode2:Landroid/graphics/Rect;

.field private mScrPortAppPortSpecMode2:Lcom/android/server/wm/TransformParam;

.field private mScrPortAppPortTouchBoundsMode2:Landroid/graphics/Rect;

.field private mScreenRotation:I

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field private mSplitBarHeight:I

.field private mStatusBarHeight:I

.field stack:Lcom/android/server/wm/TaskStack;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    sget-boolean v0, Landroid/util/VivoSmartMultiWindowConfig;->DEBUG_TIME:Z

    sput-boolean v0, Lcom/android/server/wm/StackSmartMultiWindowData;->DEBUG_TIME:Z

    .line 19
    sget-boolean v0, Landroid/util/VivoSmartMultiWindowConfig;->DEBUG_LAYOUT:Z

    sput-boolean v0, Lcom/android/server/wm/StackSmartMultiWindowData;->DEBUG_LAYOUT_SMARTWINDOW:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/TaskStack;)V
    .locals 4
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "taskstack"    # Lcom/android/server/wm/TaskStack;

    .prologue
    const/4 v3, 0x1

    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-boolean v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mFullScreen:Z

    .line 27
    iput v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mDisplayMode:I

    .line 28
    iput v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mDisplayModeBack:I

    .line 29
    iput v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScreenRotation:I

    .line 30
    iput v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mAppRotation:I

    .line 31
    iput v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mOriginalScreenRotation:I

    .line 33
    iput-boolean v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mIsHomeStack:Z

    .line 35
    iput-boolean v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mForceLayout:Z

    .line 36
    iput-boolean v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mMustFullMode:Z

    .line 37
    iput v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mMinScreenParam:I

    .line 38
    iput v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mMaxScreenParam:I

    .line 39
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mSplitBarHeight:I

    .line 40
    iput v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mStatusBarHeight:I

    .line 41
    const v0, 0x3ee66666    # 0.45f

    iput v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->INIT_SCALE_VALUE:F

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeLogicalBounds:Landroid/graphics/Rect;

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitLogicalBounds:Landroid/graphics/Rect;

    .line 47
    new-instance v0, Lcom/android/server/wm/TransformParam;

    invoke-direct {v0}, Lcom/android/server/wm/TransformParam;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeSpecMode0:Lcom/android/server/wm/TransformParam;

    .line 48
    iput v2, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeScaleValueMode0:F

    .line 49
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeDisplayBoundsMode0:Landroid/graphics/Rect;

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeActualBoundsMode0:Landroid/graphics/Rect;

    .line 53
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeTouchBoundsMode0:Landroid/graphics/Rect;

    .line 56
    new-instance v0, Lcom/android/server/wm/TransformParam;

    invoke-direct {v0}, Lcom/android/server/wm/TransformParam;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeSpecMode1:Lcom/android/server/wm/TransformParam;

    .line 57
    iput v2, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeScaleValueMode1:F

    .line 58
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeDisplayBoundsMode1:Landroid/graphics/Rect;

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeActualBoundsMode1:Landroid/graphics/Rect;

    .line 62
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeTouchBoundsMode1:Landroid/graphics/Rect;

    .line 66
    new-instance v0, Lcom/android/server/wm/TransformParam;

    invoke-direct {v0}, Lcom/android/server/wm/TransformParam;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScrLandAppLandSpecMode2:Lcom/android/server/wm/TransformParam;

    .line 67
    new-instance v0, Lcom/android/server/wm/TransformParam;

    invoke-direct {v0}, Lcom/android/server/wm/TransformParam;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScrLandAppPortSpecMode2:Lcom/android/server/wm/TransformParam;

    .line 68
    new-instance v0, Lcom/android/server/wm/TransformParam;

    invoke-direct {v0}, Lcom/android/server/wm/TransformParam;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScrPortAppLandSpecMode2:Lcom/android/server/wm/TransformParam;

    .line 69
    new-instance v0, Lcom/android/server/wm/TransformParam;

    invoke-direct {v0}, Lcom/android/server/wm/TransformParam;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScrPortAppPortSpecMode2:Lcom/android/server/wm/TransformParam;

    .line 70
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScrLandAppLandTouchBoundsMode2:Landroid/graphics/Rect;

    .line 71
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScrLandAppPortTouchBoundsMode2:Landroid/graphics/Rect;

    .line 72
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScrPortAppLandTouchBoundsMode2:Landroid/graphics/Rect;

    .line 73
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScrPortAppPortTouchBoundsMode2:Landroid/graphics/Rect;

    .line 76
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeDisplayBoundsMode2:Landroid/graphics/Rect;

    .line 77
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeActualBoundsMode2:Landroid/graphics/Rect;

    .line 83
    new-instance v0, Lcom/android/server/wm/TransformParam;

    invoke-direct {v0}, Lcom/android/server/wm/TransformParam;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitSpecMode0:Lcom/android/server/wm/TransformParam;

    .line 84
    iput v2, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitScaleValueMode0:F

    .line 85
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitDisplayBoundsMode0:Landroid/graphics/Rect;

    .line 86
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitActualBoundsMode0:Landroid/graphics/Rect;

    .line 89
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitTouchBoundsMode0:Landroid/graphics/Rect;

    .line 92
    new-instance v0, Lcom/android/server/wm/TransformParam;

    invoke-direct {v0}, Lcom/android/server/wm/TransformParam;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitSpecMode1:Lcom/android/server/wm/TransformParam;

    .line 93
    iput v2, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitScaleValueMode1:F

    .line 94
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitDisplayBoundsMode1:Landroid/graphics/Rect;

    .line 95
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitActualBoundsMode1:Landroid/graphics/Rect;

    .line 98
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitTouchBoundsMode1:Landroid/graphics/Rect;

    .line 103
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitDisplayBoundsMode2:Landroid/graphics/Rect;

    .line 104
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitActualBoundsMode2:Landroid/graphics/Rect;

    .line 111
    iput-object p2, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->stack:Lcom/android/server/wm/TaskStack;

    .line 112
    iput-object p1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 113
    iput-boolean v3, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mFullScreen:Z

    .line 114
    iget-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->stack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->stack:Lcom/android/server/wm/TaskStack;

    iget v0, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-nez v0, :cond_0

    .line 115
    iput-boolean v3, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mIsHomeStack:Z

    .line 118
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/TaskStack;F)V
    .locals 4
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "taskstack"    # Lcom/android/server/wm/TaskStack;
    .param p3, "keepratio"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-boolean v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mFullScreen:Z

    .line 27
    iput v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mDisplayMode:I

    .line 28
    iput v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mDisplayModeBack:I

    .line 29
    iput v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScreenRotation:I

    .line 30
    iput v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mAppRotation:I

    .line 31
    iput v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mOriginalScreenRotation:I

    .line 33
    iput-boolean v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mIsHomeStack:Z

    .line 35
    iput-boolean v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mForceLayout:Z

    .line 36
    iput-boolean v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mMustFullMode:Z

    .line 37
    iput v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mMinScreenParam:I

    .line 38
    iput v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mMaxScreenParam:I

    .line 39
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mSplitBarHeight:I

    .line 40
    iput v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mStatusBarHeight:I

    .line 41
    const v0, 0x3ee66666    # 0.45f

    iput v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->INIT_SCALE_VALUE:F

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeLogicalBounds:Landroid/graphics/Rect;

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitLogicalBounds:Landroid/graphics/Rect;

    .line 47
    new-instance v0, Lcom/android/server/wm/TransformParam;

    invoke-direct {v0}, Lcom/android/server/wm/TransformParam;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeSpecMode0:Lcom/android/server/wm/TransformParam;

    .line 48
    iput v2, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeScaleValueMode0:F

    .line 49
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeDisplayBoundsMode0:Landroid/graphics/Rect;

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeActualBoundsMode0:Landroid/graphics/Rect;

    .line 53
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeTouchBoundsMode0:Landroid/graphics/Rect;

    .line 56
    new-instance v0, Lcom/android/server/wm/TransformParam;

    invoke-direct {v0}, Lcom/android/server/wm/TransformParam;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeSpecMode1:Lcom/android/server/wm/TransformParam;

    .line 57
    iput v2, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeScaleValueMode1:F

    .line 58
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeDisplayBoundsMode1:Landroid/graphics/Rect;

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeActualBoundsMode1:Landroid/graphics/Rect;

    .line 62
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeTouchBoundsMode1:Landroid/graphics/Rect;

    .line 66
    new-instance v0, Lcom/android/server/wm/TransformParam;

    invoke-direct {v0}, Lcom/android/server/wm/TransformParam;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScrLandAppLandSpecMode2:Lcom/android/server/wm/TransformParam;

    .line 67
    new-instance v0, Lcom/android/server/wm/TransformParam;

    invoke-direct {v0}, Lcom/android/server/wm/TransformParam;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScrLandAppPortSpecMode2:Lcom/android/server/wm/TransformParam;

    .line 68
    new-instance v0, Lcom/android/server/wm/TransformParam;

    invoke-direct {v0}, Lcom/android/server/wm/TransformParam;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScrPortAppLandSpecMode2:Lcom/android/server/wm/TransformParam;

    .line 69
    new-instance v0, Lcom/android/server/wm/TransformParam;

    invoke-direct {v0}, Lcom/android/server/wm/TransformParam;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScrPortAppPortSpecMode2:Lcom/android/server/wm/TransformParam;

    .line 70
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScrLandAppLandTouchBoundsMode2:Landroid/graphics/Rect;

    .line 71
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScrLandAppPortTouchBoundsMode2:Landroid/graphics/Rect;

    .line 72
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScrPortAppLandTouchBoundsMode2:Landroid/graphics/Rect;

    .line 73
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScrPortAppPortTouchBoundsMode2:Landroid/graphics/Rect;

    .line 76
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeDisplayBoundsMode2:Landroid/graphics/Rect;

    .line 77
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeActualBoundsMode2:Landroid/graphics/Rect;

    .line 83
    new-instance v0, Lcom/android/server/wm/TransformParam;

    invoke-direct {v0}, Lcom/android/server/wm/TransformParam;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitSpecMode0:Lcom/android/server/wm/TransformParam;

    .line 84
    iput v2, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitScaleValueMode0:F

    .line 85
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitDisplayBoundsMode0:Landroid/graphics/Rect;

    .line 86
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitActualBoundsMode0:Landroid/graphics/Rect;

    .line 89
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitTouchBoundsMode0:Landroid/graphics/Rect;

    .line 92
    new-instance v0, Lcom/android/server/wm/TransformParam;

    invoke-direct {v0}, Lcom/android/server/wm/TransformParam;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitSpecMode1:Lcom/android/server/wm/TransformParam;

    .line 93
    iput v2, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitScaleValueMode1:F

    .line 94
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitDisplayBoundsMode1:Landroid/graphics/Rect;

    .line 95
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitActualBoundsMode1:Landroid/graphics/Rect;

    .line 98
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitTouchBoundsMode1:Landroid/graphics/Rect;

    .line 103
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitDisplayBoundsMode2:Landroid/graphics/Rect;

    .line 104
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitActualBoundsMode2:Landroid/graphics/Rect;

    .line 121
    iput-object p2, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->stack:Lcom/android/server/wm/TaskStack;

    .line 122
    iput-object p1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 123
    iput-boolean v3, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mFullScreen:Z

    .line 125
    iget-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->stack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->stack:Lcom/android/server/wm/TaskStack;

    iget v0, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-nez v0, :cond_0

    .line 126
    iput-boolean v3, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mIsHomeStack:Z

    .line 128
    :cond_0
    return-void
.end method

.method private adjustBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 7
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 508
    if-nez p1, :cond_1

    .line 530
    .end local p1    # "rect":Landroid/graphics/Rect;
    :cond_0
    :goto_0
    return-object p1

    .line 511
    .restart local p1    # "rect":Landroid/graphics/Rect;
    :cond_1
    iget v5, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mDisplayMode:I

    if-lez v5, :cond_0

    .line 514
    iget v2, p1, Landroid/graphics/Rect;->left:I

    .line 515
    .local v2, "left":I
    iget v4, p1, Landroid/graphics/Rect;->top:I

    .line 516
    .local v4, "top":I
    iget v3, p1, Landroid/graphics/Rect;->right:I

    .line 517
    .local v3, "right":I
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 518
    .local v1, "bottom":I
    iget v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mAppRotation:I

    .line 520
    .local v0, "approtate":I
    iget v5, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScreenRotation:I

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScreenRotation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 522
    :cond_2
    if-eqz v2, :cond_0

    if-nez v4, :cond_0

    .line 523
    new-instance p1, Landroid/graphics/Rect;

    .end local p1    # "rect":Landroid/graphics/Rect;
    invoke-direct {p1, v4, v2, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 526
    .restart local p1    # "rect":Landroid/graphics/Rect;
    :cond_3
    if-nez v2, :cond_0

    if-eqz v4, :cond_0

    .line 527
    new-instance p1, Landroid/graphics/Rect;

    .end local p1    # "rect":Landroid/graphics/Rect;
    invoke-direct {p1, v4, v2, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0
.end method

.method private calculateBounds()V
    .locals 1

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mIsHomeStack:Z

    if-eqz v0, :cond_0

    .line 226
    :goto_0
    return-void

    .line 223
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/StackSmartMultiWindowData;->initLogicalScreenParam()V

    .line 224
    invoke-direct {p0}, Lcom/android/server/wm/StackSmartMultiWindowData;->calculateStackParams()V

    .line 225
    invoke-direct {p0}, Lcom/android/server/wm/StackSmartMultiWindowData;->decideFullScreen()V

    goto :goto_0
.end method

.method private calculateScaleRatio()V
    .locals 14

    .prologue
    const/high16 v13, 0x3f000000    # 0.5f

    .line 401
    iget-boolean v10, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mIsHomeStack:Z

    if-eqz v10, :cond_0

    .line 489
    :goto_0
    return-void

    .line 404
    :cond_0
    iget v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mAppRotation:I

    .line 405
    .local v0, "approtate":I
    const/4 v2, 0x0

    .line 406
    .local v2, "hscale":F
    const/4 v8, 0x0

    .line 407
    .local v8, "vscale":F
    const/4 v6, 0x0

    .line 408
    .local v6, "scale":F
    iget v5, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mMinScreenParam:I

    .line 409
    .local v5, "minScreenParam":I
    iget v4, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mMaxScreenParam:I

    .line 410
    .local v4, "maxScreenParam":I
    const/4 v3, 0x0

    .line 411
    .local v3, "left":I
    const/4 v7, 0x0

    .line 412
    .local v7, "top":I
    const/4 v9, 0x0

    .line 413
    .local v9, "w":I
    const/4 v1, 0x0

    .line 416
    .local v1, "h":I
    iget-object v10, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeActualBoundsMode2:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    int-to-float v11, v4

    div-float v2, v10, v11

    .line 417
    iget-object v10, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeActualBoundsMode2:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    int-to-float v11, v5

    div-float v8, v10, v11

    .line 418
    cmpl-float v10, v2, v8

    if-lez v10, :cond_1

    move v6, v8

    .line 419
    :goto_1
    int-to-float v10, v4

    mul-float/2addr v10, v6

    add-float/2addr v10, v13

    float-to-int v9, v10

    .line 420
    int-to-float v10, v5

    mul-float/2addr v10, v6

    add-float/2addr v10, v13

    float-to-int v1, v10

    .line 421
    iget-object v10, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeActualBoundsMode2:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    iget-object v11, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeActualBoundsMode2:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    iget-object v12, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeActualBoundsMode2:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v12

    sub-int/2addr v11, v9

    shr-int/lit8 v11, v11, 0x1

    add-int v3, v10, v11

    .line 422
    iget-object v10, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeActualBoundsMode2:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget-object v11, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeActualBoundsMode2:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    iget-object v12, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeActualBoundsMode2:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    sub-int/2addr v11, v1

    shr-int/lit8 v11, v11, 0x1

    add-int v7, v10, v11

    .line 423
    iget-object v10, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScrLandAppLandSpecMode2:Lcom/android/server/wm/TransformParam;

    int-to-float v11, v3

    int-to-float v12, v7

    invoke-virtual {v10, v6, v11, v12}, Lcom/android/server/wm/TransformParam;->init(FFF)V

    .line 424
    iget-object v10, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScrLandAppLandTouchBoundsMode2:Landroid/graphics/Rect;

    add-int v11, v3, v9

    add-int v12, v7, v1

    invoke-virtual {v10, v3, v7, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 427
    iget-object v10, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeActualBoundsMode2:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    int-to-float v11, v5

    div-float v2, v10, v11

    .line 428
    iget-object v10, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeActualBoundsMode2:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    int-to-float v11, v4

    div-float v8, v10, v11

    .line 429
    cmpl-float v10, v2, v8

    if-lez v10, :cond_2

    move v6, v8

    .line 430
    :goto_2
    int-to-float v10, v5

    mul-float/2addr v10, v6

    add-float/2addr v10, v13

    float-to-int v9, v10

    .line 431
    int-to-float v10, v4

    mul-float/2addr v10, v6

    add-float/2addr v10, v13

    float-to-int v1, v10

    .line 432
    iget-object v10, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeActualBoundsMode2:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    iget-object v11, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeActualBoundsMode2:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    iget-object v12, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeActualBoundsMode2:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v12

    sub-int/2addr v11, v9

    shr-int/lit8 v11, v11, 0x1

    add-int v3, v10, v11

    .line 433
    iget-object v10, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeActualBoundsMode2:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget-object v11, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeActualBoundsMode2:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    iget-object v12, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeActualBoundsMode2:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    sub-int/2addr v11, v1

    shr-int/lit8 v11, v11, 0x1

    add-int v7, v10, v11

    .line 434
    iget-object v10, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScrLandAppPortSpecMode2:Lcom/android/server/wm/TransformParam;

    int-to-float v11, v3

    int-to-float v12, v7

    invoke-virtual {v10, v6, v11, v12}, Lcom/android/server/wm/TransformParam;->init(FFF)V

    .line 435
    iget-object v10, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScrLandAppPortTouchBoundsMode2:Landroid/graphics/Rect;

    add-int v11, v3, v9

    add-int v12, v7, v1

    invoke-virtual {v10, v3, v7, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 438
    iget-object v10, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitActualBoundsMode2:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    int-to-float v11, v4

    div-float v2, v10, v11

    .line 439
    iget-object v10, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitActualBoundsMode2:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    int-to-float v11, v5

    div-float v8, v10, v11

    .line 440
    cmpl-float v10, v2, v8

    if-lez v10, :cond_3

    move v6, v8

    .line 441
    :goto_3
    int-to-float v10, v4

    mul-float/2addr v10, v6

    add-float/2addr v10, v13

    float-to-int v9, v10

    .line 442
    int-to-float v10, v5

    mul-float/2addr v10, v6

    add-float/2addr v10, v13

    float-to-int v1, v10

    .line 443
    iget-object v10, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitActualBoundsMode2:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    iget-object v11, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitActualBoundsMode2:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    iget-object v12, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitActualBoundsMode2:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v12

    sub-int/2addr v11, v9

    shr-int/lit8 v11, v11, 0x1

    add-int v3, v10, v11

    .line 444
    iget-object v10, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitActualBoundsMode2:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget-object v11, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitActualBoundsMode2:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    iget-object v12, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitActualBoundsMode2:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    sub-int/2addr v11, v1

    shr-int/lit8 v11, v11, 0x1

    add-int v7, v10, v11

    .line 445
    iget-object v10, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScrPortAppLandSpecMode2:Lcom/android/server/wm/TransformParam;

    int-to-float v11, v3

    int-to-float v12, v7

    invoke-virtual {v10, v6, v11, v12}, Lcom/android/server/wm/TransformParam;->init(FFF)V

    .line 446
    iget-object v10, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScrPortAppLandTouchBoundsMode2:Landroid/graphics/Rect;

    add-int v11, v3, v9

    add-int v12, v7, v1

    invoke-virtual {v10, v3, v7, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 449
    iget-object v10, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitActualBoundsMode2:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    int-to-float v11, v5

    div-float v2, v10, v11

    .line 450
    iget-object v10, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitActualBoundsMode2:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    int-to-float v11, v4

    div-float v8, v10, v11

    .line 451
    cmpl-float v10, v2, v8

    if-lez v10, :cond_4

    move v6, v8

    .line 452
    :goto_4
    int-to-float v10, v5

    mul-float/2addr v10, v6

    add-float/2addr v10, v13

    float-to-int v9, v10

    .line 453
    int-to-float v10, v4

    mul-float/2addr v10, v6

    add-float/2addr v10, v13

    float-to-int v1, v10

    .line 454
    iget-object v10, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitActualBoundsMode2:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    iget-object v11, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitActualBoundsMode2:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    iget-object v12, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitActualBoundsMode2:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v12

    sub-int/2addr v11, v9

    shr-int/lit8 v11, v11, 0x1

    add-int v3, v10, v11

    .line 455
    iget-object v10, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitActualBoundsMode2:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget-object v11, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitActualBoundsMode2:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    iget-object v12, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitActualBoundsMode2:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    sub-int/2addr v11, v1

    shr-int/lit8 v11, v11, 0x1

    add-int v7, v10, v11

    .line 456
    iget-object v10, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScrPortAppPortSpecMode2:Lcom/android/server/wm/TransformParam;

    int-to-float v11, v3

    int-to-float v12, v7

    invoke-virtual {v10, v6, v11, v12}, Lcom/android/server/wm/TransformParam;->init(FFF)V

    .line 457
    iget-object v10, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScrPortAppPortTouchBoundsMode2:Landroid/graphics/Rect;

    add-int v11, v3, v9

    add-int v12, v7, v1

    invoke-virtual {v10, v3, v7, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_0

    :cond_1
    move v6, v2

    .line 418
    goto/16 :goto_1

    :cond_2
    move v6, v2

    .line 429
    goto/16 :goto_2

    :cond_3
    move v6, v2

    .line 440
    goto/16 :goto_3

    :cond_4
    move v6, v2

    .line 451
    goto :goto_4
.end method

.method private calculateStackParams()V
    .locals 2

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/android/server/wm/StackSmartMultiWindowData;->calculateScaleRatio()V

    .line 211
    iget-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitDisplayBoundsMode1:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitActualBoundsMode1:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 212
    iget-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitTouchBoundsMode1:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitActualBoundsMode1:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 214
    iget-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeDisplayBoundsMode1:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeActualBoundsMode1:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 215
    iget-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeTouchBoundsMode1:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeActualBoundsMode1:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 217
    return-void
.end method

.method private decideFullScreen()V
    .locals 1

    .prologue
    .line 1163
    iget v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mDisplayMode:I

    if-nez v0, :cond_0

    .line 1164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mFullScreen:Z

    .line 1168
    :goto_0
    return-void

    .line 1166
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mFullScreen:Z

    goto :goto_0
.end method

.method private dumpStackParams()V
    .locals 3

    .prologue
    .line 1177
    iget-boolean v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mIsHomeStack:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->stack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/wm/StackSmartMultiWindowData;->DEBUG_LAYOUT_SMARTWINDOW:Z

    if-nez v0, :cond_1

    .line 1236
    :cond_0
    :goto_0
    return-void

    .line 1180
    :cond_1
    const-string v0, "vivo_debug_StackSmartMultiWindowData"

    const-string v1, ".......dump begin............"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    const-string v0, "vivo_debug_StackSmartMultiWindowData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stack id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->stack:Lcom/android/server/wm/TaskStack;

    iget v2, v2, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mDisplayMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mDisplayMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mFullScreen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mFullScreen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mMustFullMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mMustFullMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    const-string v0, "vivo_debug_StackSmartMultiWindowData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLandScapeLogicalBounds = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeLogicalBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    const-string v0, "vivo_debug_StackSmartMultiWindowData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPortraitLogicalBounds = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitLogicalBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    const-string v0, "vivo_debug_StackSmartMultiWindowData"

    const-string v1, "mode0 params"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    const-string v0, "vivo_debug_StackSmartMultiWindowData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLandScapeSpecMode0 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeSpecMode0:Lcom/android/server/wm/TransformParam;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    const-string v0, "vivo_debug_StackSmartMultiWindowData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLandScapeDisplayBoundsMode0 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeDisplayBoundsMode0:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    const-string v0, "vivo_debug_StackSmartMultiWindowData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLandScapeActualBoundsMode0 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeActualBoundsMode0:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    const-string v0, "vivo_debug_StackSmartMultiWindowData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLandScapeTouchBoundsMode0 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeTouchBoundsMode0:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    const-string v0, "vivo_debug_StackSmartMultiWindowData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPortraitSpecMode0 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitSpecMode0:Lcom/android/server/wm/TransformParam;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    const-string v0, "vivo_debug_StackSmartMultiWindowData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPortraitDisplayBoundsMode0 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitDisplayBoundsMode0:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    const-string v0, "vivo_debug_StackSmartMultiWindowData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPortraitActualBoundsMode0 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitActualBoundsMode0:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    const-string v0, "vivo_debug_StackSmartMultiWindowData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPortraitTouchBoundsMode0 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitTouchBoundsMode0:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    const-string v0, "vivo_debug_StackSmartMultiWindowData"

    const-string v1, "mode1 params"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    const-string v0, "vivo_debug_StackSmartMultiWindowData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLandScapeSpecMode1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeSpecMode1:Lcom/android/server/wm/TransformParam;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    const-string v0, "vivo_debug_StackSmartMultiWindowData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLandScapeDisplayBoundsMode1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeDisplayBoundsMode1:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    const-string v0, "vivo_debug_StackSmartMultiWindowData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLandScapeActualBoundsMode1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeActualBoundsMode1:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    const-string v0, "vivo_debug_StackSmartMultiWindowData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLandScapeTouchBoundsMode1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeTouchBoundsMode1:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    const-string v0, "vivo_debug_StackSmartMultiWindowData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPortraitSpecMode1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitSpecMode1:Lcom/android/server/wm/TransformParam;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    const-string v0, "vivo_debug_StackSmartMultiWindowData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPortraitDisplayBoundsMode1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitDisplayBoundsMode1:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    const-string v0, "vivo_debug_StackSmartMultiWindowData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPortraitActualBoundsMode1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitActualBoundsMode1:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    const-string v0, "vivo_debug_StackSmartMultiWindowData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPortraitTouchBoundsMode1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitTouchBoundsMode1:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    const-string v0, "vivo_debug_StackSmartMultiWindowData"

    const-string v1, "mode2 params"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    const-string v0, "vivo_debug_StackSmartMultiWindowData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mScrLandAppLandSpecMode2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScrLandAppLandSpecMode2:Lcom/android/server/wm/TransformParam;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    const-string v0, "vivo_debug_StackSmartMultiWindowData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mScrLandAppPortSpecMode2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScrLandAppPortSpecMode2:Lcom/android/server/wm/TransformParam;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    const-string v0, "vivo_debug_StackSmartMultiWindowData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mScrPortAppLandSpecMode2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScrPortAppLandSpecMode2:Lcom/android/server/wm/TransformParam;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    const-string v0, "vivo_debug_StackSmartMultiWindowData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mScrPortAppPortSpecMode2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScrPortAppPortSpecMode2:Lcom/android/server/wm/TransformParam;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    const-string v0, "vivo_debug_StackSmartMultiWindowData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mScrLandAppLandTouchBoundsMode2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScrLandAppLandTouchBoundsMode2:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    const-string v0, "vivo_debug_StackSmartMultiWindowData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mScrLandAppPortTouchBoundsMode2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScrLandAppPortTouchBoundsMode2:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    const-string v0, "vivo_debug_StackSmartMultiWindowData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mScrPortAppLandTouchBoundsMode2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScrPortAppLandTouchBoundsMode2:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    const-string v0, "vivo_debug_StackSmartMultiWindowData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mScrPortAppPortTouchBoundsMode2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScrPortAppPortTouchBoundsMode2:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    const-string v0, "vivo_debug_StackSmartMultiWindowData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLandScapeDisplayBoundsMode2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeDisplayBoundsMode2:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    const-string v0, "vivo_debug_StackSmartMultiWindowData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLandScapeActualBoundsMode2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeActualBoundsMode2:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    const-string v0, "vivo_debug_StackSmartMultiWindowData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPortraitDisplayBoundsMode2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitDisplayBoundsMode2:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    const-string v0, "vivo_debug_StackSmartMultiWindowData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPortraitActualBoundsMode2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitActualBoundsMode2:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    const-string v0, "vivo_debug_StackSmartMultiWindowData"

    const-string v1, ".......dump end............"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private final getActuallBounds(IIII)Landroid/graphics/Rect;
    .locals 6
    .param p1, "screenroration"    # I
    .param p2, "displaymode"    # I
    .param p3, "orientation"    # I
    .param p4, "defaultrotation"    # I

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x7

    const/4 v3, 0x6

    const/4 v2, 0x5

    const/4 v1, 0x1

    .line 1119
    if-eqz p1, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_a

    .line 1120
    :cond_0
    if-nez p2, :cond_9

    .line 1121
    if-eqz p3, :cond_1

    if-eq v3, p3, :cond_1

    if-eq v5, p3, :cond_1

    const/16 v0, 0xb

    if-ne v0, p3, :cond_2

    .line 1123
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeActualBoundsMode0:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1157
    :goto_0
    return-object v0

    .line 1124
    :cond_2
    if-eq v1, p3, :cond_3

    if-eq v4, p3, :cond_3

    if-eq v2, p3, :cond_3

    const/16 v0, 0x9

    if-eq v0, p3, :cond_3

    const/16 v0, 0xc

    if-ne v0, p3, :cond_4

    .line 1126
    :cond_3
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitActualBoundsMode0:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1127
    :cond_4
    if-eqz p4, :cond_5

    if-eq v3, p4, :cond_5

    if-eq v5, p4, :cond_5

    const/16 v0, 0xb

    if-ne v0, p4, :cond_6

    .line 1129
    :cond_5
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeActualBoundsMode0:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1130
    :cond_6
    if-eq v1, p4, :cond_7

    if-eq v4, p4, :cond_7

    if-eq v2, p4, :cond_7

    const/16 v0, 0x9

    if-eq v0, p4, :cond_7

    const/16 v0, 0xc

    if-ne v0, p4, :cond_8

    .line 1132
    :cond_7
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitActualBoundsMode0:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1134
    :cond_8
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitActualBoundsMode0:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1137
    :cond_9
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitActualBoundsMode1:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1140
    :cond_a
    if-nez p2, :cond_13

    .line 1141
    if-eqz p3, :cond_b

    if-eq v3, p3, :cond_b

    if-eq v5, p3, :cond_b

    const/16 v0, 0xb

    if-ne v0, p3, :cond_c

    .line 1143
    :cond_b
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeActualBoundsMode0:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1144
    :cond_c
    if-eq v1, p3, :cond_d

    if-eq v4, p3, :cond_d

    if-eq v2, p3, :cond_d

    const/16 v0, 0x9

    if-eq v0, p3, :cond_d

    const/16 v0, 0xc

    if-ne v0, p3, :cond_e

    .line 1146
    :cond_d
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitActualBoundsMode0:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1147
    :cond_e
    if-eqz p4, :cond_f

    if-eq v3, p4, :cond_f

    if-eq v5, p4, :cond_f

    const/16 v0, 0xb

    if-ne v0, p4, :cond_10

    .line 1149
    :cond_f
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeActualBoundsMode0:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 1150
    :cond_10
    if-eq v1, p4, :cond_11

    if-eq v4, p4, :cond_11

    if-eq v2, p4, :cond_11

    const/16 v0, 0x9

    if-eq v0, p4, :cond_11

    const/16 v0, 0xc

    if-ne v0, p4, :cond_12

    .line 1152
    :cond_11
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitActualBoundsMode0:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 1154
    :cond_12
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeActualBoundsMode0:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 1157
    :cond_13
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeActualBoundsMode1:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto/16 :goto_0
.end method

.method private final getDisplayBounds(IIII)Landroid/graphics/Rect;
    .locals 6
    .param p1, "screenrotation"    # I
    .param p2, "displaymode"    # I
    .param p3, "orientation"    # I
    .param p4, "defaultrotation"    # I

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x7

    const/4 v3, 0x6

    const/4 v2, 0x5

    const/4 v1, 0x1

    .line 967
    if-eqz p1, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_13

    .line 968
    :cond_0
    if-nez p2, :cond_9

    .line 969
    if-eqz p3, :cond_1

    if-eq v3, p3, :cond_1

    if-eq v5, p3, :cond_1

    const/16 v0, 0xb

    if-ne v0, p3, :cond_2

    .line 971
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeDisplayBoundsMode0:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1036
    :goto_0
    return-object v0

    .line 972
    :cond_2
    if-eq v1, p3, :cond_3

    if-eq v4, p3, :cond_3

    if-eq v2, p3, :cond_3

    const/16 v0, 0x9

    if-eq v0, p3, :cond_3

    const/16 v0, 0xc

    if-ne v0, p3, :cond_4

    .line 974
    :cond_3
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitDisplayBoundsMode0:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 975
    :cond_4
    if-eqz p4, :cond_5

    if-eq v3, p4, :cond_5

    if-eq v5, p4, :cond_5

    const/16 v0, 0xb

    if-ne v0, p4, :cond_6

    .line 977
    :cond_5
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeDisplayBoundsMode0:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 978
    :cond_6
    if-eq v1, p4, :cond_7

    if-eq v4, p4, :cond_7

    if-eq v2, p4, :cond_7

    const/16 v0, 0x9

    if-eq v0, p4, :cond_7

    const/16 v0, 0xc

    if-ne v0, p4, :cond_8

    .line 980
    :cond_7
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitDisplayBoundsMode0:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 982
    :cond_8
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitDisplayBoundsMode0:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 984
    :cond_9
    if-ne p2, v1, :cond_a

    .line 985
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitDisplayBoundsMode1:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 987
    :cond_a
    if-eqz p3, :cond_b

    if-eq v3, p3, :cond_b

    if-eq v5, p3, :cond_b

    const/16 v0, 0xb

    if-ne v0, p3, :cond_c

    .line 989
    :cond_b
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeDisplayBoundsMode0:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 990
    :cond_c
    if-eq v1, p3, :cond_d

    if-eq v4, p3, :cond_d

    if-eq v2, p3, :cond_d

    const/16 v0, 0x9

    if-eq v0, p3, :cond_d

    const/16 v0, 0xc

    if-ne v0, p3, :cond_e

    .line 992
    :cond_d
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitDisplayBoundsMode0:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 993
    :cond_e
    if-eqz p4, :cond_f

    if-eq v3, p4, :cond_f

    if-eq v5, p4, :cond_f

    const/16 v0, 0xb

    if-ne v0, p4, :cond_10

    .line 995
    :cond_f
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeDisplayBoundsMode0:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 996
    :cond_10
    if-eq v1, p4, :cond_11

    if-eq v4, p4, :cond_11

    if-eq v2, p4, :cond_11

    const/16 v0, 0x9

    if-eq v0, p4, :cond_11

    const/16 v0, 0xc

    if-ne v0, p4, :cond_12

    .line 998
    :cond_11
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitDisplayBoundsMode0:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 1000
    :cond_12
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitDisplayBoundsMode0:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 1004
    :cond_13
    if-nez p2, :cond_1c

    .line 1005
    if-eqz p3, :cond_14

    if-eq v3, p3, :cond_14

    if-eq v5, p3, :cond_14

    const/16 v0, 0xb

    if-ne v0, p3, :cond_15

    .line 1007
    :cond_14
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeDisplayBoundsMode0:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 1008
    :cond_15
    if-eq v1, p3, :cond_16

    if-eq v4, p3, :cond_16

    if-eq v2, p3, :cond_16

    const/16 v0, 0x9

    if-eq v0, p3, :cond_16

    const/16 v0, 0xc

    if-ne v0, p3, :cond_17

    .line 1010
    :cond_16
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitDisplayBoundsMode0:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 1011
    :cond_17
    if-eqz p4, :cond_18

    if-eq v3, p4, :cond_18

    if-eq v5, p4, :cond_18

    const/16 v0, 0xb

    if-ne v0, p4, :cond_19

    .line 1013
    :cond_18
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeDisplayBoundsMode0:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 1014
    :cond_19
    if-eq v1, p4, :cond_1a

    if-eq v4, p4, :cond_1a

    if-eq v2, p4, :cond_1a

    const/16 v0, 0x9

    if-eq v0, p4, :cond_1a

    const/16 v0, 0xc

    if-ne v0, p4, :cond_1b

    .line 1016
    :cond_1a
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitDisplayBoundsMode0:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 1018
    :cond_1b
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeDisplayBoundsMode0:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 1020
    :cond_1c
    if-ne p2, v1, :cond_1d

    .line 1021
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeDisplayBoundsMode1:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 1023
    :cond_1d
    if-eqz p3, :cond_1e

    if-eq v3, p3, :cond_1e

    if-eq v5, p3, :cond_1e

    const/16 v0, 0xb

    if-ne v0, p3, :cond_1f

    .line 1025
    :cond_1e
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeDisplayBoundsMode0:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 1026
    :cond_1f
    if-eq v1, p3, :cond_20

    if-eq v4, p3, :cond_20

    if-eq v2, p3, :cond_20

    const/16 v0, 0x9

    if-eq v0, p3, :cond_20

    const/16 v0, 0xc

    if-ne v0, p3, :cond_21

    .line 1028
    :cond_20
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitDisplayBoundsMode0:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 1029
    :cond_21
    if-eqz p4, :cond_22

    if-eq v3, p4, :cond_22

    if-eq v5, p4, :cond_22

    const/16 v0, 0xb

    if-ne v0, p4, :cond_23

    .line 1031
    :cond_22
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeDisplayBoundsMode0:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 1032
    :cond_23
    if-eq v1, p4, :cond_24

    if-eq v4, p4, :cond_24

    if-eq v2, p4, :cond_24

    const/16 v0, 0x9

    if-eq v0, p4, :cond_24

    const/16 v0, 0xc

    if-ne v0, p4, :cond_25

    .line 1034
    :cond_24
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitDisplayBoundsMode0:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 1036
    :cond_25
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeDisplayBoundsMode0:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto/16 :goto_0
.end method

.method private final getScaleTransformParam(III)Lcom/android/server/wm/TransformParam;
    .locals 6
    .param p1, "screenrotation"    # I
    .param p2, "orientation"    # I
    .param p3, "defaultrotation"    # I

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x7

    const/4 v3, 0x6

    const/4 v2, 0x5

    const/4 v1, 0x1

    .line 900
    if-eqz p1, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_9

    .line 901
    :cond_0
    if-eqz p2, :cond_1

    if-eq v3, p2, :cond_1

    if-eq v5, p2, :cond_1

    const/16 v0, 0xb

    if-ne v0, p2, :cond_2

    .line 906
    :cond_1
    new-instance v0, Lcom/android/server/wm/TransformParam;

    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScrPortAppLandSpecMode2:Lcom/android/server/wm/TransformParam;

    invoke-direct {v0, v1}, Lcom/android/server/wm/TransformParam;-><init>(Lcom/android/server/wm/TransformParam;)V

    .line 961
    :goto_0
    return-object v0

    .line 907
    :cond_2
    if-eq v1, p2, :cond_3

    if-eq v4, p2, :cond_3

    if-eq v2, p2, :cond_3

    const/16 v0, 0x9

    if-eq v0, p2, :cond_3

    const/16 v0, 0xc

    if-ne v0, p2, :cond_4

    .line 912
    :cond_3
    new-instance v0, Lcom/android/server/wm/TransformParam;

    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScrPortAppPortSpecMode2:Lcom/android/server/wm/TransformParam;

    invoke-direct {v0, v1}, Lcom/android/server/wm/TransformParam;-><init>(Lcom/android/server/wm/TransformParam;)V

    goto :goto_0

    .line 913
    :cond_4
    if-eqz p3, :cond_5

    if-eq v3, p3, :cond_5

    if-eq v5, p3, :cond_5

    const/16 v0, 0xb

    if-ne v0, p3, :cond_6

    .line 918
    :cond_5
    new-instance v0, Lcom/android/server/wm/TransformParam;

    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScrPortAppLandSpecMode2:Lcom/android/server/wm/TransformParam;

    invoke-direct {v0, v1}, Lcom/android/server/wm/TransformParam;-><init>(Lcom/android/server/wm/TransformParam;)V

    goto :goto_0

    .line 919
    :cond_6
    if-eq v1, p3, :cond_7

    if-eq v4, p3, :cond_7

    if-eq v2, p3, :cond_7

    const/16 v0, 0x9

    if-eq v0, p3, :cond_7

    const/16 v0, 0xc

    if-ne v0, p3, :cond_8

    .line 924
    :cond_7
    new-instance v0, Lcom/android/server/wm/TransformParam;

    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScrPortAppPortSpecMode2:Lcom/android/server/wm/TransformParam;

    invoke-direct {v0, v1}, Lcom/android/server/wm/TransformParam;-><init>(Lcom/android/server/wm/TransformParam;)V

    goto :goto_0

    .line 929
    :cond_8
    new-instance v0, Lcom/android/server/wm/TransformParam;

    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScrPortAppPortSpecMode2:Lcom/android/server/wm/TransformParam;

    invoke-direct {v0, v1}, Lcom/android/server/wm/TransformParam;-><init>(Lcom/android/server/wm/TransformParam;)V

    goto :goto_0

    .line 932
    :cond_9
    if-eqz p2, :cond_a

    if-eq v3, p2, :cond_a

    if-eq v5, p2, :cond_a

    const/16 v0, 0xb

    if-ne v0, p2, :cond_b

    .line 937
    :cond_a
    new-instance v0, Lcom/android/server/wm/TransformParam;

    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScrLandAppLandSpecMode2:Lcom/android/server/wm/TransformParam;

    invoke-direct {v0, v1}, Lcom/android/server/wm/TransformParam;-><init>(Lcom/android/server/wm/TransformParam;)V

    goto :goto_0

    .line 938
    :cond_b
    if-eq v1, p2, :cond_c

    if-eq v4, p2, :cond_c

    if-eq v2, p2, :cond_c

    const/16 v0, 0x9

    if-eq v0, p2, :cond_c

    const/16 v0, 0xc

    if-ne v0, p2, :cond_d

    .line 943
    :cond_c
    new-instance v0, Lcom/android/server/wm/TransformParam;

    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScrLandAppPortSpecMode2:Lcom/android/server/wm/TransformParam;

    invoke-direct {v0, v1}, Lcom/android/server/wm/TransformParam;-><init>(Lcom/android/server/wm/TransformParam;)V

    goto :goto_0

    .line 945
    :cond_d
    if-eqz p3, :cond_e

    if-eq v3, p3, :cond_e

    if-eq v5, p3, :cond_e

    const/16 v0, 0xb

    if-ne v0, p3, :cond_f

    .line 950
    :cond_e
    new-instance v0, Lcom/android/server/wm/TransformParam;

    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScrLandAppLandSpecMode2:Lcom/android/server/wm/TransformParam;

    invoke-direct {v0, v1}, Lcom/android/server/wm/TransformParam;-><init>(Lcom/android/server/wm/TransformParam;)V

    goto :goto_0

    .line 951
    :cond_f
    if-eq v1, p3, :cond_10

    if-eq v4, p3, :cond_10

    if-eq v2, p3, :cond_10

    const/16 v0, 0x9

    if-eq v0, p3, :cond_10

    const/16 v0, 0xc

    if-ne v0, p3, :cond_11

    .line 956
    :cond_10
    new-instance v0, Lcom/android/server/wm/TransformParam;

    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScrLandAppPortSpecMode2:Lcom/android/server/wm/TransformParam;

    invoke-direct {v0, v1}, Lcom/android/server/wm/TransformParam;-><init>(Lcom/android/server/wm/TransformParam;)V

    goto/16 :goto_0

    .line 961
    :cond_11
    new-instance v0, Lcom/android/server/wm/TransformParam;

    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScrLandAppLandSpecMode2:Lcom/android/server/wm/TransformParam;

    invoke-direct {v0, v1}, Lcom/android/server/wm/TransformParam;-><init>(Lcom/android/server/wm/TransformParam;)V

    goto/16 :goto_0
.end method

.method private final getTouchableBounds(IIII)Landroid/graphics/Rect;
    .locals 6
    .param p1, "screenroration"    # I
    .param p2, "displaymode"    # I
    .param p3, "orientation"    # I
    .param p4, "defaultrotation"    # I

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x7

    const/4 v3, 0x6

    const/4 v2, 0x5

    const/4 v1, 0x1

    .line 1043
    if-eqz p1, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_13

    .line 1044
    :cond_0
    if-nez p2, :cond_9

    .line 1045
    if-eqz p3, :cond_1

    if-eq v3, p3, :cond_1

    if-eq v5, p3, :cond_1

    const/16 v0, 0xb

    if-ne v0, p3, :cond_2

    .line 1047
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeTouchBoundsMode0:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1112
    :goto_0
    return-object v0

    .line 1048
    :cond_2
    if-eq v1, p3, :cond_3

    if-eq v4, p3, :cond_3

    if-eq v2, p3, :cond_3

    const/16 v0, 0x9

    if-eq v0, p3, :cond_3

    const/16 v0, 0xc

    if-ne v0, p3, :cond_4

    .line 1050
    :cond_3
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitTouchBoundsMode0:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1051
    :cond_4
    if-eqz p4, :cond_5

    if-eq v3, p4, :cond_5

    if-eq v5, p4, :cond_5

    const/16 v0, 0xb

    if-ne v0, p4, :cond_6

    .line 1053
    :cond_5
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeTouchBoundsMode0:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1054
    :cond_6
    if-eq v1, p4, :cond_7

    if-eq v4, p4, :cond_7

    if-eq v2, p4, :cond_7

    const/16 v0, 0x9

    if-eq v0, p4, :cond_7

    const/16 v0, 0xc

    if-ne v0, p4, :cond_8

    .line 1056
    :cond_7
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitTouchBoundsMode0:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1058
    :cond_8
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitTouchBoundsMode0:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1060
    :cond_9
    if-ne p2, v1, :cond_a

    .line 1061
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitTouchBoundsMode1:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1063
    :cond_a
    if-eqz p3, :cond_b

    if-eq v3, p3, :cond_b

    if-eq v5, p3, :cond_b

    const/16 v0, 0xb

    if-ne v0, p3, :cond_c

    .line 1065
    :cond_b
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScrPortAppLandTouchBoundsMode2:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1066
    :cond_c
    if-eq v1, p3, :cond_d

    if-eq v4, p3, :cond_d

    if-eq v2, p3, :cond_d

    const/16 v0, 0x9

    if-eq v0, p3, :cond_d

    const/16 v0, 0xc

    if-ne v0, p3, :cond_e

    .line 1068
    :cond_d
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScrPortAppPortTouchBoundsMode2:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1069
    :cond_e
    if-eqz p4, :cond_f

    if-eq v3, p4, :cond_f

    if-eq v5, p4, :cond_f

    const/16 v0, 0xb

    if-ne v0, p4, :cond_10

    .line 1071
    :cond_f
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScrPortAppLandTouchBoundsMode2:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 1072
    :cond_10
    if-eq v1, p4, :cond_11

    if-eq v4, p4, :cond_11

    if-eq v2, p4, :cond_11

    const/16 v0, 0x9

    if-eq v0, p4, :cond_11

    const/16 v0, 0xc

    if-ne v0, p4, :cond_12

    .line 1074
    :cond_11
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScrPortAppPortTouchBoundsMode2:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 1076
    :cond_12
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScrPortAppPortTouchBoundsMode2:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 1080
    :cond_13
    if-nez p2, :cond_1c

    .line 1081
    if-eqz p3, :cond_14

    if-eq v3, p3, :cond_14

    if-eq v5, p3, :cond_14

    const/16 v0, 0xb

    if-ne v0, p3, :cond_15

    .line 1083
    :cond_14
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeTouchBoundsMode0:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 1084
    :cond_15
    if-eq v1, p3, :cond_16

    if-eq v4, p3, :cond_16

    if-eq v2, p3, :cond_16

    const/16 v0, 0x9

    if-eq v0, p3, :cond_16

    const/16 v0, 0xc

    if-ne v0, p3, :cond_17

    .line 1086
    :cond_16
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitTouchBoundsMode0:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 1087
    :cond_17
    if-eqz p4, :cond_18

    if-eq v3, p4, :cond_18

    if-eq v5, p4, :cond_18

    const/16 v0, 0xb

    if-ne v0, p4, :cond_19

    .line 1089
    :cond_18
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeTouchBoundsMode0:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 1090
    :cond_19
    if-eq v1, p4, :cond_1a

    if-eq v4, p4, :cond_1a

    if-eq v2, p4, :cond_1a

    const/16 v0, 0x9

    if-eq v0, p4, :cond_1a

    const/16 v0, 0xc

    if-ne v0, p4, :cond_1b

    .line 1092
    :cond_1a
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitTouchBoundsMode0:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 1094
    :cond_1b
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeTouchBoundsMode0:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 1096
    :cond_1c
    if-ne p2, v1, :cond_1d

    .line 1097
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeTouchBoundsMode1:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 1099
    :cond_1d
    if-eqz p3, :cond_1e

    if-eq v3, p3, :cond_1e

    if-eq v5, p3, :cond_1e

    const/16 v0, 0xb

    if-ne v0, p3, :cond_1f

    .line 1101
    :cond_1e
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScrLandAppLandTouchBoundsMode2:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 1102
    :cond_1f
    if-eq v1, p3, :cond_20

    if-eq v4, p3, :cond_20

    if-eq v2, p3, :cond_20

    const/16 v0, 0x9

    if-eq v0, p3, :cond_20

    const/16 v0, 0xc

    if-ne v0, p3, :cond_21

    .line 1104
    :cond_20
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScrLandAppPortTouchBoundsMode2:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 1105
    :cond_21
    if-eqz p4, :cond_22

    if-eq v3, p4, :cond_22

    if-eq v5, p4, :cond_22

    const/16 v0, 0xb

    if-ne v0, p4, :cond_23

    .line 1107
    :cond_22
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScrLandAppLandTouchBoundsMode2:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 1108
    :cond_23
    if-eq v1, p4, :cond_24

    if-eq v4, p4, :cond_24

    if-eq v2, p4, :cond_24

    const/16 v0, 0x9

    if-eq v0, p4, :cond_24

    const/16 v0, 0xc

    if-ne v0, p4, :cond_25

    .line 1110
    :cond_24
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScrLandAppPortTouchBoundsMode2:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 1112
    :cond_25
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScrLandAppLandTouchBoundsMode2:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto/16 :goto_0
.end method

.method private final getTransformParam(IIII)Lcom/android/server/wm/TransformParam;
    .locals 2
    .param p1, "screenrotation"    # I
    .param p2, "displaymode"    # I
    .param p3, "orientation"    # I
    .param p4, "defaultrotation"    # I

    .prologue
    .line 887
    if-nez p2, :cond_0

    .line 888
    new-instance v0, Lcom/android/server/wm/TransformParam;

    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeSpecMode0:Lcom/android/server/wm/TransformParam;

    invoke-direct {v0, v1}, Lcom/android/server/wm/TransformParam;-><init>(Lcom/android/server/wm/TransformParam;)V

    .line 892
    :goto_0
    return-object v0

    .line 889
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 890
    new-instance v0, Lcom/android/server/wm/TransformParam;

    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeSpecMode1:Lcom/android/server/wm/TransformParam;

    invoke-direct {v0, v1}, Lcom/android/server/wm/TransformParam;-><init>(Lcom/android/server/wm/TransformParam;)V

    goto :goto_0

    .line 892
    :cond_1
    invoke-direct {p0, p1, p3, p4}, Lcom/android/server/wm/StackSmartMultiWindowData;->getScaleTransformParam(III)Lcom/android/server/wm/TransformParam;

    move-result-object v0

    goto :goto_0
.end method

.method private initLogicalScreenParam()V
    .locals 4

    .prologue
    .line 230
    iget v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mStatusBarHeight:I

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mService:Lcom/android/server/wm/WindowManagerService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 231
    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mStatusBarHeight:I

    .line 233
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->stack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mMaxScreenParam:I

    if-lez v1, :cond_2

    iget v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mMinScreenParam:I

    if-lez v1, :cond_2

    iget v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mMaxScreenParam:I

    iget v2, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mMinScreenParam:I

    if-eq v1, v2, :cond_2

    .line 248
    :cond_1
    :goto_0
    return-void

    .line 238
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->stack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 239
    .local v0, "displaycontent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_1

    .line 242
    iget v1, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget v2, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    if-le v1, v2, :cond_4

    iget v1, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    :goto_1
    iput v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mMinScreenParam:I

    .line 243
    iget v1, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget v2, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    if-le v1, v2, :cond_5

    iget v1, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    :goto_2
    iput v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mMaxScreenParam:I

    .line 244
    sget-boolean v1, Lcom/android/server/wm/StackSmartMultiWindowData;->DEBUG_LAYOUT_SMARTWINDOW:Z

    if-eqz v1, :cond_3

    .line 245
    const-string v1, "vivo_debug_StackSmartMultiWindowData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initLogicalScreenParam mMinScreenParam = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mMinScreenParam:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mMaxScreenParam = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mMaxScreenParam:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_3
    iget v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScreenRotation:I

    invoke-direct {p0, v1}, Lcom/android/server/wm/StackSmartMultiWindowData;->updateLogicalBounds(I)V

    goto :goto_0

    .line 242
    :cond_4
    iget v1, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    goto :goto_1

    .line 243
    :cond_5
    iget v1, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    goto :goto_2
.end method

.method private resizeNormalStackBounds()V
    .locals 6

    .prologue
    .line 847
    iget-object v3, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->stack:Lcom/android/server/wm/TaskStack;

    if-nez v3, :cond_1

    .line 884
    :cond_0
    :goto_0
    return-void

    .line 850
    :cond_1
    iget-boolean v3, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mIsHomeStack:Z

    if-nez v3, :cond_0

    .line 853
    sget-boolean v3, Lcom/android/server/wm/StackSmartMultiWindowData;->DEBUG_LAYOUT_SMARTWINDOW:Z

    if-eqz v3, :cond_2

    .line 854
    const-string v3, "vivo_debug_StackSmartMultiWindowData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resizeNormalStackBounds set bounds for stackid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->stack:Lcom/android/server/wm/TaskStack;

    iget v5, v5, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->stack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v3}, Lcom/android/server/wm/TaskStack;->canResizeBounds()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 859
    invoke-direct {p0}, Lcom/android/server/wm/StackSmartMultiWindowData;->initLogicalScreenParam()V

    .line 860
    const/4 v1, 0x0

    .line 861
    .local v1, "bounds":Landroid/graphics/Rect;
    iget v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mAppRotation:I

    .line 862
    .local v0, "approtate":I
    iget v2, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScreenRotation:I

    .line 874
    .local v2, "rotation":I
    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    .line 875
    :cond_3
    new-instance v1, Landroid/graphics/Rect;

    .end local v1    # "bounds":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeLogicalBounds:Landroid/graphics/Rect;

    invoke-direct {v1, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 879
    .restart local v1    # "bounds":Landroid/graphics/Rect;
    :goto_1
    sget-boolean v3, Lcom/android/server/wm/StackSmartMultiWindowData;->DEBUG_LAYOUT_SMARTWINDOW:Z

    if-eqz v3, :cond_4

    .line 880
    const-string v3, "vivo_debug_StackSmartMultiWindowData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resizeNormalStackBounds resize stackbounds bounds = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", for stackid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->stack:Lcom/android/server/wm/TaskStack;

    iget v5, v5, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", approtate = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", rotation = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    :cond_4
    iget-object v3, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->stack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/TaskStack;->setBounds(Landroid/graphics/Rect;)Z

    .line 883
    iget-object v3, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->stack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v3}, Lcom/android/server/wm/TaskStack;->updateSplitModeOverrideConfiguration()V

    goto/16 :goto_0

    .line 877
    :cond_5
    new-instance v1, Landroid/graphics/Rect;

    .end local v1    # "bounds":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitLogicalBounds:Landroid/graphics/Rect;

    invoke-direct {v1, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .restart local v1    # "bounds":Landroid/graphics/Rect;
    goto :goto_1
.end method

.method private updateLogicalBounds(I)V
    .locals 4
    .param p1, "rotation"    # I

    .prologue
    const/4 v3, 0x0

    .line 381
    iget-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitLogicalBounds:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mMinScreenParam:I

    iget v2, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mMaxScreenParam:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 382
    iget-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitDisplayBoundsMode0:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitLogicalBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 383
    iget-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitTouchBoundsMode0:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitLogicalBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 384
    iget-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitActualBoundsMode0:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitLogicalBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 385
    iget-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitSpecMode0:Lcom/android/server/wm/TransformParam;

    invoke-virtual {v0}, Lcom/android/server/wm/TransformParam;->reset()V

    .line 386
    iget-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitSpecMode1:Lcom/android/server/wm/TransformParam;

    invoke-virtual {v0}, Lcom/android/server/wm/TransformParam;->reset()V

    .line 387
    iget-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitDisplayBoundsMode2:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitLogicalBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 390
    iget-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeLogicalBounds:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mMaxScreenParam:I

    iget v2, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mMinScreenParam:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 391
    iget-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeDisplayBoundsMode0:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeLogicalBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 392
    iget-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeTouchBoundsMode0:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeLogicalBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 393
    iget-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeActualBoundsMode0:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeLogicalBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 394
    iget-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeSpecMode0:Lcom/android/server/wm/TransformParam;

    invoke-virtual {v0}, Lcom/android/server/wm/TransformParam;->reset()V

    .line 395
    iget-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeSpecMode1:Lcom/android/server/wm/TransformParam;

    invoke-virtual {v0}, Lcom/android/server/wm/TransformParam;->reset()V

    .line 396
    iget-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeDisplayBoundsMode2:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeLogicalBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 398
    return-void
.end method


# virtual methods
.method public changeDisplayMode(IZ)Z
    .locals 4
    .param p1, "mode"    # I
    .param p2, "resizeStackBounds"    # Z

    .prologue
    const/4 v0, 0x0

    .line 169
    iget-boolean v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mIsHomeStack:Z

    if-eqz v1, :cond_1

    .line 191
    :cond_0
    :goto_0
    return v0

    .line 172
    :cond_1
    sget-boolean v1, Lcom/android/server/wm/StackSmartMultiWindowData;->DEBUG_LAYOUT_SMARTWINDOW:Z

    if-eqz v1, :cond_2

    .line 173
    iget-object v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->stack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_5

    .line 174
    const-string v1, "vivo_debug_StackSmartMultiWindowData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeDisplayMode mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", stack id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->stack:Lcom/android/server/wm/TaskStack;

    iget v3, v3, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_2
    :goto_1
    iget v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mDisplayMode:I

    if-eq v1, p1, :cond_0

    .line 182
    iput-boolean v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mForceLayout:Z

    .line 183
    if-eqz p1, :cond_3

    .line 184
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mDisplayModeBack:I

    .line 186
    :cond_3
    iput p1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mDisplayMode:I

    .line 187
    invoke-direct {p0}, Lcom/android/server/wm/StackSmartMultiWindowData;->decideFullScreen()V

    .line 188
    if-eqz p2, :cond_4

    .line 189
    invoke-virtual {p0}, Lcom/android/server/wm/StackSmartMultiWindowData;->resizeStackBounds()V

    .line 191
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 176
    :cond_5
    const-string v1, "vivo_debug_StackSmartMultiWindowData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeDisplayMode mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public final getActualBounds()Landroid/graphics/Rect;
    .locals 4

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mIsHomeStack:Z

    if-eqz v0, :cond_0

    .line 163
    const/4 v0, 0x0

    .line 165
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScreenRotation:I

    iget v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mDisplayMode:I

    const/4 v2, -0x1

    iget v3, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mAppRotation:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/wm/StackSmartMultiWindowData;->getActuallBounds(IIII)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0
.end method

.method public getBackupStackBounds()Landroid/graphics/Rect;
    .locals 3

    .prologue
    .line 782
    iget v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScreenRotation:I

    .line 783
    .local v0, "rotation":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 784
    :cond_0
    iget v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mDisplayMode:I

    if-nez v1, :cond_1

    .line 785
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeActualBoundsMode0:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 792
    :goto_0
    return-object v1

    .line 787
    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeActualBoundsMode1:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 789
    :cond_2
    iget v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mDisplayMode:I

    if-nez v1, :cond_3

    .line 790
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitActualBoundsMode0:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 792
    :cond_3
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitActualBoundsMode1:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public getDisplayMode()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mDisplayMode:I

    return v0
.end method

.method public getExpectBounds(IZILandroid/view/WindowManager$LayoutParams;I)Landroid/graphics/Rect;
    .locals 3
    .param p1, "displaymode"    # I
    .param p2, "isSpecialToken"    # Z
    .param p3, "orientation"    # I
    .param p4, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p5, "sysUiFlags"    # I

    .prologue
    .line 585
    if-nez p2, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mMustFullMode:Z

    if-eqz v0, :cond_1

    .line 586
    :cond_0
    iget v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScreenRotation:I

    iget v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mAppRotation:I

    invoke-direct {p0, v0, p1, p3, v1}, Lcom/android/server/wm/StackSmartMultiWindowData;->getDisplayBounds(IIII)Landroid/graphics/Rect;

    move-result-object v0

    .line 588
    :goto_0
    return-object v0

    :cond_1
    iget v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScreenRotation:I

    iget v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mDisplayMode:I

    iget v2, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mAppRotation:I

    invoke-direct {p0, v0, v1, p3, v2}, Lcom/android/server/wm/StackSmartMultiWindowData;->getDisplayBounds(IIII)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0
.end method

.method public getMustFullMode()Z
    .locals 1

    .prologue
    .line 843
    iget-boolean v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mMustFullMode:Z

    return v0
.end method

.method public getOutDisplayBounds(IZILandroid/view/WindowManager$LayoutParams;IZ)Landroid/graphics/Rect;
    .locals 8
    .param p1, "displaymode"    # I
    .param p2, "isSpecialToken"    # Z
    .param p3, "orientation"    # I
    .param p4, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p5, "sysUiFlags"    # I
    .param p6, "mIsNeedIncludeStatusbar"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 592
    const/4 v0, 0x0

    .line 601
    .local v0, "bounds":Landroid/graphics/Rect;
    if-nez p2, :cond_0

    iget-boolean v5, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mMustFullMode:Z

    if-eqz v5, :cond_2

    .line 602
    :cond_0
    iget v5, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScreenRotation:I

    iget v6, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mAppRotation:I

    invoke-direct {p0, v5, p1, p3, v6}, Lcom/android/server/wm/StackSmartMultiWindowData;->getDisplayBounds(IIII)Landroid/graphics/Rect;

    move-result-object v0

    .line 606
    :goto_0
    if-nez p4, :cond_3

    .line 659
    :cond_1
    :goto_1
    return-object v0

    .line 604
    :cond_2
    iget v5, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScreenRotation:I

    iget v6, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mDisplayMode:I

    iget v7, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mAppRotation:I

    invoke-direct {p0, v5, v6, p3, v7}, Lcom/android/server/wm/StackSmartMultiWindowData;->getDisplayBounds(IIII)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    .line 609
    :cond_3
    iget v1, p4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 639
    .local v1, "flags":I
    iget v5, p4, Landroid/view/WindowManager$LayoutParams;->mAppOwnStatusBarBg:I

    if-nez v5, :cond_4

    move v3, v2

    .line 644
    .local v3, "mAppOwnStatusbarBg":Z
    :goto_2
    and-int/lit16 v5, p5, 0x500

    const/16 v6, 0x500

    if-ne v5, v6, :cond_5

    .line 654
    .local v2, "layoutstable":Z
    :goto_3
    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    if-eqz p6, :cond_1

    .line 655
    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mStatusBarHeight:I

    add-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->top:I

    goto :goto_1

    .end local v2    # "layoutstable":Z
    .end local v3    # "mAppOwnStatusbarBg":Z
    :cond_4
    move v3, v4

    .line 639
    goto :goto_2

    .restart local v3    # "mAppOwnStatusbarBg":Z
    :cond_5
    move v2, v4

    .line 644
    goto :goto_3
.end method

.method public getScreenRotation()I
    .locals 1

    .prologue
    .line 1170
    iget v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScreenRotation:I

    return v0
.end method

.method public final getStackBounds()Landroid/graphics/Rect;
    .locals 4

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mIsHomeStack:Z

    if-eqz v0, :cond_0

    .line 148
    const/4 v0, 0x0

    .line 151
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScreenRotation:I

    iget v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mDisplayMode:I

    const/4 v2, -0x1

    iget v3, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mAppRotation:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/wm/StackSmartMultiWindowData;->getDisplayBounds(IIII)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0
.end method

.method public final getStackBounds(IZI)Landroid/graphics/Rect;
    .locals 3
    .param p1, "displaymode"    # I
    .param p2, "isSpecialToken"    # Z
    .param p3, "orientation"    # I

    .prologue
    .line 663
    iget-boolean v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mIsHomeStack:Z

    if-eqz v0, :cond_0

    .line 664
    const/4 v0, 0x0

    .line 675
    :goto_0
    return-object v0

    .line 672
    :cond_0
    if-nez p2, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mMustFullMode:Z

    if-eqz v0, :cond_2

    .line 673
    :cond_1
    iget v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScreenRotation:I

    iget v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mAppRotation:I

    invoke-direct {p0, v0, p1, p3, v1}, Lcom/android/server/wm/StackSmartMultiWindowData;->getDisplayBounds(IIII)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    .line 675
    :cond_2
    iget v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScreenRotation:I

    iget v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mDisplayMode:I

    iget v2, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mAppRotation:I

    invoke-direct {p0, v0, v1, p3, v2}, Lcom/android/server/wm/StackSmartMultiWindowData;->getDisplayBounds(IIII)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0
.end method

.method public getStackCurrentAppOritation()I
    .locals 1

    .prologue
    .line 504
    iget v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mAppRotation:I

    return v0
.end method

.method public getStackForceLayout()Z
    .locals 1

    .prologue
    .line 819
    iget-boolean v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mForceLayout:Z

    return v0
.end method

.method public getStackOrientation()I
    .locals 5

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 800
    iget v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mAppRotation:I

    .line 801
    .local v0, "approtate":I
    iget v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScreenRotation:I

    .line 802
    .local v1, "rotation":I
    if-eqz v0, :cond_0

    const/4 v4, 0x6

    if-eq v4, v0, :cond_0

    const/16 v4, 0x8

    if-eq v4, v0, :cond_0

    const/16 v4, 0xb

    if-ne v4, v0, :cond_2

    :cond_0
    move v2, v3

    .line 810
    :cond_1
    :goto_0
    return v2

    .line 804
    :cond_2
    if-eq v0, v2, :cond_1

    const/4 v4, 0x7

    if-eq v4, v0, :cond_1

    const/4 v4, 0x5

    if-eq v4, v0, :cond_1

    const/16 v4, 0x9

    if-eq v4, v0, :cond_1

    const/16 v4, 0xc

    if-eq v4, v0, :cond_1

    .line 807
    if-eq v1, v2, :cond_3

    const/4 v4, 0x3

    if-ne v1, v4, :cond_1

    :cond_3
    move v2, v3

    .line 808
    goto :goto_0
.end method

.method public getStackScaleValue()F
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x7

    const/4 v4, 0x6

    const/4 v3, 0x5

    const/4 v2, 0x1

    .line 534
    iget v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mDisplayMode:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mDisplayMode:I

    if-ne v0, v2, :cond_1

    .line 535
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 555
    :goto_0
    return v0

    .line 537
    :cond_1
    iget v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScreenRotation:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScreenRotation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 538
    :cond_2
    iget v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mAppRotation:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mAppRotation:I

    if-eq v4, v0, :cond_3

    iget v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mAppRotation:I

    if-eq v6, v0, :cond_3

    const/16 v0, 0xb

    iget v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mAppRotation:I

    if-ne v0, v1, :cond_4

    .line 540
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScrPortAppLandSpecMode2:Lcom/android/server/wm/TransformParam;

    iget v0, v0, Lcom/android/server/wm/TransformParam;->scale:F

    goto :goto_0

    .line 541
    :cond_4
    iget v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mAppRotation:I

    if-eq v2, v0, :cond_5

    iget v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mAppRotation:I

    if-eq v5, v0, :cond_5

    iget v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mAppRotation:I

    if-eq v3, v0, :cond_5

    const/16 v0, 0x9

    iget v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mAppRotation:I

    if-eq v0, v1, :cond_5

    const/16 v0, 0xc

    iget v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mAppRotation:I

    if-ne v0, v1, :cond_6

    .line 543
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScrPortAppPortSpecMode2:Lcom/android/server/wm/TransformParam;

    iget v0, v0, Lcom/android/server/wm/TransformParam;->scale:F

    goto :goto_0

    .line 545
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScrPortAppPortSpecMode2:Lcom/android/server/wm/TransformParam;

    iget v0, v0, Lcom/android/server/wm/TransformParam;->scale:F

    goto :goto_0

    .line 548
    :cond_7
    iget v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mAppRotation:I

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mAppRotation:I

    if-eq v4, v0, :cond_8

    iget v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mAppRotation:I

    if-eq v6, v0, :cond_8

    const/16 v0, 0xb

    iget v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mAppRotation:I

    if-ne v0, v1, :cond_9

    .line 550
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScrLandAppLandSpecMode2:Lcom/android/server/wm/TransformParam;

    iget v0, v0, Lcom/android/server/wm/TransformParam;->scale:F

    goto :goto_0

    .line 551
    :cond_9
    iget v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mAppRotation:I

    if-eq v2, v0, :cond_a

    iget v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mAppRotation:I

    if-eq v5, v0, :cond_a

    iget v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mAppRotation:I

    if-eq v3, v0, :cond_a

    const/16 v0, 0x9

    iget v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mAppRotation:I

    if-eq v0, v1, :cond_a

    const/16 v0, 0xc

    iget v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mAppRotation:I

    if-ne v0, v1, :cond_b

    .line 553
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScrLandAppPortSpecMode2:Lcom/android/server/wm/TransformParam;

    iget v0, v0, Lcom/android/server/wm/TransformParam;->scale:F

    goto :goto_0

    .line 555
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScrLandAppLandSpecMode2:Lcom/android/server/wm/TransformParam;

    iget v0, v0, Lcom/android/server/wm/TransformParam;->scale:F

    goto :goto_0
.end method

.method public getStatusBarHeight()I
    .locals 1

    .prologue
    .line 824
    iget v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mStatusBarHeight:I

    return v0
.end method

.method public final getTouchableBounds()Landroid/graphics/Rect;
    .locals 4

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mIsHomeStack:Z

    if-eqz v0, :cond_0

    .line 156
    const/4 v0, 0x0

    .line 158
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScreenRotation:I

    iget v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mDisplayMode:I

    const/4 v2, -0x1

    iget v3, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mAppRotation:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/wm/StackSmartMultiWindowData;->getTouchableBounds(IIII)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0
.end method

.method public final getTouchableBounds(IZI)Landroid/graphics/Rect;
    .locals 3
    .param p1, "displaymode"    # I
    .param p2, "isSpecialToken"    # Z
    .param p3, "orientation"    # I

    .prologue
    .line 679
    iget-boolean v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mIsHomeStack:Z

    if-eqz v0, :cond_0

    .line 680
    const/4 v0, 0x0

    .line 691
    :goto_0
    return-object v0

    .line 688
    :cond_0
    if-nez p2, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mMustFullMode:Z

    if-eqz v0, :cond_2

    .line 689
    :cond_1
    iget v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScreenRotation:I

    iget v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mAppRotation:I

    invoke-direct {p0, v0, p1, p3, v1}, Lcom/android/server/wm/StackSmartMultiWindowData;->getTouchableBounds(IIII)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    .line 691
    :cond_2
    iget v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScreenRotation:I

    iget v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mDisplayMode:I

    iget v2, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mAppRotation:I

    invoke-direct {p0, v0, v1, p3, v2}, Lcom/android/server/wm/StackSmartMultiWindowData;->getTouchableBounds(IIII)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0
.end method

.method public final getTransformParam(IZI)Lcom/android/server/wm/TransformParam;
    .locals 3
    .param p1, "displaymode"    # I
    .param p2, "isSpecialToken"    # Z
    .param p3, "orientation"    # I

    .prologue
    .line 569
    if-nez p2, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mMustFullMode:Z

    if-eqz v0, :cond_1

    .line 570
    :cond_0
    iget v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScreenRotation:I

    iget v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mAppRotation:I

    invoke-direct {p0, v0, p1, p3, v1}, Lcom/android/server/wm/StackSmartMultiWindowData;->getTransformParam(IIII)Lcom/android/server/wm/TransformParam;

    move-result-object v0

    .line 572
    :goto_0
    return-object v0

    :cond_1
    iget v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScreenRotation:I

    iget v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mDisplayMode:I

    iget v2, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mAppRotation:I

    invoke-direct {p0, v0, v1, p3, v2}, Lcom/android/server/wm/StackSmartMultiWindowData;->getTransformParam(IIII)Lcom/android/server/wm/TransformParam;

    move-result-object v0

    goto :goto_0
.end method

.method public isFitScreenMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 143
    iget v1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mDisplayMode:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFullScreen()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mFullScreen:Z

    return v0
.end method

.method public isScaleMode()Z
    .locals 2

    .prologue
    .line 139
    iget v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mDisplayMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScreenPortrait()Z
    .locals 2

    .prologue
    .line 1173
    iget v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScreenRotation:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScreenRotation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetStackSize()V
    .locals 0

    .prologue
    .line 797
    return-void
.end method

.method public resizeStackBounds()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 695
    iget-object v3, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->stack:Lcom/android/server/wm/TaskStack;

    if-nez v3, :cond_1

    .line 779
    :cond_0
    :goto_0
    return-void

    .line 698
    :cond_1
    iget-boolean v3, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mIsHomeStack:Z

    if-nez v3, :cond_0

    .line 701
    sget-boolean v3, Lcom/android/server/wm/StackSmartMultiWindowData;->DEBUG_LAYOUT_SMARTWINDOW:Z

    if-eqz v3, :cond_2

    .line 702
    const-string v3, "vivo_debug_StackSmartMultiWindowData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resizeStackBounds set bounds for stackid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->stack:Lcom/android/server/wm/TaskStack;

    iget v5, v5, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->stack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v3}, Lcom/android/server/wm/TaskStack;->canResizeBounds()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 707
    invoke-direct {p0}, Lcom/android/server/wm/StackSmartMultiWindowData;->initLogicalScreenParam()V

    .line 708
    const/4 v1, 0x0

    .line 709
    .local v1, "bounds":Landroid/graphics/Rect;
    iget v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mAppRotation:I

    .line 710
    .local v0, "approtate":I
    iget v2, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScreenRotation:I

    .line 711
    .local v2, "rotation":I
    iget v3, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mDisplayMode:I

    if-nez v3, :cond_6

    .line 723
    if-eq v2, v6, :cond_3

    if-ne v2, v8, :cond_5

    .line 724
    :cond_3
    new-instance v1, Landroid/graphics/Rect;

    .end local v1    # "bounds":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeLogicalBounds:Landroid/graphics/Rect;

    invoke-direct {v1, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 776
    .restart local v1    # "bounds":Landroid/graphics/Rect;
    :cond_4
    :goto_1
    const-string v3, "vivo_debug_StackSmartMultiWindowData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resizeStackBounds resize stackbounds bounds = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", for stackid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->stack:Lcom/android/server/wm/TaskStack;

    iget v5, v5, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    iget-object v3, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->stack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/TaskStack;->setBounds(Landroid/graphics/Rect;)Z

    .line 778
    iget-object v3, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->stack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v3}, Lcom/android/server/wm/TaskStack;->updateSplitModeOverrideConfiguration()V

    goto :goto_0

    .line 726
    :cond_5
    new-instance v1, Landroid/graphics/Rect;

    .end local v1    # "bounds":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitLogicalBounds:Landroid/graphics/Rect;

    invoke-direct {v1, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .restart local v1    # "bounds":Landroid/graphics/Rect;
    goto :goto_1

    .line 728
    :cond_6
    iget v3, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mDisplayMode:I

    if-ne v3, v6, :cond_9

    .line 740
    if-eq v2, v6, :cond_7

    if-ne v2, v8, :cond_8

    .line 741
    :cond_7
    new-instance v1, Landroid/graphics/Rect;

    .end local v1    # "bounds":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeActualBoundsMode1:Landroid/graphics/Rect;

    invoke-direct {v1, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .restart local v1    # "bounds":Landroid/graphics/Rect;
    goto :goto_1

    .line 743
    :cond_8
    new-instance v1, Landroid/graphics/Rect;

    .end local v1    # "bounds":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitActualBoundsMode1:Landroid/graphics/Rect;

    invoke-direct {v1, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .restart local v1    # "bounds":Landroid/graphics/Rect;
    goto :goto_1

    .line 745
    :cond_9
    iget v3, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mDisplayMode:I

    if-ne v3, v7, :cond_4

    .line 746
    if-eqz v2, :cond_a

    if-ne v2, v7, :cond_b

    .line 759
    :cond_a
    new-instance v1, Landroid/graphics/Rect;

    .end local v1    # "bounds":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitDisplayBoundsMode1:Landroid/graphics/Rect;

    invoke-direct {v1, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .restart local v1    # "bounds":Landroid/graphics/Rect;
    goto :goto_1

    .line 773
    :cond_b
    new-instance v1, Landroid/graphics/Rect;

    .end local v1    # "bounds":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeDisplayBoundsMode1:Landroid/graphics/Rect;

    invoke-direct {v1, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .restart local v1    # "bounds":Landroid/graphics/Rect;
    goto :goto_1
.end method

.method public restoreAllDisplayMode(Z)V
    .locals 1
    .param p1, "save"    # Z

    .prologue
    .line 492
    iget-boolean v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mIsHomeStack:Z

    if-eqz v0, :cond_1

    .line 501
    :cond_0
    :goto_0
    return-void

    .line 495
    :cond_1
    if-eqz p1, :cond_2

    .line 496
    iget v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mDisplayMode:I

    iput v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mDisplayModeBack:I

    goto :goto_0

    .line 497
    :cond_2
    iget v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mDisplayModeBack:I

    if-ltz v0, :cond_0

    .line 498
    iget v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mDisplayModeBack:I

    iput v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mDisplayMode:I

    .line 499
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mDisplayModeBack:I

    goto :goto_0
.end method

.method public setMustFullMode(Z)V
    .locals 3
    .param p1, "fullmode"    # Z

    .prologue
    .line 829
    iget-boolean v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mIsHomeStack:Z

    if-eqz v0, :cond_0

    .line 840
    :goto_0
    return-void

    .line 832
    :cond_0
    sget-boolean v0, Lcom/android/server/wm/StackSmartMultiWindowData;->DEBUG_LAYOUT_SMARTWINDOW:Z

    if-eqz v0, :cond_1

    .line 833
    iget-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->stack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_2

    .line 834
    const-string v0, "vivo_debug_StackSmartMultiWindowData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMustFullMode fullmode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", stack id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->stack:Lcom/android/server/wm/TaskStack;

    iget v2, v2, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    :cond_1
    :goto_1
    iput-boolean p1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mMustFullMode:Z

    goto :goto_0

    .line 836
    :cond_2
    const-string v0, "vivo_debug_StackSmartMultiWindowData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMustFullMode fullmode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setScreenRotation(I)V
    .locals 3
    .param p1, "rotation"    # I

    .prologue
    .line 353
    iget-boolean v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mIsHomeStack:Z

    if-eqz v0, :cond_1

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    sget-boolean v0, Lcom/android/server/wm/StackSmartMultiWindowData;->DEBUG_LAYOUT_SMARTWINDOW:Z

    if-eqz v0, :cond_2

    .line 357
    iget-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->stack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_3

    .line 358
    const-string v0, "vivo_debug_StackSmartMultiWindowData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScreenRotation mScreenRotation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScreenRotation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", new rotation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", stack id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->stack:Lcom/android/server/wm/TaskStack;

    iget v2, v2, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", diplayMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mDisplayMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_2
    :goto_1
    iget v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScreenRotation:I

    if-eq v0, p1, :cond_0

    .line 366
    iget-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mService:Lcom/android/server/wm/WindowManagerService;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isSplitMode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 367
    iput p1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScreenRotation:I

    .line 368
    invoke-direct {p0}, Lcom/android/server/wm/StackSmartMultiWindowData;->resizeNormalStackBounds()V

    goto :goto_0

    .line 360
    :cond_3
    const-string v0, "vivo_debug_StackSmartMultiWindowData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScreenRotation mScreenRotation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScreenRotation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", new rotation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", diplayMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mDisplayMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 372
    :cond_4
    const-string v0, "vivo_debug_StackSmartMultiWindowData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScreenRotation mAppRotation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mAppRotation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mScreenRotation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScreenRotation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iput p1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScreenRotation:I

    .line 375
    invoke-virtual {p0}, Lcom/android/server/wm/StackSmartMultiWindowData;->resizeStackBounds()V

    goto/16 :goto_0
.end method

.method public setStackForceLayout(Z)V
    .locals 0
    .param p1, "forceLayout"    # Z

    .prologue
    .line 815
    iput-boolean p1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mForceLayout:Z

    .line 816
    return-void
.end method

.method public setWindowOriginalRotation(I)V
    .locals 3
    .param p1, "rotation"    # I

    .prologue
    .line 327
    iget-boolean v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mIsHomeStack:Z

    if-eqz v0, :cond_1

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    sget-boolean v0, Lcom/android/server/wm/StackSmartMultiWindowData;->DEBUG_LAYOUT_SMARTWINDOW:Z

    if-eqz v0, :cond_2

    .line 331
    iget-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->stack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_3

    .line 332
    const-string v0, "vivo_debug_StackSmartMultiWindowData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWindowOriginalRotation mAppRotation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mAppRotation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", new rotation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", stack id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->stack:Lcom/android/server/wm/TaskStack;

    iget v2, v2, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_2
    :goto_1
    iget v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mAppRotation:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 341
    iput p1, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mAppRotation:I

    .line 342
    iget-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mService:Lcom/android/server/wm/WindowManagerService;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isSplitMode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 343
    invoke-direct {p0}, Lcom/android/server/wm/StackSmartMultiWindowData;->resizeNormalStackBounds()V

    goto :goto_0

    .line 334
    :cond_3
    const-string v0, "vivo_debug_StackSmartMultiWindowData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWindowOriginalRotation mAppRotation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mAppRotation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", new rotation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 347
    :cond_4
    const-string v0, "vivo_debug_StackSmartMultiWindowData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWindowOriginalRotation mAppRotation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mAppRotation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-virtual {p0}, Lcom/android/server/wm/StackSmartMultiWindowData;->resizeStackBounds()V

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " StackSmartMultiWindowData own stack = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->stack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mDisplayMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mDisplayMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mFullScreen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mFullScreen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mMustFullMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mMustFullMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1241
    .local v0, "str":Ljava/lang/String;
    return-object v0
.end method

.method public updateStackBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Z
    .locals 8
    .param p1, "tmprect"    # Landroid/graphics/Rect;
    .param p2, "outRect"    # Landroid/graphics/Rect;
    .param p3, "resizeStackBounds"    # Z

    .prologue
    const/4 v7, 0x2

    const/4 v0, 0x0

    .line 251
    iget-boolean v3, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mIsHomeStack:Z

    if-eqz v3, :cond_0

    .line 323
    :goto_0
    return v0

    .line 254
    :cond_0
    if-nez p1, :cond_1

    .line 255
    iget-object v3, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitActualBoundsMode1:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    .line 256
    iget-object v3, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitActualBoundsMode2:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    .line 257
    iget-object v3, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeActualBoundsMode1:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    .line 258
    iget-object v3, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeActualBoundsMode2:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0

    .line 261
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mService:Lcom/android/server/wm/WindowManagerService;

    if-eqz v3, :cond_2

    .line 262
    iget-object v3, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getRotation()I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScreenRotation:I

    .line 264
    :cond_2
    sget-boolean v3, Lcom/android/server/wm/StackSmartMultiWindowData;->DEBUG_LAYOUT_SMARTWINDOW:Z

    if-eqz v3, :cond_3

    .line 265
    const-string v3, "vivo_debug_StackSmartMultiWindowData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateStackBounds mRotation = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScreenRotation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", tmprect = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_3
    iput-boolean v0, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mForceLayout:Z

    .line 268
    invoke-direct {p0}, Lcom/android/server/wm/StackSmartMultiWindowData;->initLogicalScreenParam()V

    .line 269
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 270
    .local v2, "rect1":Landroid/graphics/Rect;
    iget v3, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScreenRotation:I

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScreenRotation:I

    if-ne v3, v7, :cond_9

    .line 271
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget v4, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mMinScreenParam:I

    if-eq v3, v4, :cond_5

    .line 272
    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    iget v6, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 280
    :cond_5
    :goto_1
    iget v3, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScreenRotation:I

    iput v3, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mOriginalScreenRotation:I

    .line 281
    invoke-direct {p0, v2}, Lcom/android/server/wm/StackSmartMultiWindowData;->adjustBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 282
    .local v1, "rect":Landroid/graphics/Rect;
    const/4 v0, 0x0

    .line 286
    .local v0, "changed":Z
    iget v3, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScreenRotation:I

    if-eqz v3, :cond_6

    iget v3, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mScreenRotation:I

    if-ne v3, v7, :cond_d

    .line 287
    :cond_6
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 288
    iget-object v3, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitActualBoundsMode1:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitLogicalBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 289
    iget-object v3, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitActualBoundsMode2:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitLogicalBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 290
    const/4 v0, 0x1

    .line 315
    :goto_2
    invoke-direct {p0}, Lcom/android/server/wm/StackSmartMultiWindowData;->calculateBounds()V

    .line 316
    if-eqz p3, :cond_7

    .line 317
    invoke-virtual {p0}, Lcom/android/server/wm/StackSmartMultiWindowData;->resizeStackBounds()V

    .line 319
    :cond_7
    if-eqz p2, :cond_8

    .line 320
    invoke-virtual {p2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 322
    :cond_8
    invoke-direct {p0}, Lcom/android/server/wm/StackSmartMultiWindowData;->dumpStackParams()V

    goto/16 :goto_0

    .line 275
    .end local v0    # "changed":Z
    .end local v1    # "rect":Landroid/graphics/Rect;
    :cond_9
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget v4, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mMinScreenParam:I

    if-eq v3, v4, :cond_5

    .line 276
    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    iget v6, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 292
    .restart local v0    # "changed":Z
    .restart local v1    # "rect":Landroid/graphics/Rect;
    :cond_a
    iget-object v3, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitActualBoundsMode1:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget v6, v1, Landroid/graphics/Rect;->right:I

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 293
    iget-object v3, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitActualBoundsMode1:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitActualBoundsMode2:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitActualBoundsMode1:Landroid/graphics/Rect;

    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 294
    :cond_b
    const/4 v0, 0x1

    .line 296
    :cond_c
    iget-object v3, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitActualBoundsMode2:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitActualBoundsMode1:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 297
    iget-object v3, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeActualBoundsMode1:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->left:I

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    iget v7, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 298
    iget-object v3, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeActualBoundsMode2:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeActualBoundsMode1:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_2

    .line 302
    :cond_d
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 303
    iget-object v3, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeActualBoundsMode1:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeLogicalBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 304
    iget-object v3, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeActualBoundsMode2:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeLogicalBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_2

    .line 306
    :cond_e
    iget-object v3, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeActualBoundsMode1:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget v6, v1, Landroid/graphics/Rect;->right:I

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 307
    iget-object v3, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeActualBoundsMode1:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeActualBoundsMode2:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeActualBoundsMode1:Landroid/graphics/Rect;

    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 308
    :cond_f
    const/4 v0, 0x1

    .line 310
    :cond_10
    iget-object v3, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeActualBoundsMode2:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mLandScapeActualBoundsMode1:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 311
    iget-object v3, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitActualBoundsMode1:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->left:I

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    iget v7, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 312
    iget-object v3, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitActualBoundsMode2:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/StackSmartMultiWindowData;->mPortraitActualBoundsMode1:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_2
.end method
