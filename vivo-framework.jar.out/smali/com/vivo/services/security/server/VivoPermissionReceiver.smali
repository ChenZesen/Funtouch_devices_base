.class public Lcom/vivo/services/security/server/VivoPermissionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VivoPermissionReceiver.java"


# instance fields
.field private mVPS:Lcom/vivo/services/security/server/VivoPermissionService;


# direct methods
.method public constructor <init>(Lcom/vivo/services/security/server/VivoPermissionService;)V
    .locals 1
    .param p1, "vps"    # Lcom/vivo/services/security/server/VivoPermissionService;

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionReceiver;->mVPS:Lcom/vivo/services/security/server/VivoPermissionService;

    .line 15
    iput-object p1, p0, Lcom/vivo/services/security/server/VivoPermissionReceiver;->mVPS:Lcom/vivo/services/security/server/VivoPermissionService;

    .line 16
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 21
    const/4 v1, 0x0

    .line 22
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 23
    .local v0, "action":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vivo/services/security/server/VivoPermissionService;->printfInfo(Ljava/lang/String;)V

    .line 24
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 26
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    .line 27
    const-string v2, "package:"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 28
    iget-object v2, p0, Lcom/vivo/services/security/server/VivoPermissionReceiver;->mVPS:Lcom/vivo/services/security/server/VivoPermissionService;

    invoke-virtual {v2, v1}, Lcom/vivo/services/security/server/VivoPermissionService;->updateForPackageAdded(Ljava/lang/String;)V

    .line 30
    const-string v2, "com.vivo.services.security.client.PACKAGE_PERMISSION_ADDED"

    invoke-virtual {p0, p1, v2, v1}, Lcom/vivo/services/security/server/VivoPermissionReceiver;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 34
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    .line 35
    const-string v2, "package:"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 36
    iget-object v2, p0, Lcom/vivo/services/security/server/VivoPermissionReceiver;->mVPS:Lcom/vivo/services/security/server/VivoPermissionService;

    invoke-virtual {v2, v1}, Lcom/vivo/services/security/server/VivoPermissionService;->updateForPackageRemoved(Ljava/lang/String;)V

    .line 38
    const-string v2, "com.vivo.services.security.client.PACKAGE_PERMISSION_REMOVED"

    invoke-virtual {p0, p1, v2, v1}, Lcom/vivo/services/security/server/VivoPermissionReceiver;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 40
    :cond_2
    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    .line 43
    const-string v2, "package:"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 44
    iget-object v2, p0, Lcom/vivo/services/security/server/VivoPermissionReceiver;->mVPS:Lcom/vivo/services/security/server/VivoPermissionService;

    invoke-virtual {v2, v1}, Lcom/vivo/services/security/server/VivoPermissionService;->updateForPackageReplaced(Ljava/lang/String;)V

    .line 46
    const-string v2, "com.vivo.services.security.client.PACKAGE_PERMISSION_REPLACED"

    invoke-virtual {p0, p1, v2, v1}, Lcom/vivo/services/security/server/VivoPermissionReceiver;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 52
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 53
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    const-string v1, "package"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendBroadcast-->action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/services/security/server/VivoPermissionService;->printfInfo(Ljava/lang/String;)V

    .line 57
    return-void
.end method
