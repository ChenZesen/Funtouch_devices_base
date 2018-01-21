.class final Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo$ConfirmTimerTask;
.super Ljava/util/TimerTask;
.source "VivoPermissionDeniedDialogModeTwo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ConfirmTimerTask"
.end annotation


# instance fields
.field private mPeriod:J

.field private mTimeLeft:J

.field final synthetic this$0:Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;


# direct methods
.method constructor <init>(Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;JJ)V
    .locals 2
    .param p2, "timeout"    # J
    .param p4, "period"    # J

    .prologue
    const-wide/16 v0, 0x0

    .line 365
    iput-object p1, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo$ConfirmTimerTask;->this$0:Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 361
    iput-wide v0, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo$ConfirmTimerTask;->mTimeLeft:J

    .line 362
    iput-wide v0, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo$ConfirmTimerTask;->mPeriod:J

    .line 366
    iput-wide p2, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo$ConfirmTimerTask;->mTimeLeft:J

    .line 367
    iput-wide p4, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo$ConfirmTimerTask;->mPeriod:J

    .line 368
    return-void
.end method

.method private needDismiss()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 372
    const-string v3, "sys.super_power_save"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 374
    .local v0, "superSaverOn":Z
    if-eqz v0, :cond_1

    .line 384
    :cond_0
    :goto_0
    return v1

    .line 379
    :cond_1
    iget-object v3, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo$ConfirmTimerTask;->this$0:Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;

    # getter for: Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->access$600(Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/vivo/services/security/server/VivoPermissionService;->isKeyguardLocked(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 384
    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 391
    invoke-direct {p0}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo$ConfirmTimerTask;->needDismiss()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo$ConfirmTimerTask;->this$0:Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;

    invoke-virtual {v0}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeTwo;->dismiss()V

    .line 396
    :cond_0
    return-void
.end method
