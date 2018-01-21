.class public Lcom/android/server/wm/SmartMultiWindowTransition;
.super Ljava/lang/Object;
.source "SmartMultiWindowTransition.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;
    }
.end annotation


# static fields
.field public static final ANIMATION_TIME_DEFAULT:I = 0x2

.field public static final ANIMATION_TIME_MEDIUMMAX:I = 0x7

.field public static final ANIMATION_TIME_MEDIUMMIN:I = 0x6

.field public static final ANIMATION_TIME_MIDMAX:I = 0x5

.field public static final ANIMATION_TIME_MIDMIN:I = 0x4

.field public static final ANIMATION_TIME_NONE:I = 0x9

.field public static final ANIMATION_TIME_SHORTMAX:I = 0x3

.field public static final ANIMATION_TIME_SHORTMIN:I = 0x1

.field public static final ANIMATION_TIME_TINY:I = 0x0

.field public static final ANMIATION_TIME_LONG:I = 0x8

.field private static final DEBUG_MWAPP_TRANSITION:Z

.field private static final DEBUG_NWAPP_SCREENDATA:Z

.field static final DEBUG_TIME:Z = false

.field static final MAX_ANMATION_DURATION_TIME:J = 0x190L

.field static final MIN_ANMATION_DURATION_TIME:J = 0x32L

.field static final NWAPP_TRANSITION_TIMEOUT:I = 0x258

.field private static final TAG_MWAPP_TRANSITION:Ljava/lang/String; = "vivo_debug_SmartMultiWindowTransition"

.field static final TRANSITION_DST_LAYER:I = 0x28


# instance fields
.field mAnimRunning:Z

.field mAnimation:Landroid/view/animation/Animation;

.field private mAnimationTimeIndex:I

.field final mContext:Landroid/content/Context;

.field final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mFinishedByOne:Z

.field private mFinishedImmediately:Z

.field mFreezeSurface:Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;

.field private mMultiWindowTransitionState:I

.field mNextAppTransition:I

.field final mSession:Landroid/view/SurfaceSession;

.field private mShowTime:J

.field mStartTime:J

.field mTargetAppList:Ljava/util/ArrayList;

.field mTransformation:Landroid/view/animation/Transformation;

.field private final mWms:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    sget-boolean v0, Landroid/util/VivoSmartMultiWindowConfig;->DEBUG_MWAPP_TRANSITION:Z

    sput-boolean v0, Lcom/android/server/wm/SmartMultiWindowTransition;->DEBUG_MWAPP_TRANSITION:Z

    .line 31
    sget-boolean v0, Lcom/android/server/wm/SmartMultiWindowTransition;->DEBUG_MWAPP_TRANSITION:Z

    sput-boolean v0, Lcom/android/server/wm/SmartMultiWindowTransition;->DEBUG_NWAPP_SCREENDATA:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/DisplayContent;Landroid/view/SurfaceSession;Lcom/android/server/wm/WindowManagerService;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "displaycontent"    # Lcom/android/server/wm/DisplayContent;
    .param p3, "session"    # Landroid/view/SurfaceSession;
    .param p4, "service"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x2

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-boolean v1, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mAnimRunning:Z

    .line 34
    iput-object v3, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mAnimation:Landroid/view/animation/Animation;

    .line 37
    iput-object v3, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mFreezeSurface:Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;

    .line 38
    iput v0, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mMultiWindowTransitionState:I

    .line 39
    iput v0, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mNextAppTransition:I

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mTargetAppList:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mTransformation:Landroid/view/animation/Transformation;

    .line 60
    iput v2, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mAnimationTimeIndex:I

    .line 64
    iput-wide v4, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mShowTime:J

    .line 65
    iput-boolean v1, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mFinishedImmediately:Z

    .line 66
    iput-boolean v1, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mFinishedByOne:Z

    .line 71
    iput-object p1, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mContext:Landroid/content/Context;

    .line 72
    iput-object p3, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mSession:Landroid/view/SurfaceSession;

    .line 73
    iput-object p2, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 74
    iput-object p4, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mWms:Lcom/android/server/wm/WindowManagerService;

    .line 75
    iput-wide v4, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mShowTime:J

    .line 76
    iput-boolean v1, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mFinishedImmediately:Z

    .line 77
    iput-boolean v1, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mFinishedByOne:Z

    .line 78
    iput v2, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mAnimationTimeIndex:I

    .line 79
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 28
    sget-boolean v0, Lcom/android/server/wm/SmartMultiWindowTransition;->DEBUG_NWAPP_SCREENDATA:Z

    return v0
