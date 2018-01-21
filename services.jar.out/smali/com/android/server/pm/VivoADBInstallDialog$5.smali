.class Lcom/android/server/pm/VivoADBInstallDialog$5;
.super Ljava/lang/Object;
.source "VivoADBInstallDialog.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/VivoADBInstallDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/VivoADBInstallDialog;


# direct methods
.method constructor <init>(Lcom/android/server/pm/VivoADBInstallDialog;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/android/server/pm/VivoADBInstallDialog$5;->this$0:Lcom/android/server/pm/VivoADBInstallDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/server/pm/VivoADBInstallDialog$5;->this$0:Lcom/android/server/pm/VivoADBInstallDialog;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/pm/VivoADBInstallDialog;->mIsBindServie:Z
    invoke-static {v0, v1}, Lcom/android/server/pm/VivoADBInstallDialog;->access$502(Lcom/android/server/pm/VivoADBInstallDialog;Z)Z

    .line 273
    iget-object v0, p0, Lcom/android/server/pm/VivoADBInstallDialog$5;->this$0:Lcom/android/server/pm/VivoADBInstallDialog;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    # setter for: Lcom/android/server/pm/VivoADBInstallDialog;->mServiceMessenger:Landroid/os/Messenger;
    invoke-static {v0, v1}, Lcom/android/server/pm/VivoADBInstallDialog;->access$402(Lcom/android/server/pm/VivoADBInstallDialog;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 274
    const-string v0, "VivoADBInstallDialog"

    const-string v1, "onServiceConnected !!!!!!!!! "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v0, p0, Lcom/android/server/pm/VivoADBInstallDialog$5;->this$0:Lcom/android/server/pm/VivoADBInstallDialog;

    iget-object v1, p0, Lcom/android/server/pm/VivoADBInstallDialog$5;->this$0:Lcom/android/server/pm/VivoADBInstallDialog;

    invoke-virtual {v1}, Lcom/android/server/pm/VivoADBInstallDialog;->getPathFromPackageName()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/pm/VivoADBInstallDialog;->startRemoteService(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/pm/VivoADBInstallDialog;->access$600(Lcom/android/server/pm/VivoADBInstallDialog;Ljava/lang/String;)V

    .line 276
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/server/pm/VivoADBInstallDialog$5;->this$0:Lcom/android/server/pm/VivoADBInstallDialog;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/pm/VivoADBInstallDialog;->mServiceMessenger:Landroid/os/Messenger;
    invoke-static {v0, v1}, Lcom/android/server/pm/VivoADBInstallDialog;->access$402(Lcom/android/server/pm/VivoADBInstallDialog;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 265
    iget-object v0, p0, Lcom/android/server/pm/VivoADBInstallDialog$5;->this$0:Lcom/android/server/pm/VivoADBInstallDialog;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/pm/VivoADBInstallDialog;->mIsBindServie:Z
    invoke-static {v0, v1}, Lcom/android/server/pm/VivoADBInstallDialog;->access$502(Lcom/android/server/pm/VivoADBInstallDialog;Z)Z

    .line 266
    const-string v0, "VivoADBInstallDialog"

    const-string v1, " onServiceDisconnected !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    return-void
.end method
