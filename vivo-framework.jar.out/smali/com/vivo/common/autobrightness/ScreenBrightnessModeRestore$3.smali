.class Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$3;
.super Landroid/app/IProcessObserver$Stub;
.source "ScreenBrightnessModeRestore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;


# direct methods
.method constructor <init>(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;)V
    .locals 0

    .prologue
    .line 378
    iput-object p1, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$3;->this$0:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .locals 3
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "foregroundActivities"    # Z

    .prologue
    .line 383
    iget-object v1, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$3;->this$0:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    # getter for: Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mRestoreHandler:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$RestoreHandler;
    invoke-static {v1}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->access$1900(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;)Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$RestoreHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$RestoreHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 384
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 385
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 386
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 387
    iget-object v1, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$3;->this$0:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    # getter for: Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mRestoreHandler:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$RestoreHandler;
    invoke-static {v1}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->access$1900(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;)Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$RestoreHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$RestoreHandler;->sendMessage(Landroid/os/Message;)Z

    .line 389
    return-void
.end method

.method public onProcessDied(II)V
    .locals 3
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .prologue
    .line 398
    iget-object v1, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$3;->this$0:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    # getter for: Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mRestoreHandler:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$RestoreHandler;
    invoke-static {v1}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->access$1900(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;)Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$RestoreHandler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$RestoreHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 399
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 400
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 401
    iget-object v1, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$3;->this$0:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    # getter for: Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mRestoreHandler:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$RestoreHandler;
    invoke-static {v1}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->access$1900(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;)Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$RestoreHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$RestoreHandler;->sendMessage(Landroid/os/Message;)Z

    .line 403
    return-void
.end method

.method public onProcessStateChanged(III)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "importance"    # I

    .prologue
    .line 394
    return-void
.end method