.end method

.method private setMultiWindowTransitionAnimation()Z
    .locals 5

    .prologue
    const v1, 0x3040007

    .line 82
    iget-object v0, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mFreezeSurface:Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;

    if-nez v0, :cond_0

    .line 83
    const/4 v0, 0x0

    .line 161
    :goto_0
    return v0

    .line 85
    :cond_0
    iget v0, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mAnimationTimeIndex:I

    packed-switch v0, :pswitch_data_0

    .line 150
    iget-object v0, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mAnimation:Landroid/view/animation/Animation;

    .line 157
    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mFreezeSurface:Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;

    iget-object v1, v1, Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mFreezeSurface:Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;

    iget-object v2, v2, Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mFreezeSurface:Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;

    iget-object v3, v3, Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mFreezeSurface:Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;

    iget-object v4, v4, Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 161
    const/4 v0, 0x1

    goto :goto_0

    .line 87
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mContext:Landroid/content/Context;

    const v1, 0x304000f

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mAnimation:Landroid/view/animation/Animation;

    goto :goto_1

    .line 94
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mContext:Landroid/content/Context;

    const v1, 0x304000e

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mAnimation:Landroid/view/animation/Animation;

    goto :goto_1

    .line 101
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mAnimation:Landroid/view/animation/Animation;

    goto :goto_1

    .line 108
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mContext:Landroid/content/Context;

    const v1, 0x304000d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mAnimation:Landroid/view/animation/Animation;

    goto :goto_1

    .line 115
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mContext:Landroid/content/Context;

    const v1, 0x304000c

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mAnimation:Landroid/view/animation/Animation;

    goto :goto_1

    .line 122
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mContext:Landroid/content/Context;

    const v1, 0x304000b

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mAnimation:Landroid/view/animation/Animation;

    goto :goto_1

    .line 129
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mContext:Landroid/content/Context;

    const v1, 0x304000a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mAnimation:Landroid/view/animation/Animation;

    goto :goto_1

    .line 136
    :pswitch_7
    iget-object v0, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mContext:Landroid/content/Context;

    const v1, 0x3040009

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mAnimation:Landroid/view/animation/Animation;

    goto/16 :goto_1

    .line 143
    :pswitch_8
    iget-object v0, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mContext:Landroid/content/Context;

    const v1, 0x3040008

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mAnimation:Landroid/view/animation/Animation;

    goto/16 :goto_1

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public addMultiWindowTransitionTarget(Lcom/android/server/wm/AppWindowToken;)Z
    .locals 1
    .param p1, "apptoken"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mTargetAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mTargetAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    const/4 v0, 0x1

    .line 177
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearMultiWindowTransitionAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 182
    iget-object v0, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 184
    iput-object v3, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mAnimation:Landroid/view/animation/Animation;

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mFreezeSurface:Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mFreezeSurface:Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;

    invoke-virtual {v0}, Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;->kill()V

    .line 189
    iput-object v3, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mFreezeSurface:Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mTargetAppList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 192
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mAnimationTimeIndex:I

    .line 193
    iput-boolean v2, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mAnimRunning:Z

    .line 194
    iput v1, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mNextAppTransition:I

    .line 195
    iput v1, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mMultiWindowTransitionState:I

    .line 196
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mShowTime:J

    .line 197
    iput-boolean v2, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mFinishedImmediately:Z

    .line 198
    iput-boolean v2, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mFinishedByOne:Z

    .line 206
    return-void
