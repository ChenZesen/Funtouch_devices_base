.class public Lcom/android/server/policy/BarController;
.super Ljava/lang/Object;
.source "BarController.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TRANSIENT_BAR_HIDING:I = 0x3

.field private static final TRANSIENT_BAR_NONE:I = 0x0

.field private static final TRANSIENT_BAR_SHOWING:I = 0x2

.field private static final TRANSIENT_BAR_SHOW_REQUESTED:I = 0x1

.field private static final TRANSLUCENT_ANIMATION_DELAY_MS:I = 0x3e8


# instance fields
.field private isBarVisible:Z

.field protected final mHandler:Landroid/os/Handler;

.field private mLastTranslucent:J

.field private mNoAnimationOnNextShow:Z

.field private mPendingShow:Z

.field private final mServiceAquireLock:Ljava/lang/Object;

.field private mSetUnHideFlagWhenNextTransparent:Z

.field private mShowTransparent:Z

.field private mState:I

.field private final mStatusBarManagerId:I

.field protected mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field protected final mTag:Ljava/lang/String;

.field private mTransientBarState:I

.field private final mTransientFlag:I

.field private final mTranslucentFlag:I

.field private final mTranslucentWmFlag:I

.field private final mUnhideFlag:I

.field private mWin:Landroid/view/WindowManagerPolicy$WindowState;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIII)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "transientFlag"    # I
    .param p3, "unhideFlag"    # I
    .param p4, "translucentFlag"    # I
    .param p5, "statusBarManagerId"    # I
    .param p6, "translucentWmFlag"    # I

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/BarController;->mServiceAquireLock:Ljava/lang/Object;

    .line 60
    iput v1, p0, Lcom/android/server/policy/BarController;->mState:I

    .line 145
    iput-boolean v1, p0, Lcom/android/server/policy/BarController;->isBarVisible:Z

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BarController."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/BarController;->mTag:Ljava/lang/String;

    .line 71
    iput p2, p0, Lcom/android/server/policy/BarController;->mTransientFlag:I

    .line 72
    iput p3, p0, Lcom/android/server/policy/BarController;->mUnhideFlag:I

    .line 73
    iput p4, p0, Lcom/android/server/policy/BarController;->mTranslucentFlag:I

    .line 74
    iput p5, p0, Lcom/android/server/policy/BarController;->mStatusBarManagerId:I

    .line 75
    iput p6, p0, Lcom/android/server/policy/BarController;->mTranslucentWmFlag:I

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/BarController;->mHandler:Landroid/os/Handler;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/BarController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/BarController;

    .prologue
    .line 39
    iget v0, p0, Lcom/android/server/policy/BarController;->mStatusBarManagerId:I

    return v0
.end method

.method private computeStateLw(ZZLandroid/view/WindowManagerPolicy$WindowState;Z)I
    .locals 6
    .param p1, "wasVis"    # Z
    .param p2, "wasAnim"    # Z
    .param p3, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p4, "change"    # Z

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 175
    invoke-interface {p3}, Landroid/view/WindowManagerPolicy$WindowState;->isDrawnLw()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 176
    invoke-interface {p3}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v1

    .line 177
    .local v1, "vis":Z
    invoke-interface {p3}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v0

    .line 178
    .local v0, "anim":Z
    iget v5, p0, Lcom/android/server/policy/BarController;->mState:I

    if-ne v5, v4, :cond_0

    if-nez p4, :cond_0

    if-nez v1, :cond_0

    .line 190
    .end local v0    # "anim":Z
    .end local v1    # "vis":Z
    :goto_0
    return v2

    .line 180
    .restart local v0    # "anim":Z
    .restart local v1    # "vis":Z
    :cond_0
    iget v5, p0, Lcom/android/server/policy/BarController;->mState:I

    if-ne v5, v2, :cond_1

    if-eqz v1, :cond_1

    move v2, v3

    .line 181
    goto :goto_0

    .line 182
    :cond_1
    if-eqz p4, :cond_3

    .line 183
    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    if-nez p2, :cond_2

    if-eqz v0, :cond_2

    move v2, v4

    .line 184
    goto :goto_0

    :cond_2
    move v2, v3

    .line 186
    goto :goto_0

    .line 190
    .end local v0    # "anim":Z
    .end local v1    # "vis":Z
    :cond_3
    iget v2, p0, Lcom/android/server/policy/BarController;->mState:I

    goto :goto_0
