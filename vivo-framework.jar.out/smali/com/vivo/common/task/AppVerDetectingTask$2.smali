.class Lcom/vivo/common/task/AppVerDetectingTask$2;
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

.field final synthetic val$stateCode:I


# direct methods
.method constructor <init>(Lcom/vivo/common/task/AppVerDetectingTask;I)V
    .locals 0

    .prologue
    .line 565
    iput-object p1, p0, Lcom/vivo/common/task/AppVerDetectingTask$2;->this$0:Lcom/vivo/common/task/AppVerDetectingTask;

    iput p2, p0, Lcom/vivo/common/task/AppVerDetectingTask$2;->val$stateCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 570
    iget v0, p0, Lcom/vivo/common/task/AppVerDetectingTask$2;->val$stateCode:I

    const/16 v1, 0xc9

    if-ne v0, v1, :cond_0

    .line 572
    iget-object v0, p0, Lcom/vivo/common/task/AppVerDetectingTask$2;->this$0:Lcom/vivo/common/task/AppVerDetectingTask;

    invoke-virtual {v0}, Lcom/vivo/common/task/AppVerDetectingTask;->onExit()V

    .line 578
    :goto_0
    return-void

    .line 576
    :cond_0
    iget-object v0, p0, Lcom/vivo/common/task/AppVerDetectingTask$2;->this$0:Lcom/vivo/common/task/AppVerDetectingTask;

    invoke-virtual {v0}, Lcom/vivo/common/task/AppVerDetectingTask;->onCancel()V

    goto :goto_0
.end method
