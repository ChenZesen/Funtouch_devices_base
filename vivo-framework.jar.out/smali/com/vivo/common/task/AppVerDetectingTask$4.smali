.class Lcom/vivo/common/task/AppVerDetectingTask$4;
.super Ljava/lang/Object;
.source "AppVerDetectingTask.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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


# direct methods
.method constructor <init>(Lcom/vivo/common/task/AppVerDetectingTask;)V
    .locals 0

    .prologue
    .line 591
    iput-object p1, p0, Lcom/vivo/common/task/AppVerDetectingTask$4;->this$0:Lcom/vivo/common/task/AppVerDetectingTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 595
    iget-object v0, p0, Lcom/vivo/common/task/AppVerDetectingTask$4;->this$0:Lcom/vivo/common/task/AppVerDetectingTask;

    invoke-virtual {v0}, Lcom/vivo/common/task/AppVerDetectingTask;->onDismiss()V

    .line 596
    return-void
.end method
