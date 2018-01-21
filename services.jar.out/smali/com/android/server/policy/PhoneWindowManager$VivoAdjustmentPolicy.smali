.class Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Lcom/android/server/policy/IVivoAdjustmentPolicy;


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VivoAdjustmentPolicy"
.end annotation


# static fields
.field private static final ACTION_MENU_KEY_AUTO_TEST:Ljava/lang/String; = "vivo.intent.action.RECENT_KEY_TEST"

.field private static final ACTION_POWER_KEY_AUTO_TEST:Ljava/lang/String; = "vivo.intent.action.POWER_KEY_AUTO_TEST"

.field private static final VIVO_SCREENSHOT_CHORD_DEBOUNCE_DELAY_MILLIS:J = 0x3e8L

.field private static final VIVO_SCREENSHOT_CHORD_LONGPRESS_DELAY_MILLIS:J = 0x32L


# instance fields
.field private mFingerKeyConsumedByScreenshotChord:Z

.field private mFingerKeyPressed:Z

.field private mHomeKeyConsumedByScreenshotChord:Z

.field private mHomeKeyScreenshotPending:Z

.field private mHomeKeyTime:J

.field private mHomeKeyTriggered:Z

.field private mIsExport:Z

.field private mIsPhysiscalHomeKey:Z

.field private mIsRom2_5:Z

