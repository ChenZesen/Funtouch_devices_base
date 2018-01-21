.class Lcom/android/server/policy/VivoGlobalActionsDialog$1;
.super Landroid/view/IRotationWatcher$Stub;
.source "VivoGlobalActionsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/VivoGlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/VivoGlobalActionsDialog;


# direct methods
.method constructor <init>(Lcom/android/server/policy/VivoGlobalActionsDialog;)V
    .locals 0

    .prologue
    .line 358
    iput-object p1, p0, Lcom/android/server/policy/VivoGlobalActionsDialog$1;->this$0:Lcom/android/server/policy/VivoGlobalActionsDialog;

    invoke-direct {p0}, Landroid/view/IRotationWatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRotationChanged(I)V
    .locals 4
    .param p1, "rotation"    # I

    .prologue
    .line 360
    const-string v1, "VivoGlobalActionsDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRotationChanged(): ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v1, p0, Lcom/android/server/policy/VivoGlobalActionsDialog$1;->this$0:Lcom/android/server/policy/VivoGlobalActionsDialog;

    iget-object v1, v1, Lcom/android/server/policy/VivoGlobalActionsDialog;->myHandler:Lcom/android/server/policy/VivoGlobalActionsDialog$MyHandler;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/android/server/policy/VivoGlobalActionsDialog$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 369
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/policy/VivoGlobalActionsDialog$1;->this$0:Lcom/android/server/policy/VivoGlobalActionsDialog;

    iget-object v1, v1, Lcom/android/server/policy/VivoGlobalActionsDialog;->myHandler:Lcom/android/server/policy/VivoGlobalActionsDialog$MyHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/policy/VivoGlobalActionsDialog$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 370
    return-void
.end method
