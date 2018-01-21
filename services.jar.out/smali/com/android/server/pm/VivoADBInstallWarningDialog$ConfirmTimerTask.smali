.class final Lcom/android/server/pm/VivoADBInstallWarningDialog$ConfirmTimerTask;
.super Ljava/util/TimerTask;
.source "VivoADBInstallWarningDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/VivoADBInstallWarningDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ConfirmTimerTask"
.end annotation


# instance fields
.field private mPeriod:J

.field private mTimeLeft:J

.field final synthetic this$0:Lcom/android/server/pm/VivoADBInstallWarningDialog;


# direct methods
.method constructor <init>(Lcom/android/server/pm/VivoADBInstallWarningDialog;JJ)V
    .locals 2
    .param p2, "timeout"    # J
    .param p4, "period"    # J

    .prologue
    const-wide/16 v0, 0x0

    .line 287
    iput-object p1, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog$ConfirmTimerTask;->this$0:Lcom/android/server/pm/VivoADBInstallWarningDialog;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 283
    iput-wide v0, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog$ConfirmTimerTask;->mTimeLeft:J

    .line 284
    iput-wide v0, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog$ConfirmTimerTask;->mPeriod:J

    .line 288
    iput-wide p2, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog$ConfirmTimerTask;->mTimeLeft:J

    .line 289
    iput-wide p4, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog$ConfirmTimerTask;->mPeriod:J

    .line 290
    return-void
.end method

.method static synthetic access$400(Lcom/android/server/pm/VivoADBInstallWarningDialog$ConfirmTimerTask;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/pm/VivoADBInstallWarningDialog$ConfirmTimerTask;

    .prologue
    .line 281
    iget-wide v0, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog$ConfirmTimerTask;->mTimeLeft:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/android/server/pm/VivoADBInstallWarningDialog$ConfirmTimerTask;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/pm/VivoADBInstallWarningDialog$ConfirmTimerTask;

    .prologue
    .line 281
    iget-wide v0, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog$ConfirmTimerTask;->mPeriod:J

    return-wide v0
.end method

.method private updateDialog()V
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog$ConfirmTimerTask;->this$0:Lcom/android/server/pm/VivoADBInstallWarningDialog;

    # getter for: Lcom/android/server/pm/VivoADBInstallWarningDialog;->mUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/pm/VivoADBInstallWarningDialog;->access$700(Lcom/android/server/pm/VivoADBInstallWarningDialog;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/VivoADBInstallWarningDialog$ConfirmTimerTask$1;

    invoke-direct {v1, p0}, Lcom/android/server/pm/VivoADBInstallWarningDialog$ConfirmTimerTask$1;-><init>(Lcom/android/server/pm/VivoADBInstallWarningDialog$ConfirmTimerTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 332
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 296
    iget-wide v0, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog$ConfirmTimerTask;->mTimeLeft:J

    iget-wide v2, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog$ConfirmTimerTask;->mPeriod:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog$ConfirmTimerTask;->mTimeLeft:J

    .line 297
    iget-wide v0, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog$ConfirmTimerTask;->mTimeLeft:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog$ConfirmTimerTask;->this$0:Lcom/android/server/pm/VivoADBInstallWarningDialog;

    # getter for: Lcom/android/server/pm/VivoADBInstallWarningDialog;->mAppInstallFlags:I
    invoke-static {v0}, Lcom/android/server/pm/VivoADBInstallWarningDialog;->access$100(Lcom/android/server/pm/VivoADBInstallWarningDialog;)I

    move-result v0

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog$ConfirmTimerTask;->this$0:Lcom/android/server/pm/VivoADBInstallWarningDialog;

    const/4 v1, 0x3

    # invokes: Lcom/android/server/pm/VivoADBInstallWarningDialog;->setWarningConfirmResultSync(I)V
    invoke-static {v0, v1}, Lcom/android/server/pm/VivoADBInstallWarningDialog;->access$000(Lcom/android/server/pm/VivoADBInstallWarningDialog;I)V

    .line 307
    :goto_0
    iget-object v0, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog$ConfirmTimerTask;->this$0:Lcom/android/server/pm/VivoADBInstallWarningDialog;

    # invokes: Lcom/android/server/pm/VivoADBInstallWarningDialog;->dismiss()V
    invoke-static {v0}, Lcom/android/server/pm/VivoADBInstallWarningDialog;->access$200(Lcom/android/server/pm/VivoADBInstallWarningDialog;)V

    .line 313
    :goto_1
    return-void

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog$ConfirmTimerTask;->this$0:Lcom/android/server/pm/VivoADBInstallWarningDialog;

    const/4 v1, 0x1

    # invokes: Lcom/android/server/pm/VivoADBInstallWarningDialog;->setWarningConfirmResultSync(I)V
    invoke-static {v0, v1}, Lcom/android/server/pm/VivoADBInstallWarningDialog;->access$000(Lcom/android/server/pm/VivoADBInstallWarningDialog;I)V

    goto :goto_0

    .line 311
    :cond_1
    invoke-direct {p0}, Lcom/android/server/pm/VivoADBInstallWarningDialog$ConfirmTimerTask;->updateDialog()V

    goto :goto_1
.end method
