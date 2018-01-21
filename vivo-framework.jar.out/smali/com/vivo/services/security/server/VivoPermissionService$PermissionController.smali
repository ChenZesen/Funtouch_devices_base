.class Lcom/vivo/services/security/server/VivoPermissionService$PermissionController;
.super Landroid/os/IPermissionController$Stub;
.source "VivoPermissionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/security/server/VivoPermissionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PermissionController"
.end annotation


# instance fields
.field private mVPS:Lcom/vivo/services/security/server/VivoPermissionService;


# direct methods
.method constructor <init>(Lcom/vivo/services/security/server/VivoPermissionService;)V
    .locals 1
    .param p1, "vps"    # Lcom/vivo/services/security/server/VivoPermissionService;

    .prologue
    .line 102
    invoke-direct {p0}, Landroid/os/IPermissionController$Stub;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/services/security/server/VivoPermissionService$PermissionController;->mVPS:Lcom/vivo/services/security/server/VivoPermissionService;

    .line 103
    iput-object p1, p0, Lcom/vivo/services/security/server/VivoPermissionService$PermissionController;->mVPS:Lcom/vivo/services/security/server/VivoPermissionService;

    .line 104
    return-void
.end method


# virtual methods
.method public checkPermission(Ljava/lang/String;II)Z
    .locals 4
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PermissionController-->checkPermission ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")pid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " uid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vivo/services/security/server/VivoPermissionService;->printfDebug(Ljava/lang/String;)V

    .line 109
    if-nez p1, :cond_0

    .line 114
    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/vivo/services/security/server/VivoPermissionService$PermissionController;->mVPS:Lcom/vivo/services/security/server/VivoPermissionService;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, p2, p3, v3}, Lcom/vivo/services/security/server/VivoPermissionService;->checkPermission(Ljava/lang/String;IILcom/vivo/services/security/client/IVivoPermissionCallback;)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public getPackagesForUid(I)[Ljava/lang/String;
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 119
    # getter for: Lcom/vivo/services/security/server/VivoPermissionService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/vivo/services/security/server/VivoPermissionService;->access$000()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    # getter for: Lcom/vivo/services/security/server/VivoPermissionService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/vivo/services/security/server/VivoPermissionService;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 126
    :goto_0
    return-object v0

    .line 125
    :cond_0
    const-string v0, "PermissionController-->getPackagesForUid mContext is null"

    invoke-static {v0}, Lcom/vivo/services/security/server/VivoPermissionService;->printfDebug(Ljava/lang/String;)V

    .line 126
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRuntimePermission(Ljava/lang/String;)Z
    .locals 6
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 131
    if-eqz p1, :cond_1

    # getter for: Lcom/vivo/services/security/server/VivoPermissionService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/vivo/services/security/server/VivoPermissionService;->access$000()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 134
    :try_start_0
    # getter for: Lcom/vivo/services/security/server/VivoPermissionService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/vivo/services/security/server/VivoPermissionService;->access$000()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v0

    .line 136
    .local v0, "info":Landroid/content/pm/PermissionInfo;
    iget v4, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, v2, :cond_0

    .line 142
    .end local v0    # "info":Landroid/content/pm/PermissionInfo;
    :goto_0
    return v2

    .restart local v0    # "info":Landroid/content/pm/PermissionInfo;
    :cond_0
    move v2, v3

    .line 136
    goto :goto_0

    .line 137
    .end local v0    # "info":Landroid/content/pm/PermissionInfo;
    :catch_0
    move-exception v1

    .line 138
    .local v1, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "VPS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PermissionController-->isRuntimePermission No such permission: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    move v2, v3

    .line 142
    goto :goto_0
.end method
