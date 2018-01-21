.class Lcom/android/server/policy/VivoGlobalActionsDialog$ScreenShotThread$1;
.super Ljava/lang/Object;
.source "VivoGlobalActionsDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/VivoGlobalActionsDialog$ScreenShotThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/VivoGlobalActionsDialog$ScreenShotThread;


# direct methods
.method constructor <init>(Lcom/android/server/policy/VivoGlobalActionsDialog$ScreenShotThread;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/server/policy/VivoGlobalActionsDialog$ScreenShotThread$1;->this$1:Lcom/android/server/policy/VivoGlobalActionsDialog$ScreenShotThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 167
    const-string v3, "VivoGlobalActionsDialog"

    const-string v4, "update background view!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v3, p0, Lcom/android/server/policy/VivoGlobalActionsDialog$ScreenShotThread$1;->this$1:Lcom/android/server/policy/VivoGlobalActionsDialog$ScreenShotThread;

    iget-object v2, v3, Lcom/android/server/policy/VivoGlobalActionsDialog$ScreenShotThread;->result:Landroid/graphics/Bitmap;

    .line 169
    .local v2, "resultf":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/android/server/policy/VivoGlobalActionsDialog$ScreenShotThread$1;->this$1:Lcom/android/server/policy/VivoGlobalActionsDialog$ScreenShotThread;

    iget-object v3, v3, Lcom/android/server/policy/VivoGlobalActionsDialog$ScreenShotThread;->this$0:Lcom/android/server/policy/VivoGlobalActionsDialog;

    invoke-virtual {v3, v2}, Lcom/android/server/policy/VivoGlobalActionsDialog;->getBlurBackground(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 170
    .local v0, "blurBmp":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/android/server/policy/VivoGlobalActionsDialog$ScreenShotThread$1;->this$1:Lcom/android/server/policy/VivoGlobalActionsDialog$ScreenShotThread;

    iget-object v3, v3, Lcom/android/server/policy/VivoGlobalActionsDialog$ScreenShotThread;->this$0:Lcom/android/server/policy/VivoGlobalActionsDialog;

    # getter for: Lcom/android/server/policy/VivoGlobalActionsDialog;->mFakeView:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/server/policy/VivoGlobalActionsDialog;->access$200(Lcom/android/server/policy/VivoGlobalActionsDialog;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 171
    iget-object v3, p0, Lcom/android/server/policy/VivoGlobalActionsDialog$ScreenShotThread$1;->this$1:Lcom/android/server/policy/VivoGlobalActionsDialog$ScreenShotThread;

    iget-object v3, v3, Lcom/android/server/policy/VivoGlobalActionsDialog$ScreenShotThread;->this$0:Lcom/android/server/policy/VivoGlobalActionsDialog;

    iget-object v3, v3, Lcom/android/server/policy/VivoGlobalActionsDialog;->myHandler:Lcom/android/server/policy/VivoGlobalActionsDialog$MyHandler;

    const/16 v4, 0x3e9

    invoke-virtual {v3, v4}, Lcom/android/server/policy/VivoGlobalActionsDialog$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 172
    .local v1, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/policy/VivoGlobalActionsDialog$ScreenShotThread$1;->this$1:Lcom/android/server/policy/VivoGlobalActionsDialog$ScreenShotThread;

    iget-object v3, v3, Lcom/android/server/policy/VivoGlobalActionsDialog$ScreenShotThread;->this$0:Lcom/android/server/policy/VivoGlobalActionsDialog;

    iget-object v3, v3, Lcom/android/server/policy/VivoGlobalActionsDialog;->myHandler:Lcom/android/server/policy/VivoGlobalActionsDialog$MyHandler;

    invoke-virtual {v3, v1}, Lcom/android/server/policy/VivoGlobalActionsDialog$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 175
    return-void
.end method
