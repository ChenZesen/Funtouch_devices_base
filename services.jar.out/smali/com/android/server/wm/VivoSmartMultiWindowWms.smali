.class public Lcom/android/server/wm/VivoSmartMultiWindowWms;
.super Ljava/lang/Object;
.source "VivoSmartMultiWindowWms.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation


# static fields
.field static final DEBUG_MWAPP_TRANSITION:Z

.field static final DEBUG_SMARTMULTIWINDOW_ALL:Z

.field static final DEBUG_SMARTMULTIWINDOW_IMPORTANT:Z

.field static final DEBUG_TIME:Z

.field public static IME_SUSPENDED:Z = false

.field private static final MSG_ID_NONE:I = 0x0

.field private static final MSG_ID_UPDATE_INPUTMETHOD_STATUS:I = 0x1

.field private static final MSG_SMART_MULTI_WINDOW_PUT_DATA:I = 0x2

.field private static final MSG_SMART_MULTI_WINDOW_PUT_DATA_DELAYED:I = 0xc8

.field static final TAG_IMPORTANT:Ljava/lang/String; = "vivo_debug_info_VivoSmartMultiWindowWms"

.field static final TAG_MWAPP_TRANSITION:Ljava/lang/String; = "vivo_debug_SmartMultiWindowTransition"

.field static final TAG_TASKSTACK:Ljava/lang/String; = "vivo_debug_TaskStack"

.field static final TAG_TIME:Ljava/lang/String; = "vivo_debug_time"

.field static final TAG_WINDOWSTATE:Ljava/lang/String; = "vivo_debug_WindowState"

.field static final TAG_WINDOWSTATEANIMATOR:Ljava/lang/String; = "vivo_debug_WindowStateAnimator"

.field static final TAG_WMS:Ljava/lang/String; = "vivo_debug_WindowManagerService"

.field public static final VIVO_IME_ISSHOWING:Ljava/lang/String; = "vivo_IME_isshowing_EX"

.field private static final VIVO_SMARTMULTIWINDOW_SHOW_IME:Ljava/lang/String; = "vivo_input_method_isshowing"

.field private static mInstance:Lcom/android/server/wm/VivoSmartMultiWindowWms;


# instance fields
.field private final IME_STATE_SPECIAL:I

.field private final IME_STATE_SPECIAL1:I

.field private final IME_STATE_SPECIAL2:I

.field private mAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

.field private mHandler:Landroid/os/Handler;

.field public mImePosScale:F

.field public mImePosX:F

.field public mImePosY:F

.field private mIsSpecialWindowVisible:Z

.field private mMaxScreenParam:I

.field private mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

.field private mMinScreenParam:I

.field private mSpecialWindow:Lcom/android/server/wm/WindowState;

.field private mWms:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    sget-boolean v0, Landroid/util/VivoSmartMultiWindowConfig;->DEBUG_ALL:Z

    sput-boolean v0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->DEBUG_SMARTMULTIWINDOW_ALL:Z

    .line 52
    sget-boolean v0, Landroid/util/VivoSmartMultiWindowConfig;->DEBUG_IMPORTANT:Z

    sput-boolean v0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->DEBUG_SMARTMULTIWINDOW_IMPORTANT:Z

    .line 53
    sget-boolean v0, Landroid/util/VivoSmartMultiWindowConfig;->DEBUG_MWAPP_TRANSITION:Z

    sput-boolean v0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->DEBUG_MWAPP_TRANSITION:Z

    .line 54
    sget-boolean v0, Landroid/util/VivoSmartMultiWindowConfig;->DEBUG_TIME:Z

    sput-boolean v0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->DEBUG_TIME:Z

    .line 65
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->IME_SUSPENDED:Z

    .line 71
    new-instance v0, Lcom/android/server/wm/VivoSmartMultiWindowWms;

    invoke-direct {v0}, Lcom/android/server/wm/VivoSmartMultiWindowWms;-><init>()V

    sput-object v0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mInstance:Lcom/android/server/wm/VivoSmartMultiWindowWms;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v1, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    .line 69
    iput-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    .line 73
    iput-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    .line 75
    iput v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMinScreenParam:I

    .line 76
    iput v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMaxScreenParam:I

    .line 535
    new-instance v0, Lcom/android/server/wm/VivoSmartMultiWindowWms$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/VivoSmartMultiWindowWms$1;-><init>(Lcom/android/server/wm/VivoSmartMultiWindowWms;)V

    iput-object v0, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mHandler:Landroid/os/Handler;

    .line 585
    iput v2, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mImePosX:F

    .line 586
    iput v2, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mImePosY:F

    .line 587
    iput v2, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mImePosScale:F

    .line 600
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->IME_STATE_SPECIAL:I

    .line 601
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->IME_STATE_SPECIAL1:I

    .line 602
    const/16 v0, 0xb

    iput v0, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->IME_STATE_SPECIAL2:I

    .line 603
    iput-boolean v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mIsSpecialWindowVisible:Z

    .line 605
    iput-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mSpecialWindow:Lcom/android/server/wm/WindowState;

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/VivoSmartMultiWindowWms;)Lcom/android/server/wm/WindowManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/VivoSmartMultiWindowWms;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/VivoSmartMultiWindowWms;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/VivoSmartMultiWindowWms;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/VivoSmartMultiWindowWms;)Lcom/android/server/VivoSmartMultiWindowMgr;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/VivoSmartMultiWindowWms;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    return-object v0
.end method

.method private addStackToLayoutAnimation(Lcom/android/server/wm/TaskStack;Ljava/util/ArrayList;)V
    .locals 6
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;
    .param p2, "animList"    # Ljava/util/ArrayList;

    .prologue
    .line 1378
    if-nez p1, :cond_1

    .line 1398
    :cond_0
    return-void

    .line 1381
    :cond_1
    if-nez p2, :cond_2

    .line 1382
    new-instance p2, Ljava/util/ArrayList;

    .end local p2    # "animList":Ljava/util/ArrayList;
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 1385
    .restart local p2    # "animList":Ljava/util/ArrayList;
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v4

    .line 1387
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    if-eqz v4, :cond_0

    .line 1390
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Task;

    .line 1391
    .local v3, "item":Lcom/android/server/wm/Task;
    iget-object v5, v3, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    if-eqz v5, :cond_3

    .line 1394
    iget-object v5, v3, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v5}, Lcom/android/server/wm/AppTokenList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    .line 1395
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private adjustStackBounds(Lcom/android/server/wm/TaskStack;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Z
    .locals 1
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "outbounds"    # Landroid/graphics/Rect;
    .param p4, "resizeStackBounds"    # Z

    .prologue
    .line 1967
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/TaskStack;->mSmartShowData:Lcom/android/server/wm/StackSmartMultiWindowData;

    if-nez v0, :cond_1

    .line 1968
    :cond_0
    const/4 v0, 0x0

    .line 1970
    :goto_0
    return v0

    :cond_1
    iget-object v0, p1, Lcom/android/server/wm/TaskStack;->mSmartShowData:Lcom/android/server/wm/StackSmartMultiWindowData;

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/server/wm/StackSmartMultiWindowData;->updateStackBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Z

    move-result v0

    goto :goto_0
.end method

.method private appTokenDrawnForMultiWindowLocked(Lcom/android/server/wm/AppWindowToken;)V
    .locals 5
    .param p1, "awtoken"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    const/16 v4, 0x65

    .line 1067
    iget-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-nez v1, :cond_1

    .line 1100
    :cond_0
    :goto_0
    return-void

    .line 1070
    :cond_1
    if-eqz p1, :cond_0

    .line 1071
    iget-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v2, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowAnimator;->getMultiWindowTransitionLocked(I)Lcom/android/server/wm/SmartMultiWindowTransition;

    move-result-object v0

    .line 1074
    .local v0, "multitransit":Lcom/android/server/wm/SmartMultiWindowTransition;
    if-eqz v0, :cond_0

    .line 1078
    invoke-virtual {v0}, Lcom/android/server/wm/SmartMultiWindowTransition;->isTransitionSet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1079
    invoke-virtual {v0, p1}, Lcom/android/server/wm/SmartMultiWindowTransition;->setApplicationDrawn(Lcom/android/server/wm/AppWindowToken;)V

    .line 1080
    invoke-virtual {v0}, Lcom/android/server/wm/SmartMultiWindowTransition;->getFinishedIfOneNotified()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1081
    iget-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v1, v4}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 1082
    iget-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1084
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/wm/SmartMultiWindowTransition;->decideMultiWindowTransitionNext()V

    .line 1085
    invoke-virtual {v0}, Lcom/android/server/wm/SmartMultiWindowTransition;->isTargetAppWindowTokenEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1086
    iget-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/VivoSmartMultiWindowMgr;->mNotifyDraw:Z

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/server/wm/VivoSmartMultiWindowWms;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mInstance:Lcom/android/server/wm/VivoSmartMultiWindowWms;

    return-object v0
.end method

.method private getMultiWindowTransitionLocked()Lcom/android/server/wm/SmartMultiWindowTransition;
    .locals 6

    .prologue
    .line 1103
    iget-object v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-nez v3, :cond_1

    .line 1104
    const/4 v2, 0x0

    .line 1116
    :cond_0
    :goto_0
    return-object v2

    .line 1106
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1107
    .local v0, "displaycontent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    .line 1108
    .local v1, "displayid":I
    iget-object v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowAnimator;->getMultiWindowTransitionLocked(I)Lcom/android/server/wm/SmartMultiWindowTransition;

    move-result-object v2

    .line 1110
    .local v2, "multitransit":Lcom/android/server/wm/SmartMultiWindowTransition;
    if-nez v2, :cond_0

    .line 1111
    new-instance v2, Lcom/android/server/wm/SmartMultiWindowTransition;

    .end local v2    # "multitransit":Lcom/android/server/wm/SmartMultiWindowTransition;
    iget-object v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    iget-object v5, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v2, v3, v0, v4, v5}, Lcom/android/server/wm/SmartMultiWindowTransition;-><init>(Landroid/content/Context;Lcom/android/server/wm/DisplayContent;Landroid/view/SurfaceSession;Lcom/android/server/wm/WindowManagerService;)V

    .line 1113
    .restart local v2    # "multitransit":Lcom/android/server/wm/SmartMultiWindowTransition;
    iget-object v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setMultiWindowTransitionLocked(ILcom/android/server/wm/SmartMultiWindowTransition;)V

    goto :goto_0
.end method

.method private isInInputMethodRegion(Landroid/graphics/Point;)Z
    .locals 11
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 792
    iget-object v8, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-eqz v8, :cond_0

    if-nez p1, :cond_2

    .line 793
    :cond_0
    const/4 v5, 0x0

    .line 883
    :cond_1
    return v5

    .line 795
    :cond_2
    const/4 v5, 0x0

    .line 796
    .local v5, "res":Z
    new-instance v4, Landroid/graphics/Region;

    invoke-direct {v4}, Landroid/graphics/Region;-><init>()V

    .line 797
    .local v4, "region":Landroid/graphics/Region;
    iget-object v8, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 798
    .local v1, "displayCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 799
    iget-object v8, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplayContent;

    .line 801
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v7

    .line 802
    .local v7, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v7}, Lcom/android/server/wm/WindowList;->size()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .local v3, "k":I
    :goto_1
    if-ltz v3, :cond_7

    .line 803
    invoke-virtual {v7, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    .line 804
    .local v6, "win":Lcom/android/server/wm/WindowState;
    sget-boolean v8, Lcom/android/server/wm/VivoSmartMultiWindowWms;->DEBUG_SMARTMULTIWINDOW_IMPORTANT:Z

    if-eqz v8, :cond_3

    .line 805
    const-string v8, "vivo_debug_WindowManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TAG_WMS isInInputMethodRegion win = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    :cond_3
    if-eqz v6, :cond_4

    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    if-eqz v8, :cond_4

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v9, 0x7db

    if-eq v8, v9, :cond_5

    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v9, 0x7dc

    if-eq v8, v9, :cond_5

    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v9, 0x3e8

    if-eq v8, v9, :cond_5

    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v9, 0x3eb

    if-eq v8, v9, :cond_5

    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v9, 0x3ea

    if-eq v8, v9, :cond_5

    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v9, 0xbb4

    if-eq v8, v9, :cond_5

    .line 802
    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 820
    :cond_5
    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v9, 0x3ea

    if-ne v8, v9, :cond_6

    .line 821
    invoke-virtual {v6, v4}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 823
    :cond_6
    iget v8, p1, Landroid/graphics/Point;->x:I

    iget v9, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v8, v9}, Landroid/graphics/Region;->contains(II)Z

    move-result v8

    or-int/2addr v5, v8

    .line 824
    if-eqz v5, :cond_8

    .line 798
    .end local v6    # "win":Lcom/android/server/wm/WindowState;
    :cond_7
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 828
    .restart local v6    # "win":Lcom/android/server/wm/WindowState;
    :cond_8
    const/16 v8, 0x3e8

    iget-object v9, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v8, v9, :cond_9

    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v9, 0x3eb

    if-ne v8, v9, :cond_a

    :cond_9
    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v8, :cond_4

    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v8, v8, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    if-eqz v8, :cond_4

    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v8, v8, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v9, 0x7db

    if-eq v8, v9, :cond_a

    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v8, v8, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v9, 0x7dc

    if-ne v8, v9, :cond_4

    .line 834
    :cond_a
    sget-boolean v8, Landroid/util/VivoSmartMultiWindowConfig;->IS_EXPORT:Z

    if-eqz v8, :cond_f

    .line 835
    const/16 v8, 0x7db

    iget-object v9, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v8, v9, :cond_b

    .line 836
    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget-object v8, v8, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    iget v9, p1, Landroid/graphics/Point;->x:I

    iget v10, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Region;->contains(II)Z

    move-result v8

    or-int/2addr v5, v8

    .line 837
    const-string v8, "vivo_debug_WindowManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TAG_WMS isInInputMethodRegion TYPE_INPUT_METHOD region = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v6, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget-object v10, v10, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " res = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    if-eqz v5, :cond_4

    goto :goto_2

    .line 844
    :cond_b
    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v9, 0xbb4

    if-ne v8, v9, :cond_c

    .line 845
    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v9, p1, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    iget v10, p1, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v8

    or-int/2addr v5, v8

    .line 846
    const-string v8, "vivo_debug_WindowManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TAG_WMS isInInputMethodRegion IMEDock mShowFrame = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v6, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " point = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    if-nez v5, :cond_7

    .line 851
    :cond_c
    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v8, :cond_f

    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v8, v8, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    if-eqz v8, :cond_f

    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v8, v8, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v9, 0x7db

    if-ne v8, v9, :cond_f

    .line 852
    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget-object v8, v8, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    iget v9, p1, Landroid/graphics/Point;->x:I

    iget v10, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Region;->contains(II)Z

    move-result v8

    or-int/2addr v5, v8

    .line 854
    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v8, v8, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-eqz v8, :cond_e

    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v8, v8, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    const-string v9, "com.emoji.keyboard.touchpal"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    iget-object v8, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowManagerService;->getRotation()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_d

    iget-object v8, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowManagerService;->getRotation()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_e

    :cond_d
    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    iget-object v9, v6, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v9, v9, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    if-ne v8, v9, :cond_e

    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    const/16 v9, 0x25b

    if-ne v8, v9, :cond_e

    .line 857
    const/4 v5, 0x0

    .line 859
    :cond_e
    const-string v8, "vivo_debug_WindowManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TAG_WMS isInInputMethodRegion IME PopWindow region = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v6, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget-object v10, v10, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " res = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    if-eqz v5, :cond_4

    goto/16 :goto_2

    .line 868
    :cond_f
    invoke-virtual {v6, v4}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 869
    sget-boolean v8, Lcom/android/server/wm/VivoSmartMultiWindowWms;->DEBUG_SMARTMULTIWINDOW_IMPORTANT:Z

    if-eqz v8, :cond_10

    .line 870
    const-string v8, "vivo_debug_WindowManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TAG_WMS isInInputMethodRegion input region = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", point = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    :cond_10
    iget v8, p1, Landroid/graphics/Point;->x:I

    iget v9, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v8, v9}, Landroid/graphics/Region;->contains(II)Z

    move-result v8

    or-int/2addr v5, v8

    .line 875
    if-nez v5, :cond_7

    .line 878
    const/16 v8, 0x7db

    iget-object v9, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v8, v9, :cond_4

    goto/16 :goto_2
.end method

