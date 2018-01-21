.class Lcom/android/server/policy/VivoGlobalActionsDialog$ScreenShotThread;
.super Ljava/lang/Thread;
.source "VivoGlobalActionsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/VivoGlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScreenShotThread"
.end annotation


# instance fields
.field result:Landroid/graphics/Bitmap;

.field setBgThread:Ljava/lang/Runnable;

.field stop:Z

.field final synthetic this$0:Lcom/android/server/policy/VivoGlobalActionsDialog;


# direct methods
.method constructor <init>(Lcom/android/server/policy/VivoGlobalActionsDialog;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 141
    iput-object p1, p0, Lcom/android/server/policy/VivoGlobalActionsDialog$ScreenShotThread;->this$0:Lcom/android/server/policy/VivoGlobalActionsDialog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 142
    iput-object v1, p0, Lcom/android/server/policy/VivoGlobalActionsDialog$ScreenShotThread;->result:Landroid/graphics/Bitmap;

    .line 143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/VivoGlobalActionsDialog$ScreenShotThread;->stop:Z

    .line 144
    iput-object v1, p0, Lcom/android/server/policy/VivoGlobalActionsDialog$ScreenShotThread;->setBgThread:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public exit()V
    .locals 2

    .prologue
    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/VivoGlobalActionsDialog$ScreenShotThread;->stop:Z

    .line 147
    iget-object v0, p0, Lcom/android/server/policy/VivoGlobalActionsDialog$ScreenShotThread;->result:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/VivoGlobalActionsDialog$ScreenShotThread;->result:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/android/server/policy/VivoGlobalActionsDialog$ScreenShotThread;->setBgThread:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/VivoGlobalActionsDialog$ScreenShotThread;->this$0:Lcom/android/server/policy/VivoGlobalActionsDialog;

    iget-object v0, v0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/VivoGlobalActionsDialog$ScreenShotThread;->setBgThread:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/VivoGlobalActionsDialog$ScreenShotThread;->result:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 150
    const-string v0, "VivoGlobalActionsDialog"

    const-string v1, "result.recycle()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_1
    const-string v0, "VivoGlobalActionsDialog"

    const-string v1, "mScreenShotThread exit!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/server/policy/VivoGlobalActionsDialog$ScreenShotThread;->this$0:Lcom/android/server/policy/VivoGlobalActionsDialog;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/policy/VivoGlobalActionsDialog;->mStartedOnce:Z
    invoke-static {v0, v1}, Lcom/android/server/policy/VivoGlobalActionsDialog;->access$002(Lcom/android/server/policy/VivoGlobalActionsDialog;Z)Z

    .line 159
    iget-object v0, p0, Lcom/android/server/policy/VivoGlobalActionsDialog$ScreenShotThread;->this$0:Lcom/android/server/policy/VivoGlobalActionsDialog;

    # invokes: Lcom/android/server/policy/VivoGlobalActionsDialog;->takeScreenShot()Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/android/server/policy/VivoGlobalActionsDialog;->access$100(Lcom/android/server/policy/VivoGlobalActionsDialog;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/VivoGlobalActionsDialog$ScreenShotThread;->result:Landroid/graphics/Bitmap;

    .line 160
    iget-boolean v0, p0, Lcom/android/server/policy/VivoGlobalActionsDialog$ScreenShotThread;->stop:Z

    if-eqz v0, :cond_0

    .line 177
    :goto_0
    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/VivoGlobalActionsDialog$ScreenShotThread;->this$0:Lcom/android/server/policy/VivoGlobalActionsDialog;

    iget-object v0, v0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/VivoGlobalActionsDialog$ScreenShotThread$1;

    invoke-direct {v1, p0}, Lcom/android/server/policy/VivoGlobalActionsDialog$ScreenShotThread$1;-><init>(Lcom/android/server/policy/VivoGlobalActionsDialog$ScreenShotThread;)V

    iput-object v1, p0, Lcom/android/server/policy/VivoGlobalActionsDialog$ScreenShotThread;->setBgThread:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
