.class final Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne$ConfirmTimerTask;
.super Ljava/util/TimerTask;
.source "VivoPermissionDeniedDialogModeOne.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ConfirmTimerTask"
.end annotation


# instance fields
.field private mPeriod:J

.field private mTimeLeft:J

.field final synthetic this$0:Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne;


# direct methods
.method constructor <init>(Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne;JJ)V
    .locals 2
    .param p2, "timeout"    # J
    .param p4, "period"    # J

    .prologue
    const-wide/16 v0, 0x0

    .line 372
    iput-object p1, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne$ConfirmTimerTask;->this$0:Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 368
    iput-wide v0, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne$ConfirmTimerTask;->mTimeLeft:J

    .line 369
    iput-wide v0, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne$ConfirmTimerTask;->mPeriod:J

    .line 373
    iput-wide p2, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne$ConfirmTimerTask;->mTimeLeft:J

    .line 374
    iput-wide p4, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne$ConfirmTimerTask;->mPeriod:J

    .line 375
    return-void
.end method

.method private needDismiss()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 379
    const-string v3, "sys.super_power_save"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 381
    .local v0, "superSaverOn":Z
    if-eqz v0, :cond_1

    .line 391
    :cond_0
    :goto_0
    return v1

    .line 386
    :cond_1
    iget-object v3, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne$ConfirmTimerTask;->this$0:Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne;

    # getter for: Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne;->access$700(Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/vivo/services/security/server/VivoPermissionService;->isKeyguardLocked(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 391
    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 398
    invoke-direct {p0}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne$ConfirmTimerTask;->needDismiss()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne$ConfirmTimerTask;->this$0:Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne;

    invoke-virtual {v0}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeOne;->dismiss()V

    .line 403
    :cond_0
    return-void
.end method
