.class Lcom/android/server/pm/VivoADBInstallDialog$4;
.super Ljava/lang/Thread;
.source "VivoADBInstallDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/VivoADBInstallDialog;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/VivoADBInstallDialog;

.field final synthetic val$am:Landroid/app/IActivityManager;

.field final synthetic val$virusScanService:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/server/pm/VivoADBInstallDialog;Landroid/app/IActivityManager;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/android/server/pm/VivoADBInstallDialog$4;->this$0:Lcom/android/server/pm/VivoADBInstallDialog;

    iput-object p2, p0, Lcom/android/server/pm/VivoADBInstallDialog$4;->val$am:Landroid/app/IActivityManager;

    iput-object p3, p0, Lcom/android/server/pm/VivoADBInstallDialog$4;->val$virusScanService:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 231
    const-string v0, "VivoADBInstallDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "run is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/VivoADBInstallDialog$4;->val$am:Landroid/app/IActivityManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v0, p0, Lcom/android/server/pm/VivoADBInstallDialog$4;->val$am:Landroid/app/IActivityManager;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/server/pm/VivoADBInstallDialog$4;->this$0:Lcom/android/server/pm/VivoADBInstallDialog;

    # getter for: Lcom/android/server/pm/VivoADBInstallDialog;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/pm/VivoADBInstallDialog;->access$300(Lcom/android/server/pm/VivoADBInstallDialog;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/VivoADBInstallDialog$4;->val$virusScanService:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/pm/VivoADBInstallDialog$4;->this$0:Lcom/android/server/pm/VivoADBInstallDialog;

    # getter for: Lcom/android/server/pm/VivoADBInstallDialog;->mConnection:Landroid/content/ServiceConnection;
    invoke-static {v2}, Lcom/android/server/pm/VivoADBInstallDialog;->access$200(Lcom/android/server/pm/VivoADBInstallDialog;)Landroid/content/ServiceConnection;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 236
    :cond_0
    return-void
.end method