.end method

.method public createFreezeSurface(Z)V
    .locals 14
    .param p1, "bgsurface"    # Z

    .prologue
    const/16 v13, 0x65

    const/4 v2, 0x0

    .line 217
    iget-object v0, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mFreezeSurface:Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;

    if-nez v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v11

    .line 221
    .local v11, "displayinfo":Landroid/view/DisplayInfo;
    iget v0, v11, Landroid/view/DisplayInfo;->rotation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, v11, Landroid/view/DisplayInfo;->rotation:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 223
    iget v4, v11, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 224
    .local v4, "dw":I
    iget v5, v11, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 231
    .local v5, "dh":I
    :goto_0
    const/16 v12, 0x28

    .line 232
    .local v12, "layer":I
    new-instance v0, Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;

    iget-object v1, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mSession:Landroid/view/SurfaceSession;

    iget v6, v11, Landroid/view/DisplayInfo;->layerStack:I

    iget v7, v11, Landroid/view/DisplayInfo;->rotation:I

    const v10, 0x61e67

    move v3, v2

    move v8, p1

    move v9, v2

    invoke-direct/range {v0 .. v10}, Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;-><init>(Landroid/view/SurfaceSession;IIIIIIZII)V

    iput-object v0, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mFreezeSurface:Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;

    .line 236
    iget-object v0, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mFreezeSurface:Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mFreezeSurface:Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;

    invoke-virtual {v0}, Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;->show()V

    .line 238
    iget-object v0, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v0, v13}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 239
    iget-object v0, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v13, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    .line 249
    .end local v4    # "dw":I
    .end local v5    # "dh":I
    .end local v11    # "displayinfo":Landroid/view/DisplayInfo;
    .end local v12    # "layer":I
    :cond_0
    return-void

    .line 226
    .restart local v11    # "displayinfo":Landroid/view/DisplayInfo;
    :cond_1
    iget v4, v11, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 227
    .restart local v4    # "dw":I
    iget v5, v11, Landroid/view/DisplayInfo;->logicalWidth:I

    .restart local v5    # "dh":I
    goto :goto_0
.end method

.method public decideMultiWindowTransitionNext()V
    .locals 5

    .prologue
    const/16 v4, 0x66

    .line 679
    iget-object v2, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-nez v2, :cond_1

    .line 703
    :cond_0
    :goto_0
    return-void

    .line 682
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/SmartMultiWindowTransition;->isTransitionSet()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 685
    invoke-virtual {p0}, Lcom/android/server/wm/SmartMultiWindowTransition;->isTargetAppWindowTokenEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 688
    invoke-virtual {p0}, Lcom/android/server/wm/SmartMultiWindowTransition;->getMultiWindowTransitionShowTime()J

    move-result-wide v0

    .line 689
    .local v0, "time":J
    iget-boolean v2, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mFinishedImmediately:Z

    if-eqz v2, :cond_2

    .line 690
    iget-object v2, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v3, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v2, v4, v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 693
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/SmartMultiWindowTransition;->goodToGo()V

    .line 694
    iget-object v2, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 695
    invoke-direct {p0}, Lcom/android/server/wm/SmartMultiWindowTransition;->setMultiWindowTransitionAnimation()Z

    .line 700
    :goto_1
    iget-object v2, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mTargetAppList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 697
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v3, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v2, v4, v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method

.method public executeMultiWindowTransition()V
    .locals 1

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/android/server/wm/SmartMultiWindowTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {p0}, Lcom/android/server/wm/SmartMultiWindowTransition;->setTransitReady()V

    .line 263
    :cond_0
    return-void
.end method