.end method

.method private setTransientBarState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    const/4 v1, 0x2

    .line 285
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    if-eq p1, v0, :cond_2

    .line 286
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    if-eq v0, v1, :cond_0

    if-ne p1, v1, :cond_1

    .line 287
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/policy/BarController;->mLastTranslucent:J

    .line 289
    :cond_1
    iput p1, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    .line 292
    :cond_2
    return-void
.end method

.method private static transientBarStateToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "state"    # I

    .prologue
    .line 305
    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const-string v0, "TRANSIENT_BAR_HIDING"

    .line 308
    :goto_0
    return-object v0

    .line 306
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string v0, "TRANSIENT_BAR_SHOWING"

    goto :goto_0

    .line 307
    :cond_1
    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    const-string v0, "TRANSIENT_BAR_SHOW_REQUESTED"

    goto :goto_0

    .line 308
    :cond_2
    if-nez p0, :cond_3

    const-string v0, "TRANSIENT_BAR_NONE"

    goto :goto_0

    .line 309
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateStateLw(I)Z
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 194
    iget v0, p0, Lcom/android/server/policy/BarController;->mState:I

    if-eq p1, v0, :cond_0

    .line 195
    iput p1, p0, Lcom/android/server/policy/BarController;->mState:I

    .line 197
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/BarController$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/BarController$1;-><init>(Lcom/android/server/policy/BarController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 212
    const/4 v0, 0x1

    .line 214
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public adjustSystemUiVisibilityLw(II)V
    .locals 2
    .param p1, "oldVis"    # I
    .param p2, "vis"    # I

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientFlag:I

    and-int/2addr v0, p2

    if-nez v0, :cond_1

    .line 113
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/server/policy/BarController;->setTransientBarState(I)V

    .line 114
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/policy/BarController;->mUnhideFlag:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/policy/BarController;->mUnhideFlag:I

    and-int/2addr v0, p2

    if-nez v0, :cond_0

    .line 117
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    goto :goto_0
.end method

.method public applyTranslucentFlagLw(Landroid/view/WindowManagerPolicy$WindowState;II)I
    .locals 5
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "vis"    # I
    .param p3, "oldVis"    # I

    .prologue
    const v4, 0x8000

    const v3, -0x8001

    .line 122
    iget-object v1, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_0

    .line 123
    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v1, v1, 0x200

    if-nez v1, :cond_3

    .line 125
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/server/policy/PolicyControl;->getWindowFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    .line 126
    .local v0, "fl":I
    iget v1, p0, Lcom/android/server/policy/BarController;->mTranslucentWmFlag:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_1

    .line 127
    iget v1, p0, Lcom/android/server/policy/BarController;->mTranslucentFlag:I

    or-int/2addr p2, v1

    .line 131
    :goto_0
    const/high16 v1, -0x80000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_2

    .line 132
    or-int/2addr p2, v4

    .line 141
    .end local v0    # "fl":I
    :cond_0
    :goto_1
    return p2

    .line 129
    .restart local v0    # "fl":I
    :cond_1
    iget v1, p0, Lcom/android/server/policy/BarController;->mTranslucentFlag:I

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr p2, v1

    goto :goto_0

    .line 134
    :cond_2
    and-int/2addr p2, v3

    goto :goto_1

    .line 137
    .end local v0    # "fl":I
    :cond_3
    iget v1, p0, Lcom/android/server/policy/BarController;->mTranslucentFlag:I

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p2

    iget v2, p0, Lcom/android/server/policy/BarController;->mTranslucentFlag:I

    and-int/2addr v2, p3

    or-int p2, v1, v2

    .line 138
    and-int v1, p2, v3

    and-int v2, p3, v4

    or-int p2, v1, v2

    goto :goto_1
.end method

.method public checkHiddenLw()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 218
    iget-object v2, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isDrawnLw()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 219
    iget-object v2, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v2

    if-nez v2, :cond_0

    .line 220
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/server/policy/BarController;->updateStateLw(I)Z

    .line 222
    :cond_0
    iget v2, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-nez v2, :cond_2

    .line 224
    invoke-direct {p0, v1}, Lcom/android/server/policy/BarController;->setTransientBarState(I)V

    .line 225
    iget-boolean v2, p0, Lcom/android/server/policy/BarController;->mPendingShow:Z

    if-eqz v2, :cond_1

    .line 226
    invoke-virtual {p0, v0}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    .line 227
    iput-boolean v1, p0, Lcom/android/server/policy/BarController;->mPendingShow:Z

    .line 232
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public checkShowTransientBarLw()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 236
    iget v2, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 249
    :cond_0
    :goto_0
    return v0

    .line 239
    :cond_1
    iget v2, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    if-eq v2, v1, :cond_0

    .line 242
    iget-object v2, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_0

    .line 245
    iget-object v2, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isDisplayedLw()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 249
    goto :goto_0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x3d

    .line 313
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    .line 314
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/BarController;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mState"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 316
    iget v0, p0, Lcom/android/server/policy/BarController;->mState:I

    invoke-static {v0}, Landroid/app/StatusBarManager;->windowStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTransientBar"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 318
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    invoke-static {v0}, Lcom/android/server/policy/BarController;->transientBarStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 320
    :cond_0
    return-void
.end method

.method protected getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 2

    .prologue
    .line 295
    iget-object v1, p0, Lcom/android/server/policy/BarController;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v1

    .line 296
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_0

    .line 297
    const-string v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/BarController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    monitor-exit v1

    return-object v0

    .line 301
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isBarVisible()Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/android/server/policy/BarController;->isBarVisible:Z

    return v0
.end method

.method public isTransientShowRequested()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 102
    iget v1, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTransientShowing()Z
    .locals 2

    .prologue
    .line 98
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBarShowingLw(Z)Z
    .locals 9
    .param p1, "show"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 155
    sget-boolean v5, Landroid/util/VivoSmartMultiWindowConfig;->ENABLE_SPLIT:Z

    if-eqz v5, :cond_0

    .line 156
    iput-boolean p1, p0, Lcom/android/server/policy/BarController;->isBarVisible:Z

    .line 159
    :cond_0
    iget-object v5, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v5, :cond_2

    .line 171
    :cond_1
    :goto_0
    return v7

    .line 160
    :cond_2
    if-eqz p1, :cond_3

    iget v5, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    const/4 v8, 0x3

    if-ne v5, v8, :cond_3

    .line 161
    iput-boolean v6, p0, Lcom/android/server/policy/BarController;->mPendingShow:Z

    goto :goto_0

    .line 164
    :cond_3
    iget-object v5, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v4

    .line 165
    .local v4, "wasVis":Z
    iget-object v5, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v3

    .line 166
    .local v3, "wasAnim":Z
    if-eqz p1, :cond_6

    iget-object v8, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    iget-boolean v5, p0, Lcom/android/server/policy/BarController;->mNoAnimationOnNextShow:Z

    if-nez v5, :cond_5

    move v5, v6

    :goto_1
    invoke-interface {v8, v5}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v0

    .line 168
    .local v0, "change":Z
    :goto_2
    iput-boolean v7, p0, Lcom/android/server/policy/BarController;->mNoAnimationOnNextShow:Z

    .line 169
    iget-object v5, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-direct {p0, v4, v3, v5, v0}, Lcom/android/server/policy/BarController;->computeStateLw(ZZLandroid/view/WindowManagerPolicy$WindowState;Z)I

    move-result v1

    .line 170
    .local v1, "state":I
    invoke-direct {p0, v1}, Lcom/android/server/policy/BarController;->updateStateLw(I)Z

    move-result v2

    .line 171
    .local v2, "stateChanged":Z
    if-nez v0, :cond_4

    if-eqz v2, :cond_1

    :cond_4
    move v7, v6

    goto :goto_0

    .end local v0    # "change":Z
    .end local v1    # "state":I
    .end local v2    # "stateChanged":Z
    :cond_5
    move v5, v7

    .line 166
    goto :goto_1

    :cond_6
    iget-object v8, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    iget-boolean v5, p0, Lcom/android/server/policy/BarController;->mNoAnimationOnNextShow:Z

    if-nez v5, :cond_7

    move v5, v6

    :goto_3
    invoke-interface {v8, v5}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v0

    goto :goto_2

    :cond_7
    move v5, v7

    goto :goto_3
.end method

.method public setShowTransparent(Z)V
    .locals 1
    .param p1, "transparent"    # Z

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/server/policy/BarController;->mShowTransparent:Z

    if-eq p1, v0, :cond_0

    .line 85
    iput-boolean p1, p0, Lcom/android/server/policy/BarController;->mShowTransparent:Z

    .line 86
    iput-boolean p1, p0, Lcom/android/server/policy/BarController;->mSetUnHideFlagWhenNextTransparent:Z

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/BarController;->mNoAnimationOnNextShow:Z

    .line 89
    :cond_0
    return-void
.end method

.method public setWindow(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 0
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 81
    return-void
.end method

.method public showTransient()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    .line 93
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/policy/BarController;->setTransientBarState(I)V

    .line 95
    :cond_0
    return-void
.end method

.method public updateVisibilityLw(ZII)I
    .locals 4
    .param p1, "transientAllowed"    # Z
    .param p2, "oldVis"    # I
    .param p3, "vis"    # I

    .prologue
    const/4 v2, 0x0

    .line 254
    iget-object v1, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v1, :cond_0

    move v0, p3

    .line 281
    .end local p3    # "vis":I
    .local v0, "vis":I
    :goto_0
    return v0

    .line 255
    .end local v0    # "vis":I
    .restart local p3    # "vis":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/BarController;->isTransientShowing()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/policy/BarController;->isTransientShowRequested()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 256
    :cond_1
    if-eqz p1, :cond_8

    .line 257
    iget v1, p0, Lcom/android/server/policy/BarController;->mTransientFlag:I

    or-int/2addr p3, v1

    .line 258
    iget v1, p0, Lcom/android/server/policy/BarController;->mTransientFlag:I

    and-int/2addr v1, p2

    if-nez v1, :cond_2

    .line 259
    iget v1, p0, Lcom/android/server/policy/BarController;->mUnhideFlag:I

    or-int/2addr p3, v1

    .line 261
    :cond_2
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/server/policy/BarController;->setTransientBarState(I)V

    .line 266
    :cond_3
    :goto_1
    iget-boolean v1, p0, Lcom/android/server/policy/BarController;->mShowTransparent:Z

    if-eqz v1, :cond_4

    .line 267
    const v1, 0x8000

    or-int/2addr p3, v1

    .line 268
    iget-boolean v1, p0, Lcom/android/server/policy/BarController;->mSetUnHideFlagWhenNextTransparent:Z

    if-eqz v1, :cond_4

    .line 269
    iget v1, p0, Lcom/android/server/policy/BarController;->mUnhideFlag:I

    or-int/2addr p3, v1

    .line 270
    iput-boolean v2, p0, Lcom/android/server/policy/BarController;->mSetUnHideFlagWhenNextTransparent:Z

    .line 273
    :cond_4
    iget v1, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    if-eqz v1, :cond_5

    .line 274
    iget v1, p0, Lcom/android/server/policy/BarController;->mTransientFlag:I

    or-int/2addr p3, v1

    .line 275
    and-int/lit8 p3, p3, -0x2

    .line 277
    :cond_5
    iget v1, p0, Lcom/android/server/policy/BarController;->mTranslucentFlag:I

    and-int/2addr v1, p3

    if-nez v1, :cond_6

    iget v1, p0, Lcom/android/server/policy/BarController;->mTranslucentFlag:I

    and-int/2addr v1, p2

    if-nez v1, :cond_6

    or-int v1, p3, p2

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_7

    .line 279
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/policy/BarController;->mLastTranslucent:J

    :cond_7
    move v0, p3

    .line 281
    .end local p3    # "vis":I
    .restart local v0    # "vis":I
    goto :goto_0

    .line 263
    .end local v0    # "vis":I
    .restart local p3    # "vis":I
    :cond_8
    invoke-direct {p0, v2}, Lcom/android/server/policy/BarController;->setTransientBarState(I)V

    goto :goto_1
.end method

.method public wasRecentlyTranslucent()Z
    .locals 4

    .prologue
    .line 106
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/policy/BarController;->mLastTranslucent:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method