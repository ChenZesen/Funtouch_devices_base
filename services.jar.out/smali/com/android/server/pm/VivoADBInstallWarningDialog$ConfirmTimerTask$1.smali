.class Lcom/android/server/pm/VivoADBInstallWarningDialog$ConfirmTimerTask$1;
.super Ljava/lang/Object;
.source "VivoADBInstallWarningDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/VivoADBInstallWarningDialog$ConfirmTimerTask;->updateDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/pm/VivoADBInstallWarningDialog$ConfirmTimerTask;


# direct methods
.method constructor <init>(Lcom/android/server/pm/VivoADBInstallWarningDialog$ConfirmTimerTask;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog$ConfirmTimerTask$1;->this$1:Lcom/android/server/pm/VivoADBInstallWarningDialog$ConfirmTimerTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog$ConfirmTimerTask$1;->this$1:Lcom/android/server/pm/VivoADBInstallWarningDialog$ConfirmTimerTask;

    iget-object v0, v0, Lcom/android/server/pm/VivoADBInstallWarningDialog$ConfirmTimerTask;->this$0:Lcom/android/server/pm/VivoADBInstallWarningDialog;

    # getter for: Lcom/android/server/pm/VivoADBInstallWarningDialog;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/server/pm/VivoADBInstallWarningDialog;->access$300(Lcom/android/server/pm/VivoADBInstallWarningDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 323
    iget-object v0, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog$ConfirmTimerTask$1;->this$1:Lcom/android/server/pm/VivoADBInstallWarningDialog$ConfirmTimerTask;

    iget-object v0, v0, Lcom/android/server/pm/VivoADBInstallWarningDialog$ConfirmTimerTask;->this$0:Lcom/android/server/pm/VivoADBInstallWarningDialog;

    # getter for: Lcom/android/server/pm/VivoADBInstallWarningDialog;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/server/pm/VivoADBInstallWarningDialog;->access$300(Lcom/android/server/pm/VivoADBInstallWarningDialog;)Landroid/app/AlertDialog;

    move-result-object v1

    monitor-enter v1

    .line 324
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog$ConfirmTimerTask$1;->this$1:Lcom/android/server/pm/VivoADBInstallWarningDialog$ConfirmTimerTask;

    iget-object v0, v0, Lcom/android/server/pm/VivoADBInstallWarningDialog$ConfirmTimerTask;->this$0:Lcom/android/server/pm/VivoADBInstallWarningDialog;

    # getter for: Lcom/android/server/pm/VivoADBInstallWarningDialog;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/server/pm/VivoADBInstallWarningDialog;->access$300(Lcom/android/server/pm/VivoADBInstallWarningDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog$ConfirmTimerTask$1;->this$1:Lcom/android/server/pm/VivoADBInstallWarningDialog$ConfirmTimerTask;

    iget-object v0, v0, Lcom/android/server/pm/VivoADBInstallWarningDialog$ConfirmTimerTask;->this$0:Lcom/android/server/pm/VivoADBInstallWarningDialog;

    # getter for: Lcom/android/server/pm/VivoADBInstallWarningDialog;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/server/pm/VivoADBInstallWarningDialog;->access$300(Lcom/android/server/pm/VivoADBInstallWarningDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v2, -0x2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog$ConfirmTimerTask$1;->this$1:Lcom/android/server/pm/VivoADBInstallWarningDialog$ConfirmTimerTask;

    iget-object v2, v2, Lcom/android/server/pm/VivoADBInstallWarningDialog$ConfirmTimerTask;->this$0:Lcom/android/server/pm/VivoADBInstallWarningDialog;

    iget-object v3, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog$ConfirmTimerTask$1;->this$1:Lcom/android/server/pm/VivoADBInstallWarningDialog$ConfirmTimerTask;

    # getter for: Lcom/android/server/pm/VivoADBInstallWarningDialog$ConfirmTimerTask;->mTimeLeft:J
    invoke-static {v3}, Lcom/android/server/pm/VivoADBInstallWarningDialog$ConfirmTimerTask;->access$400(Lcom/android/server/pm/VivoADBInstallWarningDialog$ConfirmTimerTask;)J

    move-result-wide v4

    iget-object v3, p0, Lcom/android/server/pm/VivoADBInstallWarningDialog$ConfirmTimerTask$1;->this$1:Lcom/android/server/pm/VivoADBInstallWarningDialog$ConfirmTimerTask;

    # getter for: Lcom/android/server/pm/VivoADBInstallWarningDialog$ConfirmTimerTask;->mPeriod:J
    invoke-static {v3}, Lcom/android/server/pm/VivoADBInstallWarningDialog$ConfirmTimerTask;->access$500(Lcom/android/server/pm/VivoADBInstallWarningDialog$ConfirmTimerTask;)J

    move-result-wide v6

    div-long/2addr v4, v6

    # invokes: Lcom/android/server/pm/VivoADBInstallWarningDialog;->getNegativeButtonText(J)Ljava/lang/String;
    invoke-static {v2, v4, v5}, Lcom/android/server/pm/VivoADBInstallWarningDialog;->access$600(Lcom/android/server/pm/VivoADBInstallWarningDialog;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 328
    :cond_0
    monitor-exit v1

    .line 330
    :cond_1
    return-void

    .line 328
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
