.class Lcom/android/server/pm/VivoADBInstallDialog$UiUpdateHandler$1;
.super Ljava/lang/Object;
.source "VivoADBInstallDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/VivoADBInstallDialog$UiUpdateHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/pm/VivoADBInstallDialog$UiUpdateHandler;


# direct methods
.method constructor <init>(Lcom/android/server/pm/VivoADBInstallDialog$UiUpdateHandler;)V
    .locals 0

    .prologue
    .line 691
    iput-object p1, p0, Lcom/android/server/pm/VivoADBInstallDialog$UiUpdateHandler$1;->this$1:Lcom/android/server/pm/VivoADBInstallDialog$UiUpdateHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 695
    iget-object v0, p0, Lcom/android/server/pm/VivoADBInstallDialog$UiUpdateHandler$1;->this$1:Lcom/android/server/pm/VivoADBInstallDialog$UiUpdateHandler;

    iget-object v0, v0, Lcom/android/server/pm/VivoADBInstallDialog$UiUpdateHandler;->this$0:Lcom/android/server/pm/VivoADBInstallDialog;

    # getter for: Lcom/android/server/pm/VivoADBInstallDialog;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/pm/VivoADBInstallDialog;->access$1700(Lcom/android/server/pm/VivoADBInstallDialog;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 696
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/VivoADBInstallDialog$UiUpdateHandler$1;->this$1:Lcom/android/server/pm/VivoADBInstallDialog$UiUpdateHandler;

    iget-object v0, v0, Lcom/android/server/pm/VivoADBInstallDialog$UiUpdateHandler;->this$0:Lcom/android/server/pm/VivoADBInstallDialog;

    # invokes: Lcom/android/server/pm/VivoADBInstallDialog;->showVirusDialog()V
    invoke-static {v0}, Lcom/android/server/pm/VivoADBInstallDialog;->access$1800(Lcom/android/server/pm/VivoADBInstallDialog;)V

    .line 697
    monitor-exit v1

    .line 698
    return-void

    .line 697
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
