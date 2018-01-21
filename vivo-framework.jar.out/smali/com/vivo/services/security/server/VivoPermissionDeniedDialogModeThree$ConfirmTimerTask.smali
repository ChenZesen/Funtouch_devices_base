.class final Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree$ConfirmTimerTask;
.super Ljava/util/TimerTask;
.source "VivoPermissionDeniedDialogModeThree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ConfirmTimerTask"
.end annotation


# instance fields
.field private mPeriod:J

.field private mTimeLeft:J

.field final synthetic this$0:Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;


# direct methods
.method constructor <init>(Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;JJ)V
    .locals 2
    .param p2, "timeout"    # J
    .param p4, "period"    # J

    .prologue
    const-wide/16 v0, 0x0

    .line 455
    iput-object p1, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree$ConfirmTimerTask;->this$0:Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 451
    iput-wide v0, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree$ConfirmTimerTask;->mTimeLeft:J

    .line 452
    iput-wide v0, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree$ConfirmTimerTask;->mPeriod:J

    .line 456
    iput-wide p2, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree$ConfirmTimerTask;->mTimeLeft:J

    .line 457
    iput-wide p4, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree$ConfirmTimerTask;->mPeriod:J

    .line 458
    return-void
.end method

.method static synthetic access$700(Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree$ConfirmTimerTask;)J
    .locals 2
    .param p0, "x0"    # Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree$ConfirmTimerTask;

    .prologue
    .line 449
    iget-wide v0, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree$ConfirmTimerTask;->mTimeLeft:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree$ConfirmTimerTask;)J
    .locals 2
    .param p0, "x0"    # Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree$ConfirmTimerTask;

    .prologue
    .line 449
    iget-wide v0, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree$ConfirmTimerTask;->mPeriod:J

    return-wide v0
.end method

.method private needDismiss()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 462
    const-string v3, "sys.super_power_save"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 464
    .local v0, "superSaverOn":Z
    if-eqz v0, :cond_1

    .line 474
    :cond_0
    :goto_0
    return v1

    .line 469
    :cond_1
    iget-object v3, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree$ConfirmTimerTask;->this$0:Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;

    # getter for: Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->access$600(Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/vivo/services/security/server/VivoPermissionService;->isKeyguardLocked(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 474
    goto :goto_0
.end method

.method private updateDialog()V
    .locals 2

    .prologue
    .line 493
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree$ConfirmTimerTask;->this$0:Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;

    # getter for: Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->access$1100(Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree$ConfirmTimerTask$1;

    invoke-direct {v1, p0}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree$ConfirmTimerTask$1;-><init>(Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree$ConfirmTimerTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 513
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 480
    iget-wide v0, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree$ConfirmTimerTask;->mTimeLeft:J

    iget-wide v2, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree$ConfirmTimerTask;->mPeriod:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree$ConfirmTimerTask;->mTimeLeft:J

    .line 481
    iget-wide v0, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree$ConfirmTimerTask;->mTimeLeft:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree$ConfirmTimerTask;->needDismiss()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree$ConfirmTimerTask;->this$0:Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;

    invoke-virtual {v0}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->dismiss()V

    .line 489
    :goto_0
    return-void

    .line 487
    :cond_1
    invoke-direct {p0}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree$ConfirmTimerTask;->updateDialog()V

    goto :goto_0
.end method