.method private isMustCauseScaleWindow(Lcom/android/server/wm/WindowState;)Z
    .locals 14
    .param p1, "pwin"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 4135
    if-eqz p1, :cond_0

    iget-object v11, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-boolean v11, v11, Lcom/android/server/VivoSmartMultiWindowMgr;->mLastSplitMode:Z

    if-nez v11, :cond_1

    .line 4136
    :cond_0
    const/4 v11, 0x0

    .line 4207
    :goto_0
    return v11

    .line 4138
    :cond_1
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 4139
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-nez v0, :cond_2

    .line 4140
    const/4 v11, 0x0

    goto :goto_0

    .line 4142
    :cond_2
    iget-object v11, p1, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    if-eqz v11, :cond_3

    .line 4143
    iget-object v11, p1, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/server/wm/WindowSmartMultiWindowData;->setCauseScaleFindSurfaceView(Z)V

    .line 4145
    :cond_3
    iget-boolean v11, v0, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    if-eqz v11, :cond_4

    iget-boolean v11, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v11, :cond_4

    .line 4146
    const/4 v11, 0x0

    goto :goto_0

    .line 4149
    :cond_4
    const/4 v5, 0x0

    .line 4150
    .local v5, "stackBounds":Landroid/graphics/Rect;
    iget-object v6, v0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    .line 4151
    .local v6, "task":Lcom/android/server/wm/Task;
    if-eqz v6, :cond_5

    iget-object v11, v6, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v11, :cond_5

    .line 4152
    iget-object v11, v6, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {p0, v11}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->vivoGetStackBounds(Lcom/android/server/wm/TaskStack;)Landroid/graphics/Rect;

    move-result-object v5

    .line 4155
    :cond_5
    sget-boolean v11, Lcom/android/server/wm/VivoSmartMultiWindowWms;->DEBUG_SMARTMULTIWINDOW_IMPORTANT:Z

    if-eqz v11, :cond_6

    .line 4156
    const-string v11, "vivo_debug_WindowManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "isMustScaleWindow atoken = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", stackBounds = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4158
    :cond_6
    iget-object v10, v0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    .line 4159
    .local v10, "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v9, v11, -0x1

    .local v9, "winNdx":I
    :goto_1
    if-ltz v9, :cond_17

    .line 4160
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowState;

    .line 4161
    .local v8, "win":Lcom/android/server/wm/WindowState;
    if-eqz v8, :cond_7

    iget v11, v8, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    const/16 v12, 0x8

    if-eq v11, v12, :cond_7

    iget-object v11, v8, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-ne v11, p1, :cond_7

    iget-object v11, v8, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    if-eqz v11, :cond_7

    iget-object v11, v8, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v12, 0x3e9

    if-eq v11, v12, :cond_8

    .line 4159
    :cond_7
    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    .line 4164
    :cond_8
    iget-object v11, p1, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    if-eqz v11, :cond_9

    .line 4165
    iget-object v11, p1, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/server/wm/WindowSmartMultiWindowData;->setCauseScaleFindSurfaceView(Z)V

    .line 4167
    :cond_9
    sget-boolean v11, Lcom/android/server/wm/VivoSmartMultiWindowWms;->DEBUG_SMARTMULTIWINDOW_IMPORTANT:Z

    if-eqz v11, :cond_a

    .line 4168
    const-string v11, "vivo_debug_WindowManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "isMustScaleWindow win = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", attrs = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v8, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", mRequestedWidth = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v8, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", mRequestedHeight = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v8, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4170
    :cond_a
    iget-object v11, v8, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->width:I

    if-lez v11, :cond_f

    iget-object v11, v8, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v11, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 4171
    .local v7, "w":I
    :goto_2
    iget-object v11, v8, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->height:I

    if-lez v11, :cond_10

    iget-object v11, v8, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v11, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 4172
    .local v1, "h":I
    :goto_3
    const/4 v4, 0x0

    .line 4173
    .local v4, "screenw":I
    const/4 v3, 0x0

    .line 4174
    .local v3, "screenh":I
    iget v2, v0, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    .line 4175
    .local v2, "requestorientation":I
    if-eqz v2, :cond_b

    const/4 v11, 0x6

    if-eq v11, v2, :cond_b

    const/16 v11, 0x8

    if-eq v11, v2, :cond_b

    const/16 v11, 0xb

    if-ne v11, v2, :cond_11

    .line 4179
    :cond_b
    iget v4, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMaxScreenParam:I

    .line 4180
    iget v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMinScreenParam:I

    .line 4195
    :goto_4
    sget-boolean v11, Lcom/android/server/wm/VivoSmartMultiWindowWms;->DEBUG_SMARTMULTIWINDOW_IMPORTANT:Z

    if-eqz v11, :cond_c

    .line 4196
    const-string v11, "vivo_debug_WindowManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "isMustScaleWindow screenw = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", screenh = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", w = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", h = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4198
    :cond_c
    if-ne v7, v4, :cond_d

    shr-int/lit8 v11, v3, 0x1

    if-gt v1, v11, :cond_e

    :cond_d
    if-ne v1, v3, :cond_16

    shr-int/lit8 v11, v4, 0x1

    if-le v7, v11, :cond_16

    .line 4199
    :cond_e
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 4170
    .end local v1    # "h":I
    .end local v2    # "requestorientation":I
    .end local v3    # "screenh":I
    .end local v4    # "screenw":I
    .end local v7    # "w":I
    :cond_f
    iget v7, v8, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    goto :goto_2

    .line 4171
    .restart local v7    # "w":I
    :cond_10
    iget v1, v8, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    goto :goto_3

    .line 4181
    .restart local v1    # "h":I
    .restart local v2    # "requestorientation":I
    .restart local v3    # "screenh":I
    .restart local v4    # "screenw":I
    :cond_11
    const/4 v11, 0x1

    if-eq v11, v2, :cond_12

    const/4 v11, 0x7

    if-eq v11, v2, :cond_12

    const/4 v11, 0x5

    if-eq v11, v2, :cond_12

    const/16 v11, 0x9

    if-eq v11, v2, :cond_12

    const/16 v11, 0xc

    if-ne v11, v2, :cond_13

    .line 4186
    :cond_12
    iget v4, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMinScreenParam:I

    .line 4187
    iget v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMaxScreenParam:I

    goto :goto_4

    .line 4188
    :cond_13
    iget-object v11, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v11}, Lcom/android/server/wm/WindowManagerService;->getRotation()I

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_14

    iget-object v11, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v11}, Lcom/android/server/wm/WindowManagerService;->getRotation()I

    move-result v11

    const/4 v12, 0x3

    if-ne v11, v12, :cond_15

    .line 4189
    :cond_14
    iget v4, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMaxScreenParam:I

    .line 4190
    iget v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMinScreenParam:I

    goto :goto_4

    .line 4192
    :cond_15
    iget v4, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMinScreenParam:I

    .line 4193
    iget v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMaxScreenParam:I

    goto :goto_4

    .line 4202
    :cond_16
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_7

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v11

    if-ne v7, v11, :cond_7

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v11

    if-ne v1, v11, :cond_7

    .line 4203
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 4207
    .end local v1    # "h":I
    .end local v2    # "requestorientation":I
    .end local v3    # "screenh":I
    .end local v4    # "screenw":I
    .end local v7    # "w":I
    .end local v8    # "win":Lcom/android/server/wm/WindowState;
    :cond_17
    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method private isMustScaleWindow(Lcom/android/server/wm/WindowState;)Z
    .locals 12
    .param p1, "pwin"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 4005
    if-eqz p1, :cond_0

    iget-object v9, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-boolean v9, v9, Lcom/android/server/VivoSmartMultiWindowMgr;->mLastSplitMode:Z

    if-nez v9, :cond_1

    .line 4006
    :cond_0
    const/4 v9, 0x0

    .line 4065
    :goto_0
    return v9

    .line 4008
    :cond_1
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 4009
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-nez v0, :cond_2

    .line 4010
    const/4 v9, 0x0

    goto :goto_0

    .line 4012
    :cond_2
    iget-object v9, p1, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    if-eqz v9, :cond_3

    .line 4013
    iget-object v9, p1, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/server/wm/WindowSmartMultiWindowData;->setFindSurfaceView(Z)V

    .line 4015
    :cond_3
    iget-boolean v9, v0, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    if-eqz v9, :cond_4

    iget-boolean v9, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v9, :cond_4

    .line 4016
    const/4 v9, 0x0

    goto :goto_0

    .line 4018
    :cond_4
    sget-boolean v9, Lcom/android/server/wm/VivoSmartMultiWindowWms;->DEBUG_SMARTMULTIWINDOW_IMPORTANT:Z

    if-eqz v9, :cond_5

    .line 4019
    const-string v9, "vivo_debug_WindowManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isMustScaleWindow atoken = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4021
    :cond_5
    iget-object v8, v0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    .line 4022
    .local v8, "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v7, v9, -0x1

    .local v7, "winNdx":I
    :goto_1
    if-ltz v7, :cond_15

    .line 4023
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    .line 4024
    .local v6, "win":Lcom/android/server/wm/WindowState;
    if-eqz v6, :cond_6

    iget v9, v6, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    const/16 v10, 0x8

    if-eq v9, v10, :cond_6

    iget-object v9, v6, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-ne v9, p1, :cond_6

    iget-object v9, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    if-eqz v9, :cond_6

    iget-object v9, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v10, 0x3e9

    if-eq v9, v10, :cond_7

    .line 4022
    :cond_6
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 4027
    :cond_7
    iget-object v9, p1, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    if-eqz v9, :cond_8

    .line 4028
    iget-object v9, p1, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/server/wm/WindowSmartMultiWindowData;->setFindSurfaceView(Z)V

    .line 4030
    :cond_8
    sget-boolean v9, Lcom/android/server/wm/VivoSmartMultiWindowWms;->DEBUG_SMARTMULTIWINDOW_IMPORTANT:Z

    if-eqz v9, :cond_9

    .line 4031
    const-string v9, "vivo_debug_WindowManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isMustScaleWindow win = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", attrs = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mRequestedWidth = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v6, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mRequestedHeight = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v6, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4033
    :cond_9
    iget-object v9, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->width:I

    if-lez v9, :cond_e

    iget-object v9, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v9, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 4034
    .local v5, "w":I
    :goto_2
    iget-object v9, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->height:I

    if-lez v9, :cond_f

    iget-object v9, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v9, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 4035
    .local v1, "h":I
    :goto_3
    const/4 v4, 0x0

    .line 4036
    .local v4, "screenw":I
    const/4 v3, 0x0

    .line 4037
    .local v3, "screenh":I
    iget v2, v0, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    .line 4038
    .local v2, "requestorientation":I
    if-eqz v2, :cond_a

    const/4 v9, 0x6

    if-eq v9, v2, :cond_a

    const/16 v9, 0x8

    if-eq v9, v2, :cond_a

    const/16 v9, 0xb

    if-ne v9, v2, :cond_10

    .line 4042
    :cond_a
    iget v4, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMaxScreenParam:I

    .line 4043
    iget v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMinScreenParam:I

    .line 4058
    :goto_4
    sget-boolean v9, Lcom/android/server/wm/VivoSmartMultiWindowWms;->DEBUG_SMARTMULTIWINDOW_IMPORTANT:Z

    if-eqz v9, :cond_b

    .line 4059
    const-string v9, "vivo_debug_WindowManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isMustScaleWindow screenw = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", screenh = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", w = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", h = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4061
    :cond_b
    if-ne v5, v4, :cond_c

    shr-int/lit8 v9, v3, 0x1

    if-gt v1, v9, :cond_d

    :cond_c
    if-ne v1, v3, :cond_6

    shr-int/lit8 v9, v4, 0x1

    if-le v5, v9, :cond_6

    .line 4062
    :cond_d
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 4033
    .end local v1    # "h":I
    .end local v2    # "requestorientation":I
    .end local v3    # "screenh":I
    .end local v4    # "screenw":I
    .end local v5    # "w":I
    :cond_e
    iget v5, v6, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    goto :goto_2

    .line 4034
    .restart local v5    # "w":I
    :cond_f
    iget v1, v6, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    goto :goto_3

    .line 4044
    .restart local v1    # "h":I
    .restart local v2    # "requestorientation":I
    .restart local v3    # "screenh":I
    .restart local v4    # "screenw":I
    :cond_10
    const/4 v9, 0x1

    if-eq v9, v2, :cond_11

    const/4 v9, 0x7

    if-eq v9, v2, :cond_11

    const/4 v9, 0x5

    if-eq v9, v2, :cond_11

    const/16 v9, 0x9

    if-eq v9, v2, :cond_11

    const/16 v9, 0xc

    if-ne v9, v2, :cond_12

    .line 4049
    :cond_11
    iget v4, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMinScreenParam:I

    .line 4050
    iget v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMaxScreenParam:I

    goto :goto_4

    .line 4051
    :cond_12
    iget-object v9, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowManagerService;->getRotation()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_13

    iget-object v9, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowManagerService;->getRotation()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_14

    .line 4052
    :cond_13
    iget v4, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMaxScreenParam:I

    .line 4053
    iget v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMinScreenParam:I

    goto :goto_4

    .line 4055
    :cond_14
    iget v4, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMinScreenParam:I

    .line 4056
    iget v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMaxScreenParam:I

    goto :goto_4

    .line 4065
    .end local v1    # "h":I
    .end local v2    # "requestorientation":I
    .end local v3    # "screenh":I
    .end local v4    # "screenw":I
    .end local v5    # "w":I
    .end local v6    # "win":Lcom/android/server/wm/WindowState;
    :cond_15
    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method private isResolveActivity(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mAppToken"    # Ljava/lang/String;

    .prologue
    .line 1054
    if-nez p1, :cond_0

    .line 1055
    const/4 v0, 0x0

    .line 1057
    :goto_0
    return v0

    :cond_0
    const-string v0, "com.android.internal.app.ResolverActivity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method private mayBeResizeSpeicalTask(Lcom/android/server/wm/TaskStack;)V
    .locals 2
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;

    .prologue
    .line 3714
    iget-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-boolean v1, v1, Lcom/android/server/VivoSmartMultiWindowMgr;->mSplitMode:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 3722
    :cond_0
    :goto_0
    return-void

    .line 3717
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->getDisplayMode(Lcom/android/server/wm/TaskStack;)I

    move-result v0

    .line 3718
    .local v0, "mode":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3721
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->setStackForceLayout(Lcom/android/server/wm/TaskStack;Z)V

    goto :goto_0
.end method

.method private mayBeResizeTopWindow(Lcom/android/server/wm/TaskStack;)V
    .locals 12
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;

    .prologue
    .line 3778
    iget-object v9, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v9, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    .line 3779
    .local v4, "resizingWindows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v3

    .line 3780
    .local v3, "mTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v5, v9, -0x1

    .local v5, "taskNdx":I
    :goto_0
    if-ltz v5, :cond_7

    .line 3781
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/Task;

    iget-object v0, v9, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 3782
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v1, v9, -0x1

    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_6

    .line 3783
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    .line 3784
    .local v2, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-nez v2, :cond_1

    .line 3782
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 3787
    :cond_1
    iget-boolean v9, v2, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    if-eqz v9, :cond_2

    iget-boolean v9, v2, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v9, :cond_0

    .line 3790
    :cond_2
    sget-boolean v9, Lcom/android/server/wm/VivoSmartMultiWindowWms;->DEBUG_SMARTMULTIWINDOW_IMPORTANT:Z

    if-eqz v9, :cond_3

    .line 3791
    const-string v9, "vivo_debug_WindowManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mayBeResizeSpeicalTask atoken = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3793
    :cond_3
    iget-object v8, v2, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    .line 3794
    .local v8, "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v7, v9, -0x1

    .local v7, "winNdx":I
    :goto_2
    if-ltz v7, :cond_0

    .line 3795
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    .line 3796
    .local v6, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 3797
    sget-boolean v9, Lcom/android/server/wm/VivoSmartMultiWindowWms;->DEBUG_SMARTMULTIWINDOW_IMPORTANT:Z

    if-eqz v9, :cond_4

    const-string v9, "vivo_debug_WindowManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setBounds: Resizing "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3799
    :cond_4
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3801
    :cond_5
    const/4 v9, 0x1

    iput-boolean v9, v6, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    .line 3794
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 3780
    .end local v2    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .end local v6    # "win":Lcom/android/server/wm/WindowState;
    .end local v7    # "winNdx":I
    .end local v8    # "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :cond_6
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 3805
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    .end local v1    # "activityNdx":I
    :cond_7
    return-void
.end method

.method private prepareMultiWindowTransition(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 11
    .param p2, "list"    # Ljava/util/ArrayList;
    .param p3, "transit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/IBinder;",
            ">;",
            "Ljava/util/ArrayList;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 3602
    .local p1, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    iget-object v8, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-nez v8, :cond_1

    .line 3655
    :cond_0
    :goto_0
    return-void

    .line 3605
    :cond_1
    sget-boolean v8, Lcom/android/server/wm/VivoSmartMultiWindowWms;->DEBUG_MWAPP_TRANSITION:Z

    if-eqz v8, :cond_2

    .line 3606
    const-string v9, "vivo_debug_SmartMultiWindowTransition"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "prepareMultiWindowTransition : transit = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", animlist size = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    :goto_1
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", Callers = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v10, 0x4

    invoke-static {v10}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3612
    :cond_2
    iget-object v8, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowManagerService;->isWindowsFreezingScreen()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 3613
    const-string v8, "vivo_debug_SmartMultiWindowTransition"

    const-string v9, "prepareMultiWindowTransition : Other window animation is already running.. skip "

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3606
    :cond_3
    const-string v8, "null"

    goto :goto_1

    .line 3617
    :cond_4
    const/4 v8, 0x1

    if-eq p3, v8, :cond_5

    const/4 v8, 0x3

    if-ne p3, v8, :cond_0

    .line 3620
    :cond_5
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 3623
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3624
    .local v1, "enablelist":Ljava/util/ArrayList;
    invoke-direct {p0}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->getMultiWindowTransitionLocked()Lcom/android/server/wm/SmartMultiWindowTransition;

    move-result-object v5

    .line 3627
    .local v5, "multitransit":Lcom/android/server/wm/SmartMultiWindowTransition;
    if-eqz v5, :cond_0

    .line 3631
    if-eqz p1, :cond_7

    .line 3633
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    .line 3634
    .local v6, "token":Landroid/os/IBinder;
    iget-object v8, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v8, v6}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .line 3635
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v0, :cond_6

    .line 3638
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3641
    .end local v0    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v6    # "token":Landroid/os/IBinder;
    :cond_7
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "item":Ljava/lang/Object;
    move-object v0, v4

    .line 3642
    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    .line 3643
    .restart local v0    # "atoken":Lcom/android/server/wm/AppWindowToken;
    iget-object v8, v0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    if-eqz v8, :cond_8

    .line 3646
    iget-object v8, v0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_9
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowState;

    .line 3647
    .local v7, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v8

    if-eqz v8, :cond_9

    iget-object v8, v7, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v8, :cond_9

    .line 3648
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 3653
    .end local v0    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "item":Ljava/lang/Object;
    .end local v7    # "win":Lcom/android/server/wm/WindowState;
    :cond_a
    invoke-virtual {v5, v1, p3}, Lcom/android/server/wm/SmartMultiWindowTransition;->setMultiWindowTransition(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->requestMultiWindowTransitionTargetDrawnIfNeededLocked(Ljava/util/ArrayList;)V

    goto/16 :goto_0
.end method

.method private prepareMultiWindowTransitionLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 11
    .param p2, "list"    # Ljava/util/ArrayList;
    .param p3, "transit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/IBinder;",
            ">;",
            "Ljava/util/ArrayList;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 1121
    .local p1, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    iget-object v8, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-nez v8, :cond_1

    .line 1175
    :cond_0
    :goto_0
    return-void

    .line 1124
    :cond_1
    sget-boolean v8, Lcom/android/server/wm/VivoSmartMultiWindowWms;->DEBUG_MWAPP_TRANSITION:Z

    if-eqz v8, :cond_2

    .line 1125
    const-string v9, "vivo_debug_SmartMultiWindowTransition"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "prepareMultiWindowTransitionLocked : transit = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", animlist size = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    :goto_1
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", Callers = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v10, 0x4

    invoke-static {v10}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    :cond_2
    iget-object v8, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowManagerService;->isWindowsFreezingScreen()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1132
    const-string v8, "vivo_debug_SmartMultiWindowTransition"

    const-string v9, "prepareMultiWindowTransitionLocked : Other window animation is already running.. skip "

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1125
    :cond_3
    const-string v8, "null"

    goto :goto_1

    .line 1136
    :cond_4
    const/4 v8, 0x1

    if-eq p3, v8, :cond_5

    const/4 v8, 0x3

    if-ne p3, v8, :cond_0

    .line 1139
    :cond_5
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 1142
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1143
    .local v1, "enablelist":Ljava/util/ArrayList;
    invoke-direct {p0}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->getMultiWindowTransitionLocked()Lcom/android/server/wm/SmartMultiWindowTransition;

    move-result-object v5

    .line 1146
    .local v5, "multitransit":Lcom/android/server/wm/SmartMultiWindowTransition;
    if-eqz v5, :cond_0

    .line 1150
    if-eqz p1, :cond_9

    .line 1151
    iget-object v8, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v8, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v9

    .line 1152
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    .line 1153
    .local v6, "token":Landroid/os/IBinder;
    iget-object v8, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v8, v6}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .line 1154
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v0, :cond_6

    .line 1157
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1159
    .end local v0    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v6    # "token":Landroid/os/IBinder;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_7
    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1173
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_8
    invoke-virtual {v5, v1, p3}, Lcom/android/server/wm/SmartMultiWindowTransition;->setMultiWindowTransition(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->requestMultiWindowTransitionTargetDrawnIfNeededLocked(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 1161
    :cond_9
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "item":Ljava/lang/Object;
    move-object v0, v4

    .line 1162
    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    .line 1163
    .restart local v0    # "atoken":Lcom/android/server/wm/AppWindowToken;
    iget-object v8, v0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    if-eqz v8, :cond_a

    .line 1166
    iget-object v8, v0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_b
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowState;

    .line 1167
    .local v7, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, v7, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v8, :cond_b

    .line 1168
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method private requestMultiWindowTransitionTargetDrawnIfNeededLocked(Ljava/util/ArrayList;)V
    .locals 10
    .param p1, "list"    # Ljava/util/ArrayList;

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 1179
    iget-object v6, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-eqz v6, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_1

    .line 1214
    :cond_0
    return-void

    .line 1183
    :cond_1
    sget-boolean v6, Lcom/android/server/wm/VivoSmartMultiWindowWms;->DEBUG_MWAPP_TRANSITION:Z

    if-eqz v6, :cond_2

    .line 1184
    const-string v6, "vivo_debug_SmartMultiWindowTransition"

    const-string v7, "requestMultiWindowTransitionTargetDrawnIfNeededLocked"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    :cond_2
    iget-object v6, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1189
    invoke-direct {p0}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->getMultiWindowTransitionLocked()Lcom/android/server/wm/SmartMultiWindowTransition;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/SmartMultiWindowTransition;->prepare()V

    .line 1193
    :cond_3
    const/4 v4, 0x0

    .line 1195
    .local v4, "relayout":Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "item":Ljava/lang/Object;
    move-object v0, v3

    .line 1196
    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    .line 1197
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    iget-object v6, v0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    if-eqz v6, :cond_4

    .line 1200
    iget-object v6, v0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    .line 1201
    .local v5, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->hasDrawnLw()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v6, :cond_5

    .line 1202
    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v7, 0x1

    iput v7, v6, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 1203
    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iput-boolean v9, v6, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 1204
    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iput-boolean v9, v6, Lcom/android/server/wm/AppWindowToken;->deferClearAllDrawn:Z

    .line 1205
    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v6, v8, v8, v8, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 1206
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private resetStackSize(Lcom/android/server/wm/TaskStack;)V
    .locals 1
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;

    .prologue
    .line 3658
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/TaskStack;->mSmartShowData:Lcom/android/server/wm/StackSmartMultiWindowData;

    if-nez v0, :cond_1

    .line 3662
    :cond_0
    :goto_0
    return-void

    .line 3661
    :cond_1
    iget-object v0, p1, Lcom/android/server/wm/TaskStack;->mSmartShowData:Lcom/android/server/wm/StackSmartMultiWindowData;

    invoke-virtual {v0}, Lcom/android/server/wm/StackSmartMultiWindowData;->resetStackSize()V

    goto :goto_0
.end method

.method private resizeStackBounds(Lcom/android/server/wm/TaskStack;)V
    .locals 1
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;

    .prologue
    .line 2994
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/TaskStack;->mSmartShowData:Lcom/android/server/wm/StackSmartMultiWindowData;

    if-nez v0, :cond_1

    .line 2998
    :cond_0
    :goto_0
    return-void

    .line 2997
    :cond_1
    iget-object v0, p1, Lcom/android/server/wm/TaskStack;->mSmartShowData:Lcom/android/server/wm/StackSmartMultiWindowData;

    invoke-virtual {v0}, Lcom/android/server/wm/StackSmartMultiWindowData;->resizeStackBounds()V

    goto :goto_0
.end method

.method private savePrevAppMode(Lcom/android/server/wm/TaskStack;Lcom/android/server/wm/AppWindowToken;I)V
    .locals 6
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;
    .param p2, "wtoken"    # Lcom/android/server/wm/AppWindowToken;
    .param p3, "oldmode"    # I

    .prologue
    .line 3869
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 3889
    :cond_0
    return-void

    .line 3872
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v3

    .line 3873
    .local v3, "mTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    if-eqz v3, :cond_0

    .line 3876
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .local v4, "taskNdx":I
    :goto_0
    if-ltz v4, :cond_0

    .line 3877
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/Task;

    iget-object v0, v5, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 3878
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    if-nez v0, :cond_3

    .line 3876
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 3881
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    .line 3882
    .local v2, "item":Lcom/android/server/wm/AppWindowToken;
    if-eqz v2, :cond_4

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3885
    iput p3, v2, Lcom/android/server/wm/AppWindowToken;->mDisplayMode:I

    goto :goto_1
.end method

.method private setStackForceLayout(Lcom/android/server/wm/TaskStack;Z)V
    .locals 1
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;
    .param p2, "enable"    # Z

    .prologue
    .line 3736
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/TaskStack;->mSmartShowData:Lcom/android/server/wm/StackSmartMultiWindowData;

    if-nez v0, :cond_1

    .line 3740
    :cond_0
    :goto_0
    return-void

    .line 3739
    :cond_1
    iget-object v0, p1, Lcom/android/server/wm/TaskStack;->mSmartShowData:Lcom/android/server/wm/StackSmartMultiWindowData;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/StackSmartMultiWindowData;->setStackForceLayout(Z)V

    goto :goto_0
.end method

.method private shouldShowWallPaper(Lcom/android/server/wm/TaskStack;)Z
    .locals 8
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;

    .prologue
    const/4 v7, 0x0

    .line 3462
    if-nez p1, :cond_0

    move v6, v7

    .line 3486
    :goto_0
    return v6

    .line 3465
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v3

    .line 3466
    .local v3, "mTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    if-nez v3, :cond_1

    move v6, v7

    .line 3467
    goto :goto_0

    .line 3469
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v5, v6, -0x1

    .local v5, "taskNdx":I
    :goto_1
    if-ltz v5, :cond_6

    .line 3470
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/Task;

    iget-object v0, v6, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 3471
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    if-nez v0, :cond_3

    .line 3469
    :cond_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 3474
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    .line 3475
    .local v2, "item":Lcom/android/server/wm/AppWindowToken;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3478
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3479
    .local v4, "pkg":Ljava/lang/String;
    const-string v6, "com.vivo.minilauncher1"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "com.vivo.minilauncher2"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3481
    :cond_5
    const/4 v6, 0x1

    goto :goto_0

    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "item":Lcom/android/server/wm/AppWindowToken;
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_6
    move v6, v7

    .line 3486
    goto :goto_0
.end method

.method private vivoChangeStackModeByActivity(Lcom/android/server/wm/TaskStack;Lcom/android/server/wm/AppWindowToken;IZ)V
    .locals 6
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;
    .param p2, "wtoken"    # Lcom/android/server/wm/AppWindowToken;
    .param p3, "mode"    # I
    .param p4, "isSpecialToken"    # Z

    .prologue
    .line 3438
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 3459
    :cond_0
    return-void

    .line 3441
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v3

    .line 3442
    .local v3, "mTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    if-eqz v3, :cond_0

    .line 3445
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .local v4, "taskNdx":I
    :goto_0
    if-ltz v4, :cond_0

    .line 3446
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/Task;

    iget-object v0, v5, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 3447
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    if-nez v0, :cond_3

    .line 3445
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 3450
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    .line 3451
    .local v2, "item":Lcom/android/server/wm/AppWindowToken;
    if-eqz v2, :cond_4

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3454
    iput p3, v2, Lcom/android/server/wm/AppWindowToken;->mDisplayMode:I

    .line 3455
    iput-boolean p4, v2, Lcom/android/server/wm/AppWindowToken;->isSpecialToken:Z

    goto :goto_1
.end method

.method private vivoDumpSystemTime(Ljava/lang/String;)V
    .locals 5
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 1061
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1062
    .local v0, "time":J
    const-string v2, "vivo_debug_WindowManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TAG_WMS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " vivoDumpSystemTime current time = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    return-void
.end method

.method private vivoResizeWindows(Lcom/android/server/wm/TaskStack;)V
    .locals 11
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;

    .prologue
    .line 3490
    if-eqz p1, :cond_0

    iget-object v8, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    if-nez v8, :cond_1

    .line 3515
    :cond_0
    return-void

    .line 3494
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v2

    .line 3495
    .local v2, "mTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    iget-object v8, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v8, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    .line 3496
    .local v3, "resizingWindows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v4, v8, -0x1

    .local v4, "taskNdx":I
    :goto_0
    if-ltz v4, :cond_0

    .line 3497
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/Task;

    iget-object v0, v8, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 3498
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v1, v8, -0x1

    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_5

    .line 3499
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/AppWindowToken;

    iget-object v7, v8, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    .line 3501
    .local v7, "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v6, v8, -0x1

    .local v6, "winNdx":I
    :goto_2
    if-ltz v6, :cond_4

    .line 3502
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    .line 3503
    .local v5, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 3504
    sget-boolean v8, Lcom/android/server/wm/VivoSmartMultiWindowWms;->DEBUG_SMARTMULTIWINDOW_IMPORTANT:Z

    if-eqz v8, :cond_2

    .line 3505
    const-string v8, "vivo_debug_TaskStack"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "vivoResizeWindows setBounds: Resizing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3509
    :cond_2
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3511
    :cond_3
    const/4 v8, 0x1

    iput-boolean v8, v5, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    .line 3501
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 3498
    .end local v5    # "win":Lcom/android/server/wm/WindowState;
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 3496
    .end local v6    # "winNdx":I
    .end local v7    # "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_0
.end method

.method private vivoUpdateSpecialOrientation(Lcom/android/server/wm/TaskStack;Lcom/android/server/wm/AppWindowToken;I)V
    .locals 6
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;
    .param p2, "wtoken"    # Lcom/android/server/wm/AppWindowToken;
    .param p3, "orientation"    # I

    .prologue
    .line 3414
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 3434
    :cond_0
    return-void

    .line 3417
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v3

    .line 3418
    .local v3, "mTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    if-eqz v3, :cond_0

    .line 3421
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .local v4, "taskNdx":I
    :goto_0
    if-ltz v4, :cond_0

    .line 3422
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/Task;

    iget-object v0, v5, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 3423
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    if-nez v0, :cond_3

    .line 3421
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 3426
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    .line 3427
    .local v2, "item":Lcom/android/server/wm/AppWindowToken;
    if-eqz v2, :cond_4

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3430
    iput p3, v2, Lcom/android/server/wm/AppWindowToken;->mOrientation:I

    goto :goto_1
.end method


# virtual methods
.method public addMultiWindowTransitionTargetIfNeeded(Ljava/util/ArrayList;)V
    .locals 10
    .param p1, "list"    # Ljava/util/ArrayList;

    .prologue
    .line 1217
    iget-object v8, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-eqz v8, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gtz v8, :cond_1

    .line 1252
    :cond_0
    :goto_0
    return-void

    .line 1220
    :cond_1
    iget-object v8, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v8, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v9

    .line 1222
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1224
    .local v3, "enablelist":Ljava/util/ArrayList;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 1225
    .local v5, "item":Ljava/lang/Object;
    move-object v0, v5

    check-cast v0, Landroid/os/IBinder;

    move-object v6, v0

    .line 1226
    .local v6, "itoken":Landroid/os/IBinder;
    iget-object v8, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v8, v6}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v2

    .line 1227
    .local v2, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v2, :cond_2

    .line 1230
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1251
    .end local v2    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .end local v3    # "enablelist":Ljava/util/ArrayList;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "item":Ljava/lang/Object;
    .end local v6    # "itoken":Landroid/os/IBinder;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 1233
    .restart local v3    # "enablelist":Ljava/util/ArrayList;
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_3
    :try_start_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gtz v8, :cond_4

    .line 1234
    monitor-exit v9

    goto :goto_0

    .line 1237
    :cond_4
    invoke-direct {p0}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->getMultiWindowTransitionLocked()Lcom/android/server/wm/SmartMultiWindowTransition;

    move-result-object v7

    .line 1238
    .local v7, "multitransit":Lcom/android/server/wm/SmartMultiWindowTransition;
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Lcom/android/server/wm/SmartMultiWindowTransition;->isTransitionSet()Z

    move-result v8

    if-nez v8, :cond_6

    .line 1239
    :cond_5
    monitor-exit v9

    goto :goto_0

    .line 1242
    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1244
    .local v1, "animlist":Ljava/util/ArrayList;
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 1245
    .restart local v5    # "item":Ljava/lang/Object;
    move-object v0, v5

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    move-object v2, v0

    .line 1246
    .restart local v2    # "atoken":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {v7, v2}, Lcom/android/server/wm/SmartMultiWindowTransition;->addMultiWindowTransitionTarget(Lcom/android/server/wm/AppWindowToken;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1247
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1250
    .end local v2    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .end local v5    # "item":Ljava/lang/Object;
    :cond_8
    invoke-direct {p0, v1}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->requestMultiWindowTransitionTargetDrawnIfNeededLocked(Ljava/util/ArrayList;)V

    .line 1251
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public adjustInputWindowLw(Lcom/android/server/wm/WindowState;)V
    .locals 4
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 2214
    iget-object v0, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    if-nez v0, :cond_1

    .line 2236
    :cond_0
    :goto_0
    return-void

    .line 2223
    :cond_1
    sget-boolean v0, Landroid/util/VivoSmartMultiWindowConfig;->IS_EXPORT:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRotation()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRotation()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-boolean v0, v0, Lcom/android/server/VivoSmartMultiWindowMgr;->mSplitMode:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget v0, v0, Lcom/android/server/VivoSmartMultiWindowMgr;->mDragToFullScreenIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7dc

    if-eq v0, v1, :cond_3

    .line 2230
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    iget-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget v1, v1, Lcom/android/server/wm/WindowManagerService;->xImeOffset:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget v2, v2, Lcom/android/server/wm/WindowManagerService;->yImeOffset:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget v3, v3, Lcom/android/server/wm/WindowManagerService;->mImeScale:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowSmartMultiWindowData;->adjustImeInputWindowdLw(IIF)V

    goto :goto_0

    .line 2234
    :cond_3
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSmartMultiWindowData;->adjustInputWindowLw()V

    goto :goto_0
.end method

.method public adjustRelayoutWindowParam(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;IIIII)V
    .locals 7
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "screenRotation"    # I
    .param p4, "screenwidth"    # I
    .param p5, "screenheight"    # I
    .param p6, "requestWidth"    # I
    .param p7, "requestHeight"    # I

    .prologue
    .line 2112
    if-nez p1, :cond_1

    .line 2211
    :cond_0
    :goto_0
    return-void

    .line 2115
    :cond_1
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v4, :cond_e

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v3

    .line 2117
    .local v3, "stack":Lcom/android/server/wm/TaskStack;
    :goto_1
    if-eqz v3, :cond_2

    invoke-virtual {p0, v3}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->getDisplayMode(Lcom/android/server/wm/TaskStack;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 2121
    :cond_2
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v4, v4, 0x4000

    if-eqz v4, :cond_f

    const/4 v2, 0x1

    .line 2123
    .local v2, "scaledWindow":Z
    :goto_2
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v4, :cond_0

    .line 2125
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v1, v4, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    .line 2127
    .local v1, "originalrotate":I
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2128
    .local v0, "classname":Ljava/lang/String;
    if-eqz v0, :cond_4

    sget-object v4, Lcom/android/server/VivoSmartMultiWindowMgr;->G_WEIXIN_ACTIVITY:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/android/server/VivoSmartMultiWindowMgr;->G_WEIXIN_CHATACTIVITY_TOKEN:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2129
    :cond_3
    const/4 v1, -0x1

    .line 2132
    :cond_4
    sget-boolean v4, Lcom/android/server/wm/VivoSmartMultiWindowWms;->DEBUG_SMARTMULTIWINDOW_IMPORTANT:Z

    if-eqz v4, :cond_5

    .line 2133
    const-string v4, "vivo_debug_WindowState"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TAG_SMARTWINDOW adjustRelayoutWindowParam end type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", originalrotate = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", win = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", requestWidth = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", requestHeight = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2140
    :cond_5
    if-eq p6, p4, :cond_6

    if-ne p7, p4, :cond_d

    :cond_6
    if-eq p6, p5, :cond_7

    if-ne p7, p4, :cond_d

    .line 2142
    :cond_7
    if-eqz v1, :cond_8

    const/4 v4, 0x6

    if-eq v4, v1, :cond_8

    const/16 v4, 0x8

    if-eq v4, v1, :cond_8

    const/16 v4, 0xb

    if-ne v4, v1, :cond_12

    .line 2148
    :cond_8
    if-le p4, p5, :cond_10

    move v4, p4

    :goto_3
    iput v4, p1, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    .line 2150
    if-le p4, p5, :cond_11

    move v4, p5

    :goto_4
    iput v4, p1, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    .line 2153
    if-eqz p2, :cond_c

    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eq v4, p4, :cond_9

    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v4, p4, :cond_c

    :cond_9
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eq v4, p5, :cond_a

    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v4, p5, :cond_c

    .line 2156
    :cond_a
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v5, p1, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    if-eq v4, v5, :cond_b

    .line 2157
    iget v4, p1, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    iput v4, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2158
    const/4 v4, 0x1

    iput-boolean v4, p1, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    .line 2160
    :cond_b
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v5, p1, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    if-eq v4, v5, :cond_c

    .line 2161
    iget v4, p1, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    iput v4, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2162
    const/4 v4, 0x1

    iput-boolean v4, p1, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    .line 2191
    :cond_c
    :goto_5
    if-eqz v2, :cond_1b

    if-eqz p2, :cond_1b

    .line 2192
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v5, p1, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    if-eq v4, v5, :cond_19

    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    int-to-float v4, v4

    iget v5, p1, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    :goto_6
    iput v4, p1, Lcom/android/server/wm/WindowState;->mHScale:F

    .line 2194
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v5, p1, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    if-eq v4, v5, :cond_1a

    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    int-to-float v4, v4

    iget v5, p1, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    :goto_7
    iput v4, p1, Lcom/android/server/wm/WindowState;->mVScale:F

    .line 2200
    :cond_d
    :goto_8
    sget-boolean v4, Lcom/android/server/wm/VivoSmartMultiWindowWms;->DEBUG_SMARTMULTIWINDOW_IMPORTANT:Z

    if-eqz v4, :cond_0

    .line 2201
    const-string v4, "vivo_debug_WindowState"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TAG_SMARTWINDOW adjustRelayoutWindowParam end type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", requestWidth = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", requestHeight = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", attrs = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", win = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRequestedWidth = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRequestedHeight = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2115
    .end local v0    # "classname":Ljava/lang/String;
    .end local v1    # "originalrotate":I
    .end local v2    # "scaledWindow":Z
    .end local v3    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_e
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 2121
    .restart local v3    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_f
    const/4 v2, 0x0

    goto/16 :goto_2

    .restart local v0    # "classname":Ljava/lang/String;
    .restart local v1    # "originalrotate":I
    .restart local v2    # "scaledWindow":Z
    :cond_10
    move v4, p5

    .line 2148
    goto/16 :goto_3

    :cond_11
    move v4, p4

    .line 2150
    goto/16 :goto_4

    .line 2166
    :cond_12
    const/4 v4, 0x1

    if-eq v1, v4, :cond_13

    const/4 v4, 0x7

    if-eq v4, v1, :cond_13

    const/4 v4, 0x5

    if-eq v4, v1, :cond_13

    const/16 v4, 0x9

    if-ne v4, v1, :cond_c

    .line 2171
    :cond_13
    if-le p4, p5, :cond_17

    move v4, p5

    :goto_9
    iput v4, p1, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    .line 2173
    if-le p4, p5, :cond_18

    move v4, p4

    :goto_a
    iput v4, p1, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    .line 2176
    if-eqz p2, :cond_c

    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eq v4, p4, :cond_14

    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v4, p4, :cond_c

    :cond_14
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eq v4, p5, :cond_15

    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v4, p5, :cond_c

    .line 2179
    :cond_15
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v5, p1, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    if-eq v4, v5, :cond_16

    .line 2180
    iget v4, p1, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    iput v4, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2181
    const/4 v4, 0x1

    iput-boolean v4, p1, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    .line 2183
    :cond_16
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v5, p1, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    if-eq v4, v5, :cond_c

    .line 2184
    iget v4, p1, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    iput v4, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2185
    const/4 v4, 0x1

    iput-boolean v4, p1, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    goto/16 :goto_5

    :cond_17
    move v4, p4

    .line 2171
    goto :goto_9

    :cond_18
    move v4, p5

    .line 2173
    goto :goto_a

    .line 2192
    :cond_19
    const/high16 v4, 0x3f800000    # 1.0f

    goto/16 :goto_6

    .line 2194
    :cond_1a
    const/high16 v4, 0x3f800000    # 1.0f

    goto/16 :goto_7

    .line 2197
    :cond_1b
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p1, Lcom/android/server/wm/WindowState;->mVScale:F

    iput v4, p1, Lcom/android/server/wm/WindowState;->mHScale:F

    goto/16 :goto_8
.end method

.method public adjustShownFrameLw(Lcom/android/server/wm/WindowState;Landroid/graphics/Matrix;)V
    .locals 4
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "tmpMatrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 2278
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 2294
    :cond_0
    :goto_0
    return-void

    .line 2282
    :cond_1
    sget-boolean v0, Landroid/util/VivoSmartMultiWindowConfig;->IS_EXPORT:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRotation()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRotation()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-boolean v0, v0, Lcom/android/server/VivoSmartMultiWindowMgr;->mSplitMode:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget v0, v0, Lcom/android/server/VivoSmartMultiWindowMgr;->mDragToFullScreenIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7dc

    if-eq v0, v1, :cond_3

    .line 2289
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    iget-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget v1, v1, Lcom/android/server/wm/WindowManagerService;->xImeOffset:F

    iget-object v2, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget v2, v2, Lcom/android/server/wm/WindowManagerService;->yImeOffset:F

    iget-object v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget v3, v3, Lcom/android/server/wm/WindowManagerService;->mImeScale:F

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/wm/WindowSmartMultiWindowData;->adjustImeShownFrameLw(FFFLandroid/graphics/Matrix;)V

    goto :goto_0

    .line 2293
    :cond_3
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowSmartMultiWindowData;->adjustShownFrameLw(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method public adjustStackBounds(IILandroid/graphics/Rect;)V
    .locals 10
    .param p1, "stackId"    # I
    .param p2, "displayId"    # I
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 250
    iget-object v7, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    if-nez v7, :cond_1

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 255
    .local v4, "origId":J
    :try_start_0
    iget-object v7, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v7, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 257
    :try_start_1
    iget-object v7, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    invoke-virtual {v7, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/TaskStack;

    .line 258
    .local v6, "stack":Lcom/android/server/wm/TaskStack;
    if-nez v6, :cond_2

    .line 285
    :goto_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 291
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 261
    :cond_2
    :try_start_2
    iget-object v7, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v7, v7, Lcom/android/server/VivoSmartMultiWindowMgr;->mStackRectList:Landroid/util/SparseArray;

    invoke-virtual {v7, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 262
    .local v2, "oldrect":Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 267
    .local v3, "outrect":Landroid/graphics/Rect;
    const/4 v7, 0x0

    invoke-direct {p0, v6, p3, v3, v7}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->adjustStackBounds(Lcom/android/server/wm/TaskStack;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Z

    .line 268
    iget-object v7, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v7, v7, Lcom/android/server/VivoSmartMultiWindowMgr;->mStackRectList:Landroid/util/SparseArray;

    invoke-virtual {v7, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 271
    invoke-virtual {p0}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->isSplitMode()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 272
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 273
    .local v0, "apptokens":Ljava/util/ArrayList;
    invoke-direct {p0, v6, v0}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->addStackToLayoutAnimation(Lcom/android/server/wm/TaskStack;Ljava/util/ArrayList;)V

    .line 274
    const/4 v7, 0x0

    const/4 v9, 0x1

    invoke-direct {p0, v7, v0, v9}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->prepareMultiWindowTransition(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 279
    .end local v0    # "apptokens":Ljava/util/ArrayList;
    :goto_2
    invoke-direct {p0, v6}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->resizeStackBounds(Lcom/android/server/wm/TaskStack;)V

    .line 280
    invoke-virtual {v6}, Lcom/android/server/wm/TaskStack;->resizeWindows()V

    .line 281
    invoke-virtual {v6}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v7

    const/4 v9, 0x1

    iput-boolean v9, v7, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 282
    iget-object v7, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowManagerService;->vivoperformLayoutAndPlaceSurfacesLocked()V

    goto :goto_1

    .line 285
    .end local v2    # "oldrect":Landroid/graphics/Rect;
    .end local v3    # "outrect":Landroid/graphics/Rect;
    .end local v6    # "stack":Lcom/android/server/wm/TaskStack;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 286
    :catch_0
    move-exception v1

    .line 287
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v7, "vivo_debug_WindowManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "adjustStackBounds e = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v7, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->finishMultiWindowTransitionLocked(Lcom/android/server/wm/DisplayContent;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 291
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 276
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "oldrect":Landroid/graphics/Rect;
    .restart local v3    # "outrect":Landroid/graphics/Rect;
    .restart local v6    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_3
    :try_start_5
    iget-object v7, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->finishMultiWindowTransitionLocked(Lcom/android/server/wm/DisplayContent;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 291
    .end local v2    # "oldrect":Landroid/graphics/Rect;
    .end local v3    # "outrect":Landroid/graphics/Rect;
    .end local v6    # "stack":Lcom/android/server/wm/TaskStack;
    :catchall_1
    move-exception v7

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
.end method

.method public adjustStackBoundsNoRelayout(IILandroid/graphics/Rect;)V
    .locals 7
    .param p1, "stackId"    # I
    .param p2, "displayId"    # I
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 2627
    iget-object v5, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    if-nez v5, :cond_1

    .line 2653
    :cond_0
    :goto_0
    return-void

    .line 2630
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2632
    .local v2, "origId":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v5, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2634
    :try_start_1
    iget-object v5, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/TaskStack;

    .line 2635
    .local v4, "stack":Lcom/android/server/wm/TaskStack;
    if-nez v4, :cond_2

    .line 2649
    :goto_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2651
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 2638
    :cond_2
    :try_start_2
    iget-object v5, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v5, v5, Lcom/android/server/VivoSmartMultiWindowMgr;->mStackRectList:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 2640
    .local v0, "oldrect":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2645
    .local v1, "outrect":Landroid/graphics/Rect;
    const/4 v5, 0x1

    invoke-direct {p0, v4, p3, v1, v5}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->adjustStackBounds(Lcom/android/server/wm/TaskStack;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Z

    .line 2646
    iget-object v5, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v5, v5, Lcom/android/server/VivoSmartMultiWindowMgr;->mStackRectList:Landroid/util/SparseArray;

    invoke-virtual {v5, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 2649
    .end local v0    # "oldrect":Landroid/graphics/Rect;
    .end local v1    # "outrect":Landroid/graphics/Rect;
    .end local v4    # "stack":Lcom/android/server/wm/TaskStack;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2651
    :catchall_1
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public beginComputeFrameLw(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 9
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "pf"    # Landroid/graphics/Rect;
    .param p3, "df"    # Landroid/graphics/Rect;
    .param p4, "of"    # Landroid/graphics/Rect;
    .param p5, "cf"    # Landroid/graphics/Rect;
    .param p6, "vf"    # Landroid/graphics/Rect;
    .param p7, "dcf"    # Landroid/graphics/Rect;
    .param p8, "sf"    # Landroid/graphics/Rect;
    .param p9, "osf"    # Landroid/graphics/Rect;

    .prologue
    .line 2060
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-boolean v0, v0, Lcom/android/server/VivoSmartMultiWindowMgr;->mSplitMode:Z

    if-nez v0, :cond_1

    .line 2062
    :cond_0
    const/4 v0, 0x0

    .line 2083
    :goto_0
    return v0

    .line 2065
    :cond_1
    sget-boolean v0, Landroid/util/VivoSmartMultiWindowConfig;->IS_EXPORT:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRotation()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRotation()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget v0, v0, Lcom/android/server/VivoSmartMultiWindowMgr;->mDragToFullScreenIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7dc

    if-eq v0, v1, :cond_3

    .line 2070
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/WindowSmartMultiWindowData;->beginComputeImeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0

    .line 2074
    :cond_3
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSmartMultiWindowData;->isQiYiWindow()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2075
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    invoke-direct {p0, p1}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->isMustScaleWindow(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowSmartMultiWindowData;->setMustScaleWindow(Z)V

    .line 2083
    :cond_4
    :goto_1
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/WindowSmartMultiWindowData;->beginComputeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0

    .line 2079
    :cond_5
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSmartMultiWindowData;->isCauseScaleWindow()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2080
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    invoke-direct {p0, p1}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->isMustCauseScaleWindow(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowSmartMultiWindowData;->setMustCauseScaleWindow(Z)V

    goto :goto_1
.end method

.method public canChangeOritation(Lcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/Task;I)Z
    .locals 14
    .param p1, "atoken"    # Lcom/android/server/wm/AppWindowToken;
    .param p2, "task"    # Lcom/android/server/wm/Task;
    .param p3, "requestedOrientation"    # I

    .prologue
    .line 2468
    sget-boolean v11, Lcom/android/server/wm/VivoSmartMultiWindowWms;->DEBUG_SMARTMULTIWINDOW_IMPORTANT:Z

    if-eqz v11, :cond_0

    .line 2469
    const-string v11, "vivo_debug_info_VivoSmartMultiWindowWms"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "canChangeOritation atoken = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", requestedOrientation = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", atoken.hidden = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, p1, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", atoken.hiddenRequested = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, p1, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2475
    :cond_0
    iget-object v11, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-boolean v11, v11, Lcom/android/server/VivoSmartMultiWindowMgr;->mSplitMode:Z

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget v11, v11, Lcom/android/server/VivoSmartMultiWindowMgr;->mDragToFullScreenIndex:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_2

    .line 2476
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2477
    .local v3, "pkg":Ljava/lang/String;
    if-eqz v3, :cond_2

    const-string v11, "com.zijunlin.zxing.CaptureActivity"

    invoke-virtual {v3, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v11, -0x1

    move/from16 v0, p3

    if-eq v0, v11, :cond_1

    const/4 v11, 0x6

    move/from16 v0, p3

    if-ne v0, v11, :cond_2

    .line 2478
    :cond_1
    const/16 p3, 0x7

    .line 2479
    move/from16 v0, p3

    iput v0, p1, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    .line 2483
    .end local v3    # "pkg":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2484
    .local v1, "classname":Ljava/lang/String;
    if-eqz v1, :cond_4

    sget-object v11, Lcom/android/server/VivoSmartMultiWindowMgr;->G_WEIXIN_ACTIVITY:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    sget-object v11, Lcom/android/server/VivoSmartMultiWindowMgr;->G_WEIXIN_CHATACTIVITY_TOKEN:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 2485
    :cond_3
    const/16 p3, -0x1

    .line 2489
    :cond_4
    iget-boolean v11, p1, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    if-eqz v11, :cond_5

    iget-boolean v11, p1, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v11, :cond_5

    .line 2490
    const/4 v11, 0x0

    .line 2583
    :goto_0
    return v11

    .line 2493
    :cond_5
    iget-object v11, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-eqz v11, :cond_6

    if-eqz p1, :cond_6

    const/4 v11, -0x1

    move/from16 v0, p3

    if-eq v0, v11, :cond_7

    const/4 v11, 0x3

    move/from16 v0, p3

    if-eq v0, v11, :cond_7

    .line 2497
    :cond_6
    const/4 v11, 0x1

    goto :goto_0

    .line 2501
    :cond_7
    iget-object v11, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v11}, Lcom/android/server/wm/WindowManagerService;->getDefaultWindowListLocked()Lcom/android/server/wm/WindowList;

    move-result-object v10

    .line 2502
    .local v10, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v10}, Lcom/android/server/wm/WindowList;->size()I

    move-result v11

    add-int/lit8 v4, v11, -0x1

    .line 2503
    .local v4, "pos":I
    :cond_8
    if-ltz v4, :cond_d

    .line 2504
    invoke-virtual {v10, v4}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/WindowState;

    .line 2505
    .local v9, "win":Lcom/android/server/wm/WindowState;
    add-int/lit8 v4, v4, -0x1

    .line 2507
    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v11

    if-eqz v11, :cond_8

    iget-boolean v11, v9, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    if-eqz v11, :cond_8

    .line 2511
    iget-object v11, v9, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v11, :cond_8

    iget-object v11, v9, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eq v11, p1, :cond_8

    .line 2514
    iget-object v11, v9, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v11, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 2516
    .local v5, "req":I
    iget-object v11, v9, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v11}, Lcom/android/server/wm/AppWindowToken;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2517
    if-eqz v1, :cond_a

    sget-object v11, Lcom/android/server/VivoSmartMultiWindowMgr;->G_WEIXIN_ACTIVITY:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_9

    sget-object v11, Lcom/android/server/VivoSmartMultiWindowMgr;->G_WEIXIN_CHATACTIVITY_TOKEN:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 2518
    :cond_9
    const/4 v5, -0x1

    .line 2521
    :cond_a
    sget-boolean v11, Lcom/android/server/wm/VivoSmartMultiWindowWms;->DEBUG_SMARTMULTIWINDOW_IMPORTANT:Z

    if-eqz v11, :cond_b

    .line 2522
    const-string v11, "vivo_debug_info_VivoSmartMultiWindowWms"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "canChangeOritation atoken = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", requestedOrientation = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", win.mAppToken = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v9, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", req = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2527
    :cond_b
    const/4 v11, -0x1

    if-eq v5, v11, :cond_8

    const/4 v11, 0x3

    if-eq v5, v11, :cond_8

    .line 2531
    sget-boolean v11, Lcom/android/server/wm/VivoSmartMultiWindowWms;->DEBUG_SMARTMULTIWINDOW_IMPORTANT:Z

    if-eqz v11, :cond_c

    .line 2532
    const-string v11, "vivo_debug_info_VivoSmartMultiWindowWms"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "canChangeOritation atoken = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "return false"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2535
    :cond_c
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {p0, v11, v5}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->setWindowOriginalRotation(Lcom/android/server/wm/TaskStack;I)V

    .line 2536
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 2540
    .end local v5    # "req":I
    .end local v9    # "win":Lcom/android/server/wm/WindowState;
    :cond_d
    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 2541
    .local v8, "tokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v8}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v11

    add-int/lit8 v2, v11, -0x1

    .line 2542
    .local v2, "firstToken":I
    move v7, v2

    .local v7, "tokenNdx":I
    :goto_1
    if-ltz v7, :cond_14

    .line 2543
    invoke-virtual {v8, v7}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    .line 2545
    .local v6, "tatoken":Lcom/android/server/wm/AppWindowToken;
    iget-boolean v11, v6, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v11, :cond_e

    iget-boolean v11, v6, Lcom/android/server/wm/AppWindowToken;->willBeHidden:Z

    if-eqz v11, :cond_f

    .line 2542
    :cond_e
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 2548
    :cond_f
    if-eq v6, p1, :cond_e

    .line 2551
    iget v5, v6, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    .line 2553
    .restart local v5    # "req":I
    invoke-virtual {v6}, Lcom/android/server/wm/AppWindowToken;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2554
    if-eqz v1, :cond_11

    sget-object v11, Lcom/android/server/VivoSmartMultiWindowMgr;->G_WEIXIN_ACTIVITY:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_10

    sget-object v11, Lcom/android/server/VivoSmartMultiWindowMgr;->G_WEIXIN_CHATACTIVITY_TOKEN:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 2555
    :cond_10
    const/4 v5, -0x1

    .line 2558
    :cond_11
    sget-boolean v11, Lcom/android/server/wm/VivoSmartMultiWindowWms;->DEBUG_SMARTMULTIWINDOW_IMPORTANT:Z

    if-eqz v11, :cond_12

    .line 2559
    const-string v11, "vivo_debug_info_VivoSmartMultiWindowWms"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "canChangeOritation atoken = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", requestedOrientation = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", tatoken = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", req = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2563
    :cond_12
    const/4 v11, -0x1

    if-eq v5, v11, :cond_e

    const/4 v11, 0x3

    if-eq v5, v11, :cond_e

    .line 2567
    sget-boolean v11, Lcom/android/server/wm/VivoSmartMultiWindowWms;->DEBUG_SMARTMULTIWINDOW_IMPORTANT:Z

    if-eqz v11, :cond_13

    .line 2568
    const-string v11, "vivo_debug_info_VivoSmartMultiWindowWms"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "canChangeOritation atoken = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "return false"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2571
    :cond_13
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {p0, v11, v5}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->setWindowOriginalRotation(Lcom/android/server/wm/TaskStack;I)V

    .line 2572
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 2579
    .end local v5    # "req":I
    .end local v6    # "tatoken":Lcom/android/server/wm/AppWindowToken;
    :cond_14
    sget-boolean v11, Lcom/android/server/wm/VivoSmartMultiWindowWms;->DEBUG_SMARTMULTIWINDOW_IMPORTANT:Z

    if-eqz v11, :cond_15

    .line 2580
    const-string v11, "vivo_debug_info_VivoSmartMultiWindowWms"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "canChangeOritation atoken = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "return true"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2583
    :cond_15
    const/4 v11, 0x1

    goto/16 :goto_0
.end method

.method public canChangeOritationForce(Lcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/Task;I)Z
    .locals 14
    .param p1, "atoken"    # Lcom/android/server/wm/AppWindowToken;
    .param p2, "task"    # Lcom/android/server/wm/Task;
    .param p3, "requestedOrientation"    # I

    .prologue
    .line 2349
    sget-boolean v11, Lcom/android/server/wm/VivoSmartMultiWindowWms;->DEBUG_SMARTMULTIWINDOW_IMPORTANT:Z

    if-eqz v11, :cond_0

    .line 2350
    const-string v11, "vivo_debug_info_VivoSmartMultiWindowWms"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "canChangeOritationForce atoken = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", requestedOrientation = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", atoken.hidden = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, p1, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", atoken.hiddenRequested = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, p1, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2359
    :cond_0
    iget-object v11, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-boolean v11, v11, Lcom/android/server/VivoSmartMultiWindowMgr;->mSplitMode:Z

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget v11, v11, Lcom/android/server/VivoSmartMultiWindowMgr;->mDragToFullScreenIndex:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_2

    .line 2360
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2361
    .local v3, "pkg":Ljava/lang/String;
    if-eqz v3, :cond_2

    const-string v11, "com.zijunlin.zxing.CaptureActivity"

    invoke-virtual {v3, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v11, -0x1

    move/from16 v0, p3

    if-eq v0, v11, :cond_1

    const/4 v11, 0x6

    move/from16 v0, p3

    if-ne v0, v11, :cond_2

    .line 2362
    :cond_1
    const/16 p3, 0x7

    .line 2363
    move/from16 v0, p3

    iput v0, p1, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    .line 2367
    .end local v3    # "pkg":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2368
    .local v1, "classname":Ljava/lang/String;
    if-eqz v1, :cond_4

    sget-object v11, Lcom/android/server/VivoSmartMultiWindowMgr;->G_WEIXIN_ACTIVITY:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    sget-object v11, Lcom/android/server/VivoSmartMultiWindowMgr;->G_WEIXIN_CHATACTIVITY_TOKEN:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 2369
    :cond_3
    const/16 p3, -0x1

    .line 2372
    :cond_4
    iget-object v11, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-eqz v11, :cond_5

    if-eqz p1, :cond_5

    const/4 v11, -0x1

    move/from16 v0, p3

    if-eq v0, v11, :cond_6

    const/4 v11, 0x3

    move/from16 v0, p3

    if-eq v0, v11, :cond_6

    .line 2376
    :cond_5
    const/4 v11, 0x1

    .line 2463
    :goto_0
    return v11

    .line 2380
    :cond_6
    iget-object v11, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v11}, Lcom/android/server/wm/WindowManagerService;->getDefaultWindowListLocked()Lcom/android/server/wm/WindowList;

    move-result-object v10

    .line 2381
    .local v10, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v10}, Lcom/android/server/wm/WindowList;->size()I

    move-result v11

    add-int/lit8 v4, v11, -0x1

    .line 2382
    .local v4, "pos":I
    :cond_7
    if-ltz v4, :cond_c

    .line 2383
    invoke-virtual {v10, v4}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/WindowState;

    .line 2384
    .local v9, "win":Lcom/android/server/wm/WindowState;
    add-int/lit8 v4, v4, -0x1

    .line 2386
    iget-object v11, v9, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v11, :cond_7

    iget-object v11, v9, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eq v11, p1, :cond_7

    .line 2389
    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v11

    if-eqz v11, :cond_7

    iget-boolean v11, v9, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    if-eqz v11, :cond_7

    .line 2393
    iget-object v11, v9, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v11, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 2395
    .local v5, "req":I
    iget-object v11, v9, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v11}, Lcom/android/server/wm/AppWindowToken;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2396
    if-eqz v1, :cond_9

    sget-object v11, Lcom/android/server/VivoSmartMultiWindowMgr;->G_WEIXIN_ACTIVITY:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_8

    sget-object v11, Lcom/android/server/VivoSmartMultiWindowMgr;->G_WEIXIN_CHATACTIVITY_TOKEN:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 2397
    :cond_8
    const/4 v5, -0x1

    .line 2400
    :cond_9
    sget-boolean v11, Lcom/android/server/wm/VivoSmartMultiWindowWms;->DEBUG_SMARTMULTIWINDOW_IMPORTANT:Z

    if-eqz v11, :cond_a

    .line 2401
    const-string v11, "vivo_debug_info_VivoSmartMultiWindowWms"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "canChangeOritationForce atoken = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", requestedOrientation = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", win.mAppToken = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v9, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", req = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2406
    :cond_a
    const/4 v11, -0x1

    if-eq v5, v11, :cond_7

    const/4 v11, 0x3

    if-eq v5, v11, :cond_7

    .line 2410
    sget-boolean v11, Lcom/android/server/wm/VivoSmartMultiWindowWms;->DEBUG_SMARTMULTIWINDOW_IMPORTANT:Z

    if-eqz v11, :cond_b

    .line 2411
    const-string v11, "vivo_debug_info_VivoSmartMultiWindowWms"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "canChangeOritationForce atoken = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "return false"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2414
    :cond_b
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {p0, v11, v5}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->setWindowOriginalRotation(Lcom/android/server/wm/TaskStack;I)V

    .line 2415
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 2419
    .end local v5    # "req":I
    .end local v9    # "win":Lcom/android/server/wm/WindowState;
    :cond_c
    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 2420
    .local v8, "tokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v8}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v11

    add-int/lit8 v2, v11, -0x1

    .line 2421
    .local v2, "firstToken":I
    move v7, v2

    .local v7, "tokenNdx":I
    :goto_1
    if-ltz v7, :cond_13

    .line 2422
    invoke-virtual {v8, v7}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    .line 2424
    .local v6, "tatoken":Lcom/android/server/wm/AppWindowToken;
    iget-boolean v11, v6, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v11, :cond_d

    iget-boolean v11, v6, Lcom/android/server/wm/AppWindowToken;->willBeHidden:Z

    if-eqz v11, :cond_e

    .line 2421
    :cond_d
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 2427
    :cond_e
    if-eq v6, p1, :cond_d

    .line 2430
    iget v5, v6, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    .line 2432
    .restart local v5    # "req":I
    invoke-virtual {v6}, Lcom/android/server/wm/AppWindowToken;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2433
    if-eqz v1, :cond_10

    sget-object v11, Lcom/android/server/VivoSmartMultiWindowMgr;->G_WEIXIN_ACTIVITY:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_f

    sget-object v11, Lcom/android/server/VivoSmartMultiWindowMgr;->G_WEIXIN_CHATACTIVITY_TOKEN:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 2434
    :cond_f
    const/4 v5, -0x1

    .line 2437
    :cond_10
    sget-boolean v11, Lcom/android/server/wm/VivoSmartMultiWindowWms;->DEBUG_SMARTMULTIWINDOW_IMPORTANT:Z

    if-eqz v11, :cond_11

    .line 2438
    const-string v11, "vivo_debug_info_VivoSmartMultiWindowWms"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "canChangeOritationForce atoken = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", requestedOrientation = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", tatoken = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", req = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2443
    :cond_11
    const/4 v11, -0x1

    if-eq v5, v11, :cond_d

    const/4 v11, 0x3

    if-eq v5, v11, :cond_d

    .line 2447
    sget-boolean v11, Lcom/android/server/wm/VivoSmartMultiWindowWms;->DEBUG_SMARTMULTIWINDOW_IMPORTANT:Z

    if-eqz v11, :cond_12

    .line 2448
    const-string v11, "vivo_debug_info_VivoSmartMultiWindowWms"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "canChangeOritationForce atoken = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "return false"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2451
    :cond_12
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {p0, v11, v5}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->setWindowOriginalRotation(Lcom/android/server/wm/TaskStack;I)V

    .line 2452
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 2459
    .end local v5    # "req":I
    .end local v6    # "tatoken":Lcom/android/server/wm/AppWindowToken;
    :cond_13
    sget-boolean v11, Lcom/android/server/wm/VivoSmartMultiWindowWms;->DEBUG_SMARTMULTIWINDOW_IMPORTANT:Z

    if-eqz v11, :cond_14

    .line 2460
    const-string v11, "vivo_debug_info_VivoSmartMultiWindowWms"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "canChangeOritationForce atoken = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "return true"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2463
    :cond_14
    const/4 v11, 0x1

    goto/16 :goto_0
.end method

.method public canRequestMultiWindowTransition(Lcom/android/server/wm/DisplayContent;)Z
    .locals 5
    .param p1, "displaycontent"    # Lcom/android/server/wm/DisplayContent;

    .prologue
    const/4 v1, 0x0

    .line 1255
    iget-object v2, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-nez v2, :cond_1

    .line 1275
    :cond_0
    :goto_0
    return v1

    .line 1258
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowAnimator;->getMultiWindowTransitionLocked(I)Lcom/android/server/wm/SmartMultiWindowTransition;

    move-result-object v0

    .line 1260
    .local v0, "multitransit":Lcom/android/server/wm/SmartMultiWindowTransition;
    if-eqz v0, :cond_2

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/server/wm/SmartMultiWindowTransition;->isFreezingScreen()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/SmartMultiWindowTransition;->isTransitReady()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/SmartMultiWindowTransition;->isTranitRunning()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1264
    :cond_2
    sget-boolean v2, Lcom/android/server/wm/VivoSmartMultiWindowWms;->DEBUG_MWAPP_TRANSITION:Z

    if-eqz v2, :cond_0

    .line 1265
    const-string v2, "vivo_debug_WindowManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TAG_WMS canRequestMultiWindowTransition : isFreezingScreen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/wm/SmartMultiWindowTransition;->isFreezingScreen()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isTransitReady="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/wm/SmartMultiWindowTransition;->isTransitReady()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isTranitRunning="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/wm/SmartMultiWindowTransition;->isTranitRunning()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1275
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public changeDisplayMode(III)V
    .locals 7
    .param p1, "stackId"    # I
    .param p2, "displayId"    # I
    .param p3, "mode"    # I

    .prologue
    .line 296
    iget-object v4, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-eqz v4, :cond_0

    if-ltz p3, :cond_0

    iget-object v4, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    if-nez v4, :cond_1

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 301
    .local v0, "origId":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v4, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 303
    :try_start_1
    iget-object v4, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskStack;

    .line 304
    .local v3, "stack":Lcom/android/server/wm/TaskStack;
    if-nez v3, :cond_3

    .line 325
    :cond_2
    :goto_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 327
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 313
    :cond_3
    const/4 v4, 0x1

    :try_start_2
    invoke-virtual {p0, v3, p3, v4}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->changeDisplayMode(Lcom/android/server/wm/TaskStack;IZ)Z

    move-result v2

    .line 314
    .local v2, "res":Z
    if-eqz v2, :cond_2

    .line 317
    iget-object v4, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v4, v4, Lcom/android/server/VivoSmartMultiWindowMgr;->mStackDisplayModeList:Landroid/util/SparseArray;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, p1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 319
    invoke-virtual {v3}, Lcom/android/server/wm/TaskStack;->resizeWindows()V

    .line 320
    invoke-virtual {v3}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    const/4 v6, 0x1

    iput-boolean v6, v4, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 322
    iget-object v4, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->vivoperformLayoutAndPlaceSurfacesLocked()V

    goto :goto_1

    .line 325
    .end local v2    # "res":Z
    .end local v3    # "stack":Lcom/android/server/wm/TaskStack;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 327
    :catchall_1
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public changeDisplayMode(Ljava/util/ArrayList;IZ)V
    .locals 11
    .param p2, "mode"    # I
    .param p3, "anim"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 1402
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v8, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    if-nez v8, :cond_1

    .line 1452
    :cond_0
    :goto_0
    return-void

    .line 1405
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 1408
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1409
    .local v3, "layoutanimlist":Ljava/util/ArrayList;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1411
    .local v4, "origId":J
    :try_start_0
    iget-object v8, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v8, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1412
    :try_start_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1413
    .local v2, "item":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1414
    .local v7, "stackId":I
    iget-object v8, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/TaskStack;

    .line 1415
    .local v6, "stack":Lcom/android/server/wm/TaskStack;
    if-nez v6, :cond_4

    .line 1434
    .end local v2    # "item":Ljava/lang/Integer;
    .end local v6    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v7    # "stackId":I
    :cond_2
    if-eqz p3, :cond_3

    .line 1435
    invoke-virtual {p0}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->isSplitMode()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1436
    const/4 v8, 0x0

    const/4 v10, 0x1

    invoke-direct {p0, v8, v3, v10}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->prepareMultiWindowTransition(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 1442
    :cond_3
    :goto_2
    iget-object v8, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowManagerService;->vivoperformLayoutAndPlaceSurfacesLocked()V

    .line 1444
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1450
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1424
    .restart local v2    # "item":Ljava/lang/Integer;
    .restart local v6    # "stack":Lcom/android/server/wm/TaskStack;
    .restart local v7    # "stackId":I
    :cond_4
    const/4 v8, 0x1

    :try_start_2
    invoke-virtual {p0, v6, p2, v8}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->changeDisplayMode(Lcom/android/server/wm/TaskStack;IZ)Z

    .line 1425
    iget-object v8, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v8, v8, Lcom/android/server/VivoSmartMultiWindowMgr;->mStackDisplayModeList:Landroid/util/SparseArray;

    new-instance v10, Ljava/lang/Integer;

    invoke-direct {v10, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v8, v7, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1427
    if-eqz p3, :cond_5

    .line 1428
    invoke-direct {p0, v6, v3}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->addStackToLayoutAnimation(Lcom/android/server/wm/TaskStack;Ljava/util/ArrayList;)V

    .line 1431
    :cond_5
    invoke-virtual {v6}, Lcom/android/server/wm/TaskStack;->resizeWindows()V

    .line 1432
    invoke-virtual {v6}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v8

    const/4 v10, 0x1

    iput-boolean v10, v8, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    goto :goto_1

    .line 1444
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "item":Ljava/lang/Integer;
    .end local v6    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v7    # "stackId":I
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1445
    :catch_0
    move-exception v0

    .line 1446
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v8, "vivo_debug_WindowManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "changeDisplayMode e = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    iget-object v8, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->finishMultiWindowTransitionLocked(Lcom/android/server/wm/DisplayContent;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1450
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 1438
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_6
    :try_start_5
    iget-object v8, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->finishMultiWindowTransitionLocked(Lcom/android/server/wm/DisplayContent;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 1450
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_1
    move-exception v8

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8
.end method

.method public changeDisplayMode(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2787
    .local p1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v10, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    if-nez v10, :cond_1

    .line 2843
    :cond_0
    :goto_0
    return-void

    .line 2790
    :cond_1
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 2793
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 2794
    .local v9, "stackidsize":I
    if-lez v9, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ne v9, v10, :cond_0

    .line 2797
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 2799
    .local v6, "origId":J
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2800
    .local v3, "layoutanimlist":Ljava/util/ArrayList;
    iget-object v10, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v11, v10, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2801
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v9, :cond_2

    .line 2802
    :try_start_1
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 2803
    .local v8, "stackId":I
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 2804
    .local v4, "mode":I
    const/4 v0, 0x0

    .line 2805
    .local v0, "change":Z
    iget-object v10, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    invoke-virtual {v10, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/TaskStack;

    .line 2806
    .local v5, "stack":Lcom/android/server/wm/TaskStack;
    if-nez v5, :cond_3

    .line 2828
    .end local v0    # "change":Z
    .end local v4    # "mode":I
    .end local v5    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v8    # "stackId":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->isSplitMode()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 2829
    const/4 v10, 0x0

    const/4 v12, 0x1

    invoke-direct {p0, v10, v3, v12}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->prepareMultiWindowTransition(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 2834
    :goto_2
    iget-object v10, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerService;->vivoperformLayoutAndPlaceSurfacesLocked()V

    .line 2835
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2841
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 2818
    .restart local v0    # "change":Z
    .restart local v4    # "mode":I
    .restart local v5    # "stack":Lcom/android/server/wm/TaskStack;
    .restart local v8    # "stackId":I
    :cond_3
    const/4 v10, 0x1

    :try_start_2
    invoke-virtual {p0, v5, v4, v10}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->changeDisplayMode(Lcom/android/server/wm/TaskStack;IZ)Z

    .line 2819
    iget-object v10, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v10, v10, Lcom/android/server/VivoSmartMultiWindowMgr;->mStackDisplayModeList:Landroid/util/SparseArray;

    new-instance v12, Ljava/lang/Integer;

    invoke-direct {v12, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v10, v8, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2820
    const/4 v0, 0x1

    .line 2821
    if-eqz v0, :cond_4

    .line 2822
    invoke-direct {p0, v5, v3}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->addStackToLayoutAnimation(Lcom/android/server/wm/TaskStack;Ljava/util/ArrayList;)V

    .line 2824
    invoke-virtual {v5}, Lcom/android/server/wm/TaskStack;->resizeWindows()V

    .line 2825
    invoke-virtual {v5}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v10

    const/4 v12, 0x1

    iput-boolean v12, v10, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 2801
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2831
    .end local v0    # "change":Z
    .end local v4    # "mode":I
    .end local v5    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v8    # "stackId":I
    :cond_5
    iget-object v10, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->finishMultiWindowTransitionLocked(Lcom/android/server/wm/DisplayContent;)V

    goto :goto_2

    .line 2835
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2836
    .end local v2    # "i":I
    .end local v3    # "layoutanimlist":Ljava/util/ArrayList;
    :catch_0
    move-exception v1

    .line 2837
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v10, "vivo_debug_WindowManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "changeDisplayMode e = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2838
    iget-object v10, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->finishMultiWindowTransitionLocked(Lcom/android/server/wm/DisplayContent;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2841
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v10

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v10
.end method

.method changeDisplayMode(Lcom/android/server/wm/TaskStack;IZ)Z
    .locals 1
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;
    .param p2, "mode"    # I
    .param p3, "resizeStackBounds"    # Z

    .prologue
    .line 1975
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/TaskStack;->mSmartShowData:Lcom/android/server/wm/StackSmartMultiWindowData;

    if-nez v0, :cond_1

    .line 1976
    :cond_0
    const/4 v0, 0x0

    .line 1978
    :goto_0
    return v0

    :cond_1
    iget-object v0, p1, Lcom/android/server/wm/TaskStack;->mSmartShowData:Lcom/android/server/wm/StackSmartMultiWindowData;

    invoke-virtual {v0, p2, p3}, Lcom/android/server/wm/StackSmartMultiWindowData;->changeDisplayMode(IZ)Z

    move-result v0

    goto :goto_0
.end method

.method public changeDisplayModeAndBounds(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1561
    .local p1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p3, "bounds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    if-nez v15, :cond_1

    .line 1626
    :cond_0
    :goto_0
    return-void

    .line 1564
    :cond_1
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_0

    .line 1567
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 1568
    .local v14, "stackidsize":I
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ne v14, v15, :cond_0

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ne v14, v15, :cond_0

    .line 1571
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1573
    .local v8, "origId":J
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1574
    .local v5, "layoutanimlist":Ljava/util/ArrayList;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v15, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    monitor-enter v16
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1575
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v14, :cond_2

    .line 1576
    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 1577
    .local v13, "stackId":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1578
    .local v6, "mode":I
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/Rect;

    .line 1579
    .local v11, "rect":Landroid/graphics/Rect;
    const/4 v2, 0x0

    .line 1580
    .local v2, "change":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v15, v15, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    invoke-virtual {v15, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/TaskStack;

    .line 1581
    .local v12, "stack":Lcom/android/server/wm/TaskStack;
    if-nez v12, :cond_3

    .line 1611
    .end local v2    # "change":Z
    .end local v6    # "mode":I
    .end local v11    # "rect":Landroid/graphics/Rect;
    .end local v12    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v13    # "stackId":I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->isSplitMode()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 1612
    const/4 v15, 0x0

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v15, v5, v1}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->prepareMultiWindowTransition(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 1617
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v15}, Lcom/android/server/wm/WindowManagerService;->vivoperformLayoutAndPlaceSurfacesLocked()V

    .line 1618
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1624
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1584
    .restart local v2    # "change":Z
    .restart local v6    # "mode":I
    .restart local v11    # "rect":Landroid/graphics/Rect;
    .restart local v12    # "stack":Lcom/android/server/wm/TaskStack;
    .restart local v13    # "stackId":I
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v15, v15, Lcom/android/server/VivoSmartMultiWindowMgr;->mStackRectList:Landroid/util/SparseArray;

    invoke-virtual {v15, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    .line 1586
    .local v7, "oldrect":Landroid/graphics/Rect;
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v11}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1599
    .local v10, "outrect":Landroid/graphics/Rect;
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v11, v10, v15}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->adjustStackBounds(Lcom/android/server/wm/TaskStack;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Z

    .line 1600
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v15, v15, Lcom/android/server/VivoSmartMultiWindowMgr;->mStackRectList:Landroid/util/SparseArray;

    invoke-virtual {v15, v13, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1601
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v6, v15}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->changeDisplayMode(Lcom/android/server/wm/TaskStack;IZ)Z

    .line 1602
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v15, v15, Lcom/android/server/VivoSmartMultiWindowMgr;->mStackDisplayModeList:Landroid/util/SparseArray;

    new-instance v17, Ljava/lang/Integer;

    move-object/from16 v0, v17

    invoke-direct {v0, v6}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v17

    invoke-virtual {v15, v13, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1603
    const/4 v2, 0x1

    .line 1604
    if-eqz v2, :cond_4

    .line 1605
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v5}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->addStackToLayoutAnimation(Lcom/android/server/wm/TaskStack;Ljava/util/ArrayList;)V

    .line 1607
    invoke-virtual {v12}, Lcom/android/server/wm/TaskStack;->resizeWindows()V

    .line 1608
    invoke-virtual {v12}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v15

    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v15, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 1575
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 1614
    .end local v2    # "change":Z
    .end local v6    # "mode":I
    .end local v7    # "oldrect":Landroid/graphics/Rect;
    .end local v10    # "outrect":Landroid/graphics/Rect;
    .end local v11    # "rect":Landroid/graphics/Rect;
    .end local v12    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v13    # "stackId":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v15}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->finishMultiWindowTransitionLocked(Lcom/android/server/wm/DisplayContent;)V

    goto :goto_2

    .line 1618
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v15
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1619
    .end local v4    # "i":I
    .end local v5    # "layoutanimlist":Ljava/util/ArrayList;
    :catch_0
    move-exception v3

    .line 1620
    .local v3, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v15, "vivo_debug_WindowManagerService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "changeDisplayModeAndBounds e = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v15}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->finishMultiWindowTransitionLocked(Lcom/android/server/wm/DisplayContent;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1624
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v15

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v15
.end method

.method public changeDisplayModeAndBoundsNoRelayout(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2689
    .local p1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p3, "bounds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    if-nez v14, :cond_1

    .line 2744
    :cond_0
    :goto_0
    return-void

    .line 2692
    :cond_1
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_0

    .line 2695
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 2696
    .local v13, "stackidsize":I
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ne v13, v14, :cond_0

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ne v13, v14, :cond_0

    .line 2699
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 2701
    .local v8, "origId":J
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2702
    .local v4, "layoutanimlist":Ljava/util/ArrayList;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v15, v14, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2703
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v13, :cond_2

    .line 2704
    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 2705
    .local v12, "stackId":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 2706
    .local v5, "mode":I
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    .line 2707
    .local v10, "rect":Landroid/graphics/Rect;
    const/4 v2, 0x0

    .line 2708
    .local v2, "change":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v14, v14, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    invoke-virtual {v14, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/TaskStack;

    .line 2709
    .local v11, "stack":Lcom/android/server/wm/TaskStack;
    if-nez v11, :cond_3

    .line 2740
    .end local v2    # "change":Z
    .end local v5    # "mode":I
    .end local v10    # "rect":Landroid/graphics/Rect;
    .end local v11    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v12    # "stackId":I
    :cond_2
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2742
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 2712
    .restart local v2    # "change":Z
    .restart local v5    # "mode":I
    .restart local v10    # "rect":Landroid/graphics/Rect;
    .restart local v11    # "stack":Lcom/android/server/wm/TaskStack;
    .restart local v12    # "stackId":I
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v14, v14, Lcom/android/server/VivoSmartMultiWindowMgr;->mStackRectList:Landroid/util/SparseArray;

    invoke-virtual {v14, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    .line 2714
    .local v6, "oldrect":Landroid/graphics/Rect;
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2727
    .local v7, "outrect":Landroid/graphics/Rect;
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v10, v7, v14}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->adjustStackBounds(Lcom/android/server/wm/TaskStack;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Z

    .line 2728
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v14, v14, Lcom/android/server/VivoSmartMultiWindowMgr;->mStackRectList:Landroid/util/SparseArray;

    invoke-virtual {v14, v12, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2729
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v5, v14}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->changeDisplayMode(Lcom/android/server/wm/TaskStack;IZ)Z

    .line 2730
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v14, v14, Lcom/android/server/VivoSmartMultiWindowMgr;->mStackDisplayModeList:Landroid/util/SparseArray;

    new-instance v16, Ljava/lang/Integer;

    move-object/from16 v0, v16

    invoke-direct {v0, v5}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v16

    invoke-virtual {v14, v12, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2703
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2740
    .end local v2    # "change":Z
    .end local v5    # "mode":I
    .end local v6    # "oldrect":Landroid/graphics/Rect;
    .end local v7    # "outrect":Landroid/graphics/Rect;
    .end local v10    # "rect":Landroid/graphics/Rect;
    .end local v11    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v12    # "stackId":I
    :catchall_0
    move-exception v14

    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2742
    .end local v3    # "i":I
    .end local v4    # "layoutanimlist":Ljava/util/ArrayList;
    :catchall_1
    move-exception v14

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v14
.end method

.method public changeDisplayModeNoRelayout(III)V
    .locals 6
    .param p1, "stackId"    # I
    .param p2, "displayId"    # I
    .param p3, "mode"    # I

    .prologue
    .line 2598
    iget-object v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-eqz v3, :cond_0

    if-ltz p3, :cond_0

    iget-object v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    if-nez v3, :cond_1

    .line 2623
    :cond_0
    :goto_0
    return-void

    .line 2601
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2603
    .local v0, "origId":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v3, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2605
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskStack;

    .line 2606
    .local v2, "stack":Lcom/android/server/wm/TaskStack;
    if-nez v2, :cond_2

    .line 2619
    :goto_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2621
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 2615
    :cond_2
    const/4 v3, 0x1

    :try_start_2
    invoke-virtual {p0, v2, p3, v3}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->changeDisplayMode(Lcom/android/server/wm/TaskStack;IZ)Z

    .line 2616
    iget-object v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v3, v3, Lcom/android/server/VivoSmartMultiWindowMgr;->mStackDisplayModeList:Landroid/util/SparseArray;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, p1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 2619
    .end local v2    # "stack":Lcom/android/server/wm/TaskStack;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2621
    :catchall_1
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public changeDisplayModeOnly(III)V
    .locals 8
    .param p1, "stackId"    # I
    .param p2, "displayId"    # I
    .param p3, "mode"    # I

    .prologue
    .line 1328
    iget-object v5, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    if-nez v5, :cond_1

    .line 1374
    :cond_0
    :goto_0
    return-void

    .line 1331
    :cond_1
    if-ltz p3, :cond_0

    .line 1334
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1335
    .local v1, "layoutanimlist":Ljava/util/ArrayList;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1337
    .local v2, "origId":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v5, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1339
    :try_start_1
    iget-object v5, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/TaskStack;

    .line 1340
    .local v4, "stack":Lcom/android/server/wm/TaskStack;
    if-nez v4, :cond_2

    .line 1366
    :goto_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1372
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1349
    :cond_2
    const/4 v5, 0x0

    :try_start_2
    invoke-virtual {p0, v4, p3, v5}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->changeDisplayMode(Lcom/android/server/wm/TaskStack;IZ)Z

    .line 1350
    iget-object v5, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v5, v5, Lcom/android/server/VivoSmartMultiWindowMgr;->mStackDisplayModeList:Landroid/util/SparseArray;

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, p1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1352
    invoke-virtual {p0}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->isSplitMode()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1353
    invoke-direct {p0, v4, v1}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->addStackToLayoutAnimation(Lcom/android/server/wm/TaskStack;Ljava/util/ArrayList;)V

    .line 1354
    const/4 v5, 0x0

    const/4 v7, 0x1

    invoke-direct {p0, v5, v1, v7}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->prepareMultiWindowTransition(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 1360
    :goto_2
    invoke-direct {p0, v4}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->resizeStackBounds(Lcom/android/server/wm/TaskStack;)V

    .line 1362
    invoke-virtual {v4}, Lcom/android/server/wm/TaskStack;->resizeWindows()V

    .line 1363
    invoke-virtual {v4}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    const/4 v7, 0x1

    iput-boolean v7, v5, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 1364
    iget-object v5, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->vivoperformLayoutAndPlaceSurfacesLocked()V

    goto :goto_1

    .line 1366
    .end local v4    # "stack":Lcom/android/server/wm/TaskStack;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1367
    :catch_0
    move-exception v0

    .line 1368
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v5, "vivo_debug_WindowManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "changeDisplayModeOnly e = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    iget-object v5, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->finishMultiWindowTransitionLocked(Lcom/android/server/wm/DisplayContent;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1372
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1357
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v4    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_3
    :try_start_5
    iget-object v5, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->finishMultiWindowTransitionLocked(Lcom/android/server/wm/DisplayContent;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 1372
    .end local v4    # "stack":Lcom/android/server/wm/TaskStack;
    :catchall_1
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public changeDisplayModeOnlyNoRelayout(III)V
    .locals 7
    .param p1, "stackId"    # I
    .param p2, "displayId"    # I
    .param p3, "mode"    # I

    .prologue
    .line 2657
    iget-object v4, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    if-nez v4, :cond_1

    .line 2685
    :cond_0
    :goto_0
    return-void

    .line 2660
    :cond_1
    if-ltz p3, :cond_0

    .line 2663
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2664
    .local v0, "layoutanimlist":Ljava/util/ArrayList;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2666
    .local v2, "origId":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v4, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2668
    :try_start_1
    iget-object v4, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    .line 2669
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    if-nez v1, :cond_2

    .line 2681
    :goto_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2683
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 2677
    :cond_2
    const/4 v4, 0x1

    :try_start_2
    invoke-virtual {p0, v1, p3, v4}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->changeDisplayMode(Lcom/android/server/wm/TaskStack;IZ)Z

    .line 2678
    iget-object v4, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v4, v4, Lcom/android/server/VivoSmartMultiWindowMgr;->mStackDisplayModeList:Landroid/util/SparseArray;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, p1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 2681
    .end local v1    # "stack":Lcom/android/server/wm/TaskStack;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2683
    :catchall_1
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public changeDisplayModeWithAnim(III)V
    .locals 8
    .param p1, "stackId"    # I
    .param p2, "displayId"    # I
    .param p3, "mode"    # I

    .prologue
    .line 2900
    iget-object v5, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-eqz v5, :cond_0

    if-ltz p3, :cond_0

    iget-object v5, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    if-nez v5, :cond_1

    .line 2939
    :cond_0
    :goto_0
    return-void

    .line 2903
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2905
    .local v2, "origId":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v5, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2907
    :try_start_1
    iget-object v5, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/TaskStack;

    .line 2908
    .local v4, "stack":Lcom/android/server/wm/TaskStack;
    if-nez v4, :cond_2

    .line 2931
    :goto_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2937
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 2916
    :cond_2
    const/4 v5, 0x0

    :try_start_2
    invoke-virtual {p0, v4, p3, v5}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->changeDisplayMode(Lcom/android/server/wm/TaskStack;IZ)Z

    .line 2917
    iget-object v5, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v5, v5, Lcom/android/server/VivoSmartMultiWindowMgr;->mStackDisplayModeList:Landroid/util/SparseArray;

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, p1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2920
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2922
    .local v0, "apptokens":Ljava/util/ArrayList;
    invoke-direct {p0, v4, v0}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->addStackToLayoutAnimation(Lcom/android/server/wm/TaskStack;Ljava/util/ArrayList;)V

    .line 2923
    const/4 v5, 0x0

    const/4 v7, 0x1

    invoke-direct {p0, v5, v0, v7}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->prepareMultiWindowTransition(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 2925
    invoke-direct {p0, v4}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->resizeStackBounds(Lcom/android/server/wm/TaskStack;)V

    .line 2926
    invoke-virtual {v4}, Lcom/android/server/wm/TaskStack;->resizeWindows()V

    .line 2927
    invoke-virtual {v4}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    const/4 v7, 0x1

    iput-boolean v7, v5, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 2928
    iget-object v5, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->vivoperformLayoutAndPlaceSurfacesLocked()V

    goto :goto_1

    .line 2931
    .end local v0    # "apptokens":Ljava/util/ArrayList;
    .end local v4    # "stack":Lcom/android/server/wm/TaskStack;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2932
    :catch_0
    move-exception v1

    .line 2933
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v5, "vivo_debug_WindowManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "changeDisplayModeWithAnim e = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2934
    iget-object v5, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->finishMultiWindowTransitionLocked(Lcom/android/server/wm/DisplayContent;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2937
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public changeStackBounds(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 21
    .param p4, "needAlphaAnim"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/IBinder;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1457
    .local p1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, "bounds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    .local p3, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    .line 1557
    :cond_0
    :goto_0
    return-void

    .line 1460
    :cond_1
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 1465
    sget-boolean v18, Lcom/android/server/wm/VivoSmartMultiWindowWms;->DEBUG_TIME:Z

    if-eqz v18, :cond_2

    .line 1466
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 1467
    .local v16, "time":J
    const-string v18, "vivo_debug_WindowManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "DEBUG_TIME changeStackBounds begin time = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    .end local v16    # "time":J
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1471
    .local v10, "origId":J
    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1472
    .local v6, "layoutanimlist":Ljava/util/ArrayList;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    monitor-enter v19
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1473
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 1474
    .local v13, "size":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v13, :cond_3

    .line 1475
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 1476
    .local v15, "stackId":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    .line 1477
    .local v12, "rect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/wm/TaskStack;

    .line 1478
    .local v14, "stack":Lcom/android/server/wm/TaskStack;
    if-nez v14, :cond_6

    .line 1496
    .end local v12    # "rect":Landroid/graphics/Rect;
    .end local v14    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v15    # "stackId":I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->isSplitMode()Z

    move-result v18

    if-eqz v18, :cond_8

    .line 1497
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, v18

    invoke-direct {v0, v1, v6, v2}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->prepareMultiWindowTransition(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 1498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v20

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->getMultiWindowTransitionLocked(I)Lcom/android/server/wm/SmartMultiWindowTransition;

    move-result-object v7

    .line 1502
    .local v7, "multitransit":Lcom/android/server/wm/SmartMultiWindowTransition;
    if-eqz v7, :cond_4

    .line 1503
    if-nez p4, :cond_7

    .line 1504
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/android/server/wm/SmartMultiWindowTransition;->setMultiWindowTransitionImmediately(Z)V

    .line 1506
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/android/server/wm/SmartMultiWindowTransition;->setMultiWindowTransitionTime(I)V

    .line 1512
    :goto_2
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/android/server/wm/SmartMultiWindowTransition;->setFinishedIfOneNotified(Z)V

    .line 1534
    .end local v7    # "multitransit":Lcom/android/server/wm/SmartMultiWindowTransition;
    :cond_4
    :goto_3
    const/4 v5, 0x0

    :goto_4
    if-ge v5, v13, :cond_5

    .line 1535
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 1536
    .restart local v15    # "stackId":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    .line 1537
    .restart local v12    # "rect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/wm/TaskStack;

    .line 1538
    .restart local v14    # "stack":Lcom/android/server/wm/TaskStack;
    if-nez v14, :cond_9

    .line 1543
    .end local v12    # "rect":Landroid/graphics/Rect;
    .end local v14    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v15    # "stackId":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/WindowManagerService;->vivoperformLayoutAndPlaceSurfacesLocked()V

    .line 1544
    monitor-exit v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1550
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1553
    .end local v5    # "i":I
    .end local v6    # "layoutanimlist":Ljava/util/ArrayList;
    .end local v13    # "size":I
    :goto_5
    sget-boolean v18, Lcom/android/server/wm/VivoSmartMultiWindowWms;->DEBUG_TIME:Z

    if-eqz v18, :cond_0

    .line 1554
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 1555
    .restart local v16    # "time":J
    const-string v18, "vivo_debug_WindowManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "DEBUG_TIME changeStackBounds end time = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1481
    .end local v16    # "time":J
    .restart local v5    # "i":I
    .restart local v6    # "layoutanimlist":Ljava/util/ArrayList;
    .restart local v12    # "rect":Landroid/graphics/Rect;
    .restart local v13    # "size":I
    .restart local v14    # "stack":Lcom/android/server/wm/TaskStack;
    .restart local v15    # "stackId":I
    :cond_6
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/VivoSmartMultiWindowMgr;->mStackRectList:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Rect;

    .line 1483
    .local v8, "oldrect":Landroid/graphics/Rect;
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v12}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1488
    .local v9, "outrect":Landroid/graphics/Rect;
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v14, v12, v9, v1}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->adjustStackBounds(Lcom/android/server/wm/TaskStack;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Z

    .line 1489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/VivoSmartMultiWindowMgr;->mStackRectList:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1490
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v6}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->addStackToLayoutAnimation(Lcom/android/server/wm/TaskStack;Ljava/util/ArrayList;)V

    .line 1492
    invoke-virtual {v14}, Lcom/android/server/wm/TaskStack;->resizeWindows()V

    .line 1493
    invoke-virtual {v14}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v18

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 1474
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 1509
    .end local v8    # "oldrect":Landroid/graphics/Rect;
    .end local v9    # "outrect":Landroid/graphics/Rect;
    .end local v12    # "rect":Landroid/graphics/Rect;
    .end local v14    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v15    # "stackId":I
    .restart local v7    # "multitransit":Lcom/android/server/wm/SmartMultiWindowTransition;
    :cond_7
    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/android/server/wm/SmartMultiWindowTransition;->setMultiWindowTransitionTime(I)V

    goto/16 :goto_2

    .line 1544
    .end local v5    # "i":I
    .end local v7    # "multitransit":Lcom/android/server/wm/SmartMultiWindowTransition;
    .end local v13    # "size":I
    :catchall_0
    move-exception v18

    monitor-exit v19
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v18
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1545
    .end local v6    # "layoutanimlist":Ljava/util/ArrayList;
    :catch_0
    move-exception v4

    .line 1546
    .local v4, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v18, "vivo_debug_WindowManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "changeStackBounds e = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->finishMultiWindowTransitionLocked(Lcom/android/server/wm/DisplayContent;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1550
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_5

    .line 1531
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v5    # "i":I
    .restart local v6    # "layoutanimlist":Ljava/util/ArrayList;
    .restart local v13    # "size":I
    :cond_8
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->finishMultiWindowTransitionLocked(Lcom/android/server/wm/DisplayContent;)V

    goto/16 :goto_3

    .line 1541
    .restart local v12    # "rect":Landroid/graphics/Rect;
    .restart local v14    # "stack":Lcom/android/server/wm/TaskStack;
    .restart local v15    # "stackId":I
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->resizeStackBounds(Lcom/android/server/wm/TaskStack;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1534
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_4

    .line 1550
    .end local v5    # "i":I
    .end local v6    # "layoutanimlist":Ljava/util/ArrayList;
    .end local v12    # "rect":Landroid/graphics/Rect;
    .end local v13    # "size":I
    .end local v14    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v15    # "stackId":I
    :catchall_1
    move-exception v18

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v18
.end method

.method public changeStackBoundsNoAnimation(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3022
    .local p1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, "bounds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    if-nez v11, :cond_1

    .line 3081
    :cond_0
    :goto_0
    return-void

    .line 3025
    :cond_1
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ne v11, v14, :cond_0

    .line 3029
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 3030
    .local v12, "time":J
    sget-boolean v11, Lcom/android/server/wm/VivoSmartMultiWindowWms;->DEBUG_TIME:Z

    if-eqz v11, :cond_2

    .line 3031
    const-string v11, "vivo_debug_WindowManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "DEBUG_TIME changeStackBoundsNoAnimation begin time = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3035
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 3037
    .local v4, "origId":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v14, v11, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3038
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 3039
    .local v8, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v8, :cond_3

    .line 3040
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 3041
    .local v10, "stackId":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    .line 3042
    .local v7, "rect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v11, v11, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/TaskStack;

    .line 3043
    .local v9, "stack":Lcom/android/server/wm/TaskStack;
    if-nez v9, :cond_5

    .line 3061
    .end local v7    # "rect":Landroid/graphics/Rect;
    .end local v9    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v10    # "stackId":I
    :cond_3
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v8, :cond_4

    .line 3062
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 3063
    .restart local v10    # "stackId":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    .line 3064
    .restart local v7    # "rect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v11, v11, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/TaskStack;

    .line 3065
    .restart local v9    # "stack":Lcom/android/server/wm/TaskStack;
    if-nez v9, :cond_6

    .line 3070
    .end local v7    # "rect":Landroid/graphics/Rect;
    .end local v9    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v10    # "stackId":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v11}, Lcom/android/server/wm/WindowManagerService;->vivoperformLayoutAndPlaceSurfacesLocked()V

    .line 3071
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3073
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3075
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 3076
    sget-boolean v11, Lcom/android/server/wm/VivoSmartMultiWindowWms;->DEBUG_TIME:Z

    if-eqz v11, :cond_0

    .line 3077
    const-string v11, "vivo_debug_WindowManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "DEBUG_TIME changeStackBoundsNoAnimation end time = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3046
    .restart local v7    # "rect":Landroid/graphics/Rect;
    .restart local v9    # "stack":Lcom/android/server/wm/TaskStack;
    .restart local v10    # "stackId":I
    :cond_5
    :try_start_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v11, v11, Lcom/android/server/VivoSmartMultiWindowMgr;->mStackRectList:Landroid/util/SparseArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 3048
    .local v3, "oldrect":Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 3053
    .local v6, "outrect":Landroid/graphics/Rect;
    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v7, v6, v11}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->adjustStackBounds(Lcom/android/server/wm/TaskStack;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Z

    .line 3054
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v11, v11, Lcom/android/server/VivoSmartMultiWindowMgr;->mStackRectList:Landroid/util/SparseArray;

    invoke-virtual {v11, v10, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3057
    invoke-virtual {v9}, Lcom/android/server/wm/TaskStack;->resizeWindows()V

    .line 3058
    invoke-virtual {v9}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v11

    const/4 v15, 0x1

    iput-boolean v15, v11, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 3039
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 3068
    .end local v3    # "oldrect":Landroid/graphics/Rect;
    .end local v6    # "outrect":Landroid/graphics/Rect;
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->resizeStackBounds(Lcom/android/server/wm/TaskStack;)V

    .line 3061
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 3071
    .end local v2    # "i":I
    .end local v7    # "rect":Landroid/graphics/Rect;
    .end local v8    # "size":I
    .end local v9    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v10    # "stackId":I
    :catchall_0
    move-exception v11

    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3073
    :catchall_1
    move-exception v11

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v11
.end method

.method public changeStackBoundsNoRelayout(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2748
    .local p1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, "bounds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    iget-object v10, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    if-nez v10, :cond_1

    .line 2783
    :cond_0
    :goto_0
    return-void

    .line 2751
    :cond_1
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ne v10, v11, :cond_0

    .line 2755
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2757
    .local v4, "origId":J
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2758
    .local v1, "layoutanimlist":Ljava/util/ArrayList;
    iget-object v10, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v11, v10, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2759
    :try_start_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 2760
    .local v7, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v7, :cond_2

    .line 2761
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 2762
    .local v9, "stackId":I
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    .line 2763
    .local v6, "rect":Landroid/graphics/Rect;
    iget-object v10, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/TaskStack;

    .line 2764
    .local v8, "stack":Lcom/android/server/wm/TaskStack;
    if-nez v8, :cond_3

    .line 2779
    .end local v6    # "rect":Landroid/graphics/Rect;
    .end local v8    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v9    # "stackId":I
    :cond_2
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2781
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 2767
    .restart local v6    # "rect":Landroid/graphics/Rect;
    .restart local v8    # "stack":Lcom/android/server/wm/TaskStack;
    .restart local v9    # "stackId":I
    :cond_3
    :try_start_2
    iget-object v10, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v10, v10, Lcom/android/server/VivoSmartMultiWindowMgr;->mStackRectList:Landroid/util/SparseArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 2769
    .local v2, "oldrect":Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2774
    .local v3, "outrect":Landroid/graphics/Rect;
    const/4 v10, 0x1

    invoke-direct {p0, v8, v6, v3, v10}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->adjustStackBounds(Lcom/android/server/wm/TaskStack;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Z

    .line 2775
    iget-object v10, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v10, v10, Lcom/android/server/VivoSmartMultiWindowMgr;->mStackRectList:Landroid/util/SparseArray;

    invoke-virtual {v10, v9, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2760
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2779
    .end local v0    # "i":I
    .end local v2    # "oldrect":Landroid/graphics/Rect;
    .end local v3    # "outrect":Landroid/graphics/Rect;
    .end local v6    # "rect":Landroid/graphics/Rect;
    .end local v7    # "size":I
    .end local v8    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v9    # "stackId":I
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2781
    .end local v1    # "layoutanimlist":Ljava/util/ArrayList;
    :catchall_1
    move-exception v10

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v10
.end method

.method public changeStackModeByActivity(Landroid/view/IApplicationToken;IIZ)V
    .locals 6
    .param p1, "token"    # Landroid/view/IApplicationToken;
    .param p2, "stackId"    # I
    .param p3, "mode"    # I
    .param p4, "isSpecialToken"    # Z

    .prologue
    .line 2943
    iget-object v2, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    if-eqz v2, :cond_0

    if-ltz p2, :cond_0

    if-eqz p1, :cond_0

    if-gez p3, :cond_1

    .line 2960
    :cond_0
    :goto_0
    return-void

    .line 2947
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 2948
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    .line 2949
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    iget-object v2, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-interface {p1}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .line 2950
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    sget-boolean v2, Lcom/android/server/wm/VivoSmartMultiWindowWms;->DEBUG_SMARTMULTIWINDOW_IMPORTANT:Z

    if-eqz v2, :cond_2

    .line 2951
    const-string v2, "vivo_debug_WindowManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changeStackModeByActivity atoken = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", stackId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isSpecialToken = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2955
    :cond_2
    if-eqz v1, :cond_3

    iget-object v2, v1, Lcom/android/server/wm/TaskStack;->mSmartShowData:Lcom/android/server/wm/StackSmartMultiWindowData;

    if-eqz v2, :cond_3

    if-nez v0, :cond_4

    .line 2956
    :cond_3
    monitor-exit v3

    goto :goto_0

    .line 2959
    .end local v0    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .end local v1    # "stack":Lcom/android/server/wm/TaskStack;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2958
    .restart local v0    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .restart local v1    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_4
    :try_start_1
    invoke-direct {p0, v1, v0, p3, p4}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->vivoChangeStackModeByActivity(Lcom/android/server/wm/TaskStack;Lcom/android/server/wm/AppWindowToken;IZ)V

    .line 2959
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public computeImeFrameLw(Lcom/android/server/wm/WindowState;)V
    .locals 2
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 3816
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-boolean v0, v0, Lcom/android/server/VivoSmartMultiWindowMgr;->mSplitMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget v0, v0, Lcom/android/server/VivoSmartMultiWindowMgr;->mDragToFullScreenIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 3820
    :cond_0
    :goto_0
    return-void

    .line 3819
    :cond_1
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSmartMultiWindowData;->computeImeFrameLw()V

    goto :goto_0
.end method

.method public createMultiWindowFreezeSurface()V
    .locals 3

    .prologue
    .line 1280
    iget-object v0, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-nez v0, :cond_0

    .line 1286
    :goto_0
    return-void

    .line 1283
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1284
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->getMultiWindowTransitionLocked()Lcom/android/server/wm/SmartMultiWindowTransition;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/wm/SmartMultiWindowTransition;->createFreezeSurface(Z)V

    .line 1285
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public createStackSmartMultiWindowData(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/TaskStack;)Lcom/android/server/wm/StackSmartMultiWindowData;
    .locals 2
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "task"    # Lcom/android/server/wm/TaskStack;

    .prologue
    .line 2049
    new-instance v0, Lcom/android/server/wm/StackSmartMultiWindowData;

    const v1, 0x3ee66666    # 0.45f

    invoke-direct {v0, p1, p2, v1}, Lcom/android/server/wm/StackSmartMultiWindowData;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/TaskStack;F)V

    return-object v0
.end method

.method public createWindowSmartMultiWindowData(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WindowSmartMultiWindowData;
    .locals 1
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 2055
    new-instance v0, Lcom/android/server/wm/WindowSmartMultiWindowData;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wm/WindowSmartMultiWindowData;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowState;)V

    return-object v0
.end method

.method public enterSplitModeChangeDisplayModeAndBounds(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 23
    .param p5, "animindex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/IBinder;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 3246
    .local p1, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    .local p2, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p3, "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p4, "bounds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    move-object/from16 v20, v0

    if-nez v20, :cond_1

    .line 3331
    :cond_0
    :goto_0
    return-void

    .line 3249
    :cond_1
    if-eqz p2, :cond_0

    if-eqz p4, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_0

    .line 3252
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 3253
    .local v18, "stackidsize":I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 3256
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 3258
    .local v12, "origId":J
    :try_start_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 3259
    .local v8, "layoutanimlist":Ljava/util/ArrayList;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    monitor-enter v21
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3260
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->prepareMultiWindowTransitionSurface()V

    .line 3261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    move-object/from16 v20, v0

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lcom/android/server/VivoSmartMultiWindowMgr;->mNeedSplitModeAnim:Z

    .line 3262
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    move/from16 v0, v18

    if-ge v6, v0, :cond_2

    .line 3263
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 3264
    .local v17, "stackId":I
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 3265
    .local v9, "mode":I
    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/graphics/Rect;

    .line 3266
    .local v15, "rect":Landroid/graphics/Rect;
    const/4 v4, 0x0

    .line 3267
    .local v4, "change":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/wm/TaskStack;

    .line 3268
    .local v16, "stack":Lcom/android/server/wm/TaskStack;
    if-nez v16, :cond_3

    .line 3300
    .end local v4    # "change":Z
    .end local v9    # "mode":I
    .end local v15    # "rect":Landroid/graphics/Rect;
    .end local v16    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v17    # "stackId":I
    :cond_2
    if-eqz p1, :cond_5

    .line 3301
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/IBinder;

    .line 3302
    .local v19, "token":Landroid/os/IBinder;
    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3323
    .end local v6    # "i":I
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v19    # "token":Landroid/os/IBinder;
    :catchall_0
    move-exception v20

    monitor-exit v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v20
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3324
    .end local v8    # "layoutanimlist":Ljava/util/ArrayList;
    :catch_0
    move-exception v5

    .line 3325
    .local v5, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v20, "vivo_debug_WindowManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "enterSplitModeChangeDisplayModeAndBounds e = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->finishMultiWindowTransitionLocked(Lcom/android/server/wm/DisplayContent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3329
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 3271
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v4    # "change":Z
    .restart local v6    # "i":I
    .restart local v8    # "layoutanimlist":Ljava/util/ArrayList;
    .restart local v9    # "mode":I
    .restart local v15    # "rect":Landroid/graphics/Rect;
    .restart local v16    # "stack":Lcom/android/server/wm/TaskStack;
    .restart local v17    # "stackId":I
    :cond_3
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/VivoSmartMultiWindowMgr;->mStackRectList:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/Rect;

    .line 3273
    .local v11, "oldrect":Landroid/graphics/Rect;
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14, v15}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 3286
    .local v14, "outrect":Landroid/graphics/Rect;
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v20

    invoke-direct {v0, v1, v15, v14, v2}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->adjustStackBounds(Lcom/android/server/wm/TaskStack;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Z

    .line 3287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/VivoSmartMultiWindowMgr;->mStackRectList:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3288
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v20

    invoke-virtual {v0, v1, v9, v2}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->changeDisplayMode(Lcom/android/server/wm/TaskStack;IZ)Z

    .line 3289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/VivoSmartMultiWindowMgr;->mStackDisplayModeList:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    new-instance v22, Ljava/lang/Integer;

    move-object/from16 v0, v22

    invoke-direct {v0, v9}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v20

    move/from16 v1, v17

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3290
    const/4 v4, 0x1

    .line 3291
    if-eqz v4, :cond_4

    .line 3292
    if-nez p1, :cond_4

    .line 3293
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v8}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->addStackToLayoutAnimation(Lcom/android/server/wm/TaskStack;Ljava/util/ArrayList;)V

    .line 3262
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 3305
    .end local v4    # "change":Z
    .end local v9    # "mode":I
    .end local v11    # "oldrect":Landroid/graphics/Rect;
    .end local v14    # "outrect":Landroid/graphics/Rect;
    .end local v15    # "rect":Landroid/graphics/Rect;
    .end local v16    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v17    # "stackId":I
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->isSplitMode()Z

    move-result v20

    if-eqz v20, :cond_7

    .line 3306
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v8, v2}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->prepareMultiWindowTransition(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 3307
    if-ltz p5, :cond_6

    .line 3308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v22

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->getMultiWindowTransitionLocked(I)Lcom/android/server/wm/SmartMultiWindowTransition;

    move-result-object v10

    .line 3312
    .local v10, "multitransit":Lcom/android/server/wm/SmartMultiWindowTransition;
    if-eqz v10, :cond_6

    .line 3313
    move/from16 v0, p5

    invoke-virtual {v10, v0}, Lcom/android/server/wm/SmartMultiWindowTransition;->setMultiWindowTransitionTime(I)V

    .line 3315
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/android/server/wm/SmartMultiWindowTransition;->setFinishedIfOneNotified(Z)V

    .line 3323
    .end local v10    # "multitransit":Lcom/android/server/wm/SmartMultiWindowTransition;
    :cond_6
    :goto_3
    monitor-exit v21
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3329
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 3319
    :cond_7
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->finishMultiWindowTransitionLocked(Lcom/android/server/wm/DisplayContent;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 3329
    .end local v6    # "i":I
    .end local v8    # "layoutanimlist":Ljava/util/ArrayList;
    :catchall_1
    move-exception v20

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v20
.end method

.method public executeSplitModeTransition()V
    .locals 4

    .prologue
    .line 3085
    iget-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-boolean v1, v1, Lcom/android/server/VivoSmartMultiWindowMgr;->mNeedSplitModeAnim:Z

    if-nez v1, :cond_1

    .line 3114
    :cond_0
    :goto_0
    return-void

    .line 3090
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v2, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowAnimator;->getMultiWindowTransitionLocked(I)Lcom/android/server/wm/SmartMultiWindowTransition;

    move-result-object v0

    .line 3094
    .local v0, "multitransit":Lcom/android/server/wm/SmartMultiWindowTransition;
    sget-boolean v1, Lcom/android/server/wm/VivoSmartMultiWindowWms;->DEBUG_MWAPP_TRANSITION:Z

    if-eqz v1, :cond_2

    .line 3095
    const-string v2, "vivo_debug_SmartMultiWindowTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "executeSplitModeTransition multitransit = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", multitransit.isTransitionSet() = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/server/wm/SmartMultiWindowTransition;->isTransitionSet()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3103
    :cond_2
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/SmartMultiWindowTransition;->isTransitionSet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3107
    iget-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3108
    invoke-direct {p0}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->getMultiWindowTransitionLocked()Lcom/android/server/wm/SmartMultiWindowTransition;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/SmartMultiWindowTransition;->prepare()V

    .line 3109
    sget-boolean v1, Lcom/android/server/wm/VivoSmartMultiWindowWms;->DEBUG_MWAPP_TRANSITION:Z

    if-eqz v1, :cond_0

    .line 3110
    const-string v1, "vivo_debug_SmartMultiWindowTransition"

    const-string v2, "executeSplitModeTransition execute prepare"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3095
    :cond_3
    const-string v1, "null"

    goto :goto_1
.end method

.method public finishApplyGravity(Lcom/android/server/wm/WindowState;II)V
    .locals 2
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 3926
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-boolean v0, v0, Lcom/android/server/VivoSmartMultiWindowMgr;->mSplitMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    if-eqz v0, :cond_0

    if-lez p2, :cond_0

    if-gtz p3, :cond_1

    .line 3933
    :cond_0
    :goto_0
    return-void

    .line 3929
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget v0, v0, Lcom/android/server/VivoSmartMultiWindowMgr;->mDragToFullScreenIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3932
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    invoke-virtual {v0, p2, p3}, Lcom/android/server/wm/WindowSmartMultiWindowData;->finishApplyGravity(II)V

    goto :goto_0
.end method

.method public finishMultiWindowTransitionLocked(Lcom/android/server/wm/DisplayContent;)V
    .locals 4
    .param p1, "displaycontent"    # Lcom/android/server/wm/DisplayContent;

    .prologue
    .line 1289
    iget-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    if-nez v1, :cond_1

    .line 1307
    :cond_0
    :goto_0
    return-void

    .line 1292
    :cond_1
    sget-boolean v1, Lcom/android/server/wm/VivoSmartMultiWindowWms;->DEBUG_SMARTMULTIWINDOW_IMPORTANT:Z

    if-eqz v1, :cond_2

    .line 1293
    const-string v1, "vivo_debug_SmartMultiWindowTransition"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finishMultiWindowTransitionLocked mMgr.mNeedSplitModeAnim = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-boolean v3, v3, Lcom/android/server/VivoSmartMultiWindowMgr;->mNeedSplitModeAnim:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/VivoSmartMultiWindowMgr;->mNeedSplitModeAnim:Z

    .line 1299
    iget-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowAnimator;->getMultiWindowTransitionLocked(I)Lcom/android/server/wm/SmartMultiWindowTransition;

    move-result-object v0

    .line 1301
    .local v0, "multitransit":Lcom/android/server/wm/SmartMultiWindowTransition;
    if-eqz v0, :cond_3

    .line 1302
    invoke-virtual {v0}, Lcom/android/server/wm/SmartMultiWindowTransition;->clearMultiWindowTransitionAnimation()V

    .line 1304
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/VivoSmartMultiWindowMgr;->mNotifyDraw:Z

    .line 1306
    iget-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->vivoSendMultiWindowAnimTimeOut()V

    goto :goto_0
.end method

.method public forcePerformLayout(I)V
    .locals 7
    .param p1, "stackId"    # I

    .prologue
    const/4 v5, -0x1

    .line 3902
    iget-object v4, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    if-eqz v4, :cond_0

    if-gez p1, :cond_1

    .line 3924
    :cond_0
    :goto_0
    return-void

    .line 3905
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget v4, v4, Lcom/android/server/VivoSmartMultiWindowMgr;->mTopStackId:I

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget v4, v4, Lcom/android/server/VivoSmartMultiWindowMgr;->mBottomStackId:I

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-boolean v4, v4, Lcom/android/server/VivoSmartMultiWindowMgr;->mHasSplitActivity:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-boolean v4, v4, Lcom/android/server/VivoSmartMultiWindowMgr;->taskResumed:Z

    if-eqz v4, :cond_0

    :cond_2
    iget-object v4, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-boolean v4, v4, Lcom/android/server/VivoSmartMultiWindowMgr;->mStartSplitNoExecuteAppTransition:Z

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-boolean v4, v4, Lcom/android/server/VivoSmartMultiWindowMgr;->mFirstStartSplit:Z

    if-eqz v4, :cond_4

    :cond_3
    iget-object v4, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget v4, v4, Lcom/android/server/VivoSmartMultiWindowMgr;->mExecuteAppTransition:I

    if-eqz v4, :cond_0

    .line 3908
    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3910
    .local v2, "origId":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v4, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3912
    :try_start_1
    iget-object v4, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    .line 3913
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    if-nez v1, :cond_5

    .line 3920
    :goto_1
    monitor-exit v5

    goto :goto_0

    .end local v1    # "stack":Lcom/android/server/wm/TaskStack;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 3921
    :catch_0
    move-exception v0

    .line 3922
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "vivo_debug_WindowManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "forcePerformLayout e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3916
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_5
    :try_start_3
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->resizeWindows()V

    .line 3917
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    const/4 v6, 0x1

    iput-boolean v6, v4, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 3918
    iget-object v4, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->vivoperformLayoutAndPlaceSurfacesLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public getAnimation()Z
    .locals 1

    .prologue
    .line 3772
    iget-object v0, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-boolean v0, v0, Lcom/android/server/VivoSmartMultiWindowMgr;->mSplitMode:Z

    if-nez v0, :cond_1

    .line 3773
    :cond_0
    const/4 v0, 0x0

    .line 3775
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-boolean v0, v0, Lcom/android/server/VivoSmartMultiWindowMgr;->mAnimation:Z

    goto :goto_0
.end method

.method public getAppOrientation(Lcom/android/server/wm/AppWindowToken;)I
    .locals 4
    .param p1, "wtoken"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    const/4 v2, -0x1

    .line 1862
    if-nez p1, :cond_1

    .line 1882
    :cond_0
    :goto_0
    return v2

    .line 1865
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-boolean v3, v3, Lcom/android/server/VivoSmartMultiWindowMgr;->mSplitMode:Z

    if-nez v3, :cond_3

    .line 1866
    :cond_2
    iget v2, p1, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    goto :goto_0

    .line 1869
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1870
    .local v0, "classname":Ljava/lang/String;
    if-eqz v0, :cond_4

    sget-object v3, Lcom/android/server/VivoSmartMultiWindowMgr;->G_WEIXIN_ACTIVITY:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/android/server/VivoSmartMultiWindowMgr;->G_WEIXIN_CHATACTIVITY_TOKEN:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1874
    :cond_4
    iget v2, p1, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    if-gez v2, :cond_5

    .line 1877
    iget-object v1, p1, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    .line 1878
    .local v1, "task":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_5

    .line 1879
    iget-object v2, v1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->getWindowOriginalRotation(Lcom/android/server/wm/TaskStack;)I

    move-result v2

    goto :goto_0

    .line 1882
    .end local v1    # "task":Lcom/android/server/wm/Task;
    :cond_5
    iget v2, p1, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    goto :goto_0
.end method

.method public getConfiguration(I)Landroid/content/res/Configuration;
    .locals 5
    .param p1, "stackId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1629
    iget-object v2, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-nez v2, :cond_2

    .line 1630
    :cond_0
    const/4 v0, 0x0

    .line 1648
    :cond_1
    :goto_0
    return-object v0

    .line 1632
    :cond_2
    invoke-virtual {p0, p1, v3}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->getWindowOriginalRotation(II)I

    move-result v1

    .line 1633
    .local v1, "rotate":I
    const/4 v0, 0x0

    .line 1634
    .local v0, "config":Landroid/content/res/Configuration;
    if-eqz v1, :cond_3

    const/16 v2, 0x8

    if-eq v1, v2, :cond_3

    const/4 v2, 0x6

    if-eq v1, v2, :cond_3

    const/16 v2, 0xb

    if-ne v1, v2, :cond_4

    .line 1639
    :cond_3
    new-instance v0, Landroid/content/res/Configuration;

    .end local v0    # "config":Landroid/content/res/Configuration;
    iget-object v2, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v0, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 1640
    .restart local v0    # "config":Landroid/content/res/Configuration;
    iget-object v2, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    invoke-virtual {v2, v0, v4}, Lcom/android/server/VivoSmartMultiWindowMgr;->getLocalConfiguration(Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    goto :goto_0

    .line 1641
    :cond_4
    if-eq v1, v4, :cond_5

    const/16 v2, 0x9

    if-eq v1, v2, :cond_5

    const/4 v2, 0x7

    if-eq v1, v2, :cond_5

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 1645
    :cond_5
    new-instance v0, Landroid/content/res/Configuration;

    .end local v0    # "config":Landroid/content/res/Configuration;
    iget-object v2, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v0, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 1646
    .restart local v0    # "config":Landroid/content/res/Configuration;
    iget-object v2, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    invoke-virtual {v2, v0, v3}, Lcom/android/server/VivoSmartMultiWindowMgr;->getLocalConfiguration(Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    goto :goto_0
.end method

.method public getConfigurationLocked(I)Landroid/content/res/Configuration;
    .locals 5
    .param p1, "orientation"    # I

    .prologue
    const/4 v4, 0x1

    .line 3136
    iget-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-nez v1, :cond_2

    .line 3137
    :cond_0
    const/4 v0, 0x0

    .line 3151
    :cond_1
    :goto_0
    return-object v0

    .line 3139
    :cond_2
    const/4 v0, 0x0

    .line 3140
    .local v0, "config":Landroid/content/res/Configuration;
    sget-boolean v1, Lcom/android/server/wm/VivoSmartMultiWindowWms;->DEBUG_SMARTMULTIWINDOW_IMPORTANT:Z

    if-eqz v1, :cond_3

    .line 3141
    const-string v1, "vivo_debug_WindowManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConfigurationLocked orientation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3144
    :cond_3
    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    .line 3145
    new-instance v0, Landroid/content/res/Configuration;

    .end local v0    # "config":Landroid/content/res/Configuration;
    iget-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 3146
    .restart local v0    # "config":Landroid/content/res/Configuration;
    iget-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    invoke-virtual {v1, v0, v4}, Lcom/android/server/VivoSmartMultiWindowMgr;->getLocalConfiguration(Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    goto :goto_0

    .line 3147
    :cond_4
    if-ne p1, v4, :cond_1

    .line 3148
    new-instance v0, Landroid/content/res/Configuration;

    .end local v0    # "config":Landroid/content/res/Configuration;
    iget-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 3149
    .restart local v0    # "config":Landroid/content/res/Configuration;
    iget-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/server/VivoSmartMultiWindowMgr;->getLocalConfiguration(Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    goto :goto_0
.end method

.method public getConfigurationLocked(Lcom/android/server/wm/WindowState;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;
    .locals 2
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "currentconfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 2089
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-boolean v1, v1, Lcom/android/server/VivoSmartMultiWindowMgr;->mSplitMode:Z

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSmartMultiWindowData;->getDisplayMode()I

    move-result v1

    if-nez v1, :cond_1

    .line 2096
    .end local p2    # "currentconfig":Landroid/content/res/Configuration;
    :cond_0
    :goto_0
    return-object p2

    .line 2095
    .restart local p2    # "currentconfig":Landroid/content/res/Configuration;
    :cond_1
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSmartMultiWindowData;->getConfigurationLocked()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2096
    .local v0, "config":Landroid/content/res/Configuration;
    if-eqz v0, :cond_0

    move-object p2, v0

    goto :goto_0
.end method

.method public getDisplayMode(I)I
    .locals 7
    .param p1, "stackId"    # I

    .prologue
    .line 379
    iget-object v5, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    if-nez v5, :cond_1

    .line 380
    :cond_0
    const/4 v0, 0x0

    .line 402
    :goto_0
    return v0

    .line 382
    :cond_1
    iget-object v5, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v5, v5, Lcom/android/server/VivoSmartMultiWindowMgr;->mStackDisplayModeList:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 383
    .local v4, "stackmode":Ljava/lang/Integer;
    if-eqz v4, :cond_2

    .line 384
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 387
    :cond_2
    const/4 v0, 0x0

    .line 388
    .local v0, "mode":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 390
    .local v2, "origId":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v5, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 392
    :try_start_1
    iget-object v5, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    .line 393
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    if-nez v1, :cond_3

    .line 398
    :goto_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 400
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 396
    :cond_3
    :try_start_2
    invoke-virtual {p0, v1}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->getDisplayMode(Lcom/android/server/wm/TaskStack;)I

    move-result v0

    goto :goto_1

    .line 398
    .end local v1    # "stack":Lcom/android/server/wm/TaskStack;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 400
    :catchall_1
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method getDisplayMode(Lcom/android/server/wm/TaskStack;)I
    .locals 1
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;

    .prologue
    .line 1982
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/TaskStack;->mSmartShowData:Lcom/android/server/wm/StackSmartMultiWindowData;

    if-nez v0, :cond_1

    .line 1983
    :cond_0
    const/4 v0, 0x0

    .line 1985
    :goto_0
    return v0

    :cond_1
    iget-object v0, p1, Lcom/android/server/wm/TaskStack;->mSmartShowData:Lcom/android/server/wm/StackSmartMultiWindowData;

    invoke-virtual {v0}, Lcom/android/server/wm/StackSmartMultiWindowData;->getDisplayMode()I

    move-result v0

    goto :goto_0
.end method

.method public getDragToFullWindow()I
    .locals 1

    .prologue
    .line 2297
    iget-object v0, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    if-nez v0, :cond_0

    .line 2298
    const/4 v0, -0x1

    .line 2300
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget v0, v0, Lcom/android/server/VivoSmartMultiWindowMgr;->mDragToFullScreenIndex:I

    goto :goto_0
.end method

.method public getForceLayoutWindow(Lcom/android/server/wm/WindowState;)Z
    .locals 1
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 3730
    iget-object v0, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-boolean v0, v0, Lcom/android/server/VivoSmartMultiWindowMgr;->mSplitMode:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    if-nez v0, :cond_1

    .line 3731
    :cond_0
    const/4 v0, 0x0

    .line 3733
    :goto_0
    return v0

    :cond_1
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSmartMultiWindowData;->getForceLayoutWindow()Z

    move-result v0

    goto :goto_0
.end method

.method public getSplitDisplayInfo()[F
    .locals 1

    .prologue
    .line 2326
    iget-object v0, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    if-nez v0, :cond_0

    .line 2327
    const/4 v0, 0x0

    .line 2329
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    invoke-virtual {v0}, Lcom/android/server/VivoSmartMultiWindowMgr;->getSplitDisplayInfo()[F

    move-result-object v0

    goto :goto_0
.end method

.method public getStackBounds(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "session"    # Lcom/android/server/wm/Session;
    .param p2, "client"    # Landroid/view/IWindow;
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 359
    iget-object v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-eqz v3, :cond_0

    if-nez p3, :cond_1

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    .line 363
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 366
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 367
    .local v0, "origId":J
    iget-object v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v3, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 368
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    const/4 v5, 0x0

    invoke-virtual {v3, p1, p2, v5}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 370
    .local v2, "win":Lcom/android/server/wm/WindowState;
    if-nez v2, :cond_2

    .line 371
    monitor-exit v4

    goto :goto_0

    .line 374
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 373
    .restart local v2    # "win":Lcom/android/server/wm/WindowState;
    :cond_2
    :try_start_1
    invoke-virtual {p0, v2, p3}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->getStackWindowBounds(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V

    .line 374
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 375
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0
.end method

.method public getStackForceLayout(Lcom/android/server/wm/TaskStack;)Z
    .locals 3
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;

    .prologue
    const/4 v1, 0x0

    .line 3742
    iget-object v2, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-boolean v2, v2, Lcom/android/server/VivoSmartMultiWindowMgr;->mSplitMode:Z

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/android/server/wm/TaskStack;->mSmartShowData:Lcom/android/server/wm/StackSmartMultiWindowData;

    if-nez v2, :cond_1

    .line 3749
    :cond_0
    :goto_0
    return v1

    .line 3745
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->getDisplayMode(Lcom/android/server/wm/TaskStack;)I

    move-result v0

    .line 3746
    .local v0, "mode":I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 3749
    iget-object v1, p1, Lcom/android/server/wm/TaskStack;->mSmartShowData:Lcom/android/server/wm/StackSmartMultiWindowData;

    invoke-virtual {v1}, Lcom/android/server/wm/StackSmartMultiWindowData;->getStackForceLayout()Z

    move-result v1

    goto :goto_0
.end method

.method public getStackScaleValue(I)F
    .locals 5
    .param p1, "stackId"    # I

    .prologue
    .line 2846
    const/4 v1, 0x0

    .line 2847
    .local v1, "value":F
    iget-object v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v3, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 2849
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskStack;

    .line 2850
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    if-nez v0, :cond_0

    .line 2851
    monitor-exit v4

    move v2, v1

    .line 2855
    .end local v1    # "value":F
    .local v2, "value":F
    :goto_0
    return v2

    .line 2853
    .end local v2    # "value":F
    .restart local v1    # "value":F
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->getStackScaleValue(Lcom/android/server/wm/TaskStack;)F

    move-result v1

    .line 2854
    monitor-exit v4

    move v2, v1

    .line 2855
    .end local v1    # "value":F
    .restart local v2    # "value":F
    goto :goto_0

    .line 2854
    .end local v0    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v2    # "value":F
    .restart local v1    # "value":F
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method getStackScaleValue(Lcom/android/server/wm/TaskStack;)F
    .locals 1
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;

    .prologue
    .line 2859
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/TaskStack;->mSmartShowData:Lcom/android/server/wm/StackSmartMultiWindowData;

    if-nez v0, :cond_1

    .line 2860
    :cond_0
    const/4 v0, 0x0

    .line 2862
    :goto_0
    return v0

    :cond_1
    iget-object v0, p1, Lcom/android/server/wm/TaskStack;->mSmartShowData:Lcom/android/server/wm/StackSmartMultiWindowData;

    invoke-virtual {v0}, Lcom/android/server/wm/StackSmartMultiWindowData;->getStackScaleValue()F

    move-result v0

    goto :goto_0
.end method

.method public getStackWindowBounds(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 2304
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    if-nez v2, :cond_1

    .line 2322
    :cond_0
    :goto_0
    return-void

    .line 2307
    :cond_1
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowSmartMultiWindowData;->isNormalType()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2310
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowSmartMultiWindowData;->getStackSmartMultiWindowData()Lcom/android/server/wm/StackSmartMultiWindowData;

    move-result-object v0

    .line 2312
    .local v0, "data":Lcom/android/server/wm/StackSmartMultiWindowData;
    if-eqz v0, :cond_0

    .line 2315
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowSmartMultiWindowData;->getWindowTokenSpecialDisplayMode()I

    move-result v2

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowSmartMultiWindowData;->isSpecialWindowToken()Z

    move-result v3

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowSmartMultiWindowData;->getWindowTokenOrientaion()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/wm/StackSmartMultiWindowData;->getStackBounds(IZI)Landroid/graphics/Rect;

    move-result-object v1

    .line 2318
    .local v1, "rect":Landroid/graphics/Rect;
    if-eqz v1, :cond_0

    .line 2321
    invoke-virtual {p2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public getWindowConfiguration(Lcom/android/server/wm/WindowState;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;
    .locals 1
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "currentconfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1653
    if-nez p1, :cond_1

    .line 1662
    .end local p2    # "currentconfig":Landroid/content/res/Configuration;
    :cond_0
    :goto_0
    return-object p2

    .line 1657
    .restart local p2    # "currentconfig":Landroid/content/res/Configuration;
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-boolean v0, v0, Lcom/android/server/VivoSmartMultiWindowMgr;->mSplitMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSmartMultiWindowData;->getDisplayMode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1659
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSmartMultiWindowData;->getConfigurationLocked()Landroid/content/res/Configuration;

    move-result-object p2

    goto :goto_0
.end method

.method public getWindowOriginalRotation(II)I
    .locals 6
    .param p1, "stackId"    # I
    .param p2, "displayId"    # I

    .prologue
    const/4 v2, -0x1

    .line 1022
    iget-object v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-nez v3, :cond_0

    .line 1033
    :goto_0
    return v2

    .line 1026
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v3, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1027
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    .line 1028
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {p0, v1}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->getWindowOriginalRotation(Lcom/android/server/wm/TaskStack;)I

    move-result v3

    monitor-exit v4

    move v2, v3

    goto :goto_0

    .line 1029
    .end local v1    # "stack":Lcom/android/server/wm/TaskStack;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1030
    :catch_0
    move-exception v0

    .line 1031
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "vivo_debug_WindowManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getWindowOriginalRotation e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getWindowOriginalRotation(Lcom/android/server/wm/TaskStack;)I
    .locals 2
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;

    .prologue
    const/4 v0, -0x1

    .line 2022
    if-nez p1, :cond_1

    .line 2028
    :cond_0
    :goto_0
    return v0

    .line 2025
    :cond_1
    iget-object v1, p1, Lcom/android/server/wm/TaskStack;->mSmartShowData:Lcom/android/server/wm/StackSmartMultiWindowData;

    if-eqz v1, :cond_0

    .line 2026
    iget-object v0, p1, Lcom/android/server/wm/TaskStack;->mSmartShowData:Lcom/android/server/wm/StackSmartMultiWindowData;

    invoke-virtual {v0}, Lcom/android/server/wm/StackSmartMultiWindowData;->getStackCurrentAppOritation()I

    move-result v0

    goto :goto_0
.end method

.method public handleNotObscuredLocked(Lcom/android/server/wm/WindowState;)Z
    .locals 1
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 1944
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-boolean v0, v0, Lcom/android/server/VivoSmartMultiWindowMgr;->mSplitMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    if-nez v0, :cond_1

    .line 1946
    :cond_0
    const/4 v0, 0x1

    .line 1948
    :goto_0
    return v0

    :cond_1
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSmartMultiWindowData;->isNormalType()Z

    move-result v0

    goto :goto_0
.end method

.method public isCascade(Lcom/android/server/wm/WindowState;)Z
    .locals 2
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/4 v0, 0x0

    .line 2101
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    if-nez v1, :cond_1

    .line 2104
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSmartMultiWindowData;->isIgnoreJudgeWindowScreen()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSmartMultiWindowData;->isNormalType()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isDialogWindow(Lcom/android/server/wm/WindowState;)Z
    .locals 1
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 2987
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    if-nez v0, :cond_1

    .line 2988
    :cond_0
    const/4 v0, 0x0

    .line 2990
    :goto_0
    return v0

    :cond_1
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSmartMultiWindowData;->isDialogWindow()Z

    move-result v0

    goto :goto_0
.end method

.method public isGoingToExitSmartMultiWindow()Z
    .locals 1

    .prologue
    .line 3945
    iget-object v0, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-boolean v0, v0, Lcom/android/server/VivoSmartMultiWindowMgr;->isGoingToExitSmartMultiWindow:Z

    goto :goto_0
.end method

.method public isInputMonitorLocked()Z
    .locals 1

    .prologue
    .line 3674
    iget-object v0, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-boolean v0, v0, Lcom/android/server/VivoSmartMultiWindowMgr;->mSplitMode:Z

    if-nez v0, :cond_1

    .line 3675
    :cond_0
    const/4 v0, 0x0

    .line 3677
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-boolean v0, v0, Lcom/android/server/VivoSmartMultiWindowMgr;->mLockInputMontor:Z

    goto :goto_0
.end method

.method public isNeedIgnoreChangeFocusedWindow(Landroid/graphics/Point;)Z
    .locals 7
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 428
    iget-object v4, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    if-nez v4, :cond_2

    :cond_0
    move v2, v3

    .line 484
    :cond_1
    :goto_0
    return v2

    .line 431
    :cond_2
    iget-object v4, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->vivoGetFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 433
    .local v1, "win":Lcom/android/server/wm/WindowState;
    iget-object v4, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_3

    .line 434
    iget-object v4, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget v4, v4, Lcom/android/server/VivoSmartMultiWindowMgr;->mImeWindowVis:I

    if-lez v4, :cond_3

    invoke-direct {p0, p1}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->isInInputMethodRegion(Landroid/graphics/Point;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 439
    :cond_3
    if-nez v1, :cond_4

    move v2, v3

    .line 440
    goto :goto_0

    .line 442
    :cond_4
    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    if-nez v4, :cond_5

    move v2, v3

    .line 443
    goto :goto_0

    .line 445
    :cond_5
    sget-boolean v4, Lcom/android/server/wm/VivoSmartMultiWindowWms;->DEBUG_SMARTMULTIWINDOW_IMPORTANT:Z

    if-eqz v4, :cond_6

    .line 446
    const-string v4, "vivo_debug_WindowManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TAG_WMS isNeedIgnoreChangeFocusedWindow focused win type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", win = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :cond_6
    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 451
    .local v0, "type":I
    const/16 v4, 0x7d0

    if-eq v0, v4, :cond_1

    const/16 v4, 0x7d1

    if-eq v0, v4, :cond_1

    sget-boolean v4, Landroid/util/VivoSmartMultiWindowConfig;->IS_EXPORT:Z

    if-eqz v4, :cond_7

    const/16 v4, 0x7d3

    if-ne v0, v4, :cond_7

    const-string v4, "com.android.systemui"

    iget-object v5, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, v5, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_7
    const/16 v4, 0x7d4

    if-eq v0, v4, :cond_1

    const/16 v4, 0x7d5

    if-eq v0, v4, :cond_1

    const/16 v4, 0x7d6

    if-eq v0, v4, :cond_1

    const/16 v4, 0x7d9

    if-eq v0, v4, :cond_1

    const/16 v4, 0x7da

    if-eq v0, v4, :cond_1

    const/16 v4, 0x7db

    if-eq v0, v4, :cond_1

    const/16 v4, 0x7dc

    if-eq v0, v4, :cond_1

    const/16 v4, 0x7dd

    if-eq v0, v4, :cond_1

    const/16 v4, 0x7de

    if-eq v0, v4, :cond_1

    const/16 v4, 0x7df

    if-eq v0, v4, :cond_1

    const/16 v4, 0x7e1

    if-eq v0, v4, :cond_1

    const/16 v4, 0x7e3

    if-eq v0, v4, :cond_1

    const/16 v4, 0x7e4

    if-eq v0, v4, :cond_1

    const/16 v4, 0x7e8

    if-eq v0, v4, :cond_1

    const/16 v4, 0x7ef

    if-eq v0, v4, :cond_1

    move v2, v3

    .line 484
    goto/16 :goto_0
.end method

.method public isNormalJudgeWindowScreen(Lcom/android/server/wm/WindowState;)Z
    .locals 2
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/4 v0, 0x0

    .line 102
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    if-nez v1, :cond_1

    .line 105
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSmartMultiWindowData;->isIgnoreJudgeWindowScreen()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method isNormalType(Lcom/android/server/wm/TaskStack;)Z
    .locals 2
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;

    .prologue
    const/4 v0, 0x1

    .line 1989
    if-nez p1, :cond_1

    .line 1992
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p1, Lcom/android/server/wm/TaskStack;->mSmartShowData:Lcom/android/server/wm/StackSmartMultiWindowData;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/android/server/wm/TaskStack;->mSmartShowData:Lcom/android/server/wm/StackSmartMultiWindowData;

    invoke-virtual {v1}, Lcom/android/server/wm/StackSmartMultiWindowData;->getDisplayMode()I

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSplitMode()Z
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    if-nez v0, :cond_0

    .line 96
    const/4 v0, 0x0

    .line 98
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-boolean v0, v0, Lcom/android/server/VivoSmartMultiWindowMgr;->mSplitMode:Z

    goto :goto_0
.end method

.method public isSplitNormalMode()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2971
    iget-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    if-nez v1, :cond_1

    .line 2974
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-boolean v1, v1, Lcom/android/server/VivoSmartMultiWindowMgr;->mSplitMode:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget v1, v1, Lcom/android/server/VivoSmartMultiWindowMgr;->mDragToFullScreenIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-boolean v1, v1, Lcom/android/server/VivoSmartMultiWindowMgr;->mLastSplitMode:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSplitTaskWindow(Lcom/android/server/wm/WindowState;)Z
    .locals 3
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/4 v0, 0x0

    .line 2587
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-boolean v1, v1, Lcom/android/server/VivoSmartMultiWindowMgr;->mSplitMode:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-nez v1, :cond_1

    .line 2594
    :cond_0
    :goto_0
    return v0

    .line 2591
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget v1, v1, Lcom/android/server/VivoSmartMultiWindowMgr;->mDragToFullScreenIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 2594
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSmartMultiWindowData;->isSplitTaskWindow()Z

    move-result v0

    goto :goto_0
.end method

.method isUnInterceptWindow(Lcom/android/server/wm/WindowState;)Z
    .locals 5
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/4 v1, 0x0

    .line 488
    iget-object v2, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-nez v2, :cond_1

    .line 525
    :cond_0
    :goto_0
    return v1

    .line 491
    :cond_1
    if-eqz p1, :cond_0

    .line 494
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    if-eqz v2, :cond_0

    .line 497
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 498
    .local v0, "type":I
    sget-boolean v2, Lcom/android/server/wm/VivoSmartMultiWindowWms;->DEBUG_SMARTMULTIWINDOW_IMPORTANT:Z

    if-eqz v2, :cond_2

    .line 499
    const-string v2, "vivo_debug_WindowManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TAG_WMS isNeedInterceptWindow win type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :cond_2
    const/16 v2, 0x7d4

    if-eq v0, v2, :cond_3

    const/16 v2, 0x7d9

    if-eq v0, v2, :cond_3

    const/16 v2, 0x7dd

    if-ne v0, v2, :cond_0

    .line 523
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isVivoMovingTaskToStack()Z
    .locals 1

    .prologue
    .line 3949
    iget-object v0, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-boolean v0, v0, Lcom/android/server/VivoSmartMultiWindowMgr;->isVivoMovingTaskToStack:Z

    goto :goto_0
.end method

.method public lockInputMonitor(Z)V
    .locals 3
    .param p1, "locked"    # Z

    .prologue
    .line 3665
    iget-object v0, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    if-nez v0, :cond_0

    .line 3672
    :goto_0
    return-void

    .line 3668
    :cond_0
    sget-boolean v0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->DEBUG_SMARTMULTIWINDOW_IMPORTANT:Z

    if-eqz v0, :cond_1

    .line 3669
    const-string v0, "vivo_debug_WindowManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lockInputMonitor locked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3671
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iput-boolean p1, v0, Lcom/android/server/VivoSmartMultiWindowMgr;->mLockInputMontor:Z

    goto :goto_0
.end method

.method public mayBeResizeTopWindow(Lcom/android/server/wm/TaskStack;Lcom/android/server/wm/Task;Z)V
    .locals 11
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;
    .param p2, "task"    # Lcom/android/server/wm/Task;
    .param p3, "toTop"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v9, -0x1

    .line 3518
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    iget-object v7, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-boolean v7, v7, Lcom/android/server/VivoSmartMultiWindowMgr;->mSplitMode:Z

    if-nez v7, :cond_1

    .line 3560
    :cond_0
    return-void

    .line 3522
    :cond_1
    iget-object v7, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget v7, v7, Lcom/android/server/VivoSmartMultiWindowMgr;->mTopStackId:I

    if-ne v7, v9, :cond_0

    iget-object v7, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget v7, v7, Lcom/android/server/VivoSmartMultiWindowMgr;->mBottomStackId:I

    if-ne v7, v9, :cond_0

    .line 3525
    iget-object v7, p1, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-nez v7, :cond_4

    move v3, v8

    .line 3527
    .local v3, "underStatusBar":Z
    :goto_0
    iget-object v7, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v7, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    .line 3528
    .local v2, "resizingWindows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    iget-object v0, p2, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 3529
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_0

    .line 3530
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/AppWindowToken;

    iget-object v6, v7, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    .line 3531
    .local v6, "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v5, v7, -0x1

    .local v5, "winNdx":I
    :goto_2
    if-ltz v5, :cond_5

    .line 3532
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 3533
    .local v4, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 3534
    sget-boolean v7, Lcom/android/server/wm/VivoSmartMultiWindowWms;->DEBUG_SMARTMULTIWINDOW_IMPORTANT:Z

    if-eqz v7, :cond_2

    .line 3535
    const-string v7, "vivo_debug_TaskStack"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mayBeResizeTopWindow setBounds: Resizing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3539
    :cond_2
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3542
    :cond_3
    iput-boolean v8, v4, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    .line 3531
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 3525
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    .end local v1    # "activityNdx":I
    .end local v2    # "resizingWindows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .end local v3    # "underStatusBar":Z
    .end local v4    # "win":Lcom/android/server/wm/WindowState;
    .end local v5    # "winNdx":I
    .end local v6    # "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .line 3529
    .restart local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    .restart local v1    # "activityNdx":I
    .restart local v2    # "resizingWindows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .restart local v3    # "underStatusBar":Z
    .restart local v5    # "winNdx":I
    .restart local v6    # "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public needAdjustShownFrameLw(Lcom/android/server/wm/WindowState;)Z
    .locals 3
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 2253
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    if-nez v0, :cond_1

    .line 2254
    :cond_0
    const/4 v0, 0x0

    .line 2274
    :goto_0
    return v0

    .line 2262
    :cond_1
    sget-boolean v0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->DEBUG_SMARTMULTIWINDOW_IMPORTANT:Z

    if-eqz v0, :cond_2

    .line 2263
    const-string v0, "vivo_debug_time"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "needAdjustShownFrameLw win.mAttrs = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsImWindow = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", win = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2265
    :cond_2
    sget-boolean v0, Landroid/util/VivoSmartMultiWindowConfig;->IS_EXPORT:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-boolean v0, v0, Lcom/android/server/VivoSmartMultiWindowMgr;->mSplitMode:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget v0, v0, Lcom/android/server/VivoSmartMultiWindowMgr;->mDragToFullScreenIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7dc

    if-eq v0, v1, :cond_3

    .line 2271
    const/4 v0, 0x1

    goto :goto_0

    .line 2274
    :cond_3
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSmartMultiWindowData;->needAdjustShownFrameLw()Z

    move-result v0

    goto :goto_0
.end method

.method public needDrawFrameLayer(Lcom/android/server/wm/TaskStack;)Z
    .locals 2
    .param p1, "task"    # Lcom/android/server/wm/TaskStack;

    .prologue
    .line 3680
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-boolean v0, v0, Lcom/android/server/VivoSmartMultiWindowMgr;->mSplitMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget v0, v0, Lcom/android/server/VivoSmartMultiWindowMgr;->mDragToFullScreenIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->isNormalType(Lcom/android/server/wm/TaskStack;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3681
    :cond_0
    const/4 v0, 0x0

    .line 3683
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-boolean v0, v0, Lcom/android/server/VivoSmartMultiWindowMgr;->mNeedDrawFrameLayer:Z

    goto :goto_0
.end method

.method public needIgnoredOrientationFromWindowsLocked(Lcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/TaskStack;)Z
    .locals 10
    .param p1, "atoken"    # Lcom/android/server/wm/AppWindowToken;
    .param p2, "taskstack"    # Lcom/android/server/wm/TaskStack;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1748
    invoke-static {}, Lcom/android/server/am/VivoSmartMultiWindowAms;->getInstance()Lcom/android/server/am/VivoSmartMultiWindowAms;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    .line 1749
    if-eqz p2, :cond_0

    iget-object v7, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-boolean v7, v7, Lcom/android/server/VivoSmartMultiWindowMgr;->mSplitMode:Z

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    if-eqz v7, :cond_0

    if-nez p1, :cond_1

    .line 1825
    :cond_0
    :goto_0
    return v5

    .line 1753
    :cond_1
    iget-object v7, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-boolean v7, v7, Lcom/android/server/VivoSmartMultiWindowMgr;->mLastSplitMode:Z

    if-eqz v7, :cond_0

    .line 1756
    iget v7, p2, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-eqz v7, :cond_0

    iget-object v7, p2, Lcom/android/server/wm/TaskStack;->mSmartShowData:Lcom/android/server/wm/StackSmartMultiWindowData;

    if-eqz v7, :cond_0

    .line 1760
    iget v7, p1, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    if-eqz v7, :cond_2

    iget v7, p1, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    const/16 v8, 0x8

    if-eq v7, v8, :cond_2

    iget v7, p1, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    const/4 v8, 0x6

    if-eq v7, v8, :cond_2

    iget v7, p1, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    const/16 v8, 0xb

    if-ne v7, v8, :cond_6

    :cond_2
    move v1, v6

    .line 1764
    .local v1, "isRequestLandscape":Z
    :goto_1
    iget-object v7, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/app/SmartMultWindowSharedPreferences;->isScreenLocked(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz v1, :cond_0

    .line 1767
    :cond_3
    iget-object v7, p1, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1768
    .local v4, "splitToken":[Ljava/lang/String;
    const/4 v7, 0x3

    aget-object v0, v4, v7

    .line 1769
    .local v0, "activityName":Ljava/lang/String;
    const-string v7, "/"

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1770
    .local v3, "splitActivityName":[Ljava/lang/String;
    aget-object v2, v3, v5

    .line 1771
    .local v2, "packageName":Ljava/lang/String;
    const-string v7, "com.vivo.securedaemonservice"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1820
    sget-boolean v7, Lcom/android/server/wm/VivoSmartMultiWindowWms;->DEBUG_SMARTMULTIWINDOW_IMPORTANT:Z

    if-eqz v7, :cond_4

    .line 1821
    const-string v7, "vivo_debug_WindowState"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "needIgnoredOrientationFromWindowsLocked mMgr.mTmpDisplayMode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget v9, v9, Lcom/android/server/VivoSmartMultiWindowMgr;->mTmpDisplayMode:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", taskstack.mSmartShowData.getDisplayMode() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p2, Lcom/android/server/wm/TaskStack;->mSmartShowData:Lcom/android/server/wm/StackSmartMultiWindowData;

    invoke-virtual {v9}, Lcom/android/server/wm/StackSmartMultiWindowData;->getDisplayMode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", atoken = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    :cond_4
    iget-object v7, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget v7, v7, Lcom/android/server/VivoSmartMultiWindowMgr;->mTmpDisplayMode:I

    if-nez v7, :cond_5

    iget-object v7, p2, Lcom/android/server/wm/TaskStack;->mSmartShowData:Lcom/android/server/wm/StackSmartMultiWindowData;

    invoke-virtual {v7}, Lcom/android/server/wm/StackSmartMultiWindowData;->getDisplayMode()I

    move-result v7

    if-nez v7, :cond_5

    move v6, v5

    :cond_5
    move v5, v6

    goto/16 :goto_0

    .end local v0    # "activityName":Ljava/lang/String;
    .end local v1    # "isRequestLandscape":Z
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "splitActivityName":[Ljava/lang/String;
    .end local v4    # "splitToken":[Ljava/lang/String;
    :cond_6
    move v1, v5

    .line 1760
    goto :goto_1
.end method

.method public needIgnoredOrientationFromWindowsLocked(Lcom/android/server/wm/WindowState;)Z
    .locals 2
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/4 v0, 0x0

    .line 1739
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-boolean v1, v1, Lcom/android/server/VivoSmartMultiWindowMgr;->mSplitMode:Z

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    if-nez v1, :cond_1

    .line 1743
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSmartMultiWindowData;->isIgnoreJudgeWindowScreen()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public needSkipExecuteAppTransitionPerform()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 3936
    iget-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-boolean v1, v1, Lcom/android/server/VivoSmartMultiWindowMgr;->mSplitMode:Z

    if-nez v1, :cond_1

    .line 3942
    :cond_0
    :goto_0
    return v0

    .line 3939
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget v1, v1, Lcom/android/server/VivoSmartMultiWindowMgr;->mTopStackId:I

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget v1, v1, Lcom/android/server/VivoSmartMultiWindowMgr;->mBottomStackId:I

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-boolean v1, v1, Lcom/android/server/VivoSmartMultiWindowMgr;->mHasSplitActivity:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-boolean v1, v1, Lcom/android/server/VivoSmartMultiWindowMgr;->taskResumed:Z

    if-eqz v1, :cond_4

    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-boolean v1, v1, Lcom/android/server/VivoSmartMultiWindowMgr;->mStartSplitNoExecuteAppTransition:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-boolean v1, v1, Lcom/android/server/VivoSmartMultiWindowMgr;->mFirstStartSplit:Z

    if-eqz v1, :cond_0

    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget v1, v1, Lcom/android/server/VivoSmartMultiWindowMgr;->mExecuteAppTransition:I

    if-nez v1, :cond_0

    .line 3940
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public needSkipPerformLayout(Lcom/android/server/wm/TaskStack;Lcom/android/server/wm/Task;Z)Z
    .locals 3
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;
    .param p2, "task"    # Lcom/android/server/wm/Task;
    .param p3, "toTop"    # Z

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 3892
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-boolean v1, v1, Lcom/android/server/VivoSmartMultiWindowMgr;->mSplitMode:Z

    if-nez v1, :cond_1

    .line 3899
    :cond_0
    :goto_0
    return v0

    .line 3896
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget v1, v1, Lcom/android/server/VivoSmartMultiWindowMgr;->mTopStackId:I

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget v1, v1, Lcom/android/server/VivoSmartMultiWindowMgr;->mBottomStackId:I

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-boolean v1, v1, Lcom/android/server/VivoSmartMultiWindowMgr;->mHasSplitActivity:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-boolean v1, v1, Lcom/android/server/VivoSmartMultiWindowMgr;->taskResumed:Z

    if-eqz v1, :cond_4

    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-boolean v1, v1, Lcom/android/server/VivoSmartMultiWindowMgr;->mStartSplitNoExecuteAppTransition:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-boolean v1, v1, Lcom/android/server/VivoSmartMultiWindowMgr;->mFirstStartSplit:Z

    if-eqz v1, :cond_0

    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget v1, v1, Lcom/android/server/VivoSmartMultiWindowMgr;->mExecuteAppTransition:I

    if-nez v1, :cond_0

    .line 3897
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public needSkipWindowOrientation(Lcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/TaskStack;)Z
    .locals 3
    .param p1, "atoken"    # Lcom/android/server/wm/AppWindowToken;
    .param p2, "winstack"    # Lcom/android/server/wm/TaskStack;

    .prologue
    const/4 v1, 0x0

    .line 4228
    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-boolean v2, v2, Lcom/android/server/VivoSmartMultiWindowMgr;->mSplitMode:Z

    if-nez v2, :cond_1

    .line 4238
    :cond_0
    :goto_0
    return v1

    .line 4231
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-boolean v2, v2, Lcom/android/server/VivoSmartMultiWindowMgr;->mLastSplitMode:Z

    if-nez v2, :cond_0

    .line 4234
    iget-object v2, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v2, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v2, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    iget-object v0, v2, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    .line 4235
    .local v0, "focusedstack":Lcom/android/server/wm/TaskStack;
    :goto_1
    if-eqz v0, :cond_0

    .line 4238
    if-eq p2, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 4234
    .end local v0    # "focusedstack":Lcom/android/server/wm/TaskStack;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public needSkipWindowOrientation(Lcom/android/server/wm/WindowState;)Z
    .locals 4
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 4211
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-boolean v3, v3, Lcom/android/server/VivoSmartMultiWindowMgr;->mSplitMode:Z

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    if-nez v3, :cond_1

    .line 4225
    :cond_0
    :goto_0
    return v2

    .line 4214
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-boolean v3, v3, Lcom/android/server/VivoSmartMultiWindowMgr;->mLastSplitMode:Z

    if-nez v3, :cond_0

    .line 4217
    iget-object v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    iget-object v3, v3, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    iget-object v3, v3, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    iget-object v0, v3, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    .line 4218
    .local v0, "focusedstack":Lcom/android/server/wm/TaskStack;
    :goto_1
    if-eqz v0, :cond_0

    .line 4221
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_2

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v3, v3, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    if-eqz v3, :cond_2

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v3, v3, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    iget-object v1, v3, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    .line 4222
    .local v1, "winstack":Lcom/android/server/wm/TaskStack;
    :cond_2
    if-eqz v1, :cond_0

    .line 4225
    if-eq v1, v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .end local v0    # "focusedstack":Lcom/android/server/wm/TaskStack;
    .end local v1    # "winstack":Lcom/android/server/wm/TaskStack;
    :cond_3
    move-object v0, v1

    .line 4217
    goto :goto_1
.end method

.method public notifyAllStackExitSplitMode(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2866
    .local p1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_1

    .line 2897
    :cond_0
    :goto_0
    return-void

    .line 2869
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2871
    .local v2, "origId":J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v6, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2872
    :try_start_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 2873
    .local v5, "stackidsize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v5, :cond_2

    .line 2874
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 2875
    .local v4, "stackId":I
    iget-object v6, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    .line 2876
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    if-nez v1, :cond_3

    .line 2893
    .end local v1    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v4    # "stackId":I
    :cond_2
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2895
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 2882
    .restart local v1    # "stack":Lcom/android/server/wm/TaskStack;
    .restart local v4    # "stackId":I
    :cond_3
    const/4 v6, 0x0

    const/4 v8, 0x1

    :try_start_2
    invoke-virtual {p0, v1, v6, v8}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->changeDisplayMode(Lcom/android/server/wm/TaskStack;IZ)Z

    .line 2883
    invoke-direct {p0, v1}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->resetStackSize(Lcom/android/server/wm/TaskStack;)V

    .line 2884
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Lcom/android/server/wm/TaskStack;->setFullScreen(Z)V

    .line 2885
    iget-object v6, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v6, v6, Lcom/android/server/VivoSmartMultiWindowMgr;->mStackRectList:Landroid/util/SparseArray;

    iget v8, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->remove(I)V

    .line 2886
    iget-object v6, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v6, v6, Lcom/android/server/VivoSmartMultiWindowMgr;->mStackDisplayModeList:Landroid/util/SparseArray;

    iget v8, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->remove(I)V

    .line 2888
    invoke-direct {p0, v1}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->vivoResizeWindows(Lcom/android/server/wm/TaskStack;)V

    .line 2873
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2893
    .end local v0    # "i":I
    .end local v1    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v4    # "stackId":I
    .end local v5    # "stackidsize":I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2895
    :catchall_1
    move-exception v6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public notifyMultiWindowAppTokenDrawn(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 1911
    sget-boolean v1, Lcom/android/server/wm/VivoSmartMultiWindowWms;->DEBUG_MWAPP_TRANSITION:Z

    if-eqz v1, :cond_0

    .line 1912
    const-string v1, "vivo_debug_SmartMultiWindowTransition"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyMultiWindowAppTokenDrawn obj = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1915
    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-nez v1, :cond_2

    .line 1922
    :cond_1
    :goto_0
    return-void

    .line 1918
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 1919
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .line 1920
    .local v0, "awtoken":Lcom/android/server/wm/AppWindowToken;
    invoke-direct {p0, v0}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->appTokenDrawnForMultiWindowLocked(Lcom/android/server/wm/AppWindowToken;)V

    .line 1921
    monitor-exit v2

    goto :goto_0

    .end local v0    # "awtoken":Lcom/android/server/wm/AppWindowToken;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyMultiWindowTransActionTimeOut()V
    .locals 4

    .prologue
    .line 1925
    iget-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-nez v1, :cond_0

    .line 1941
    :goto_0
    return-void

    .line 1928
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 1929
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowAnimator;->getMultiWindowTransitionLocked(I)Lcom/android/server/wm/SmartMultiWindowTransition;

    move-result-object v0

    .line 1931
    .local v0, "multitransit":Lcom/android/server/wm/SmartMultiWindowTransition;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/SmartMultiWindowTransition;->isTransitionSet()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1932
    invoke-virtual {v0}, Lcom/android/server/wm/SmartMultiWindowTransition;->setTimeout()V

    .line 1934
    :cond_1
    sget-boolean v1, Lcom/android/server/wm/VivoSmartMultiWindowWms;->DEBUG_MWAPP_TRANSITION:Z

    if-eqz v1, :cond_2

    .line 1935
    const-string v1, "vivo_debug_SmartMultiWindowTransition"

    const-string v3, "notifyMultiWindowTransActionTimeOut"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1938
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->finishMultiWindowTransitionLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 1940
    monitor-exit v2

    goto :goto_0

    .end local v0    # "multitransit":Lcom/android/server/wm/SmartMultiWindowTransition;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public pendingLayoutChanges(Lcom/android/server/wm/DisplayContent;)V
    .locals 3
    .param p1, "defaultDisplay"    # Lcom/android/server/wm/DisplayContent;

    .prologue
    .line 1952
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    if-nez v1, :cond_1

    .line 1963
    :cond_0
    :goto_0
    return-void

    .line 1957
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowAnimator;->getMultiWindowTransitionLocked(I)Lcom/android/server/wm/SmartMultiWindowTransition;

    move-result-object v0

    .line 1959
    .local v0, "multitransit":Lcom/android/server/wm/SmartMultiWindowTransition;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/SmartMultiWindowTransition;->isTransitReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1960
    iget v1, p1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    invoke-virtual {v0}, Lcom/android/server/wm/SmartMultiWindowTransition;->handleMultiWindowTransitionReady()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, p1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    goto :goto_0
.end method

.method public prepareExitSplitModeAnimation(I)V
    .locals 10
    .param p1, "stackId"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 3156
    iget-object v5, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->isWindowsFreezingScreen()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3197
    :cond_0
    :goto_0
    return-void

    .line 3159
    :cond_1
    iget-object v5, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v6, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowAnimator;->getMultiWindowTransitionLocked(I)Lcom/android/server/wm/SmartMultiWindowTransition;

    move-result-object v2

    .line 3162
    .local v2, "multitransit":Lcom/android/server/wm/SmartMultiWindowTransition;
    sget-boolean v5, Lcom/android/server/wm/VivoSmartMultiWindowWms;->DEBUG_MWAPP_TRANSITION:Z

    if-eqz v5, :cond_2

    .line 3163
    const-string v6, "vivo_debug_SmartMultiWindowTransition"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "prepareExitSplitModeAnimation multitransit = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", multitransit.isTransitionSet() = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/server/wm/SmartMultiWindowTransition;->isTransitionSet()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    :goto_1
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3171
    :cond_2
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/wm/SmartMultiWindowTransition;->isTransitionSet()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3175
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3176
    .local v1, "layoutanimlist":Ljava/util/ArrayList;
    if-gez p1, :cond_5

    .line 3177
    iget-object v5, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 3178
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v3, :cond_6

    .line 3179
    iget-object v5, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/TaskStack;

    .line 3180
    .local v4, "stack":Lcom/android/server/wm/TaskStack;
    if-nez v4, :cond_4

    .line 3178
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3163
    .end local v0    # "i":I
    .end local v1    # "layoutanimlist":Ljava/util/ArrayList;
    .end local v3    # "size":I
    .end local v4    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_3
    const-string v5, "null"

    goto :goto_1

    .line 3183
    .restart local v0    # "i":I
    .restart local v1    # "layoutanimlist":Ljava/util/ArrayList;
    .restart local v3    # "size":I
    .restart local v4    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_4
    invoke-direct {p0, v4, v1}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->addStackToLayoutAnimation(Lcom/android/server/wm/TaskStack;Ljava/util/ArrayList;)V

    goto :goto_3

    .line 3186
    .end local v0    # "i":I
    .end local v3    # "size":I
    .end local v4    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_5
    iget-object v5, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/TaskStack;

    .line 3187
    .restart local v4    # "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v4, :cond_6

    .line 3188
    invoke-direct {p0, v4, v1}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->addStackToLayoutAnimation(Lcom/android/server/wm/TaskStack;Ljava/util/ArrayList;)V

    .line 3192
    .end local v4    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_6
    const/4 v5, 0x0

    invoke-direct {p0, v5, v1, v9}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->prepareMultiWindowTransitionLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 3193
    invoke-virtual {v2, v9}, Lcom/android/server/wm/SmartMultiWindowTransition;->setMultiWindowTransitionImmediately(Z)V

    .line 3194
    invoke-virtual {v2, v8}, Lcom/android/server/wm/SmartMultiWindowTransition;->setMultiWindowTransitionTime(I)V

    .line 3196
    invoke-virtual {v2, v8}, Lcom/android/server/wm/SmartMultiWindowTransition;->setFinishedIfOneNotified(Z)V

    goto/16 :goto_0
.end method

.method public prepareExitSplitModeAnimation(Landroid/os/IBinder;)V
    .locals 9
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3564
    iget-object v4, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->isWindowsFreezingScreen()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3598
    :cond_0
    :goto_0
    return-void

    .line 3568
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v5, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowAnimator;->getMultiWindowTransitionLocked(I)Lcom/android/server/wm/SmartMultiWindowTransition;

    move-result-object v3

    .line 3571
    .local v3, "multitransit":Lcom/android/server/wm/SmartMultiWindowTransition;
    sget-boolean v4, Lcom/android/server/wm/VivoSmartMultiWindowWms;->DEBUG_MWAPP_TRANSITION:Z

    if-eqz v4, :cond_2

    .line 3572
    const-string v5, "vivo_debug_SmartMultiWindowTransition"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "prepareExitSplitModeAnimation multitransit = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", multitransit.isTransitionSet() = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/android/server/wm/SmartMultiWindowTransition;->isTransitionSet()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3580
    :cond_2
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/server/wm/SmartMultiWindowTransition;->isTransitionSet()Z

    move-result v4

    if-nez v4, :cond_0

    .line 3584
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3585
    .local v2, "layoutanimlist":Ljava/util/ArrayList;
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3586
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3587
    .local v1, "enablelist":Ljava/util/ArrayList;
    iget-object v4, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v4, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 3588
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, p1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .line 3589
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v0, :cond_3

    .line 3590
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3592
    :cond_3
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3593
    invoke-direct {p0, v2, v1, v8}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->prepareMultiWindowTransitionLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 3594
    invoke-virtual {v3, v8}, Lcom/android/server/wm/SmartMultiWindowTransition;->setMultiWindowTransitionImmediately(Z)V

    .line 3595
    invoke-virtual {v3, v7}, Lcom/android/server/wm/SmartMultiWindowTransition;->setMultiWindowTransitionTime(I)V

    .line 3597
    invoke-virtual {v3, v7}, Lcom/android/server/wm/SmartMultiWindowTransition;->setFinishedIfOneNotified(Z)V

    goto :goto_0

    .line 3572
    .end local v0    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .end local v1    # "enablelist":Ljava/util/ArrayList;
    .end local v2    # "layoutanimlist":Ljava/util/ArrayList;
    :cond_4
    const-string v4, "null"

    goto :goto_1

    .line 3592
    .restart local v1    # "enablelist":Ljava/util/ArrayList;
    .restart local v2    # "layoutanimlist":Ljava/util/ArrayList;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public prepareExitSplitModeAnimation(Landroid/os/IBinder;Landroid/os/IBinder;Z)V
    .locals 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "othertoken"    # Landroid/os/IBinder;
    .param p3, "notifyone"    # Z

    .prologue
    const/4 v7, 0x1

    .line 3953
    iget-object v4, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    if-eqz v4, :cond_1

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->isWindowsFreezingScreen()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4002
    :cond_1
    :goto_0
    return-void

    .line 3957
    :cond_2
    iget-object v4, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v5, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowAnimator;->getMultiWindowTransitionLocked(I)Lcom/android/server/wm/SmartMultiWindowTransition;

    move-result-object v3

    .line 3960
    .local v3, "multitransit":Lcom/android/server/wm/SmartMultiWindowTransition;
    sget-boolean v4, Lcom/android/server/wm/VivoSmartMultiWindowWms;->DEBUG_MWAPP_TRANSITION:Z

    if-eqz v4, :cond_3

    .line 3961
    const-string v5, "vivo_debug_SmartMultiWindowTransition"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "prepareExitSplitModeAnimation multitransit = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", multitransit.isTransitionSet() = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/android/server/wm/SmartMultiWindowTransition;->isTransitionSet()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3969
    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/android/server/wm/SmartMultiWindowTransition;->isTransitionSet()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3970
    :cond_4
    if-eqz v3, :cond_1

    .line 3971
    invoke-virtual {v3, p3}, Lcom/android/server/wm/SmartMultiWindowTransition;->setFinishedIfOneNotified(Z)V

    goto :goto_0

    .line 3961
    :cond_5
    const-string v4, "null"

    goto :goto_1

    .line 3976
    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3977
    .local v2, "layoutanimlist":Ljava/util/ArrayList;
    if-eqz p1, :cond_7

    .line 3978
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3980
    :cond_7
    if-eqz p2, :cond_8

    .line 3981
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3983
    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3984
    .local v1, "enablelist":Ljava/util/ArrayList;
    iget-object v4, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v4, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 3985
    if-eqz p1, :cond_9

    .line 3986
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, p1}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .line 3987
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v0, :cond_9

    .line 3988
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3991
    .end local v0    # "atoken":Lcom/android/server/wm/AppWindowToken;
    :cond_9
    if-eqz p2, :cond_a

    .line 3992
    iget-object v4, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, p2}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .line 3993
    .restart local v0    # "atoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v0, :cond_a

    .line 3994
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3997
    .end local v0    # "atoken":Lcom/android/server/wm/AppWindowToken;
    :cond_a
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3998
    invoke-direct {p0, v2, v1, v7}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->prepareMultiWindowTransitionLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 3999
    invoke-virtual {v3, v7}, Lcom/android/server/wm/SmartMultiWindowTransition;->setMultiWindowTransitionImmediately(Z)V

    .line 4000
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/wm/SmartMultiWindowTransition;->setMultiWindowTransitionTime(I)V

    .line 4001
    invoke-virtual {v3, p3}, Lcom/android/server/wm/SmartMultiWindowTransition;->setFinishedIfOneNotified(Z)V

    goto/16 :goto_0

    .line 3997
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public prepareMultiWindowTransition(Ljava/util/ArrayList;I)V
    .locals 8
    .param p1, "list"    # Ljava/util/ArrayList;
    .param p2, "transit"    # I

    .prologue
    .line 1310
    iget-object v6, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-eqz v6, :cond_0

    if-nez p1, :cond_1

    .line 1325
    :cond_0
    :goto_0
    return-void

    .line 1313
    :cond_1
    iget-object v6, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v6, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v7

    .line 1314
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1315
    .local v1, "animlist":Ljava/util/ArrayList;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1316
    .local v4, "item":Ljava/lang/Object;
    move-object v0, v4

    check-cast v0, Landroid/os/IBinder;

    move-object v5, v0

    .line 1317
    .local v5, "itoken":Landroid/os/IBinder;
    iget-object v6, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6, v5}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v2

    .line 1318
    .local v2, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v2, :cond_2

    .line 1321
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1324
    .end local v1    # "animlist":Ljava/util/ArrayList;
    .end local v2    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "item":Ljava/lang/Object;
    .end local v5    # "itoken":Landroid/os/IBinder;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 1323
    .restart local v1    # "animlist":Ljava/util/ArrayList;
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_3
    const/4 v6, 0x0

    :try_start_1
    invoke-direct {p0, v6, v1, p2}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->prepareMultiWindowTransition(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 1324
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public prepareMultiWindowTransitionSurface()V
    .locals 3

    .prologue
    .line 3229
    iget-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->isWindowsFreezingScreen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3241
    :cond_0
    :goto_0
    return-void

    .line 3232
    :cond_1
    invoke-direct {p0}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->getMultiWindowTransitionLocked()Lcom/android/server/wm/SmartMultiWindowTransition;

    move-result-object v0

    .line 3234
    .local v0, "multitransit":Lcom/android/server/wm/SmartMultiWindowTransition;
    if-eqz v0, :cond_0

    .line 3237
    sget-boolean v1, Lcom/android/server/wm/VivoSmartMultiWindowWms;->DEBUG_MWAPP_TRANSITION:Z

    if-eqz v1, :cond_2

    .line 3238
    const-string v1, "vivo_debug_SmartMultiWindowTransition"

    const-string v2, "prepareMultiWindowTransitionSurface"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3240
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/wm/SmartMultiWindowTransition;->prepareMultiWindowTransitionSurface()V

    goto :goto_0
.end method

.method public resetImePosState()V
    .locals 3

    .prologue
    const/high16 v2, -0x40800000    # -1.0f

    .line 589
    const-string v0, "vivo_debug_WindowManagerService"

    const-string v1, "TAG_WMS resetImePosState <--"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    iput v2, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mImePosX:F

    .line 591
    iput v2, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mImePosY:F

    .line 592
    iput v2, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mImePosScale:F

    .line 593
    return-void
.end method

.method public restoreAllDisplayMode(IIZ)V
    .locals 7
    .param p1, "stackId"    # I
    .param p2, "displayId"    # I
    .param p3, "save"    # Z

    .prologue
    .line 332
    iget-object v4, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    if-nez v4, :cond_1

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 337
    .local v2, "origId":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v4, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 339
    :try_start_1
    iget-object v4, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    .line 340
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    if-nez v1, :cond_2

    .line 351
    :goto_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 353
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 343
    :cond_2
    :try_start_2
    invoke-virtual {p0, v1, p3}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->restoreAllDisplayMode(Lcom/android/server/wm/TaskStack;Z)V

    .line 344
    if-nez p3, :cond_3

    .line 345
    invoke-virtual {p0, v1}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->getDisplayMode(Lcom/android/server/wm/TaskStack;)I

    move-result v0

    .line 346
    .local v0, "mode":I
    iget-object v4, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v4, v4, Lcom/android/server/VivoSmartMultiWindowMgr;->mStackDisplayModeList:Landroid/util/SparseArray;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, p1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 349
    .end local v0    # "mode":I
    :cond_3
    iget-object v4, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v4, v4, Lcom/android/server/VivoSmartMultiWindowMgr;->mStackRectList:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_1

    .line 351
    .end local v1    # "stack":Lcom/android/server/wm/TaskStack;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 353
    :catchall_1
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method restoreAllDisplayMode(Lcom/android/server/wm/TaskStack;Z)V
    .locals 1
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;
    .param p2, "save"    # Z

    .prologue
    .line 2013
    if-nez p1, :cond_1

    .line 2019
    :cond_0
    :goto_0
    return-void

    .line 2016
    :cond_1
    iget-object v0, p1, Lcom/android/server/wm/TaskStack;->mSmartShowData:Lcom/android/server/wm/StackSmartMultiWindowData;

    if-eqz v0, :cond_0

    .line 2017
    iget-object v0, p1, Lcom/android/server/wm/TaskStack;->mSmartShowData:Lcom/android/server/wm/StackSmartMultiWindowData;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/StackSmartMultiWindowData;->restoreAllDisplayMode(Z)V

    goto :goto_0
.end method

.method public savePrevAppMode(Landroid/view/IApplicationToken;II)V
    .locals 6
    .param p1, "token"    # Landroid/view/IApplicationToken;
    .param p2, "stackId"    # I
    .param p3, "oldmode"    # I

    .prologue
    .line 3849
    iget-object v2, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    if-eqz v2, :cond_0

    if-ltz p2, :cond_0

    if-eqz p1, :cond_0

    if-gez p3, :cond_1

    .line 3865
    :cond_0
    :goto_0
    return-void

    .line 3853
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 3854
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    .line 3855
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    iget-object v2, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-interface {p1}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .line 3856
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    sget-boolean v2, Lcom/android/server/wm/VivoSmartMultiWindowWms;->DEBUG_SMARTMULTIWINDOW_IMPORTANT:Z

    if-eqz v2, :cond_2

    .line 3857
    const-string v2, "vivo_debug_WindowManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "savePrevAppMode atoken = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", stackId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", oldmode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3860
    :cond_2
    if-eqz v1, :cond_3

    iget-object v2, v1, Lcom/android/server/wm/TaskStack;->mSmartShowData:Lcom/android/server/wm/StackSmartMultiWindowData;

    if-eqz v2, :cond_3

    if-nez v0, :cond_4

    .line 3861
    :cond_3
    monitor-exit v3

    goto :goto_0

    .line 3864
    .end local v0    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .end local v1    # "stack":Lcom/android/server/wm/TaskStack;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 3863
    .restart local v0    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .restart local v1    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_4
    :try_start_1
    invoke-direct {p0, v1, v0, p3}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->savePrevAppMode(Lcom/android/server/wm/TaskStack;Lcom/android/server/wm/AppWindowToken;I)V

    .line 3864
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public screenshotApplicationsInner(Lcom/android/server/wm/WindowState;I)Landroid/graphics/Rect;
    .locals 10
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "rot"    # I

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x2

    .line 4070
    if-eqz p1, :cond_0

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    if-nez v4, :cond_2

    :cond_0
    move-object v1, v3

    .line 4130
    :cond_1
    :goto_0
    return-object v1

    .line 4073
    :cond_2
    iget-object v4, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-boolean v4, v4, Lcom/android/server/VivoSmartMultiWindowMgr;->mLastSplitMode:Z

    if-nez v4, :cond_4

    .line 4074
    iget-object v4, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-boolean v4, v4, Lcom/android/server/VivoSmartMultiWindowMgr;->mExitByRecentTask:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v4, v4, Lcom/android/server/VivoSmartMultiWindowMgr;->mTopStackActivity:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v4, v4, Lcom/android/server/VivoSmartMultiWindowMgr;->mTopStackRect:Landroid/graphics/Rect;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v4, v4, Lcom/android/server/VivoSmartMultiWindowMgr;->mBottomStackActivity:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v4, v4, Lcom/android/server/VivoSmartMultiWindowMgr;->mBottomStackRect:Landroid/graphics/Rect;

    if-nez v4, :cond_4

    :cond_3
    move-object v1, v3

    .line 4075
    goto :goto_0

    .line 4078
    :cond_4
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4080
    .local v0, "classname":Ljava/lang/String;
    const-string v4, "vivo_debug_WindowManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "screenshotApplicationsInner win = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", rot = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mMgr.mLastSplitMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-boolean v6, v6, Lcom/android/server/VivoSmartMultiWindowMgr;->mLastSplitMode:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", classname = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mTopStackRect = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v6, v6, Lcom/android/server/VivoSmartMultiWindowMgr;->mTopStackRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mBottomStackRect = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v6, v6, Lcom/android/server/VivoSmartMultiWindowMgr;->mBottomStackRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4082
    iget-object v4, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-boolean v4, v4, Lcom/android/server/VivoSmartMultiWindowMgr;->mLastSplitMode:Z

    if-eqz v4, :cond_8

    .line 4083
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v4, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    .line 4084
    .local v2, "task":Lcom/android/server/wm/Task;
    if-eqz v2, :cond_7

    iget-object v4, v2, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v4, :cond_7

    .line 4085
    iget-object v4, v2, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {p0, v4}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->vivoGetStackBounds(Lcom/android/server/wm/TaskStack;)Landroid/graphics/Rect;

    move-result-object v1

    .line 4086
    .local v1, "rect":Landroid/graphics/Rect;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    move-object v1, v3

    .line 4087
    goto/16 :goto_0

    .line 4089
    :cond_6
    if-eqz p2, :cond_1

    if-eq p2, v7, :cond_1

    .line 4092
    new-instance v3, Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->left:I

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    iget v7, v1, Landroid/graphics/Rect;->right:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v1, v3

    goto/16 :goto_0

    .end local v1    # "rect":Landroid/graphics/Rect;
    :cond_7
    move-object v1, v3

    .line 4095
    goto/16 :goto_0

    .line 4097
    .end local v2    # "task":Lcom/android/server/wm/Task;
    :cond_8
    iget-object v4, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v4, v4, Lcom/android/server/VivoSmartMultiWindowMgr;->mTopStackActivity:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 4098
    if-eqz p2, :cond_9

    if-ne p2, v7, :cond_c

    .line 4099
    :cond_9
    iget-object v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget v3, v3, Lcom/android/server/VivoSmartMultiWindowMgr;->mRecentRotation:I

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget v3, v3, Lcom/android/server/VivoSmartMultiWindowMgr;->mRecentRotation:I

    if-ne v3, v7, :cond_b

    .line 4100
    :cond_a
    iget-object v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v1, v3, Lcom/android/server/VivoSmartMultiWindowMgr;->mTopStackRect:Landroid/graphics/Rect;

    goto/16 :goto_0

    .line 4102
    :cond_b
    new-instance v1, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v3, v3, Lcom/android/server/VivoSmartMultiWindowMgr;->mTopStackRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v4, v4, Lcom/android/server/VivoSmartMultiWindowMgr;->mTopStackRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v5, v5, Lcom/android/server/VivoSmartMultiWindowMgr;->mTopStackRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v6, v6, Lcom/android/server/VivoSmartMultiWindowMgr;->mTopStackRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/16 :goto_0

    .line 4104
    :cond_c
    if-eq p2, v8, :cond_d

    if-ne p2, v9, :cond_16

    .line 4105
    :cond_d
    iget-object v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget v3, v3, Lcom/android/server/VivoSmartMultiWindowMgr;->mRecentRotation:I

    if-eq v3, v8, :cond_e

    iget-object v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget v3, v3, Lcom/android/server/VivoSmartMultiWindowMgr;->mRecentRotation:I

    if-ne v3, v9, :cond_f

    .line 4106
    :cond_e
    new-instance v1, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v3, v3, Lcom/android/server/VivoSmartMultiWindowMgr;->mTopStackRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v4, v4, Lcom/android/server/VivoSmartMultiWindowMgr;->mTopStackRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v5, v5, Lcom/android/server/VivoSmartMultiWindowMgr;->mTopStackRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v6, v6, Lcom/android/server/VivoSmartMultiWindowMgr;->mTopStackRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/16 :goto_0

    .line 4108
    :cond_f
    new-instance v1, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v3, v3, Lcom/android/server/VivoSmartMultiWindowMgr;->mTopStackRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v4, v4, Lcom/android/server/VivoSmartMultiWindowMgr;->mTopStackRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v5, v5, Lcom/android/server/VivoSmartMultiWindowMgr;->mTopStackRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v6, v6, Lcom/android/server/VivoSmartMultiWindowMgr;->mTopStackRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/16 :goto_0

    .line 4112
    :cond_10
    iget-object v4, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v4, v4, Lcom/android/server/VivoSmartMultiWindowMgr;->mBottomStackActivity:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 4113
    if-eqz p2, :cond_11

    if-ne p2, v7, :cond_14

    .line 4114
    :cond_11
    iget-object v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget v3, v3, Lcom/android/server/VivoSmartMultiWindowMgr;->mRecentRotation:I

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget v3, v3, Lcom/android/server/VivoSmartMultiWindowMgr;->mRecentRotation:I

    if-ne v3, v7, :cond_13

    .line 4115
    :cond_12
    iget-object v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v1, v3, Lcom/android/server/VivoSmartMultiWindowMgr;->mBottomStackRect:Landroid/graphics/Rect;

    goto/16 :goto_0

    .line 4118
    :cond_13
    iget-object v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v1, v3, Lcom/android/server/VivoSmartMultiWindowMgr;->mBottomStackRect:Landroid/graphics/Rect;

    goto/16 :goto_0

    .line 4120
    :cond_14
    if-eq p2, v8, :cond_15

    if-ne p2, v9, :cond_16

    .line 4126
    :cond_15
    iget-object v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v1, v3, Lcom/android/server/VivoSmartMultiWindowMgr;->mBottomStackRect:Landroid/graphics/Rect;

    goto/16 :goto_0

    :cond_16
    move-object v1, v3

    .line 4130
    goto/16 :goto_0
.end method

.method public setAnimation(Z)V
    .locals 0
    .param p1, "mAnimation"    # Z

    .prologue
    .line 3770
    return-void
.end method

.method public setAppOrientation(Lcom/android/server/wm/AppWindowToken;I)V
    .locals 5
    .param p1, "atoken"    # Lcom/android/server/wm/AppWindowToken;
    .param p2, "requestedOrientation"    # I

    .prologue
    const/4 v4, -0x1

    .line 1830
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-nez v3, :cond_1

    .line 1859
    :cond_0
    :goto_0
    return-void

    .line 1833
    :cond_1
    iget-object v2, p1, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    .line 1834
    .local v2, "task":Lcom/android/server/wm/Task;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v3, v3, Lcom/android/server/wm/TaskStack;->mSmartShowData:Lcom/android/server/wm/StackSmartMultiWindowData;

    if-eqz v3, :cond_0

    .line 1839
    iget-object v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-boolean v3, v3, Lcom/android/server/VivoSmartMultiWindowMgr;->mSplitMode:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget v3, v3, Lcom/android/server/VivoSmartMultiWindowMgr;->mDragToFullScreenIndex:I

    if-ne v3, v4, :cond_3

    .line 1840
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1841
    .local v1, "pkg":Ljava/lang/String;
    if-eqz v1, :cond_3

    const-string v3, "com.zijunlin.zxing.CaptureActivity"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eq p2, v4, :cond_2

    const/4 v3, 0x6

    if-ne p2, v3, :cond_3

    .line 1842
    :cond_2
    const/4 p2, 0x7

    .line 1843
    iput p2, p1, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    .line 1849
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0, p1, v2, p2}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->canChangeOritation(Lcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/Task;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1852
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1853
    .local v0, "classname":Ljava/lang/String;
    if-eqz v0, :cond_5

    sget-object v3, Lcom/android/server/VivoSmartMultiWindowMgr;->G_WEIXIN_ACTIVITY:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    sget-object v3, Lcom/android/server/VivoSmartMultiWindowMgr;->G_WEIXIN_CHATACTIVITY_TOKEN:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1854
    :cond_4
    iget-object v3, v2, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->setWindowOriginalRotation(Lcom/android/server/wm/TaskStack;I)V

    goto :goto_0

    .line 1857
    :cond_5
    iget-object v3, v2, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {p0, v3, p2}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->setWindowOriginalRotation(Lcom/android/server/wm/TaskStack;I)V

    goto :goto_0
.end method

.method public setForceLayoutWindow(Lcom/android/server/wm/WindowState;Z)V
    .locals 1
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "enable"    # Z

    .prologue
    .line 3724
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    if-nez v0, :cond_1

    .line 3728
    :cond_0
    :goto_0
    return-void

    .line 3727
    :cond_1
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowSmartMultiWindowData;->setForceLayoutWindow(Z)V

    goto :goto_0
.end method

.method public setMustFullMode(IIZ)V
    .locals 5
    .param p1, "stackId"    # I
    .param p2, "displayId"    # I
    .param p3, "fullmode"    # Z

    .prologue
    .line 3824
    iget-object v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    if-nez v3, :cond_1

    .line 3839
    :cond_0
    :goto_0
    return-void

    .line 3827
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3829
    .local v0, "origId":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v3, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3830
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskStack;

    .line 3831
    .local v2, "stack":Lcom/android/server/wm/TaskStack;
    if-nez v2, :cond_2

    .line 3832
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3837
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 3834
    :cond_2
    :try_start_2
    invoke-virtual {p0, v2, p3}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->setMustFullMode(Lcom/android/server/wm/TaskStack;Z)V

    .line 3835
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3837
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 3835
    .end local v2    # "stack":Lcom/android/server/wm/TaskStack;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3837
    :catchall_1
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method setMustFullMode(Lcom/android/server/wm/TaskStack;Z)V
    .locals 1
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;
    .param p2, "fullmode"    # Z

    .prologue
    .line 3841
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/TaskStack;->mSmartShowData:Lcom/android/server/wm/StackSmartMultiWindowData;

    if-nez v0, :cond_1

    .line 3845
    :cond_0
    :goto_0
    return-void

    .line 3844
    :cond_1
    iget-object v0, p1, Lcom/android/server/wm/TaskStack;->mSmartShowData:Lcom/android/server/wm/StackSmartMultiWindowData;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/StackSmartMultiWindowData;->setMustFullMode(Z)V

    goto :goto_0
.end method

.method public setScreenRotation(Lcom/android/server/wm/TaskStack;I)V
    .locals 1
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;
    .param p2, "rotate"    # I

    .prologue
    .line 2040
    if-nez p1, :cond_1

    .line 2046
    :cond_0
    :goto_0
    return-void

    .line 2043
    :cond_1
    iget-object v0, p1, Lcom/android/server/wm/TaskStack;->mSmartShowData:Lcom/android/server/wm/StackSmartMultiWindowData;

    if-eqz v0, :cond_0

    .line 2044
    iget-object v0, p1, Lcom/android/server/wm/TaskStack;->mSmartShowData:Lcom/android/server/wm/StackSmartMultiWindowData;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/StackSmartMultiWindowData;->setScreenRotation(I)V

    goto :goto_0
.end method

.method public setVivoSmartMultiWindowMgr(Lcom/android/server/VivoSmartMultiWindowMgr;)V
    .locals 0
    .param p1, "mgr"    # Lcom/android/server/VivoSmartMultiWindowMgr;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    .line 92
    return-void
.end method

.method public setWindowManagerService(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    .line 88
    return-void
.end method

.method public setWindowOriginalRequestWidthHeight(Lcom/android/server/wm/WindowState;)V
    .locals 3
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 3809
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    if-nez v0, :cond_1

    .line 3813
    :cond_0
    :goto_0
    return-void

    .line 3812
    :cond_1
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    iget v1, p1, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    iget v2, p1, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowSmartMultiWindowData;->setWindowOriginalRequestWidthHeight(II)V

    goto :goto_0
.end method

.method setWindowOriginalRotation(Lcom/android/server/wm/Task;I)V
    .locals 1
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "rotation"    # I

    .prologue
    .line 1997
    iget-object v0, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-nez v0, :cond_1

    .line 2001
    :cond_0
    :goto_0
    return-void

    .line 2000
    :cond_1
    iget-object v0, p1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->setWindowOriginalRotation(Lcom/android/server/wm/TaskStack;I)V

    goto :goto_0
.end method

.method public setWindowOriginalRotation(Lcom/android/server/wm/Task;Lcom/android/server/wm/AppWindowToken;I)V
    .locals 3
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "atoken"    # Lcom/android/server/wm/AppWindowToken;
    .param p3, "rotation"    # I

    .prologue
    .line 1717
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v1, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-nez v1, :cond_1

    .line 1736
    :cond_0
    :goto_0
    return-void

    .line 1726
    :cond_1
    iget-object v1, p1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v1, v1, Lcom/android/server/wm/TaskStack;->mSmartShowData:Lcom/android/server/wm/StackSmartMultiWindowData;

    if-eqz v1, :cond_0

    .line 1730
    invoke-virtual {p2}, Lcom/android/server/wm/AppWindowToken;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1731
    .local v0, "classname":Ljava/lang/String;
    if-eqz v0, :cond_3

    sget-object v1, Lcom/android/server/VivoSmartMultiWindowMgr;->G_WEIXIN_ACTIVITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/android/server/VivoSmartMultiWindowMgr;->G_WEIXIN_CHATACTIVITY_TOKEN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1732
    :cond_2
    iget-object v1, p1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v1, v1, Lcom/android/server/wm/TaskStack;->mSmartShowData:Lcom/android/server/wm/StackSmartMultiWindowData;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/StackSmartMultiWindowData;->setWindowOriginalRotation(I)V

    goto :goto_0

    .line 1735
    :cond_3
    iget-object v1, p1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v1, v1, Lcom/android/server/wm/TaskStack;->mSmartShowData:Lcom/android/server/wm/StackSmartMultiWindowData;

    invoke-virtual {v1, p3}, Lcom/android/server/wm/StackSmartMultiWindowData;->setWindowOriginalRotation(I)V

    goto :goto_0
.end method

.method setWindowOriginalRotation(Lcom/android/server/wm/TaskStack;I)V
    .locals 1
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;
    .param p2, "rotation"    # I

    .prologue
    .line 2004
    if-nez p1, :cond_1

    .line 2010
    :cond_0
    :goto_0
    return-void

    .line 2007
    :cond_1
    iget-object v0, p1, Lcom/android/server/wm/TaskStack;->mSmartShowData:Lcom/android/server/wm/StackSmartMultiWindowData;

    if-eqz v0, :cond_0

    .line 2008
    iget-object v0, p1, Lcom/android/server/wm/TaskStack;->mSmartShowData:Lcom/android/server/wm/StackSmartMultiWindowData;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/StackSmartMultiWindowData;->setWindowOriginalRotation(I)V

    goto :goto_0
.end method

.method public shouldIgnoreAnimateMove(Lcom/android/server/wm/WindowState;)Z
    .locals 5
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/4 v2, 0x1

    .line 3001
    invoke-virtual {p0}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->isSplitMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3017
    :cond_0
    :goto_0
    return v2

    .line 3005
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v4, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowAnimator;->getMultiWindowTransitionLocked(I)Lcom/android/server/wm/SmartMultiWindowTransition;

    move-result-object v1

    .line 3008
    .local v1, "multitransit":Lcom/android/server/wm/SmartMultiWindowTransition;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/server/wm/SmartMultiWindowTransition;->isTransitionSet()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3012
    :cond_2
    if-eqz p1, :cond_3

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v2, :cond_4

    .line 3013
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 3016
    :cond_4
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3017
    .local v0, "mAppToken":Ljava/lang/String;
    const-string v2, "com.vivo.minilauncher"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    goto :goto_0
.end method

.method public shouldShowWallPaper(Lcom/android/server/wm/WindowState;)Z
    .locals 9
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 3381
    iget-object v4, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-boolean v4, v4, Lcom/android/server/VivoSmartMultiWindowMgr;->mSplitMode:Z

    if-eqz v4, :cond_0

    if-nez p1, :cond_1

    .line 3409
    :cond_0
    :goto_0
    return v6

    .line 3384
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget v4, v4, Lcom/android/server/VivoSmartMultiWindowMgr;->mDragToFullScreenIndex:I

    const/4 v7, -0x1

    if-ne v4, v7, :cond_0

    .line 3387
    sget-boolean v4, Lcom/android/server/wm/VivoSmartMultiWindowWms;->DEBUG_SMARTMULTIWINDOW_IMPORTANT:Z

    if-eqz v4, :cond_2

    .line 3388
    const-string v4, "vivo_debug_WindowManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "shouldShowWallPaper win = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3392
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v3

    .line 3393
    .local v3, "stack":Lcom/android/server/wm/TaskStack;
    if-nez v3, :cond_4

    move v4, v5

    :goto_1
    iget v7, v3, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-nez v7, :cond_5

    move v7, v5

    :goto_2
    or-int/2addr v4, v7

    if-nez v4, :cond_0

    .line 3397
    iget-object v4, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 3398
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, v2, :cond_0

    .line 3399
    iget-object v4, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskStack;

    .line 3400
    .local v0, "anotherstack":Lcom/android/server/wm/TaskStack;
    if-eqz v0, :cond_3

    if-eq v0, v3, :cond_3

    iget v4, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-nez v4, :cond_6

    .line 3398
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .end local v0    # "anotherstack":Lcom/android/server/wm/TaskStack;
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_4
    move v4, v6

    .line 3393
    goto :goto_1

    :cond_5
    move v7, v6

    goto :goto_2

    .line 3403
    .restart local v0    # "anotherstack":Lcom/android/server/wm/TaskStack;
    .restart local v1    # "i":I
    .restart local v2    # "size":I
    :cond_6
    invoke-direct {p0, v0}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->shouldShowWallPaper(Lcom/android/server/wm/TaskStack;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v6, v5

    .line 3404
    goto :goto_0
.end method

.method public updateImeSpecialStateInDatabase(Lcom/android/server/wm/WindowState;Z)V
    .locals 12
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "add"    # Z

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 607
    sget-boolean v6, Lcom/android/server/wm/VivoSmartMultiWindowWms;->DEBUG_SMARTMULTIWINDOW_IMPORTANT:Z

    if-eqz v6, :cond_0

    .line 608
    const-string v6, "vivo_debug_WindowManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "test input popup Wms updateImeSpecialStateInDatabase win: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", add: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isSplitMode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->isSplitMode()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mIsSpecialWindowVisible: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mIsSpecialWindowVisible:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->isSplitMode()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    if-eqz v6, :cond_1

    if-nez p1, :cond_3

    .line 613
    :cond_1
    iput-boolean v9, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mIsSpecialWindowVisible:Z

    .line 680
    :cond_2
    :goto_0
    return-void

    .line 616
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object v5

    .line 617
    .local v5, "windowInfo":Ljava/lang/String;
    if-nez v5, :cond_4

    .line 618
    iput-boolean v9, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mIsSpecialWindowVisible:Z

    goto :goto_0

    .line 621
    :cond_4
    const-string v6, "Select input method"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 622
    .local v3, "isContainSelectInput":Z
    sget-boolean v6, Lcom/android/server/wm/VivoSmartMultiWindowWms;->DEBUG_SMARTMULTIWINDOW_IMPORTANT:Z

    if-eqz v6, :cond_5

    .line 623
    const-string v6, "vivo_debug_WindowManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "test input popup Wms updateImeSpecialStateInDatabase isContainSelectInput: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    :cond_5
    if-eqz v3, :cond_6

    iget-object v6, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget v6, v6, Lcom/android/server/VivoSmartMultiWindowMgr;->mImeWindowVis:I

    if-ne v6, v11, :cond_6

    .line 626
    iput-boolean v9, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mIsSpecialWindowVisible:Z

    goto :goto_0

    .line 629
    :cond_6
    const-string v6, "com.bit.androsmart.kbinapp"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 630
    .local v2, "isContainBaganSpecialWindow":Z
    sget-boolean v6, Lcom/android/server/wm/VivoSmartMultiWindowWms;->DEBUG_SMARTMULTIWINDOW_IMPORTANT:Z

    if-eqz v6, :cond_7

    .line 631
    const-string v6, "vivo_debug_WindowManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "test input popup Wms updateImeSpecialStateInDatabase isContainBaganSpecialWindow: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    :cond_7
    if-eqz v2, :cond_8

    iget-object v6, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget v6, v6, Lcom/android/server/VivoSmartMultiWindowMgr;->mImeWindowVis:I

    if-eq v6, v11, :cond_8

    .line 634
    iput-boolean v9, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mIsSpecialWindowVisible:Z

    goto :goto_0

    .line 638
    :cond_8
    iget-object v6, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/app/SmartMultWindowSharedPreferences;->getCurrentAppDisplayMode(Landroid/content/Context;)I

    move-result v4

    .line 639
    .local v4, "mode":I
    iget-object v6, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/app/SmartMultWindowSharedPreferences;->getDragToFullWindow(Landroid/content/Context;)I

    move-result v1

    .line 640
    .local v1, "dragMode":I
    if-eqz v4, :cond_9

    const/4 v6, -0x1

    if-eq v1, v6, :cond_a

    .line 641
    :cond_9
    iput-boolean v9, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mIsSpecialWindowVisible:Z

    goto :goto_0

    .line 644
    :cond_a
    if-eqz v3, :cond_c

    .line 645
    iget-object v6, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 646
    .local v0, "cResolver":Landroid/content/ContentResolver;
    if-eqz p2, :cond_b

    .line 647
    iput-boolean v10, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mIsSpecialWindowVisible:Z

    .line 648
    const-string v6, "vivo_IME_isshowing_EX"

    const/16 v7, 0x9

    invoke-static {v0, v6, v7}, Landroid/app/SmartMultWindowSharedPreferences;->putSettingInt(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 650
    :cond_b
    iput-boolean v9, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mIsSpecialWindowVisible:Z

    .line 651
    const-string v6, "vivo_IME_isshowing_EX"

    invoke-static {v0, v6, v9}, Landroid/app/SmartMultWindowSharedPreferences;->putSettingInt(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 655
    .end local v0    # "cResolver":Landroid/content/ContentResolver;
    :cond_c
    if-eqz v2, :cond_2

    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    if-eqz v6, :cond_2

    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x3eb

    if-ne v6, v7, :cond_2

    .line 657
    iget-object v6, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 658
    .restart local v0    # "cResolver":Landroid/content/ContentResolver;
    if-eqz p2, :cond_d

    .line 660
    iget-object v6, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mSpecialWindow:Lcom/android/server/wm/WindowState;

    if-nez v6, :cond_2

    .line 661
    iput-boolean v10, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mIsSpecialWindowVisible:Z

    .line 662
    iput-object p1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mSpecialWindow:Lcom/android/server/wm/WindowState;

    .line 663
    const-string v6, "vivo_IME_isshowing_EX"

    const/16 v7, 0xa

    invoke-static {v0, v6, v7}, Landroid/app/SmartMultWindowSharedPreferences;->putSettingInt(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 669
    :cond_d
    iget-object v6, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mSpecialWindow:Lcom/android/server/wm/WindowState;

    if-ne v6, p1, :cond_2

    .line 670
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mSpecialWindow:Lcom/android/server/wm/WindowState;

    .line 671
    iput-boolean v9, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mIsSpecialWindowVisible:Z

    .line 673
    const-string v6, "vivo_IME_isshowing_EX"

    const/16 v7, 0xb

    invoke-static {v0, v6, v7}, Landroid/app/SmartMultWindowSharedPreferences;->putSettingInt(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method public updateImeWindowVisible(ILandroid/content/Context;)V
    .locals 13
    .param p1, "vis"    # I
    .param p2, "mContext"    # Landroid/content/Context;

    .prologue
    .line 684
    iget-object v10, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    if-nez v10, :cond_1

    .line 789
    :cond_0
    :goto_0
    return-void

    .line 688
    :cond_1
    sget-boolean v10, Landroid/util/VivoSmartMultiWindowConfig;->IS_EXPORT:Z

    if-nez v10, :cond_3

    .line 689
    iget-object v10, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-boolean v10, v10, Lcom/android/server/VivoSmartMultiWindowMgr;->mSplitMode:Z

    if-eqz v10, :cond_0

    .line 692
    iget-object v10, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget v8, v10, Lcom/android/server/VivoSmartMultiWindowMgr;->mImeWindowVis:I

    .line 693
    .local v8, "old":I
    iget-object v10, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iput p1, v10, Lcom/android/server/VivoSmartMultiWindowMgr;->mImeWindowVis:I

    .line 694
    sget-boolean v10, Lcom/android/server/wm/VivoSmartMultiWindowWms;->DEBUG_SMARTMULTIWINDOW_IMPORTANT:Z

    if-eqz v10, :cond_2

    .line 695
    const-string v10, "vivo_debug_WindowManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "TAG_WMS updateImeWindowVisible mImeWindowVis = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget v12, v12, Lcom/android/server/VivoSmartMultiWindowMgr;->mImeWindowVis:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    :cond_2
    if-eq v8, p1, :cond_0

    .line 698
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v6

    .line 699
    .local v6, "msg":Landroid/os/Message;
    const/4 v10, 0x1

    iput v10, v6, Landroid/os/Message;->what:I

    .line 700
    iget-object v10, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mHandler:Landroid/os/Handler;

    invoke-virtual {v10, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 708
    .end local v6    # "msg":Landroid/os/Message;
    .end local v8    # "old":I
    :cond_3
    iget-object v10, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iput p1, v10, Lcom/android/server/VivoSmartMultiWindowMgr;->mImeWindowVis:I

    .line 710
    sget-boolean v10, Landroid/util/VivoSmartMultiWindowConfig;->IS_EXPORT:Z

    if-eqz v10, :cond_b

    invoke-virtual {p0}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->isSplitMode()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 715
    sget-boolean v10, Lcom/android/server/wm/VivoSmartMultiWindowWms;->DEBUG_SMARTMULTIWINDOW_IMPORTANT:Z

    if-eqz v10, :cond_4

    .line 716
    const-string v10, "vivo_debug_WindowManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "test input popup Wms updateImeWindowVisible send delayed message to change database vis: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", IME_SUSPENDED: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-boolean v12, Lcom/android/server/wm/VivoSmartMultiWindowWms;->IME_SUSPENDED:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    :cond_4
    move v7, p1

    .line 728
    .local v7, "newVis":I
    sget-boolean v10, Lcom/android/server/wm/VivoSmartMultiWindowWms;->IME_SUSPENDED:Z

    if-eqz v10, :cond_5

    .line 729
    add-int/lit8 v7, v7, 0x5

    .line 736
    :cond_5
    iget-object v10, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerService;->vivoGetFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 737
    .local v2, "focusWindow":Lcom/android/server/wm/WindowState;
    const/4 v9, 0x0

    .line 738
    .local v9, "windowPackageName":Ljava/lang/String;
    const/4 v10, 0x3

    if-ne v7, v10, :cond_a

    .line 739
    if-eqz v2, :cond_7

    .line 740
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v9

    .line 741
    iget-object v10, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v10, v9}, Landroid/app/SmartMultWindowSharedPreferences;->isAllowSplitApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    .line 742
    .local v3, "isWhiteListApp":Z
    sget-boolean v10, Lcom/android/server/wm/VivoSmartMultiWindowWms;->DEBUG_SMARTMULTIWINDOW_IMPORTANT:Z

    if-eqz v10, :cond_6

    .line 743
    const-string v10, "vivo_debug_WindowManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "test focus window isWhiteListApp: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", windowPackageName: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    :cond_6
    if-nez v3, :cond_7

    .line 746
    iget-object v10, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    const/4 v11, 0x0

    iput v11, v10, Lcom/android/server/wm/WindowManagerService;->xImeOffset:F

    .line 747
    iget-object v10, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    const/high16 v11, -0x3b860000    # -1000.0f

    iput v11, v10, Lcom/android/server/wm/WindowManagerService;->yImeOffset:F

    .line 748
    iget-object v10, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    const v11, 0x3f7fbe77    # 0.999f

    iput v11, v10, Lcom/android/server/wm/WindowManagerService;->mImeScale:F

    .line 749
    invoke-virtual {p0}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->resetImePosState()V

    goto/16 :goto_0

    .line 754
    .end local v3    # "isWhiteListApp":Z
    :cond_7
    iget-object v10, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/app/SmartMultWindowSharedPreferences;->getCurrentAppDisplayMode(Landroid/content/Context;)I

    move-result v5

    .line 755
    .local v5, "mode":I
    iget-object v10, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/app/SmartMultWindowSharedPreferences;->getDragToFullWindow(Landroid/content/Context;)I

    move-result v1

    .line 756
    .local v1, "dragMode":I
    sget-boolean v10, Lcom/android/server/wm/VivoSmartMultiWindowWms;->DEBUG_SMARTMULTIWINDOW_IMPORTANT:Z

    if-eqz v10, :cond_8

    .line 757
    const-string v10, "vivo_debug_WindowManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "test focus window updateImeWindowVisible mode: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", dragMode: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mImePosX: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mImePosX:F

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mImePosY: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mImePosY:F

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mImePosScale: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mImePosScale:F

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    :cond_8
    if-eqz v5, :cond_9

    const/4 v10, -0x1

    if-eq v1, v10, :cond_c

    .line 762
    :cond_9
    iget-object v10, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    const/4 v11, 0x0

    iput v11, v10, Lcom/android/server/wm/WindowManagerService;->xImeOffset:F

    .line 763
    iget-object v10, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    const/high16 v11, -0x3b860000    # -1000.0f

    iput v11, v10, Lcom/android/server/wm/WindowManagerService;->yImeOffset:F

    .line 764
    iget-object v10, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    const v11, 0x3f7fbe77    # 0.999f

    iput v11, v10, Lcom/android/server/wm/WindowManagerService;->mImeScale:F

    .line 765
    invoke-virtual {p0}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->resetImePosState()V

    .line 776
    .end local v1    # "dragMode":I
    .end local v5    # "mode":I
    :cond_a
    :goto_1
    iget-object v10, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 777
    .local v0, "cResolver":Landroid/content/ContentResolver;
    const-string v10, "vivo_IME_isshowing_EX"

    invoke-static {v0, v10}, Landroid/app/SmartMultWindowSharedPreferences;->getSettingInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    .line 778
    .local v4, "lastVis":I
    if-eq v4, v7, :cond_b

    iget-boolean v10, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mIsSpecialWindowVisible:Z

    if-nez v10, :cond_b

    .line 779
    const-string v10, "vivo_IME_isshowing_EX"

    invoke-static {v0, v10, v7}, Landroid/app/SmartMultWindowSharedPreferences;->putSettingInt(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 785
    .end local v0    # "cResolver":Landroid/content/ContentResolver;
    .end local v2    # "focusWindow":Lcom/android/server/wm/WindowState;
    .end local v4    # "lastVis":I
    .end local v7    # "newVis":I
    .end local v9    # "windowPackageName":Ljava/lang/String;
    :cond_b
    sget-boolean v10, Lcom/android/server/wm/VivoSmartMultiWindowWms;->DEBUG_SMARTMULTIWINDOW_IMPORTANT:Z

    if-eqz v10, :cond_0

    .line 786
    const-string v10, "vivo_debug_WindowManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "TAG_WMS updateImeWindowVisible mImeWindowVis = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget v12, v12, Lcom/android/server/VivoSmartMultiWindowMgr;->mImeWindowVis:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 767
    .restart local v1    # "dragMode":I
    .restart local v2    # "focusWindow":Lcom/android/server/wm/WindowState;
    .restart local v5    # "mode":I
    .restart local v7    # "newVis":I
    .restart local v9    # "windowPackageName":Ljava/lang/String;
    :cond_c
    iget v10, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mImePosX:F

    const/high16 v11, -0x40800000    # -1.0f

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_a

    .line 768
    iget-object v10, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget v11, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mImePosX:F

    iput v11, v10, Lcom/android/server/wm/WindowManagerService;->xImeOffset:F

    .line 769
    iget-object v10, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget v11, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mImePosY:F

    iput v11, v10, Lcom/android/server/wm/WindowManagerService;->yImeOffset:F

    .line 770
    iget-object v10, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget v11, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mImePosScale:F

    iput v11, v10, Lcom/android/server/wm/WindowManagerService;->mImeScale:F

    goto :goto_1
.end method

.method public updateSpecialAppOrientation(ILandroid/view/IApplicationToken;I)V
    .locals 6
    .param p1, "stackId"    # I
    .param p2, "token"    # Landroid/view/IApplicationToken;
    .param p3, "orientation"    # I

    .prologue
    .line 3118
    if-nez p2, :cond_0

    .line 3133
    :goto_0
    return-void

    .line 3121
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 3122
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    .line 3123
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    iget-object v2, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-interface {p2}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .line 3124
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v1, :cond_1

    if-nez v0, :cond_2

    .line 3125
    :cond_1
    monitor-exit v3

    goto :goto_0

    .line 3132
    .end local v0    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .end local v1    # "stack":Lcom/android/server/wm/TaskStack;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 3127
    .restart local v0    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .restart local v1    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_2
    :try_start_1
    sget-boolean v2, Lcom/android/server/wm/VivoSmartMultiWindowWms;->DEBUG_SMARTMULTIWINDOW_IMPORTANT:Z

    if-eqz v2, :cond_3

    .line 3128
    const-string v2, "vivo_debug_WindowManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateSpecialAppOrientation token = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", orientation = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3131
    :cond_3
    invoke-direct {p0, v1, v0, p3}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->vivoUpdateSpecialOrientation(Lcom/android/server/wm/TaskStack;Lcom/android/server/wm/AppWindowToken;I)V

    .line 3132
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public updateStackOrientation(Landroid/view/IApplicationToken;)V
    .locals 7
    .param p1, "token"    # Landroid/view/IApplicationToken;

    .prologue
    .line 977
    iget-object v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-eqz v3, :cond_0

    if-nez p1, :cond_1

    .line 1018
    :cond_0
    :goto_0
    return-void

    .line 980
    :cond_1
    sget-boolean v3, Lcom/android/server/wm/VivoSmartMultiWindowWms;->DEBUG_SMARTMULTIWINDOW_IMPORTANT:Z

    if-eqz v3, :cond_2

    .line 981
    const-string v3, "vivo_debug_WindowManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TAG_WMS updateStackOrientation token = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v3, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 985
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-interface {p1}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .line 989
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-nez v0, :cond_3

    .line 990
    monitor-exit v4

    goto :goto_0

    .line 1017
    .end local v0    # "atoken":Lcom/android/server/wm/AppWindowToken;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 992
    .restart local v0    # "atoken":Lcom/android/server/wm/AppWindowToken;
    :cond_3
    :try_start_1
    sget-boolean v3, Lcom/android/server/wm/VivoSmartMultiWindowWms;->DEBUG_SMARTMULTIWINDOW_IMPORTANT:Z

    if-eqz v3, :cond_4

    .line 993
    const-string v3, "vivo_debug_WindowManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TAG_WMS updateStackOrientation atoken = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", requestedOrientation = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    :cond_4
    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    .line 999
    .local v2, "task":Lcom/android/server/wm/Task;
    if-eqz v2, :cond_5

    iget-object v3, v2, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-nez v3, :cond_6

    .line 1000
    :cond_5
    monitor-exit v4

    goto :goto_0

    .line 1006
    :cond_6
    iget v3, v0, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->canChangeOritation(Lcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/Task;I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1008
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1009
    .local v1, "classname":Ljava/lang/String;
    if-eqz v1, :cond_9

    sget-object v3, Lcom/android/server/VivoSmartMultiWindowMgr;->G_WEIXIN_ACTIVITY:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    sget-object v3, Lcom/android/server/VivoSmartMultiWindowMgr;->G_WEIXIN_CHATACTIVITY_TOKEN:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1010
    :cond_7
    iget-object v3, v2, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    const/4 v5, -0x1

    invoke-virtual {p0, v3, v5}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->setWindowOriginalRotation(Lcom/android/server/wm/TaskStack;I)V

    .line 1017
    .end local v1    # "classname":Ljava/lang/String;
    :cond_8
    :goto_1
    monitor-exit v4

    goto/16 :goto_0

    .line 1013
    .restart local v1    # "classname":Ljava/lang/String;
    :cond_9
    iget-object v3, v2, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v5, v0, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    invoke-virtual {p0, v3, v5}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->setWindowOriginalRotation(Lcom/android/server/wm/TaskStack;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public updateStackOrientationForce(Landroid/view/IApplicationToken;)V
    .locals 7
    .param p1, "token"    # Landroid/view/IApplicationToken;

    .prologue
    .line 941
    iget-object v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-eqz v3, :cond_0

    if-nez p1, :cond_1

    .line 974
    :cond_0
    :goto_0
    return-void

    .line 944
    :cond_1
    sget-boolean v3, Lcom/android/server/wm/VivoSmartMultiWindowWms;->DEBUG_SMARTMULTIWINDOW_IMPORTANT:Z

    if-eqz v3, :cond_2

    .line 945
    const-string v3, "vivo_debug_WindowManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TAG_WMS updateStackOrientation token = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v3, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 949
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-interface {p1}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .line 950
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-nez v0, :cond_3

    .line 951
    monitor-exit v4

    goto :goto_0

    .line 973
    .end local v0    # "atoken":Lcom/android/server/wm/AppWindowToken;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 953
    .restart local v0    # "atoken":Lcom/android/server/wm/AppWindowToken;
    :cond_3
    :try_start_1
    sget-boolean v3, Lcom/android/server/wm/VivoSmartMultiWindowWms;->DEBUG_SMARTMULTIWINDOW_IMPORTANT:Z

    if-eqz v3, :cond_4

    .line 954
    const-string v3, "vivo_debug_WindowManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TAG_WMS updateStackOrientation atoken = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", requestedOrientation = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    :cond_4
    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    .line 959
    .local v2, "task":Lcom/android/server/wm/Task;
    if-eqz v2, :cond_5

    iget-object v3, v2, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-nez v3, :cond_6

    .line 960
    :cond_5
    monitor-exit v4

    goto :goto_0

    .line 962
    :cond_6
    iget v3, v0, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->canChangeOritationForce(Lcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/Task;I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 965
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->toString()Ljava/lang/String;

    move-result-object v1

    .line 966
    .local v1, "classname":Ljava/lang/String;
    if-eqz v1, :cond_9

    sget-object v3, Lcom/android/server/VivoSmartMultiWindowMgr;->G_WEIXIN_ACTIVITY:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    sget-object v3, Lcom/android/server/VivoSmartMultiWindowMgr;->G_WEIXIN_CHATACTIVITY_TOKEN:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 967
    :cond_7
    iget-object v3, v2, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    const/4 v5, -0x1

    invoke-virtual {p0, v3, v5}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->setWindowOriginalRotation(Lcom/android/server/wm/TaskStack;I)V

    .line 973
    .end local v1    # "classname":Ljava/lang/String;
    :cond_8
    :goto_1
    monitor-exit v4

    goto/16 :goto_0

    .line 970
    .restart local v1    # "classname":Ljava/lang/String;
    :cond_9
    iget-object v3, v2, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v5, v0, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    invoke-virtual {p0, v3, v5}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->setWindowOriginalRotation(Lcom/android/server/wm/TaskStack;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public updateStackScreenRotation(I)V
    .locals 4
    .param p1, "rotation"    # I

    .prologue
    .line 1894
    iget-object v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-nez v3, :cond_1

    .line 1908
    :cond_0
    return-void

    .line 1897
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1898
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1899
    iget-object v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskStack;

    .line 1900
    .local v2, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v2, :cond_2

    iget v3, v2, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-nez v3, :cond_3

    .line 1898
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1903
    :cond_3
    invoke-virtual {p0, v2, p1}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->setScreenRotation(Lcom/android/server/wm/TaskStack;I)V

    goto :goto_1
.end method

.method public updateSurfaceWindowCrop(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;FFFF)V
    .locals 6
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "clipRect"    # Landroid/graphics/Rect;
    .param p3, "surfacex"    # F
    .param p4, "surfacey"    # F
    .param p5, "surfacew"    # F
    .param p6, "surfaceh"    # F

    .prologue
    .line 2979
    iget-object v0, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-boolean v0, v0, Lcom/android/server/VivoSmartMultiWindowMgr;->mSplitMode:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 2984
    :cond_0
    :goto_0
    return-void

    .line 2982
    :cond_1
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowSmartMultiWindowData;->updateSurfaceWindowCrop(Landroid/graphics/Rect;FFFF)V

    goto :goto_0
.end method

.method public vivoApplyAnimationLocked(Lcom/android/server/wm/AppWindowToken;IZLandroid/view/animation/Animation;)Landroid/view/animation/Animation;
    .locals 7
    .param p1, "atoken"    # Lcom/android/server/wm/AppWindowToken;
    .param p2, "transit"    # I
    .param p3, "isEntrance"    # Z
    .param p4, "anim"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v6, -0x1

    const/4 v2, 0x0

    .line 1668
    sget-boolean v3, Lcom/android/server/wm/VivoSmartMultiWindowWms;->DEBUG_SMARTMULTIWINDOW_IMPORTANT:Z

    if-eqz v3, :cond_0

    .line 1669
    const-string v3, "vivo_debug_WindowManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "vivoApplyAnimationLocked atoken = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", transit = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isEntrance = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    :cond_0
    sget-boolean v3, Landroid/util/VivoSmartMultiWindowConfig;->IS_EXPORT:Z

    if-eqz v3, :cond_2

    .line 1675
    if-eqz p1, :cond_1

    .line 1676
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1677
    .local v1, "pg":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-boolean v3, v3, Lcom/android/server/VivoSmartMultiWindowMgr;->mSplitMode:Z

    if-eqz v3, :cond_1

    const-string v3, "com.android.VideoPlayer"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object p4, v2

    .line 1712
    .end local v1    # "pg":Ljava/lang/String;
    .end local p4    # "anim":Landroid/view/animation/Animation;
    :cond_1
    :goto_0
    return-object p4

    .line 1696
    .restart local p4    # "anim":Landroid/view/animation/Animation;
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    if-eqz v3, :cond_1

    .line 1699
    iget-object v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget v3, v3, Lcom/android/server/VivoSmartMultiWindowMgr;->mTopStackId:I

    if-ne v3, v6, :cond_6

    iget-object v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget v3, v3, Lcom/android/server/VivoSmartMultiWindowMgr;->mBottomStackId:I

    if-ne v3, v6, :cond_6

    iget-object v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-boolean v3, v3, Lcom/android/server/VivoSmartMultiWindowMgr;->mHasSplitActivity:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-boolean v3, v3, Lcom/android/server/VivoSmartMultiWindowMgr;->taskResumed:Z

    if-eqz v3, :cond_6

    :cond_3
    iget-object v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-boolean v3, v3, Lcom/android/server/VivoSmartMultiWindowMgr;->mStartSplitNoExecuteAppTransition:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-boolean v3, v3, Lcom/android/server/VivoSmartMultiWindowMgr;->mFirstStartSplit:Z

    if-eqz v3, :cond_5

    :cond_4
    iget-object v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget v3, v3, Lcom/android/server/VivoSmartMultiWindowMgr;->mExecuteAppTransition:I

    if-eqz v3, :cond_6

    :cond_5
    iget-object v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-boolean v3, v3, Lcom/android/server/VivoSmartMultiWindowMgr;->mNotifyDraw:Z

    if-nez v3, :cond_7

    .line 1703
    :cond_6
    iget-object v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-boolean v3, v3, Lcom/android/server/VivoSmartMultiWindowMgr;->mSplitMode:Z

    if-eqz v3, :cond_8

    move-object p4, v2

    .line 1704
    goto :goto_0

    .line 1700
    :cond_7
    if-nez p1, :cond_6

    goto :goto_0

    .line 1706
    :cond_8
    iget-object v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v4, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowAnimator;->getMultiWindowTransitionLocked(I)Lcom/android/server/wm/SmartMultiWindowTransition;

    move-result-object v0

    .line 1709
    .local v0, "multitransit":Lcom/android/server/wm/SmartMultiWindowTransition;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/SmartMultiWindowTransition;->isTransitionSet()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object p4, v2

    .line 1710
    goto :goto_0
.end method

.method public vivoChangeStackModeByActivity(Lcom/android/server/wm/WindowState;IZ)V
    .locals 1
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "mode"    # I
    .param p3, "isSpecialToken"    # Z

    .prologue
    .line 2964
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    if-nez v0, :cond_1

    .line 2968
    :cond_0
    :goto_0
    return-void

    .line 2967
    :cond_1
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mSmartShowData:Lcom/android/server/wm/WindowSmartMultiWindowData;

    invoke-virtual {v0, p2, p3}, Lcom/android/server/wm/WindowSmartMultiWindowData;->vivoChangeStackModeByActivity(IZ)V

    goto :goto_0
.end method

.method public vivoConfigurationReady(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "config1"    # Landroid/content/res/Configuration;
    .param p2, "config2"    # Landroid/content/res/Configuration;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    if-nez v0, :cond_0

    .line 114
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/VivoSmartMultiWindowMgr;->vivoConfigurationReady(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    goto :goto_0
.end method

.method public vivoDisplayReady()V
    .locals 3

    .prologue
    .line 2333
    invoke-static {}, Lcom/android/server/VivoSmartMultiWindowMgr;->getInstance()Lcom/android/server/VivoSmartMultiWindowMgr;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    .line 2334
    invoke-static {}, Lcom/android/server/am/VivoSmartMultiWindowAms;->getInstance()Lcom/android/server/am/VivoSmartMultiWindowAms;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    .line 2335
    sget-boolean v0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->DEBUG_SMARTMULTIWINDOW_ALL:Z

    if-eqz v0, :cond_0

    .line 2336
    const-string v0, "vivo_debug_info_VivoSmartMultiWindowWms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vivoDisplayReady mMgr = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mAmsInstance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2339
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    if-eqz v0, :cond_1

    .line 2340
    iget-object v0, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    invoke-virtual {v0}, Lcom/android/server/VivoSmartMultiWindowMgr;->vivoDisplayReady()V

    .line 2342
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    if-eqz v0, :cond_2

    .line 2343
    iget-object v0, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    invoke-virtual {v0}, Lcom/android/server/am/VivoSmartMultiWindowAms;->vivoDisplayReady()V

    .line 2345
    :cond_2
    return-void
.end method

.method public vivoGetBackupStackBounds(I)Landroid/graphics/Rect;
    .locals 7
    .param p1, "stackId"    # I

    .prologue
    .line 3351
    const/4 v2, 0x0

    .line 3352
    .local v2, "rect":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-nez v5, :cond_0

    move-object v3, v2

    .line 3369
    .end local v2    # "rect":Landroid/graphics/Rect;
    .local v3, "rect":Landroid/graphics/Rect;
    :goto_0
    return-object v3

    .line 3355
    .end local v3    # "rect":Landroid/graphics/Rect;
    .restart local v2    # "rect":Landroid/graphics/Rect;
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3357
    .local v0, "origId":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v5, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3359
    :try_start_1
    iget-object v5, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/TaskStack;

    .line 3360
    .local v4, "stack":Lcom/android/server/wm/TaskStack;
    if-nez v4, :cond_1

    .line 3365
    :goto_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3367
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v3, v2

    .line 3369
    .end local v2    # "rect":Landroid/graphics/Rect;
    .restart local v3    # "rect":Landroid/graphics/Rect;
    goto :goto_0

    .line 3363
    .end local v3    # "rect":Landroid/graphics/Rect;
    .restart local v2    # "rect":Landroid/graphics/Rect;
    :cond_1
    :try_start_2
    invoke-virtual {p0, v4}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->vivoGetBackupStackBounds(Lcom/android/server/wm/TaskStack;)Landroid/graphics/Rect;

    move-result-object v2

    goto :goto_1

    .line 3365
    .end local v4    # "stack":Lcom/android/server/wm/TaskStack;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3367
    :catchall_1
    move-exception v5

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public vivoGetBackupStackBounds(Lcom/android/server/wm/TaskStack;)Landroid/graphics/Rect;
    .locals 2
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;

    .prologue
    const/4 v0, 0x0

    .line 3373
    iget-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 3376
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p1, Lcom/android/server/wm/TaskStack;->mSmartShowData:Lcom/android/server/wm/StackSmartMultiWindowData;

    if-eqz v1, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/TaskStack;->mSmartShowData:Lcom/android/server/wm/StackSmartMultiWindowData;

    invoke-virtual {v0}, Lcom/android/server/wm/StackSmartMultiWindowData;->getBackupStackBounds()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0
.end method

.method public vivoGetFocusedStackBounds(Lcom/android/server/wm/TaskStack;)Landroid/graphics/Rect;
    .locals 5
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;

    .prologue
    const/4 v1, 0x0

    .line 3687
    iget-object v2, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-boolean v2, v2, Lcom/android/server/VivoSmartMultiWindowMgr;->mSplitMode:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-boolean v2, v2, Lcom/android/server/VivoSmartMultiWindowMgr;->mNeedDrawFrameLayer:Z

    if-nez v2, :cond_1

    .line 3700
    :cond_0
    :goto_0
    return-object v1

    .line 3693
    :cond_1
    sget-boolean v2, Lcom/android/server/wm/VivoSmartMultiWindowWms;->DEBUG_SMARTMULTIWINDOW_IMPORTANT:Z

    if-eqz v2, :cond_2

    .line 3694
    const-string v2, "vivo_debug_WindowManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vivoGetFocusedStackBounds mMgr.mFocusedStackId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget v4, v4, Lcom/android/server/VivoSmartMultiWindowMgr;->mFocusedStackId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3696
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget v3, v3, Lcom/android/server/VivoSmartMultiWindowMgr;->mFocusedStackId:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskStack;

    .line 3697
    .local v0, "focustack":Lcom/android/server/wm/TaskStack;
    if-eqz v0, :cond_0

    .line 3700
    invoke-virtual {p0, v0}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->vivoGetStackBounds(Lcom/android/server/wm/TaskStack;)Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_0
.end method

.method public vivoGetStack(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/TaskStack;
    .locals 4
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/4 v2, 0x0

    .line 2239
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-nez v3, :cond_1

    .line 2249
    :cond_0
    :goto_0
    return-object v2

    .line 2242
    :cond_1
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 2243
    .local v1, "wtoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v1, :cond_0

    .line 2244
    iget-object v0, v1, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    .line 2245
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_0

    .line 2246
    iget-object v2, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    goto :goto_0
.end method

.method public vivoGetStackBounds(I)Landroid/graphics/Rect;
    .locals 7
    .param p1, "stackId"    # I

    .prologue
    .line 406
    const/4 v2, 0x0

    .line 407
    .local v2, "rect":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-nez v5, :cond_0

    move-object v3, v2

    .line 424
    .end local v2    # "rect":Landroid/graphics/Rect;
    .local v3, "rect":Landroid/graphics/Rect;
    :goto_0
    return-object v3

    .line 410
    .end local v3    # "rect":Landroid/graphics/Rect;
    .restart local v2    # "rect":Landroid/graphics/Rect;
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 412
    .local v0, "origId":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v5, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 414
    :try_start_1
    iget-object v5, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/TaskStack;

    .line 415
    .local v4, "stack":Lcom/android/server/wm/TaskStack;
    if-nez v4, :cond_1

    .line 420
    :goto_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 422
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v3, v2

    .line 424
    .end local v2    # "rect":Landroid/graphics/Rect;
    .restart local v3    # "rect":Landroid/graphics/Rect;
    goto :goto_0

    .line 418
    .end local v3    # "rect":Landroid/graphics/Rect;
    .restart local v2    # "rect":Landroid/graphics/Rect;
    :cond_1
    :try_start_2
    invoke-virtual {p0, v4}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->vivoGetStackBounds(Lcom/android/server/wm/TaskStack;)Landroid/graphics/Rect;

    move-result-object v2

    goto :goto_1

    .line 420
    .end local v4    # "stack":Lcom/android/server/wm/TaskStack;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 422
    :catchall_1
    move-exception v5

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public vivoGetStackBounds(Lcom/android/server/wm/TaskStack;)Landroid/graphics/Rect;
    .locals 2
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;

    .prologue
    const/4 v0, 0x0

    .line 1886
    iget-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 1889
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p1, Lcom/android/server/wm/TaskStack;->mSmartShowData:Lcom/android/server/wm/StackSmartMultiWindowData;

    if-eqz v1, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/TaskStack;->mSmartShowData:Lcom/android/server/wm/StackSmartMultiWindowData;

    invoke-virtual {v0}, Lcom/android/server/wm/StackSmartMultiWindowData;->getActualBounds()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0
.end method

.method public vivoGetStackDisplayBounds(I)Landroid/graphics/Rect;
    .locals 6
    .param p1, "stackId"    # I

    .prologue
    .line 1037
    iget-object v4, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-nez v4, :cond_0

    .line 1038
    const/4 v2, 0x0

    .line 1050
    :goto_0
    return-object v2

    .line 1040
    :cond_0
    const/4 v2, 0x0

    .line 1041
    .local v2, "rect":Landroid/graphics/Rect;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1043
    .local v0, "origId":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v4, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1044
    :try_start_1
    iget-object v4, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskStack;

    .line 1045
    .local v3, "stack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {p0, v3}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->vivoGetStackDisplayBounds(Lcom/android/server/wm/TaskStack;)Landroid/graphics/Rect;

    move-result-object v2

    .line 1046
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1048
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1046
    .end local v3    # "stack":Lcom/android/server/wm/TaskStack;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1048
    :catchall_1
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method vivoGetStackDisplayBounds(Lcom/android/server/wm/TaskStack;)Landroid/graphics/Rect;
    .locals 2
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;

    .prologue
    const/4 v0, 0x0

    .line 2032
    if-nez p1, :cond_1

    .line 2035
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p1, Lcom/android/server/wm/TaskStack;->mSmartShowData:Lcom/android/server/wm/StackSmartMultiWindowData;

    if-eqz v1, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/TaskStack;->mSmartShowData:Lcom/android/server/wm/StackSmartMultiWindowData;

    invoke-virtual {v0}, Lcom/android/server/wm/StackSmartMultiWindowData;->getStackBounds()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0
.end method

.method public vivoRemoveTask(I)V
    .locals 5
    .param p1, "taskId"    # I

    .prologue
    .line 887
    iget-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-nez v1, :cond_0

    .line 905
    :goto_0
    return-void

    .line 890
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 891
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mTaskIdToTask:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    .line 892
    .local v0, "task":Lcom/android/server/wm/Task;
    if-nez v0, :cond_2

    .line 893
    sget-boolean v1, Lcom/android/server/wm/VivoSmartMultiWindowWms;->DEBUG_SMARTMULTIWINDOW_IMPORTANT:Z

    if-eqz v1, :cond_1

    .line 894
    const-string v1, "vivo_debug_TaskStack"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeTask: could not find taskId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    :cond_1
    monitor-exit v2

    goto :goto_0

    .line 904
    .end local v0    # "task":Lcom/android/server/wm/Task;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 899
    .restart local v0    # "task":Lcom/android/server/wm/Task;
    :cond_2
    :try_start_1
    sget-boolean v1, Lcom/android/server/wm/VivoSmartMultiWindowWms;->DEBUG_SMARTMULTIWINDOW_IMPORTANT:Z

    if-eqz v1, :cond_3

    .line 900
    const-string v1, "vivo_debug_WindowManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TAG_WMS vivoRemoveTask task = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", taskId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/server/wm/VivoSmartMultiWindowWms;->vivoRemoveTaskLocked(Lcom/android/server/wm/Task;)V

    .line 904
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method vivoRemoveTaskLocked(Lcom/android/server/wm/Task;)V
    .locals 5
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .prologue
    .line 908
    iget-object v2, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-nez v2, :cond_1

    .line 938
    :cond_0
    :goto_0
    return-void

    .line 911
    :cond_1
    iget v1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 912
    .local v1, "taskId":I
    iget-object v0, p1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    .line 913
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v0, :cond_0

    .line 922
    sget-boolean v2, Lcom/android/server/wm/VivoSmartMultiWindowWms;->DEBUG_SMARTMULTIWINDOW_IMPORTANT:Z

    if-eqz v2, :cond_2

    .line 923
    const-string v2, "vivo_debug_WindowManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TAG_WMS vivoRemoveTaskLocked task stack id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", task id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p1, Lcom/android/server/wm/Task;->mDeferRemoval:Z

    .line 928
    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskStack;->vivoRemoveTask(Lcom/android/server/wm/Task;)V

    goto :goto_0
.end method

.method public vivoRemoveWindowToken(Lcom/android/server/wm/AppWindowToken;)V
    .locals 3
    .param p1, "awtoken"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    .line 3200
    iget-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 3226
    :cond_0
    :goto_0
    return-void

    .line 3203
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v2, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowAnimator;->getMultiWindowTransitionLocked(I)Lcom/android/server/wm/SmartMultiWindowTransition;

    move-result-object v0

    .line 3206
    .local v0, "multitransit":Lcom/android/server/wm/SmartMultiWindowTransition;
    if-eqz v0, :cond_0

    .line 3210
    invoke-virtual {v0, p1}, Lcom/android/server/wm/SmartMultiWindowTransition;->removeAppWindowToken(Lcom/android/server/wm/AppWindowToken;)V

    .line 3211
    invoke-virtual {v0}, Lcom/android/server/wm/SmartMultiWindowTransition;->decideMultiWindowTransitionNext()V

    goto :goto_0
.end method

.method public vivoSetTokenVisibilityLocked(Lcom/android/server/wm/AppWindowToken;Z)V
    .locals 3
    .param p1, "awtoken"    # Lcom/android/server/wm/AppWindowToken;
    .param p2, "visible"    # Z

    .prologue
    .line 3335
    iget-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    iget-boolean v1, p1, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    if-eqz v1, :cond_1

    .line 3348
    :cond_0
    :goto_0
    return-void

    .line 3338
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v2, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowAnimator;->getMultiWindowTransitionLocked(I)Lcom/android/server/wm/SmartMultiWindowTransition;

    move-result-object v0

    .line 3341
    .local v0, "multitransit":Lcom/android/server/wm/SmartMultiWindowTransition;
    if-eqz v0, :cond_0

    .line 3345
    invoke-virtual {v0, p1}, Lcom/android/server/wm/SmartMultiWindowTransition;->removeAppWindowToken(Lcom/android/server/wm/AppWindowToken;)V

    .line 3346
    invoke-virtual {v0}, Lcom/android/server/wm/SmartMultiWindowTransition;->decideMultiWindowTransitionNext()V

    goto :goto_0
.end method

.method public vivoUpdateDisplayInfo()V
    .locals 15

    .prologue
    .line 117
    iget-object v11, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    if-nez v11, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    const/16 v6, 0x10

    .line 121
    .local v6, "len":I
    iget-object v11, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v11}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 122
    .local v1, "displaycontent":Lcom/android/server/wm/DisplayContent;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    const/4 v11, 0x2

    if-ge v5, v11, :cond_7

    .line 124
    if-nez v5, :cond_2

    .line 125
    const/4 v7, 0x0

    .line 131
    .local v7, "mRotation":I
    :goto_2
    const/4 v11, 0x1

    if-ne v7, v11, :cond_3

    .line 132
    const/4 v8, 0x1

    .line 137
    .local v8, "rotated":Z
    :goto_3
    if-eqz v8, :cond_4

    iget v3, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 139
    .local v3, "dw":I
    :goto_4
    if-eqz v8, :cond_5

    iget v0, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 141
    .local v0, "dh":I
    :goto_5
    iget-object v11, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v11, v11, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v11, v3, v0, v7}, Landroid/view/WindowManagerPolicy;->getNonDecorDisplayWidth(III)I

    move-result v10

    .line 142
    .local v10, "w":I
    iget-object v11, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v11, v11, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v11, v3, v0, v7}, Landroid/view/WindowManagerPolicy;->getNonDecorDisplayHeight(III)I

    move-result v4

    .line 143
    .local v4, "h":I
    new-instance v2, Landroid/view/DisplayInfo;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v11

    invoke-direct {v2, v11}, Landroid/view/DisplayInfo;-><init>(Landroid/view/DisplayInfo;)V

    .line 145
    .local v2, "displayinfo":Landroid/view/DisplayInfo;
    iget-object v12, v1, Lcom/android/server/wm/DisplayContent;->mDisplaySizeLock:Ljava/lang/Object;

    monitor-enter v12

    .line 146
    :try_start_0
    iput v7, v2, Landroid/view/DisplayInfo;->rotation:I

    .line 147
    iput v3, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 148
    iput v0, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 149
    iget v11, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    iput v11, v2, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 150
    iput v10, v2, Landroid/view/DisplayInfo;->appWidth:I

    .line 151
    iput v4, v2, Landroid/view/DisplayInfo;->appHeight:I

    .line 152
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    iget-object v11, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v11, v11, Lcom/android/server/VivoSmartMultiWindowMgr;->mDisplayInfo:[F

    mul-int v12, v5, v6

    add-int/lit8 v12, v12, 0x0

    iget v13, v2, Landroid/view/DisplayInfo;->appWidth:I

    int-to-float v13, v13

    aput v13, v11, v12

    .line 179
    iget-object v11, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v11, v11, Lcom/android/server/VivoSmartMultiWindowMgr;->mDisplayInfo:[F

    mul-int v12, v5, v6

    add-int/lit8 v12, v12, 0x1

    iget v13, v2, Landroid/view/DisplayInfo;->appHeight:I

    int-to-float v13, v13

    aput v13, v11, v12

    .line 180
    iget-object v11, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v11, v11, Lcom/android/server/VivoSmartMultiWindowMgr;->mDisplayInfo:[F

    mul-int v12, v5, v6

    add-int/lit8 v12, v12, 0x2

    iget v13, v2, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    int-to-float v13, v13

    aput v13, v11, v12

    .line 181
    iget-object v11, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v11, v11, Lcom/android/server/VivoSmartMultiWindowMgr;->mDisplayInfo:[F

    mul-int v12, v5, v6

    add-int/lit8 v12, v12, 0x3

    iget v13, v2, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    int-to-float v13, v13

    aput v13, v11, v12

    .line 182
    iget-object v11, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v11, v11, Lcom/android/server/VivoSmartMultiWindowMgr;->mDisplayInfo:[F

    mul-int v12, v5, v6

    add-int/lit8 v12, v12, 0x4

    iget v13, v2, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    int-to-float v13, v13

    aput v13, v11, v12

    .line 183
    iget-object v11, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v11, v11, Lcom/android/server/VivoSmartMultiWindowMgr;->mDisplayInfo:[F

    mul-int v12, v5, v6

    add-int/lit8 v12, v12, 0x5

    iget v13, v2, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    int-to-float v13, v13

    aput v13, v11, v12

    .line 184
    iget-object v11, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v11, v11, Lcom/android/server/VivoSmartMultiWindowMgr;->mDisplayInfo:[F

    mul-int v12, v5, v6

    add-int/lit8 v12, v12, 0x6

    iget v13, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-float v13, v13

    aput v13, v11, v12

    .line 185
    iget-object v11, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v11, v11, Lcom/android/server/VivoSmartMultiWindowMgr;->mDisplayInfo:[F

    mul-int v12, v5, v6

    add-int/lit8 v12, v12, 0x7

    iget v13, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float v13, v13

    aput v13, v11, v12

    .line 186
    iget-object v11, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v11, v11, Lcom/android/server/VivoSmartMultiWindowMgr;->mDisplayInfo:[F

    mul-int v12, v5, v6

    add-int/lit8 v12, v12, 0x8

    iget v13, v2, Landroid/view/DisplayInfo;->overscanLeft:I

    int-to-float v13, v13

    aput v13, v11, v12

    .line 187
    iget-object v11, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v11, v11, Lcom/android/server/VivoSmartMultiWindowMgr;->mDisplayInfo:[F

    mul-int v12, v5, v6

    add-int/lit8 v12, v12, 0x9

    iget v13, v2, Landroid/view/DisplayInfo;->overscanTop:I

    int-to-float v13, v13

    aput v13, v11, v12

    .line 188
    iget-object v11, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v11, v11, Lcom/android/server/VivoSmartMultiWindowMgr;->mDisplayInfo:[F

    mul-int v12, v5, v6

    add-int/lit8 v12, v12, 0xa

    iget v13, v2, Landroid/view/DisplayInfo;->overscanRight:I

    int-to-float v13, v13

    aput v13, v11, v12

    .line 189
    iget-object v11, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v11, v11, Lcom/android/server/VivoSmartMultiWindowMgr;->mDisplayInfo:[F

    mul-int v12, v5, v6

    add-int/lit8 v12, v12, 0xb

    iget v13, v2, Landroid/view/DisplayInfo;->overscanBottom:I

    int-to-float v13, v13

    aput v13, v11, v12

    .line 190
    iget-object v11, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v11, v11, Lcom/android/server/VivoSmartMultiWindowMgr;->mDisplayInfo:[F

    mul-int v12, v5, v6

    add-int/lit8 v12, v12, 0xc

    iget v13, v2, Landroid/view/DisplayInfo;->rotation:I

    int-to-float v13, v13

    aput v13, v11, v12

    .line 191
    iget-object v11, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v11, v11, Lcom/android/server/VivoSmartMultiWindowMgr;->mDisplayInfo:[F

    mul-int v12, v5, v6

    add-int/lit8 v12, v12, 0xd

    iget v13, v2, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    int-to-float v13, v13

    aput v13, v11, v12

    .line 192
    iget-object v11, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v11, v11, Lcom/android/server/VivoSmartMultiWindowMgr;->mDisplayInfo:[F

    mul-int v12, v5, v6

    add-int/lit8 v12, v12, 0xe

    iget v13, v2, Landroid/view/DisplayInfo;->physicalXDpi:F

    aput v13, v11, v12

    .line 193
    iget-object v11, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v11, v11, Lcom/android/server/VivoSmartMultiWindowMgr;->mDisplayInfo:[F

    mul-int v12, v5, v6

    add-int/lit8 v12, v12, 0xf

    iget v13, v2, Landroid/view/DisplayInfo;->physicalYDpi:F

    aput v13, v11, v12

    .line 195
    if-eqz v8, :cond_6

    .line 196
    iget-object v11, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v11, v11, Lcom/android/server/VivoSmartMultiWindowMgr;->mOneDisplayLandInfo:[F

    const/4 v12, 0x0

    iget v13, v2, Landroid/view/DisplayInfo;->appWidth:I

    int-to-float v13, v13

    aput v13, v11, v12

    .line 197
    iget-object v11, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v11, v11, Lcom/android/server/VivoSmartMultiWindowMgr;->mOneDisplayLandInfo:[F

    const/4 v12, 0x1

    iget v13, v2, Landroid/view/DisplayInfo;->appHeight:I

    int-to-float v13, v13

    aput v13, v11, v12

    .line 198
    iget-object v11, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v11, v11, Lcom/android/server/VivoSmartMultiWindowMgr;->mOneDisplayLandInfo:[F

    const/4 v12, 0x2

    iget v13, v2, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    int-to-float v13, v13

    aput v13, v11, v12

    .line 199
    iget-object v11, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v11, v11, Lcom/android/server/VivoSmartMultiWindowMgr;->mOneDisplayLandInfo:[F

    const/4 v12, 0x3

    iget v13, v2, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    int-to-float v13, v13

    aput v13, v11, v12

    .line 200
    iget-object v11, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v11, v11, Lcom/android/server/VivoSmartMultiWindowMgr;->mOneDisplayLandInfo:[F

    const/4 v12, 0x4

    iget v13, v2, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    int-to-float v13, v13

    aput v13, v11, v12

    .line 201
    iget-object v11, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v11, v11, Lcom/android/server/VivoSmartMultiWindowMgr;->mOneDisplayLandInfo:[F

    const/4 v12, 0x5

    iget v13, v2, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    int-to-float v13, v13

    aput v13, v11, v12

    .line 202
    iget-object v11, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v11, v11, Lcom/android/server/VivoSmartMultiWindowMgr;->mOneDisplayLandInfo:[F

    const/4 v12, 0x6

    iget v13, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-float v13, v13

    aput v13, v11, v12

    .line 203
    iget-object v11, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v11, v11, Lcom/android/server/VivoSmartMultiWindowMgr;->mOneDisplayLandInfo:[F

    const/4 v12, 0x7

    iget v13, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float v13, v13

    aput v13, v11, v12

    .line 204
    iget-object v11, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v11, v11, Lcom/android/server/VivoSmartMultiWindowMgr;->mOneDisplayLandInfo:[F

    const/16 v12, 0x8

    iget v13, v2, Landroid/view/DisplayInfo;->overscanLeft:I

    int-to-float v13, v13

    aput v13, v11, v12

    .line 205
    iget-object v11, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v11, v11, Lcom/android/server/VivoSmartMultiWindowMgr;->mOneDisplayLandInfo:[F

    const/16 v12, 0x9

    iget v13, v2, Landroid/view/DisplayInfo;->overscanTop:I

    int-to-float v13, v13

    aput v13, v11, v12

    .line 206
    iget-object v11, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v11, v11, Lcom/android/server/VivoSmartMultiWindowMgr;->mOneDisplayLandInfo:[F

    const/16 v12, 0xa

    iget v13, v2, Landroid/view/DisplayInfo;->overscanRight:I

    int-to-float v13, v13

    aput v13, v11, v12

    .line 207
    iget-object v11, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v11, v11, Lcom/android/server/VivoSmartMultiWindowMgr;->mOneDisplayLandInfo:[F

    const/16 v12, 0xb

    iget v13, v2, Landroid/view/DisplayInfo;->overscanBottom:I

    int-to-float v13, v13

    aput v13, v11, v12

    .line 208
    iget-object v11, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v11, v11, Lcom/android/server/VivoSmartMultiWindowMgr;->mOneDisplayLandInfo:[F

    const/16 v12, 0xc

    iget v13, v2, Landroid/view/DisplayInfo;->rotation:I

    int-to-float v13, v13

    aput v13, v11, v12

    .line 209
    iget-object v11, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v11, v11, Lcom/android/server/VivoSmartMultiWindowMgr;->mOneDisplayLandInfo:[F

    const/16 v12, 0xd

    iget v13, v2, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    int-to-float v13, v13

    aput v13, v11, v12

    .line 210
    iget-object v11, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v11, v11, Lcom/android/server/VivoSmartMultiWindowMgr;->mOneDisplayLandInfo:[F

    const/16 v12, 0xe

    iget v13, v2, Landroid/view/DisplayInfo;->physicalXDpi:F

    aput v13, v11, v12

    .line 211
    iget-object v11, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v11, v11, Lcom/android/server/VivoSmartMultiWindowMgr;->mOneDisplayLandInfo:[F

    const/16 v12, 0xf

    iget v13, v2, Landroid/view/DisplayInfo;->physicalYDpi:F

    aput v13, v11, v12

    .line 122
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 127
    .end local v0    # "dh":I
    .end local v2    # "displayinfo":Landroid/view/DisplayInfo;
    .end local v3    # "dw":I
    .end local v4    # "h":I
    .end local v7    # "mRotation":I
    .end local v8    # "rotated":Z
    .end local v10    # "w":I
    :cond_2
    const/4 v7, 0x1

    .restart local v7    # "mRotation":I
    goto/16 :goto_2

    .line 134
    :cond_3
    const/4 v8, 0x0

    .restart local v8    # "rotated":Z
    goto/16 :goto_3

    .line 137
    :cond_4
    iget v3, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    goto/16 :goto_4

    .line 139
    .restart local v3    # "dw":I
    :cond_5
    iget v0, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    goto/16 :goto_5

    .line 152
    .restart local v0    # "dh":I
    .restart local v2    # "displayinfo":Landroid/view/DisplayInfo;
    .restart local v4    # "h":I
    .restart local v10    # "w":I
    :catchall_0
    move-exception v11

    :try_start_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v11

    .line 214
    :cond_6
    iget-object v11, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v11, v11, Lcom/android/server/VivoSmartMultiWindowMgr;->mOneDisplayPortInfo:[F

    const/4 v12, 0x0

    iget v13, v2, Landroid/view/DisplayInfo;->appWidth:I

    int-to-float v13, v13

    aput v13, v11, v12

    .line 215
    iget-object v11, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v11, v11, Lcom/android/server/VivoSmartMultiWindowMgr;->mOneDisplayPortInfo:[F

    const/4 v12, 0x1

    iget v13, v2, Landroid/view/DisplayInfo;->appHeight:I

    int-to-float v13, v13

    aput v13, v11, v12

    .line 216
    iget-object v11, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v11, v11, Lcom/android/server/VivoSmartMultiWindowMgr;->mOneDisplayPortInfo:[F

    const/4 v12, 0x2

    iget v13, v2, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    int-to-float v13, v13

    aput v13, v11, v12

    .line 217
    iget-object v11, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v11, v11, Lcom/android/server/VivoSmartMultiWindowMgr;->mOneDisplayPortInfo:[F

    const/4 v12, 0x3

    iget v13, v2, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    int-to-float v13, v13

    aput v13, v11, v12

    .line 218
    iget-object v11, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v11, v11, Lcom/android/server/VivoSmartMultiWindowMgr;->mOneDisplayPortInfo:[F

    const/4 v12, 0x4

    iget v13, v2, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    int-to-float v13, v13

    aput v13, v11, v12

    .line 219
    iget-object v11, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v11, v11, Lcom/android/server/VivoSmartMultiWindowMgr;->mOneDisplayPortInfo:[F

    const/4 v12, 0x5

    iget v13, v2, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    int-to-float v13, v13

    aput v13, v11, v12

    .line 220
    iget-object v11, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v11, v11, Lcom/android/server/VivoSmartMultiWindowMgr;->mOneDisplayPortInfo:[F

    const/4 v12, 0x6

    iget v13, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-float v13, v13

    aput v13, v11, v12

    .line 221
    iget-object v11, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v11, v11, Lcom/android/server/VivoSmartMultiWindowMgr;->mOneDisplayPortInfo:[F

    const/4 v12, 0x7

    iget v13, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float v13, v13

    aput v13, v11, v12

    .line 222
    iget-object v11, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v11, v11, Lcom/android/server/VivoSmartMultiWindowMgr;->mOneDisplayPortInfo:[F

    const/16 v12, 0x8

    iget v13, v2, Landroid/view/DisplayInfo;->overscanLeft:I

    int-to-float v13, v13

    aput v13, v11, v12

    .line 223
    iget-object v11, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v11, v11, Lcom/android/server/VivoSmartMultiWindowMgr;->mOneDisplayPortInfo:[F

    const/16 v12, 0x9

    iget v13, v2, Landroid/view/DisplayInfo;->overscanTop:I

    int-to-float v13, v13

    aput v13, v11, v12

    .line 224
    iget-object v11, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v11, v11, Lcom/android/server/VivoSmartMultiWindowMgr;->mOneDisplayPortInfo:[F

    const/16 v12, 0xa

    iget v13, v2, Landroid/view/DisplayInfo;->overscanRight:I

    int-to-float v13, v13

    aput v13, v11, v12

    .line 225
    iget-object v11, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v11, v11, Lcom/android/server/VivoSmartMultiWindowMgr;->mOneDisplayPortInfo:[F

    const/16 v12, 0xb

    iget v13, v2, Landroid/view/DisplayInfo;->overscanBottom:I

    int-to-float v13, v13

    aput v13, v11, v12

    .line 226
    iget-object v11, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v11, v11, Lcom/android/server/VivoSmartMultiWindowMgr;->mOneDisplayPortInfo:[F

    const/16 v12, 0xc

    iget v13, v2, Landroid/view/DisplayInfo;->rotation:I

    int-to-float v13, v13

    aput v13, v11, v12

    .line 227
    iget-object v11, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v11, v11, Lcom/android/server/VivoSmartMultiWindowMgr;->mOneDisplayPortInfo:[F

    const/16 v12, 0xd

    iget v13, v2, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    int-to-float v13, v13

    aput v13, v11, v12

    .line 228
    iget-object v11, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v11, v11, Lcom/android/server/VivoSmartMultiWindowMgr;->mOneDisplayPortInfo:[F

    const/16 v12, 0xe

    iget v13, v2, Landroid/view/DisplayInfo;->physicalXDpi:F

    aput v13, v11, v12

    .line 229
    iget-object v11, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v11, v11, Lcom/android/server/VivoSmartMultiWindowMgr;->mOneDisplayPortInfo:[F

    const/16 v12, 0xf

    iget v13, v2, Landroid/view/DisplayInfo;->physicalYDpi:F

    aput v13, v11, v12

    goto/16 :goto_6

    .line 232
    .end local v0    # "dh":I
    .end local v2    # "displayinfo":Landroid/view/DisplayInfo;
    .end local v3    # "dw":I
    .end local v4    # "h":I
    .end local v7    # "mRotation":I
    .end local v8    # "rotated":Z
    .end local v10    # "w":I
    :cond_7
    iget-object v11, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    const/4 v12, 0x1

    iput-boolean v12, v11, Lcom/android/server/VivoSmartMultiWindowMgr;->mDisplayReady:Z

    .line 233
    sget-boolean v11, Lcom/android/server/wm/VivoSmartMultiWindowWms;->DEBUG_SMARTMULTIWINDOW_IMPORTANT:Z

    if-eqz v11, :cond_8

    .line 234
    const-string v11, "vivo_debug_WindowManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "TAG_WMS vivoUpdateDisplayInfo mDisplayInfo[0] = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v13, v13, Lcom/android/server/VivoSmartMultiWindowMgr;->mDisplayInfo:[F

    const/4 v14, 0x0

    aget v13, v13, v14

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", mDisplayInfo[1] = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v13, v13, Lcom/android/server/VivoSmartMultiWindowMgr;->mDisplayInfo:[F

    const/4 v14, 0x1

    aget v13, v13, v14

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_8
    iget-object v11, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v11, v11, Lcom/android/server/VivoSmartMultiWindowMgr;->mOneDisplayPortInfo:[F

    const/4 v12, 0x6

    aget v11, v11, v12

    float-to-int v11, v11

    iput v11, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMinScreenParam:I

    .line 240
    iget-object v11, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;

    iget-object v11, v11, Lcom/android/server/VivoSmartMultiWindowMgr;->mOneDisplayPortInfo:[F

    const/4 v12, 0x7

    aget v11, v11, v12

    float-to-int v11, v11

    iput v11, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMaxScreenParam:I

    .line 241
    iget v11, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMinScreenParam:I

    iget v12, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMaxScreenParam:I

    if-le v11, v12, :cond_0

    .line 242
    iget v9, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMinScreenParam:I

    .line 243
    .local v9, "tmp":I
    iget v11, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMaxScreenParam:I

    iput v11, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMinScreenParam:I

    .line 244
    iput v9, p0, Lcom/android/server/wm/VivoSmartMultiWindowWms;->mMaxScreenParam:I

    goto/16 :goto_0
.end method
