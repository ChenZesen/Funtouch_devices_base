.class final Lcom/android/server/pm/VivoADBInstallDialog$ConfirmTimerTask;
.super Ljava/util/TimerTask;
.source "VivoADBInstallDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/VivoADBInstallDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ConfirmTimerTask"
.end annotation


# instance fields
.field private mPeriod:J

.field private mTimeLeft:J

.field final synthetic this$0:Lcom/android/server/pm/VivoADBInstallDialog;


# direct methods
.method constructor <init>(Lcom/android/server/pm/VivoADBInstallDialog;JJ)V
    .locals 2
    .param p2, "timeout"    # J
    .param p4, "period"    # J

    .prologue
    const-wide/16 v0, 0x0

    .line 405
    iput-object p1, p0, Lcom/android/server/pm/VivoADBInstallDialog$ConfirmTimerTask;->this$0:Lcom/android/server/pm/VivoADBInstallDialog;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 401
    iput-wide v0, p0, Lcom/android/server/pm/VivoADBInstallDialog$ConfirmTimerTask;->mTimeLeft:J

    .line 402
    iput-wide v0, p0, Lcom/android/server/pm/VivoADBInstallDialog$ConfirmTimerTask;->mPeriod:J

    .line 406
    iput-wide p2, p0, Lcom/android/server/pm/VivoADBInstallDialog$ConfirmTimerTask;->mTimeLeft:J

    .line 407
    iput-wide p4, p0, Lcom/android/server/pm/VivoADBInstallDialog$ConfirmTimerTask;->mPeriod:J

    .line 408
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 413
    iget-wide v0, p0, Lcom/android/server/pm/VivoADBInstallDialog$ConfirmTimerTask;->mTimeLeft:J

    iget-wide v2, p0, Lcom/android/server/pm/VivoADBInstallDialog$ConfirmTimerTask;->mPeriod:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/pm/VivoADBInstallDialog$ConfirmTimerTask;->mTimeLeft:J

    .line 414
    iget-wide v0, p0, Lcom/android/server/pm/VivoADBInstallDialog$ConfirmTimerTask;->mTimeLeft:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/android/server/pm/VivoADBInstallDialog$ConfirmTimerTask;->this$0:Lcom/android/server/pm/VivoADBInstallDialog;

    const/16 v1, 0x14

    # invokes: Lcom/android/server/pm/VivoADBInstallDialog;->setConfirmResultSync(I)V
    invoke-static {v0, v1}, Lcom/android/server/pm/VivoADBInstallDialog;->access$000(Lcom/android/server/pm/VivoADBInstallDialog;I)V

    .line 417
    iget-object v0, p0, Lcom/android/server/pm/VivoADBInstallDialog$ConfirmTimerTask;->this$0:Lcom/android/server/pm/VivoADBInstallDialog;

    # invokes: Lcom/android/server/pm/VivoADBInstallDialog;->dismiss()V
    invoke-static {v0}, Lcom/android/server/pm/VivoADBInstallDialog;->access$100(Lcom/android/server/pm/VivoADBInstallDialog;)V

    .line 419
    :cond_0
    return-void
.end method
