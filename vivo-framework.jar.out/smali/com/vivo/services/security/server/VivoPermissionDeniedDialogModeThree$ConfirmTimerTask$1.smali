.class Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree$ConfirmTimerTask$1;
.super Ljava/lang/Object;
.source "VivoPermissionDeniedDialogModeThree.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree$ConfirmTimerTask;->updateDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree$ConfirmTimerTask;


# direct methods
.method constructor <init>(Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree$ConfirmTimerTask;)V
    .locals 0

    .prologue
    .line 494
    iput-object p1, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree$ConfirmTimerTask$1;->this$1:Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree$ConfirmTimerTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 499
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "3 mTimeLeft="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree$ConfirmTimerTask$1;->this$1:Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree$ConfirmTimerTask;

    # getter for: Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree$ConfirmTimerTask;->mTimeLeft:J
    invoke-static {v2}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree$ConfirmTimerTask;->access$700(Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree$ConfirmTimerTask;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/services/security/server/VivoPermissionService;->printfInfo(Ljava/lang/String;)V

    .line 500
    iget-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree$ConfirmTimerTask$1;->this$1:Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree$ConfirmTimerTask;

    iget-object v1, v1, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree$ConfirmTimerTask;->this$0:Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;

    # getter for: Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->access$800(Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 502
    iget-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree$ConfirmTimerTask$1;->this$1:Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree$ConfirmTimerTask;

    iget-object v1, v1, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree$ConfirmTimerTask;->this$0:Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;

    # getter for: Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->access$800(Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;)Landroid/app/AlertDialog;

    move-result-object v2

    monitor-enter v2

    .line 504
    :try_start_0
    iget-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree$ConfirmTimerTask$1;->this$1:Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree$ConfirmTimerTask;

    iget-object v1, v1, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree$ConfirmTimerTask;->this$0:Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;

    # getter for: Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->access$800(Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 506
    iget-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree$ConfirmTimerTask$1;->this$1:Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree$ConfirmTimerTask;

    iget-object v1, v1, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree$ConfirmTimerTask;->this$0:Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;

    # getter for: Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->access$800(Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;)Landroid/app/AlertDialog;

    move-result-object v1

    const/4 v3, -0x2

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 507
    .local v0, "button":Landroid/widget/Button;
    iget-object v1, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree$ConfirmTimerTask$1;->this$1:Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree$ConfirmTimerTask;

    iget-object v1, v1, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree$ConfirmTimerTask;->this$0:Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;

    iget-object v3, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree$ConfirmTimerTask$1;->this$1:Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree$ConfirmTimerTask;

    # getter for: Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree$ConfirmTimerTask;->mTimeLeft:J
    invoke-static {v3}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree$ConfirmTimerTask;->access$700(Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree$ConfirmTimerTask;)J

    move-result-wide v4

    iget-object v3, p0, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree$ConfirmTimerTask$1;->this$1:Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree$ConfirmTimerTask;

    # getter for: Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree$ConfirmTimerTask;->mPeriod:J
    invoke-static {v3}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree$ConfirmTimerTask;->access$900(Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree$ConfirmTimerTask;)J

    move-result-wide v6

    div-long/2addr v4, v6

    # invokes: Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->getNegativeButtonText(J)Ljava/lang/String;
    invoke-static {v1, v4, v5}, Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;->access$1000(Lcom/vivo/services/security/server/VivoPermissionDeniedDialogModeThree;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 509
    .end local v0    # "button":Landroid/widget/Button;
    :cond_0
    monitor-exit v2

    .line 511
    :cond_1
    return-void

    .line 509
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
