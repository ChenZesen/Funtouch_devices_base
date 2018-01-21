.class final Lcom/vivo/services/security/server/VivoPermissionDialog$ConfirmTimerTask;
.super Ljava/util/TimerTask;
.source "VivoPermissionDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/security/server/VivoPermissionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ConfirmTimerTask"
.end annotation


# instance fields
.field private mPeriod:J

.field private mTimeLeft:J

.field final synthetic this$0:Lcom/vivo/services/security/server/VivoPermissionDialog;


# direct methods
.method constructor <init>(Lcom/vivo/services/security/server/VivoPermissionDialog;JJ)V
    .locals 2
    .param p2, "timeout"    # J
    .param p4, "period"    # J

    .prologue
    const-wide/16 v0, 0x0

    .line 448
    iput-object p1, p0, Lcom/vivo/services/security/server/VivoPermissionDialog$ConfirmTimerTask;->this$0:Lcom/vivo/services/security/server/VivoPermissionDialog;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 444
    iput-wide v0, p0, Lcom/vivo/services/security/server/VivoPermissionDialog$ConfirmTimerTask;->mTimeLeft:J

    .line 445
    iput-wide v0, p0, Lcom/vivo/services/security/server/VivoPermissionDialog$ConfirmTimerTask;->mPeriod:J

    .line 449
    iput-wide p2, p0, Lcom/vivo/services/security/server/VivoPermissionDialog$ConfirmTimerTask;->mTimeLeft:J

    .line 450
    iput-wide p4, p0, Lcom/vivo/services/security/server/VivoPermissionDialog$ConfirmTimerTask;->mPeriod:J

    .line 451
    return-void
.end method

.method static synthetic access$500(Lcom/vivo/services/security/server/VivoPermissionDialog$ConfirmTimerTask;)J
    .locals 2
    .param p0, "x0"    # Lcom/vivo/services/security/server/VivoPermissionDialog$ConfirmTimerTask;

    .prologue
    .line 442
    iget-wide v0, p0, Lcom/vivo/services/security/server/VivoPermissionDialog$ConfirmTimerTask;->mTimeLeft:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/vivo/services/security/server/VivoPermissionDialog$ConfirmTimerTask;)J
    .locals 2
    .param p0, "x0"    # Lcom/vivo/services/security/server/VivoPermissionDialog$ConfirmTimerTask;

    .prologue
    .line 442
    iget-wide v0, p0, Lcom/vivo/services/security/server/VivoPermissionDialog$ConfirmTimerTask;->mPeriod:J

    return-wide v0
.end method

.method private needDismiss()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 455
    const-string v3, "sys.super_power_save"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 457
    .local v0, "superSaverOn":Z
    if-eqz v0, :cond_1

    .line 467
    :cond_0
    :goto_0
    return v1

    .line 462
    :cond_1
    iget-object v3, p0, Lcom/vivo/services/security/server/VivoPermissionDialog$ConfirmTimerTask;->this$0:Lcom/vivo/services/security/server/VivoPermissionDialog;

    # getter for: Lcom/vivo/services/security/server/VivoPermissionDialog;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/vivo/services/security/server/VivoPermissionDialog;->access$400(Lcom/vivo/services/security/server/VivoPermissionDialog;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/vivo/services/security/server/VivoPermissionService;->isKeyguardLocked(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 467
    goto :goto_0
.end method

.method private updateDialog()V
    .locals 2

    .prologue
    .line 486
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionDialog$ConfirmTimerTask;->this$0:Lcom/vivo/services/security/server/VivoPermissionDialog;

    # getter for: Lcom/vivo/services/security/server/VivoPermissionDialog;->mUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/vivo/services/security/server/VivoPermissionDialog;->access$900(Lcom/vivo/services/security/server/VivoPermissionDialog;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/vivo/services/security/server/VivoPermissionDialog$ConfirmTimerTask$1;

    invoke-direct {v1, p0}, Lcom/vivo/services/security/server/VivoPermissionDialog$ConfirmTimerTask$1;-><init>(Lcom/vivo/services/security/server/VivoPermissionDialog$ConfirmTimerTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 506
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 473
    iget-wide v0, p0, Lcom/vivo/services/security/server/VivoPermissionDialog$ConfirmTimerTask;->mTimeLeft:J

    iget-wide v2, p0, Lcom/vivo/services/security/server/VivoPermissionDialog$ConfirmTimerTask;->mPeriod:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/vivo/services/security/server/VivoPermissionDialog$ConfirmTimerTask;->mTimeLeft:J

    .line 474
    iget-wide v0, p0, Lcom/vivo/services/security/server/VivoPermissionDialog$ConfirmTimerTask;->mTimeLeft:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/vivo/services/security/server/VivoPermissionDialog$ConfirmTimerTask;->needDismiss()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionDialog$ConfirmTimerTask;->this$0:Lcom/vivo/services/security/server/VivoPermissionDialog;

    invoke-virtual {v0}, Lcom/vivo/services/security/server/VivoPermissionDialog;->dismiss()V

    .line 482
    :goto_0
    return-void

    .line 480
    :cond_1
    invoke-direct {p0}, Lcom/vivo/services/security/server/VivoPermissionDialog$ConfirmTimerTask;->updateDialog()V

    goto :goto_0
.end method
