.class Lcom/vivo/common/task/AppVerDetectingTask$3;
.super Ljava/lang/Object;
.source "AppVerDetectingTask.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/common/task/AppVerDetectingTask;->showUpdateDialog(Lcom/vivo/common/task/AppVerDetectingTask$AppUpdateInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/common/task/AppVerDetectingTask;

.field final synthetic val$result:Lcom/vivo/common/task/AppVerDetectingTask$AppUpdateInfo;

.field final synthetic val$stateCode:I

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vivo/common/task/AppVerDetectingTask;ILcom/vivo/common/task/AppVerDetectingTask$AppUpdateInfo;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 539
    iput-object p1, p0, Lcom/vivo/common/task/AppVerDetectingTask$3;->this$0:Lcom/vivo/common/task/AppVerDetectingTask;

    iput p2, p0, Lcom/vivo/common/task/AppVerDetectingTask$3;->val$stateCode:I

    iput-object p3, p0, Lcom/vivo/common/task/AppVerDetectingTask$3;->val$result:Lcom/vivo/common/task/AppVerDetectingTask$AppUpdateInfo;

    iput-object p4, p0, Lcom/vivo/common/task/AppVerDetectingTask$3;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 544
    iget v1, p0, Lcom/vivo/common/task/AppVerDetectingTask$3;->val$stateCode:I

    const/16 v2, 0xc9

    if-ne v1, v2, :cond_0

    .line 546
    iget-object v1, p0, Lcom/vivo/common/task/AppVerDetectingTask$3;->this$0:Lcom/vivo/common/task/AppVerDetectingTask;

    const/4 v2, 0x1

    # invokes: Lcom/vivo/common/task/AppVerDetectingTask;->keepDialog(Landroid/content/DialogInterface;Z)V
    invoke-static {v1, p1, v2}, Lcom/vivo/common/task/AppVerDetectingTask;->access$000(Lcom/vivo/common/task/AppVerDetectingTask;Landroid/content/DialogInterface;Z)V

    .line 549
    :cond_0
    iget-object v1, p0, Lcom/vivo/common/task/AppVerDetectingTask$3;->this$0:Lcom/vivo/common/task/AppVerDetectingTask;

    invoke-virtual {v1}, Lcom/vivo/common/task/AppVerDetectingTask;->onUpdate()V

    .line 550
    iget-object v1, p0, Lcom/vivo/common/task/AppVerDetectingTask$3;->this$0:Lcom/vivo/common/task/AppVerDetectingTask;

    iget-object v2, p0, Lcom/vivo/common/task/AppVerDetectingTask$3;->val$result:Lcom/vivo/common/task/AppVerDetectingTask$AppUpdateInfo;

    invoke-virtual {v1, v2}, Lcom/vivo/common/task/AppVerDetectingTask;->onUpdate(Lcom/vivo/common/task/AppVerDetectingTask$AppUpdateInfo;)V

    .line 552
    iget-object v1, p0, Lcom/vivo/common/task/AppVerDetectingTask$3;->val$url:Ljava/lang/String;

    # invokes: Lcom/vivo/common/task/AppVerDetectingTask;->isStringEmpty(Ljava/lang/String;)Z
    invoke-static {v1}, Lcom/vivo/common/task/AppVerDetectingTask;->access$100(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 562
    :goto_0
    return-void

    .line 558
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.bbk.action.SYSTEM_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 559
    .local v0, "localIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/vivo/common/task/AppVerDetectingTask$3;->this$0:Lcom/vivo/common/task/AppVerDetectingTask;

    # getter for: Lcom/vivo/common/task/AppVerDetectingTask;->context:Landroid/app/Activity;
    invoke-static {v1}, Lcom/vivo/common/task/AppVerDetectingTask;->access$200(Lcom/vivo/common/task/AppVerDetectingTask;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 560
    const-string v1, "AppVerDetectingTask"

    const-string v2, "sendBroadcast:SNSConstant.ACTION_SYSTEM_UPDATE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