.field private mLock:[B

.field private mVivoScreenshotChordEnabled:Z

.field private mVivoWMPHook:Lcom/android/server/policy/VivoWMPHook;

.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 1

    .prologue
    .line 8497
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8509
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->mLock:[B

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;

    .prologue
    .line 8497
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->mHomeKeyScreenshotPending:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;

    .prologue
    .line 8497
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->cancelPendingHomeKeyAction()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;

    .prologue
    .line 8497
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->interceptScreenshotChordForVivo()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;

    .prologue
    .line 8497
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->checkDisableGlobalActionsDialog()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;

    .prologue
    .line 8497
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->mIsRom2_5:Z

    return v0
.end method

.method static synthetic access$2900(Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;

    .prologue
    .line 8497
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->mIsExport:Z

    return v0
.end method

.method static synthetic access$3300(Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/view/IWindowManager;
    .param p3, "x3"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    .line 8497
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->initForVivo(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;IZ)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;
    .param p1, "x1"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "x2"    # Landroid/view/KeyEvent;
    .param p3, "x3"    # I
    .param p4, "x4"    # Z

    .prologue
    .line 8497
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->interceptKeyBeforeDispatchingForVivo(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;IZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;Landroid/view/KeyEvent;IZZ)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;
    .param p1, "x1"    # Landroid/view/KeyEvent;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .prologue
    .line 8497
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->interceptKeyBeforeQueueingForVivo(Landroid/view/KeyEvent;IZZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;
    .param p1, "x1"    # I

    .prologue
    .line 8497
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->isPhysiscalHomeKey(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;

    .prologue
    .line 8497
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->finishScreenTurningOn()V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;Landroid/os/IBinder;Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # Landroid/view/WindowManagerPolicy$ScreenOnListener;

    .prologue
    .line 8497
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->waitForWindowDrawn(Landroid/os/IBinder;Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;)Lcom/android/server/policy/VivoWMPHook;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;

    .prologue
    .line 8497
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->mVivoWMPHook:Lcom/android/server/policy/VivoWMPHook;

    return-object v0
.end method

.method private cancelPendingHomeKeyAction()V
    .locals 2

    .prologue
    .line 8548
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->mHomeKeyScreenshotPending:Z

    if-eqz v0, :cond_0

    .line 8549
    const-string v0, "WindowManager"

    const-string v1, "cancelPendingHomeKeyAction."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8550
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->mHomeKeyScreenshotPending:Z

    .line 8552
    :cond_0
    return-void
.end method

.method private changeStatusBarBackground()V
    .locals 10

    .prologue
    .line 8987
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v5, :cond_1

    .line 9014
    :cond_0
    :goto_0
    return-void

    .line 8991
    :cond_1
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 8993
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    const-string v5, "statusbarBackground"

    invoke-static {v2, v5}, Lcom/android/server/policy/VivoPolicyUtil;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 8994
    .local v0, "bg":Ljava/lang/Integer;
    if-nez v0, :cond_2

    .line 8995
    const-string v5, "WindowManager"

    const-string v6, "fatal error: when get statusbarBackground"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 8999
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 9002
    .local v4, "statusbarBackground":I
    :try_start_0
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v3

    .line 9003
    .local v3, "sbs":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v3, :cond_0

    .line 9005
    const-string v5, "setStatusBarBackgroundRes"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v3, v5, v6, v7}, Lcom/android/server/policy/VivoPolicyUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 9010
    .end local v3    # "sbs":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v1

    .line 9011
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 9012
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0
.end method

.method private changeUpslideState(ZZ)V
    .locals 7
    .param p1, "down"    # Z
    .param p2, "canceled"    # Z

    .prologue
    .line 8886
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 8887
    .local v1, "sbs":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 8889
    const-string v2, "changeUpslideState"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/policy/VivoPolicyUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8898
    .end local v1    # "sbs":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    :goto_0
    return-void

    .line 8894
    :catch_0
    move-exception v0

    .line 8895
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 8896
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0
.end method

.method private checkBaseRequirement(Landroid/view/KeyEvent;ZII)Z
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "down"    # Z
    .param p3, "keyCode"    # I
    .param p4, "policyFlags"    # I

    .prologue
    const/4 v1, 0x0

    .line 8902
    const/high16 v2, 0x1000000

    and-int/2addr v2, p4

    if-eqz v2, :cond_1

    and-int/lit8 v2, p4, 0x2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 8904
    .local v0, "isInjected":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 8905
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkBaseRequirement inJected is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,return."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8930
    :cond_0
    :goto_1
    return v1

    .end local v0    # "isInjected":Z
    :cond_1
    move v0, v1

    .line 8902
    goto :goto_0

    .line 8909
    .restart local v0    # "isInjected":Z
    :cond_2
    const/16 v2, 0x12d

    if-eq v2, p3, :cond_0

    .line 8913
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 8917
    const/4 v1, 0x0

    .line 8918
    .local v1, "isOK":Z
    and-int/lit8 v2, p4, 0x2

    if-nez v2, :cond_5

    .line 8919
    const/16 v2, 0x52

    if-eq v2, p3, :cond_3

    const/4 v2, 0x3

    if-eq v2, p3, :cond_3

    const/4 v2, 0x4

    if-ne v2, p3, :cond_4

    .line 8922
    :cond_3
    const/4 v1, 0x1

    goto :goto_1

    .line 8924
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 8927
    :cond_5
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private checkDisableGlobalActionsDialog()Z
    .locals 1

    .prologue
    .line 8976
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->mVivoWMPHook:Lcom/android/server/policy/VivoWMPHook;

    invoke-virtual {v0}, Lcom/android/server/policy/VivoWMPHook;->checkDisableGlobalActionsDialog()Z

    move-result v0

    return v0
.end method

.method private finishScreenTurningOn()V
    .locals 2

    .prologue
    .line 8595
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->mVivoWMPHook:Lcom/android/server/policy/VivoWMPHook;

    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy$2;

    invoke-direct {v1, p0}, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy$2;-><init>(Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;)V

    invoke-virtual {v0, v1}, Lcom/android/server/policy/VivoWMPHook;->onScreenTurnedOn(Lcom/android/server/policy/VivoWMPHook$ShowListener;)Z

    .line 8603
    return-void
.end method

.method private initForVivo(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Landroid/view/IWindowManager;
    .param p3, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 8518
    const-string v3, "WindowManager"

    const-string v4, "initForVivo"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8522
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # setter for: Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordEnabled:Z
    invoke-static {v3, v2}, Lcom/android/server/policy/PhoneWindowManager;->access$4302(Lcom/android/server/policy/PhoneWindowManager;Z)Z

    .line 8524
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->mVivoScreenshotChordEnabled:Z

    .line 8526
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->mHomeKeyScreenshotPending:Z

    .line 8528
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->mFingerKeyPressed:Z

    .line 8531
    invoke-static {p1, p2, p3, p0}, Lcom/android/server/policy/VivoWMPHookCreator;->createInstance(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;Lcom/android/server/policy/IVivoAdjustmentPolicy;)Lcom/android/server/policy/VivoWMPHook;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->mVivoWMPHook:Lcom/android/server/policy/VivoWMPHook;

    .line 8535
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x10

    invoke-virtual {v3, v4, v2, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 8536
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 8539
    const-string v3, "rom_2.5"

    const-string v4, "ro.vivo.rom.version"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "rom_2.6"

    const-string v4, "ro.vivo.rom.version"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->mIsRom2_5:Z

    .line 8541
    const-string v1, "persist.vivo.fingerprint.front"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->mIsPhysiscalHomeKey:Z

    .line 8542
    const-string v1, "yes"

    const-string v2, "ro.vivo.product.overseas"

    const-string v3, "no"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->mIsExport:Z

    .line 8544
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    new-instance v2, Lcom/android/server/policy/VivoPolicyHelper;

    invoke-direct {v2, p1, p0}, Lcom/android/server/policy/VivoPolicyHelper;-><init>(Landroid/content/Context;Lcom/android/server/policy/IVivoAdjustmentPolicy;)V

    iput-object v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mVivoPolicyHelper:Lcom/android/server/policy/VivoPolicyHelper;

    .line 8545
    return-void

    :cond_1
    move v1, v2

    .line 8539
    goto :goto_0
.end method

.method private interceptKeyBeforeDispatchingForVivo(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;IZ)I
    .locals 21
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I
    .param p4, "keyguardOn"    # Z

    .prologue
    .line 8761
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v12

    .line 8762
    .local v12, "keyCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v16

    .line 8763
    .local v16, "repeatCount":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v14

    .line 8764
    .local v14, "metaState":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v8

    .line 8765
    .local v8, "flags":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v17

    if-nez v17, :cond_0

    const/4 v7, 0x1

    .line 8766
    .local v7, "down":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v6

    .line 8767
    .local v6, "canceled":Z
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v11

    .line 8769
    .local v11, "isLongPress":Z
    if-eqz p1, :cond_1

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 8770
    .local v5, "attrs":Landroid/view/WindowManager$LayoutParams;
    :goto_1
    const-string v17, "WindowManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "intercept win = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8771
    const-string v18, "WindowManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "intercept attrs = "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/view/WindowManager$LayoutParams;->toString()Ljava/lang/String;

    move-result-object v17

    :goto_2
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8774
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->mLock:[B

    move-object/from16 v18, v0

    monitor-enter v18

    .line 8775
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->mVivoWMPHook:Lcom/android/server/policy/VivoWMPHook;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/policy/VivoWMPHook;->getKeyBeforeDispatchingListener()Landroid/util/SparseArray;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/policy/IVivoKeyBeforeDispatchingListener;

    .line 8776
    .local v13, "listener":Lcom/android/server/policy/IVivoKeyBeforeDispatchingListener;
    if-eqz v13, :cond_3

    .line 8777
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-interface {v13, v0, v1, v2, v3}, Lcom/android/server/policy/IVivoKeyBeforeDispatchingListener;->onInterceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;IZ)I

    move-result v9

    .line 8778
    .local v9, "indeResult":I
    const/16 v17, -0x64

    move/from16 v0, v17

    if-eq v9, v0, :cond_3

    .line 8779
    const-string v17, "WindowManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " handled keyCode="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8780
    monitor-exit v18

    .line 8862
    .end local v9    # "indeResult":I
    :goto_3
    return v9

    .line 8765
    .end local v5    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v6    # "canceled":Z
    .end local v7    # "down":Z
    .end local v11    # "isLongPress":Z
    .end local v13    # "listener":Lcom/android/server/policy/IVivoKeyBeforeDispatchingListener;
    :cond_0
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 8769
    .restart local v6    # "canceled":Z
    .restart local v7    # "down":Z
    .restart local v11    # "isLongPress":Z
    :cond_1
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 8771
    .restart local v5    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    const/16 v17, 0x0

    goto :goto_2

    .line 8783
    .restart local v13    # "listener":Lcom/android/server/policy/IVivoKeyBeforeDispatchingListener;
    :cond_3
    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8786
    sparse-switch v12, :sswitch_data_0

    .line 8834
    :cond_4
    const/16 v17, 0x3

    move/from16 v0, v17

    if-eq v12, v0, :cond_5

    const/16 v17, 0x131

    move/from16 v0, v17

    if-eq v12, v0, :cond_5

    const/16 v17, 0x132

    move/from16 v0, v17

    if-ne v12, v0, :cond_e

    .line 8838
    :cond_5
    if-eqz v11, :cond_e

    .line 8839
    const/4 v15, 0x0

    .line 8840
    .local v15, "privateFlags":I
    if-eqz v5, :cond_6

    .line 8841
    iget v15, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 8844
    :cond_6
    sget v17, Lcom/android/server/policy/VivoPolicyConstant;->PRIVATE_FLAG_DISABLE_HOMEKEY_LONGPRESS:I

    and-int v17, v17, v15

    if-eqz v17, :cond_c

    const/4 v10, 0x1

    .line 8846
    .local v10, "isDisableLongPress":Z
    :goto_4
    if-nez v10, :cond_8

    .line 8847
    invoke-static {}, Lcom/android/server/policy/VivoPolicyUtil;->isSPSMode()Z

    move-result v17

    if-nez v17, :cond_7

    invoke-static {}, Lcom/android/server/policy/VivoPolicyUtil;->isDrivingMode()Z

    move-result v17

    if-eqz v17, :cond_d

    :cond_7
    const/4 v10, 0x1

    .line 8851
    :cond_8
    :goto_5
    if-eqz v10, :cond_e

    .line 8852
    const-string v17, "WindowManager"

    const-string v18, "Home key long press is disabled."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8853
    const/4 v9, -0x1

    goto :goto_3

    .line 8783
    .end local v10    # "isDisableLongPress":Z
    .end local v13    # "listener":Lcom/android/server/policy/IVivoKeyBeforeDispatchingListener;
    .end local v15    # "privateFlags":I
    :catchall_0
    move-exception v17

    :try_start_1
    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v17

    .line 8791
    .restart local v13    # "listener":Lcom/android/server/policy/IVivoKeyBeforeDispatchingListener;
    :sswitch_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->mVivoScreenshotChordEnabled:Z

    move/from16 v17, v0

    if-eqz v17, :cond_4

    and-int/lit16 v0, v8, 0x400

    move/from16 v17, v0

    if-nez v17, :cond_4

    .line 8792
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->mHomeKeyConsumedByScreenshotChord:Z

    move/from16 v17, v0

    if-eqz v17, :cond_4

    .line 8793
    if-nez v7, :cond_9

    .line 8794
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->mHomeKeyConsumedByScreenshotChord:Z

    .line 8796
    :cond_9
    const-string v17, "WindowManager"

    const-string v18, "interceptKeyBeforeDispatchingForVivo HomeKeyConsumedByScreenshotChord ,return -1."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8797
    const/4 v9, -0x1

    goto :goto_3

    .line 8805
    :sswitch_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->mFingerKeyPressed:Z

    move/from16 v17, v0

    if-eqz v17, :cond_a

    .line 8806
    const-string v17, "WindowManager"

    const-string v18, "FingerkeyPressed is true,break here!"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8808
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->mVivoScreenshotChordEnabled:Z

    move/from16 v17, v0

    if-eqz v17, :cond_4

    and-int/lit16 v0, v8, 0x400

    move/from16 v17, v0

    if-nez v17, :cond_4

    .line 8809
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->mHomeKeyConsumedByScreenshotChord:Z

    move/from16 v17, v0

    if-eqz v17, :cond_4

    .line 8810
    const-string v17, "WindowManager"

    const-string v18, "interceptKeyBeforeDispatchingForVivo HomeKeyConsumedByScreenshotChord ,return -1."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8811
    const/4 v9, -0x1

    goto/16 :goto_3

    .line 8819
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->mVivoScreenshotChordEnabled:Z

    move/from16 v17, v0

    if-eqz v17, :cond_4

    and-int/lit16 v0, v8, 0x400

    move/from16 v17, v0

    if-nez v17, :cond_4

    .line 8820
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->mHomeKeyConsumedByScreenshotChord:Z

    move/from16 v17, v0

    if-eqz v17, :cond_4

    .line 8821
    if-nez v7, :cond_b

    .line 8822
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->mHomeKeyConsumedByScreenshotChord:Z

    .line 8824
    :cond_b
    const-string v17, "WindowManager"

    const-string v18, "interceptKeyBeforeDispatchingForVivo HomeKeyConsumedByScreenshotChord ,return -1."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8825
    const/4 v9, -0x1

    goto/16 :goto_3

    .line 8844
    .restart local v15    # "privateFlags":I
    :cond_c
    const/4 v10, 0x0

    goto/16 :goto_4

    .line 8847
    .restart local v10    # "isDisableLongPress":Z
    :cond_d
    const/4 v10, 0x0

    goto/16 :goto_5

    .line 8858
    .end local v10    # "isDisableLongPress":Z
    .end local v15    # "privateFlags":I
    :cond_e
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->isPhysiscalHomeKey(I)Z

    move-result v17

    if-eqz v17, :cond_f

    .line 8859
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mVivoPolicyHelper:Lcom/android/server/policy/VivoPolicyHelper;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/policy/VivoPolicyHelper;->interceptHomeKeyForVivo(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;IZ)I

    move-result v9

    goto/16 :goto_3

    .line 8862
    :cond_f
    const/16 v9, -0x64

    goto/16 :goto_3

    .line 8786
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x131 -> :sswitch_0
        0x132 -> :sswitch_0
    .end sparse-switch
.end method

.method private interceptKeyBeforeQueueingForVivo(Landroid/view/KeyEvent;IZZ)I
    .locals 18
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "isScreenOn"    # Z
    .param p4, "keyguardActive"    # Z

    .prologue
    .line 8629
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v14

    if-nez v14, :cond_1

    const/4 v5, 0x1

    .line 8630
    .local v5, "down":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v4

    .line 8631
    .local v4, "canceled":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v9

    .line 8632
    .local v9, "keyCode":I
    const/high16 v14, 0x1000000

    and-int v14, v14, p2

    if-eqz v14, :cond_2

    const/4 v8, 0x1

    .line 8635
    .local v8, "isInjected":Z
    :goto_1
    const/16 v14, 0x1a

    if-ne v9, v14, :cond_5

    .line 8636
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v14, v14, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v14, v14, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 8637
    .local v13, "wins":Ljava/lang/String;
    :goto_2
    if-eqz v13, :cond_4

    const-string v14, "com.iqoo.engineermode.AutoKeyTest"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 8638
    if-eqz v5, :cond_0

    .line 8639
    const-string v14, "WindowManager"

    const-string v15, "interceptKeyBeforeQueueingForVivo skip power here."

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8640
    new-instance v7, Landroid/content/Intent;

    const-string v14, "vivo.intent.action.POWER_KEY_AUTO_TEST"

    invoke-direct {v7, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8641
    .local v7, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v14, v14, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 8643
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v6, 0x0

    .line 8757
    .end local v13    # "wins":Ljava/lang/String;
    :goto_3
    return v6

    .line 8629
    .end local v4    # "canceled":Z
    .end local v5    # "down":Z
    .end local v8    # "isInjected":Z
    .end local v9    # "keyCode":I
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 8632
    .restart local v4    # "canceled":Z
    .restart local v5    # "down":Z
    .restart local v9    # "keyCode":I
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 8636
    .restart local v8    # "isInjected":Z
    :cond_3
    const-string v13, " "

    goto :goto_2

    .line 8646
    .restart local v13    # "wins":Ljava/lang/String;
    :cond_4
    if-eqz v5, :cond_7

    .line 8647
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->mVivoWMPHook:Lcom/android/server/policy/VivoWMPHook;

    invoke-virtual {v14}, Lcom/android/server/policy/VivoWMPHook;->getVivoPowerKeyOLPListener()Lcom/android/server/policy/VivoPowerKeyOLPListener;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/policy/VivoPowerKeyOLPListener;->startObserve()V

    .line 8653
    .end local v13    # "wins":Ljava/lang/String;
    :cond_5
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->mIsRom2_5:Z

    if-nez v14, :cond_8

    const/16 v14, 0x52

    if-ne v9, v14, :cond_8

    .line 8654
    const-string v14, "persist.vivo.menu.skip"

    const/4 v15, 0x0

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 8655
    .local v12, "skip":Z
    if-eqz v12, :cond_8

    .line 8656
    if-eqz v5, :cond_6

    .line 8657
    const-string v14, "WindowManager"

    const-string v15, "interceptKeyBeforeQueueingForVivo skip menu here."

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8658
    new-instance v7, Landroid/content/Intent;

    const-string v14, "vivo.intent.action.RECENT_KEY_TEST"

    invoke-direct {v7, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8659
    .restart local v7    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v14, v14, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 8661
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_6
    const/4 v6, 0x0

    goto :goto_3

    .line 8649
    .end local v12    # "skip":Z
    .restart local v13    # "wins":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->mVivoWMPHook:Lcom/android/server/policy/VivoWMPHook;

    invoke-virtual {v14}, Lcom/android/server/policy/VivoWMPHook;->getVivoPowerKeyOLPListener()Lcom/android/server/policy/VivoPowerKeyOLPListener;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/policy/VivoPowerKeyOLPListener;->stopObserve()V

    goto :goto_4

    .line 8666
    .end local v13    # "wins":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->mVivoWMPHook:Lcom/android/server/policy/VivoWMPHook;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v14, v0, v1, v2, v3}, Lcom/android/server/policy/VivoWMPHook;->checkDropKeyBeforeQueueing(Landroid/view/KeyEvent;IZZ)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 8667
    const-string v14, "WindowManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Drop keycode="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " before queueing."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8668
    const/4 v6, 0x0

    goto :goto_3

    .line 8674
    :cond_9
    sget v14, Lcom/android/server/policy/VivoPolicyConstant;->KEYCODE_BAR_SWIPE:I

    if-eq v14, v9, :cond_a

    const/4 v14, 0x3

    if-eq v14, v9, :cond_a

    const/4 v14, 0x4

    if-eq v14, v9, :cond_a

    const/16 v14, 0x52

    if-ne v14, v9, :cond_b

    .line 8676
    :cond_a
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v4}, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->changeUpslideState(ZZ)V

    .line 8683
    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->isPhysiscalHomeKey(I)Z

    move-result v14

    if-nez v14, :cond_c

    .line 8684
    invoke-direct/range {p0 .. p4}, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->performVirtualKeyHapticFeedback(Landroid/view/KeyEvent;IZZ)V

    .line 8685
    invoke-direct/range {p0 .. p4}, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->performVirtualKeyAudioFeedback(Landroid/view/KeyEvent;IZZ)V

    .line 8689
    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->mLock:[B

    monitor-enter v15

    .line 8690
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->mVivoWMPHook:Lcom/android/server/policy/VivoWMPHook;

    invoke-virtual {v14}, Lcom/android/server/policy/VivoWMPHook;->getKeyBeforeQueueingListener()Landroid/util/SparseArray;

    move-result-object v14

    invoke-virtual {v14, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/policy/IVivoKeyBeforeQueueingListener;

    .line 8691
    .local v10, "listener":Lcom/android/server/policy/IVivoKeyBeforeQueueingListener;
    if-eqz v10, :cond_d

    .line 8692
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-interface {v10, v0, v1, v2, v3}, Lcom/android/server/policy/IVivoKeyBeforeQueueingListener;->onInterceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZZ)I

    move-result v6

    .line 8693
    .local v6, "indeResult":I
    const/16 v14, -0x64

    if-eq v6, v14, :cond_d

    .line 8694
    const-string v14, "WindowManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " handled keyCode="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8695
    monitor-exit v15

    goto/16 :goto_3

    .line 8698
    .end local v6    # "indeResult":I
    .end local v10    # "listener":Lcom/android/server/policy/IVivoKeyBeforeQueueingListener;
    :catchall_0
    move-exception v14

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v14

    .restart local v10    # "listener":Lcom/android/server/policy/IVivoKeyBeforeQueueingListener;
    :cond_d
    :try_start_1
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8701
    const/4 v11, 0x1

    .line 8702
    .local v11, "result":I
    sparse-switch v9, :sswitch_data_0

    .line 8757
    :cond_e
    :goto_5
    const/16 v6, -0x64

    goto/16 :goto_3

    .line 8706
    :sswitch_0
    if-eqz v5, :cond_f

    .line 8707
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->mFingerKeyPressed:Z

    .line 8711
    :goto_6
    if-eqz v5, :cond_10

    .line 8712
    if-eqz p3, :cond_e

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->mHomeKeyTriggered:Z

    if-nez v14, :cond_e

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v14

    and-int/lit16 v14, v14, 0x400

    if-nez v14, :cond_e

    .line 8714
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->mHomeKeyTriggered:Z

    .line 8715
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->mHomeKeyScreenshotPending:Z

    .line 8716
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->mHomeKeyTime:J

    .line 8717
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->mHomeKeyConsumedByScreenshotChord:Z

    .line 8718
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V
    invoke-static {v14}, Lcom/android/server/policy/PhoneWindowManager;->access$4600(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 8719
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->interceptScreenshotChord()V
    invoke-static {v14}, Lcom/android/server/policy/PhoneWindowManager;->access$4700(Lcom/android/server/policy/PhoneWindowManager;)V

    goto :goto_5

    .line 8709
    :cond_f
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->mFingerKeyPressed:Z

    goto :goto_6

    .line 8722
    :cond_10
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->mFingerKeyPressed:Z

    .line 8723
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->mHomeKeyTriggered:Z

    .line 8724
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->cancelPendingHomeKeyAction()V

    .line 8725
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->cancelPendingScreenshotChordAction()V
    invoke-static {v14}, Lcom/android/server/policy/PhoneWindowManager;->access$4800(Lcom/android/server/policy/PhoneWindowManager;)V

    goto :goto_5

    .line 8732
    :sswitch_1
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->mFingerKeyPressed:Z

    if-eqz v14, :cond_11

    .line 8733
    const-string v14, "WindowManager"

    const-string v15, "FingerkeyPressed is true,break here!"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 8737
    :cond_11
    if-eqz v5, :cond_12

    .line 8738
    if-eqz p3, :cond_e

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->mHomeKeyTriggered:Z

    if-nez v14, :cond_e

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v14

    and-int/lit16 v14, v14, 0x400

    if-nez v14, :cond_e

    .line 8740
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->mHomeKeyTriggered:Z

    .line 8741
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->mHomeKeyScreenshotPending:Z

    .line 8742
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->mHomeKeyTime:J

    .line 8743
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->mHomeKeyConsumedByScreenshotChord:Z

    .line 8744
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V
    invoke-static {v14}, Lcom/android/server/policy/PhoneWindowManager;->access$4600(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 8745
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->interceptScreenshotChord()V
    invoke-static {v14}, Lcom/android/server/policy/PhoneWindowManager;->access$4700(Lcom/android/server/policy/PhoneWindowManager;)V

    goto/16 :goto_5

    .line 8748
    :cond_12
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->mFingerKeyPressed:Z

    .line 8749
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->mHomeKeyTriggered:Z

    .line 8750
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->cancelPendingHomeKeyAction()V

    .line 8751
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->cancelPendingScreenshotChordAction()V
    invoke-static {v14}, Lcom/android/server/policy/PhoneWindowManager;->access$4800(Lcom/android/server/policy/PhoneWindowManager;)V

    goto/16 :goto_5

    .line 8702
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x131 -> :sswitch_0
        0x132 -> :sswitch_0
    .end sparse-switch
.end method

.method private interceptScreenshotChordForVivo()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 8866
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->mVivoScreenshotChordEnabled:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->mHomeKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z
    invoke-static {v2}, Lcom/android/server/policy/PhoneWindowManager;->access$4900(Lcom/android/server/policy/PhoneWindowManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8867
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 8868
    .local v0, "now":J
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "interceptScreenshotChordForVivo now="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,mScreenshotChordPowerKeyTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTime:J
    invoke-static {v4}, Lcom/android/server/policy/PhoneWindowManager;->access$5000(Lcom/android/server/policy/PhoneWindowManager;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,homeKeyTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->mHomeKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8870
    iget-wide v2, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->mHomeKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTime:J
    invoke-static {v2}, Lcom/android/server/policy/PhoneWindowManager;->access$5000(Lcom/android/server/policy/PhoneWindowManager;)J

    move-result-wide v2

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->mHomeKeyTime:J

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTime:J
    invoke-static {v4}, Lcom/android/server/policy/PhoneWindowManager;->access$5000(Lcom/android/server/policy/PhoneWindowManager;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 8873
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->mHomeKeyConsumedByScreenshotChord:Z

    .line 8874
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V
    invoke-static {v2}, Lcom/android/server/policy/PhoneWindowManager;->access$4600(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 8876
    const-string v2, "WindowManager"

    const-string v3, "postScreenShotRunnable."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8877
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/server/policy/PhoneWindowManager;->access$5100(Lcom/android/server/policy/PhoneWindowManager;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x32

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 8880
    .end local v0    # "now":J
    :cond_0
    return-void
.end method

.method private isPhysiscalHomeKey(I)Z
    .locals 2
    .param p1, "keyCode"    # I

    .prologue
    .line 8608
    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/16 v1, 0x131

    if-ne p1, v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->mIsPhysiscalHomeKey:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 8612
    .local v0, "skip":Z
    :goto_0
    return v0

    .line 8608
    .end local v0    # "skip":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private performAudioFeedback()V
    .locals 3

    .prologue
    .line 8616
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 8618
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-nez v0, :cond_0

    .line 8619
    const-string v1, "WindowManager"

    const-string v2, "Couldn\'t get audio manager"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8624
    :goto_0
    return-void

    .line 8623
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_0
.end method

.method private performVirtualKeyAudioFeedback(Landroid/view/KeyEvent;IZZ)V
    .locals 7
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "isScreenOn"    # Z
    .param p4, "keyguardActive"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 8947
    const/high16 v6, 0x1000000

    and-int/2addr v6, p2

    if-eqz v6, :cond_1

    and-int/lit8 v6, p2, 0x2

    if-nez v6, :cond_1

    move v2, v4

    .line 8949
    .local v2, "isInjected":Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 8950
    .local v3, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_2

    move v1, v4

    .line 8951
    .local v1, "down":Z
    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_0

    if-nez v2, :cond_0

    if-eqz p4, :cond_3

    .line 8972
    :cond_0
    :goto_2
    return-void

    .end local v1    # "down":Z
    .end local v2    # "isInjected":Z
    .end local v3    # "keyCode":I
    :cond_1
    move v2, v5

    .line 8947
    goto :goto_0

    .restart local v2    # "isInjected":Z
    .restart local v3    # "keyCode":I
    :cond_2
    move v1, v5

    .line 8950
    goto :goto_1

    .line 8956
    .restart local v1    # "down":Z
    :cond_3
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v6, "audio"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 8958
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-nez v0, :cond_4

    .line 8959
    const-string v4, "WindowManager"

    const-string v5, "Couldn\'t get audio manager"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 8963
    :cond_4
    sparse-switch v3, :sswitch_data_0

    goto :goto_2

    .line 8967
    :sswitch_0
    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_2

    .line 8963
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method private performVirtualKeyHapticFeedback(Landroid/view/KeyEvent;IZZ)V
    .locals 6
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "isScreenOn"    # Z
    .param p4, "keyguardActive"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 8934
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_1

    move v1, v3

    .line 8935
    .local v1, "down":Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 8936
    .local v2, "keyCode":I
    const/4 v5, 0x3

    if-ne v5, v2, :cond_2

    move v0, v3

    .line 8938
    .local v0, "alwaysWhenEnable":Z
    :goto_1
    if-eqz p4, :cond_3

    if-nez v0, :cond_3

    .line 8944
    :cond_0
    :goto_2
    return-void

    .end local v0    # "alwaysWhenEnable":Z
    .end local v1    # "down":Z
    .end local v2    # "keyCode":I
    :cond_1
    move v1, v4

    .line 8934
    goto :goto_0

    .restart local v1    # "down":Z
    .restart local v2    # "keyCode":I
    :cond_2
    move v0, v4

    .line 8936
    goto :goto_1

    .line 8941
    .restart local v0    # "alwaysWhenEnable":Z
    :cond_3
    invoke-direct {p0, p1, v1, v2, p2}, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->checkBaseRequirement(Landroid/view/KeyEvent;ZII)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 8942
    invoke-virtual {p0, v3, v4, v0}, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->performHapticFeedback(IZZ)Z

    goto :goto_2
.end method

.method private printf(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 9132
    invoke-static {p1}, Lcom/android/server/policy/VivoWMPHook;->printf(Ljava/lang/String;)V

    .line 9133
    return-void
.end method

.method private rebootSystemServer(Ljava/lang/String;)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 8981
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rebootSystemServer, reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8982
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 8983
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 8984
    return-void
.end method

.method private waitForVivo(Landroid/view/WindowManagerPolicy$ScreenOnListener;)Z
    .locals 3
    .param p1, "screenOnListener"    # Landroid/view/WindowManagerPolicy$ScreenOnListener;

    .prologue
    .line 8555
    if-eqz p1, :cond_0

    .line 8556
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->mVivoWMPHook:Lcom/android/server/policy/VivoWMPHook;

    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy$1;

    invoke-direct {v2, p0, p1}, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy$1;-><init>(Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    invoke-virtual {v1, v2}, Lcom/android/server/policy/VivoWMPHook;->onScreenTurnedOn(Lcom/android/server/policy/VivoWMPHook$ShowListener;)Z

    move-result v0

    .line 8565
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private waitForWindowDrawn(Landroid/os/IBinder;Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .locals 0
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "screenOnListener"    # Landroid/view/WindowManagerPolicy$ScreenOnListener;

    .prologue
    .line 8591
    return-void
.end method


# virtual methods
.method public doCustomKeyHandler(II)V
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "action"    # I

    .prologue
    const/4 v3, 0x0

    .line 9048
    packed-switch p2, :pswitch_data_0

    .line 9076
    const-string v0, "WindowManager"

    const-string v1, "No any handler action."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9078
    :cond_0
    :goto_0
    return-void

    .line 9050
    :pswitch_0
    const/16 v0, 0x131

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mVivoPolicyHelper:Lcom/android/server/policy/VivoPolicyHelper;

    invoke-virtual {v0}, Lcom/android/server/policy/VivoPolicyHelper;->isFingerFeedback()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9051
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->performAudioFeedback()V

    .line 9052
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 9056
    :cond_1
    sget-boolean v0, Landroid/util/VivoSmartMultiWindowConfig;->ENABLE_SPLIT:Z

    if-eqz v0, :cond_3

    .line 9057
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mVivoMultiWindowMgr:Landroid/app/VivoSmartMultiWindowManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mVivoMultiWindowMgr:Landroid/app/VivoSmartMultiWindowManager;

    invoke-virtual {v0}, Landroid/app/VivoSmartMultiWindowManager;->isSplitMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9058
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->multiWindowlaunchHomeFromHotKey()V
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$5200(Lcom/android/server/policy/PhoneWindowManager;)V

    goto :goto_0

    .line 9060
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->handleShortPressOnHome()V
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$3000(Lcom/android/server/policy/PhoneWindowManager;)V

    goto :goto_0

    .line 9063
    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->handleShortPressOnHome()V
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$3000(Lcom/android/server/policy/PhoneWindowManager;)V

    goto :goto_0

    .line 9068
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->preloadRecentApps()V
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$5300(Lcom/android/server/policy/PhoneWindowManager;)V

    goto :goto_0

    .line 9071
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9072
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->handleLongPressOnHome(I)V
    invoke-static {v0, v3}, Lcom/android/server/policy/PhoneWindowManager;->access$5400(Lcom/android/server/policy/PhoneWindowManager;I)V

    goto :goto_0

    .line 9048
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public handleMetaKeyEvent()V
    .locals 3

    .prologue
    const/16 v2, 0xe

    .line 9082
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 9083
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 9084
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 9085
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 9086
    return-void
.end method

.method public isShowingAndNotOccluded()Z
    .locals 1

    .prologue
    .line 9111
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$5500(Lcom/android/server/policy/PhoneWindowManager;)Z

    move-result v0

    return v0
.end method

.method public keyguardDone(ZZ)V
    .locals 4
    .param p1, "authenticated"    # Z
    .param p2, "wakeup"    # Z

    .prologue
    .line 9091
    move v0, p1

    .line 9092
    .local v0, "arg0":Z
    move v1, p2

    .line 9093
    .local v1, "arg1":Z
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v2, :cond_0

    .line 9095
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy$3;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy$3;-><init>(Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;ZZ)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9104
    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mVivoPolicyHelper:Lcom/android/server/policy/VivoPolicyHelper;

    if-eqz v2, :cond_1

    .line 9105
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mVivoPolicyHelper:Lcom/android/server/policy/VivoPolicyHelper;

    invoke-virtual {v2}, Lcom/android/server/policy/VivoPolicyHelper;->reportFingerPrint()V

    .line 9107
    :cond_1
    return-void
.end method

.method public performHapticFeedback(IZZ)Z
    .locals 4
    .param p1, "effectId"    # I
    .param p2, "always"    # Z
    .param p3, "alwaysWhenEnable"    # Z

    .prologue
    const/4 v0, 0x0

    .line 9030
    if-nez p2, :cond_1

    .line 9031
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "haptic_feedback_enabled"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 9033
    .local v0, "hapticsDisabled":Z
    :cond_0
    if-nez v0, :cond_1

    if-eqz p3, :cond_1

    .line 9034
    const/4 p2, 0x1

    .line 9037
    .end local v0    # "hapticsDisabled":Z
    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    move-result v1

    return v1
.end method

.method public requestScreenShot()V
    .locals 2

    .prologue
    .line 9042
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManager;->access$5100(Lcom/android/server/policy/PhoneWindowManager;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 9043
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManager;->access$5100(Lcom/android/server/policy/PhoneWindowManager;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9044
    return-void
.end method

.method public resultKeyguardByFingerprint(ZLjava/lang/String;I)V
    .locals 1
    .param p1, "isFingerSuccess"    # Z
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "param"    # I

    .prologue
    .line 9118
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    .line 9119
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->resultKeyguardByFingerprint(ZLjava/lang/String;I)V

    .line 9121
    :cond_0
    return-void
.end method

.method public screenTurningOff()V
    .locals 1

    .prologue
    .line 9017
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->mVivoWMPHook:Lcom/android/server/policy/VivoWMPHook;

    invoke-virtual {v0}, Lcom/android/server/policy/VivoWMPHook;->onScreenTurnedOff()V

    .line 9018
    return-void
.end method

.method public sendFingerprintMessage(I)V
    .locals 3
    .param p1, "result"    # I

    .prologue
    .line 9127
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "I sendFingerprintResult result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9128
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/PhoneWindowManager;->sendFingerprintResult(I)Z

    .line 9129
    return-void
.end method

.method public sendMediaKeyEvent(Landroid/view/KeyEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 9022
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 9023
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$VivoAdjustmentPolicy;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 9024
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 9025
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 9026
    return-void
.end method