.method public getFinishedIfOneNotified()Z
    .locals 1

    .prologue
    .line 712
    iget-boolean v0, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mFinishedByOne:Z

    return v0
.end method

.method getMultiWindowTransition()I
    .locals 1

    .prologue
    .line 266
    iget v0, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mNextAppTransition:I

    return v0
.end method

.method public getMultiWindowTransitionShowTime()J
    .locals 12

    .prologue
    const-wide/16 v10, 0x190

    const-wide/16 v6, 0x32

    const-wide/16 v4, 0x0

    .line 657
    iget-wide v8, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mShowTime:J

    cmp-long v8, v8, v4

    if-gtz v8, :cond_0

    .line 671
    :goto_0
    return-wide v4

    .line 660
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 661
    .local v2, "time":J
    iget-wide v4, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mShowTime:J

    sub-long v0, v2, v4

    .line 662
    .local v0, "duratime":J
    sget-boolean v4, Lcom/android/server/wm/SmartMultiWindowTransition;->DEBUG_MWAPP_TRANSITION:Z

    if-eqz v4, :cond_1

    .line 663
    const-string v4, "vivo_debug_SmartMultiWindowTransition"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getMultiWindowTransitionShowTime duratime = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    :cond_1
    iget-boolean v4, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mFinishedImmediately:Z

    if-eqz v4, :cond_2

    move-wide v4, v6

    .line 667
    goto :goto_0

    .line 668
    :cond_2
    cmp-long v4, v0, v10

    if-gez v4, :cond_3

    .line 669
    sub-long v4, v10, v0

    goto :goto_0

    :cond_3
    move-wide v4, v6

    .line 671
    goto :goto_0
.end method

.method goodToGo()V
    .locals 1

    .prologue
    .line 270
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mNextAppTransition:I

    .line 271
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mMultiWindowTransitionState:I

    .line 272
    return-void
.end method

