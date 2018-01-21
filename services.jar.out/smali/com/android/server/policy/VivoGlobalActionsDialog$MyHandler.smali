.class Lcom/android/server/policy/VivoGlobalActionsDialog$MyHandler;
.super Landroid/os/Handler;
.source "VivoGlobalActionsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/VivoGlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/VivoGlobalActionsDialog;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/VivoGlobalActionsDialog;)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lcom/android/server/policy/VivoGlobalActionsDialog$MyHandler;->this$0:Lcom/android/server/policy/VivoGlobalActionsDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 379
    return-void
.end method

.method public constructor <init>(Lcom/android/server/policy/VivoGlobalActionsDialog;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 381
    iput-object p1, p0, Lcom/android/server/policy/VivoGlobalActionsDialog$MyHandler;->this$0:Lcom/android/server/policy/VivoGlobalActionsDialog;

    .line 382
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 383
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 387
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 412
    :goto_0
    return-void

    .line 389
    :pswitch_0
    iget-object v4, p0, Lcom/android/server/policy/VivoGlobalActionsDialog$MyHandler;->this$0:Lcom/android/server/policy/VivoGlobalActionsDialog;

    const/4 v5, 0x1

    # invokes: Lcom/android/server/policy/VivoGlobalActionsDialog;->startAnimation(Z)V
    invoke-static {v4, v5}, Lcom/android/server/policy/VivoGlobalActionsDialog;->access$300(Lcom/android/server/policy/VivoGlobalActionsDialog;Z)V

    goto :goto_0

    .line 393
    :pswitch_1
    :try_start_0
    const-string v4, "VivoGlobalActionsDialog"

    const-string v5, "handleMessage11111"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v3

    .line 396
    .local v3, "wm":Landroid/view/IWindowManager;
    iget-object v4, p0, Lcom/android/server/policy/VivoGlobalActionsDialog$MyHandler;->this$0:Lcom/android/server/policy/VivoGlobalActionsDialog;

    # getter for: Lcom/android/server/policy/VivoGlobalActionsDialog;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/policy/VivoGlobalActionsDialog;->access$400(Lcom/android/server/policy/VivoGlobalActionsDialog;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 398
    .local v2, "winm":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 399
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v4

    invoke-interface {v3, v4}, Landroid/view/IWindowManager;->freezeRotation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 400
    .end local v0    # "display":Landroid/view/Display;
    .end local v2    # "winm":Landroid/view/WindowManager;
    .end local v3    # "wm":Landroid/view/IWindowManager;
    :catch_0
    move-exception v1

    .line 401
    .local v1, "exc":Landroid/os/RemoteException;
    const-string v4, "VivoGlobalActionsDialog"

    const-string v5, "Unable to save auto-rotate setting"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 405
    .end local v1    # "exc":Landroid/os/RemoteException;
    :pswitch_2
    iget-object v4, p0, Lcom/android/server/policy/VivoGlobalActionsDialog$MyHandler;->this$0:Lcom/android/server/policy/VivoGlobalActionsDialog;

    # invokes: Lcom/android/server/policy/VivoGlobalActionsDialog;->updateLayout()V
    invoke-static {v4}, Lcom/android/server/policy/VivoGlobalActionsDialog;->access$500(Lcom/android/server/policy/VivoGlobalActionsDialog;)V

    goto :goto_0

    .line 408
    :pswitch_3
    iget-object v4, p0, Lcom/android/server/policy/VivoGlobalActionsDialog$MyHandler;->this$0:Lcom/android/server/policy/VivoGlobalActionsDialog;

    # invokes: Lcom/android/server/policy/VivoGlobalActionsDialog;->startBackgroundAnim()V
    invoke-static {v4}, Lcom/android/server/policy/VivoGlobalActionsDialog;->access$600(Lcom/android/server/policy/VivoGlobalActionsDialog;)V

    goto :goto_0

    .line 387
    nop

    :pswitch_data_0
    .packed-switch 0x3e6
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
