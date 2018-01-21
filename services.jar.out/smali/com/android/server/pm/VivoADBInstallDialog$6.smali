.class Lcom/android/server/pm/VivoADBInstallDialog$6;
.super Ljava/util/TimerTask;
.source "VivoADBInstallDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/VivoADBInstallDialog;->dismiss()V
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
    .line 310
    iput-object p1, p0, Lcom/android/server/pm/VivoADBInstallDialog$6;->this$0:Lcom/android/server/pm/VivoADBInstallDialog;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 313
    const-string v0, "VivoADBInstallDialog"

    const-string v1, "dismiss !!!!!!!!! "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v0, p0, Lcom/android/server/pm/VivoADBInstallDialog$6;->this$0:Lcom/android/server/pm/VivoADBInstallDialog;

    # getter for: Lcom/android/server/pm/VivoADBInstallDialog;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/pm/VivoADBInstallDialog;->access$300(Lcom/android/server/pm/VivoADBInstallDialog;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/VivoADBInstallDialog$6;->this$0:Lcom/android/server/pm/VivoADBInstallDialog;

    # getter for: Lcom/android/server/pm/VivoADBInstallDialog;->mConnection:Landroid/content/ServiceConnection;
    invoke-static {v1}, Lcom/android/server/pm/VivoADBInstallDialog;->access$200(Lcom/android/server/pm/VivoADBInstallDialog;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 315
    return-void
.end method