.method public handleMultiWindowTransitionReady()I
    .locals 12

    .prologue
    .line 275
    const/4 v4, 0x0

    .line 276
    .local v4, "var4":B
    iget-object v10, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mTargetAppList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 277
    .local v5, "var5":I
    const/4 v2, 0x1

    .line 278
    .local v2, "var2":Z
    const/4 v0, 0x1

    .line 279
    .local v0, "var1":Z
    iget-object v6, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mWms:Lcom/android/server/wm/WindowManagerService;

    .line 280
    .local v6, "var6":Lcom/android/server/wm/WindowManagerService;
    move v3, v2

    .line 281
    .local v3, "var3":I
    iget-object v10, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mFreezeSurface:Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;

    if-nez v10, :cond_0

    .line 282
    move v3, v2

    .line 283
    invoke-virtual {p0}, Lcom/android/server/wm/SmartMultiWindowTransition;->isTimeout()Z

    move-result v10

    if-nez v10, :cond_0

    .line 284
    const/4 v9, 0x0

    .line 287
    .end local v3    # "var3":I
    .local v9, "var9":I
    :goto_0
    move v3, v0

    .line 288
    .local v3, "var3":Z
    if-lt v9, v5, :cond_2

    .line 317
    .end local v3    # "var3":Z
    .end local v9    # "var9":I
    :cond_0
    move v8, v4

    .line 318
    .local v8, "var8":I
    if-eqz v3, :cond_1

    .line 319
    iget-object v6, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mWms:Lcom/android/server/wm/WindowManagerService;

    .line 320
    invoke-virtual {p0}, Lcom/android/server/wm/SmartMultiWindowTransition;->getMultiWindowTransition()I

    move-result v8

    .line 321
    invoke-virtual {p0}, Lcom/android/server/wm/SmartMultiWindowTransition;->goodToGo()V

    .line 322
    iget-object v10, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v11, 0x65

    invoke-virtual {v10, v11}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 323
    const/4 v10, -0x1

    if-eq v8, v10, :cond_4

    iget-object v10, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 324
    iget-object v6, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mWms:Lcom/android/server/wm/WindowManagerService;

    .line 325
    invoke-direct {p0}, Lcom/android/server/wm/SmartMultiWindowTransition;->setMultiWindowTransitionAnimation()Z

    .line 330
    :goto_1
    iget-object v10, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mTargetAppList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 331
    const/4 v8, 0x3

    .line 332
    iget-object v10, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v10

    const/4 v11, 0x1

    iput-boolean v11, v10, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 335
    :cond_1
    return v8

    .line 292
    .end local v8    # "var8":I
    .restart local v3    # "var3":Z
    .restart local v9    # "var9":I
    :cond_2
    move v3, v0

    .line 293
    if-eqz v0, :cond_0

    .line 297
    iget-object v10, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mTargetAppList:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    .line 299
    .local v1, "var10":Lcom/android/server/wm/AppWindowToken;
    iget-object v7, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mWms:Lcom/android/server/wm/WindowManagerService;

    .line 300
    .local v7, "var7":Lcom/android/server/wm/WindowManagerService;
    move v3, v0

    .line 301
    iget-boolean v10, v1, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-nez v10, :cond_3

    .line 302
    move v3, v0

    .line 303
    iget-boolean v10, v1, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    if-nez v10, :cond_3

    .line 304
    move v3, v0

    .line 305
    iget-boolean v10, v1, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    if-nez v10, :cond_3

    .line 306
    const/4 v3, 0x0

    .line 311
    :cond_3
    add-int/lit8 v9, v9, 0x1

    .line 312
    move v0, v3

    .line 313
    goto :goto_0

    .line 327
    .end local v1    # "var10":Lcom/android/server/wm/AppWindowToken;
    .end local v3    # "var3":Z
    .end local v7    # "var7":Lcom/android/server/wm/WindowManagerService;
    .end local v9    # "var9":I
    .restart local v8    # "var8":I
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/SmartMultiWindowTransition;->clearMultiWindowTransitionAnimation()V

    goto :goto_1
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mFreezeSurface:Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isFreezingScreen()Z
    .locals 1

    .prologue
    .line 343
    iget v0, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mMultiWindowTransitionState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTargetAppWindowTokenEmpty()Z
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mTargetAppList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mTargetAppList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isTimeout()Z
    .locals 2

    .prologue
    .line 347
    iget v0, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mMultiWindowTransitionState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isTranitRunning()Z
    .locals 2

    .prologue
    .line 351
    iget v0, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mMultiWindowTransitionState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isTransitReady()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 355
    iget v1, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mMultiWindowTransitionState:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mMultiWindowTransitionState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isTransitionNone()Z
    .locals 1

    .prologue
    .line 360
    iget v0, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mNextAppTransition:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isTransitionSet()Z
    .locals 2

    .prologue
    .line 364
    iget v0, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mNextAppTransition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method prepare()V
    .locals 2

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/android/server/wm/SmartMultiWindowTransition;->isTranitRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 369
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/SmartMultiWindowTransition;->setMultiWindowTransitionStartTime(J)V

    .line 370
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mMultiWindowTransitionState:I

    .line 379
    :cond_0
    return-void
.end method

.method public prepareMultiWindowTransitionSurface()V
    .locals 1

    .prologue
    .line 643
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/SmartMultiWindowTransition;->createFreezeSurface(Z)V

    .line 644
    return-void
.end method

.method removeAppWindowToken(Lcom/android/server/wm/AppWindowToken;)V
    .locals 1
    .param p1, "awtoken"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    .line 624
    iget-object v0, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mTargetAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 636
    return-void
.end method

.method setApplicationDrawn(Lcom/android/server/wm/AppWindowToken;)V
    .locals 1
    .param p1, "awtoken"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mTargetAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 402
    return-void
.end method

.method public setFinishedIfOneNotified(Z)V
    .locals 3
    .param p1, "notifyone"    # Z

    .prologue
    .line 705
    iput-boolean p1, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mFinishedByOne:Z

    .line 706
    sget-boolean v0, Lcom/android/server/wm/SmartMultiWindowTransition;->DEBUG_MWAPP_TRANSITION:Z

    if-eqz v0, :cond_0

    .line 707
    const-string v0, "vivo_debug_SmartMultiWindowTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFinishedIfOneNotified notifyone = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    :cond_0
    return-void
.end method

.method public setMultiWindowTransition(Ljava/util/ArrayList;I)Ljava/util/ArrayList;
    .locals 5
    .param p1, "animlist"    # Ljava/util/ArrayList;
    .param p2, "transit"    # I

    .prologue
    .line 412
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_1

    .line 413
    :cond_0
    const/4 v1, 0x0

    .line 427
    :goto_0
    return-object v1

    .line 415
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 417
    .local v1, "dstlist":Ljava/util/ArrayList;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "item":Ljava/lang/Object;
    move-object v0, v3

    .line 418
    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    .line 419
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/SmartMultiWindowTransition;->addMultiWindowTransitionTarget(Lcom/android/server/wm/AppWindowToken;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 420
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 424
    .end local v0    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .end local v3    # "item":Ljava/lang/Object;
    :cond_3
    iput p2, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mNextAppTransition:I

    .line 426
    invoke-virtual {p0}, Lcom/android/server/wm/SmartMultiWindowTransition;->prepareMultiWindowTransitionSurface()V

    goto :goto_0
.end method

.method public setMultiWindowTransitionImmediately(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 675
    iput-boolean p1, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mFinishedImmediately:Z

    .line 676
    return-void
.end method

.method public setMultiWindowTransitionStartTime(J)V
    .locals 1
    .param p1, "starttime"    # J

    .prologue
    .line 647
    iput-wide p1, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mShowTime:J

    .line 654
    return-void
.end method

.method public setMultiWindowTransitionTime(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    const/16 v0, 0x9

    .line 612
    if-ltz p1, :cond_0

    if-le p1, v0, :cond_1

    .line 621
    :cond_0
    :goto_0
    return-void

    .line 615
    :cond_1
    if-ne p1, v0, :cond_2

    .line 616
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mFinishedImmediately:Z

    .line 617
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mAnimationTimeIndex:I

    goto :goto_0

    .line 619
    :cond_2
    iput p1, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mAnimationTimeIndex:I

    goto :goto_0
.end method

.method setTimeout()V
    .locals 1

    .prologue
    .line 432
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mMultiWindowTransitionState:I

    .line 433
    iget-object v0, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mTargetAppList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 434
    return-void
.end method

.method setTransitReady()V
    .locals 1

    .prologue
    .line 437
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mMultiWindowTransitionState:I

    .line 438
    return-void
.end method

.method public stepAnimationLocked(J)Z
    .locals 3
    .param p1, "currentTime"    # J

    .prologue
    .line 441
    iget-object v1, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mFreezeSurface:Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_1

    .line 442
    iget-boolean v1, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mAnimRunning:Z

    if-nez v1, :cond_0

    .line 443
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mAnimRunning:Z

    .line 444
    iput-wide p1, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mStartTime:J

    .line 445
    iget-object v1, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 448
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->clear()V

    .line 449
    iget-object v1, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mAnimation:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, p1, p2, v2}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v0

    .line 451
    .local v0, "more":Z
    iget-object v1, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mFreezeSurface:Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;

    iget-object v2, p0, Lcom/android/server/wm/SmartMultiWindowTransition;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;->setAnimationTransform(Landroid/view/animation/Transformation;)V

    .line 454
    .end local v0    # "more":Z
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 459
    const-string v0, "ScreenFreezeSurface"

    return-object v0
.end method
