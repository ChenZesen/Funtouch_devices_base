.class public Landroid/app/IVivoSmartMultiWindowHelper;
.super Ljava/lang/Object;
.source "IVivoSmartMultiWindowHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IVivoSmartMultiWindowHelper"


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mIsBindServer:Z

.field private mService:Landroid/app/IVivoSmartMultiWindow;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/IVivoSmartMultiWindowHelper;->mService:Landroid/app/IVivoSmartMultiWindow;

    .line 24
    new-instance v0, Landroid/app/IVivoSmartMultiWindowHelper$1;

    invoke-direct {v0, p0}, Landroid/app/IVivoSmartMultiWindowHelper$1;-><init>(Landroid/app/IVivoSmartMultiWindowHelper;)V

    iput-object v0, p0, Landroid/app/IVivoSmartMultiWindowHelper;->mConnection:Landroid/content/ServiceConnection;

    .line 21
    iput-object p1, p0, Landroid/app/IVivoSmartMultiWindowHelper;->mContext:Landroid/content/Context;

    .line 22
    return-void
.end method

.method static synthetic access$000(Landroid/app/IVivoSmartMultiWindowHelper;)Landroid/app/IVivoSmartMultiWindow;
    .locals 1
    .param p0, "x0"    # Landroid/app/IVivoSmartMultiWindowHelper;

    .prologue
    .line 14
    iget-object v0, p0, Landroid/app/IVivoSmartMultiWindowHelper;->mService:Landroid/app/IVivoSmartMultiWindow;

    return-object v0
.end method

.method static synthetic access$002(Landroid/app/IVivoSmartMultiWindowHelper;Landroid/app/IVivoSmartMultiWindow;)Landroid/app/IVivoSmartMultiWindow;
    .locals 0
    .param p0, "x0"    # Landroid/app/IVivoSmartMultiWindowHelper;
    .param p1, "x1"    # Landroid/app/IVivoSmartMultiWindow;

    .prologue
    .line 14
    iput-object p1, p0, Landroid/app/IVivoSmartMultiWindowHelper;->mService:Landroid/app/IVivoSmartMultiWindow;

    return-object p1
.end method

.method static synthetic access$102(Landroid/app/IVivoSmartMultiWindowHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/app/IVivoSmartMultiWindowHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 14
    iput-boolean p1, p0, Landroid/app/IVivoSmartMultiWindowHelper;->mIsBindServer:Z

    return p1
.end method


# virtual methods
.method public bind()V
    .locals 4

    .prologue
    .line 48
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 49
    .local v0, "service":Landroid/content/Intent;
    const-string v1, "com.vivo.smartmultiwindow.manager_smartmultiwindow_state"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    const-string v1, "com.vivo.smartmultiwindow"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    const-string v1, "IVivoSmartMultiWindowHelper"

    const-string v2, "bind "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v1, p0, Landroid/app/IVivoSmartMultiWindowHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/app/IVivoSmartMultiWindowHelper;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 53
    return-void
.end method

.method public isBinded()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Landroid/app/IVivoSmartMultiWindowHelper;->mIsBindServer:Z

    return v0
.end method

.method public setSmartMultiWindowEnable(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 77
    :try_start_0
    const-string v1, "IVivoSmartMultiWindowHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " setSmartMultiWindowEnable mService "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/IVivoSmartMultiWindowHelper;->mService:Landroid/app/IVivoSmartMultiWindow;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v1, p0, Landroid/app/IVivoSmartMultiWindowHelper;->mService:Landroid/app/IVivoSmartMultiWindow;

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Landroid/app/IVivoSmartMultiWindowHelper;->mService:Landroid/app/IVivoSmartMultiWindow;

    invoke-interface {v1, p1}, Landroid/app/IVivoSmartMultiWindow;->setSmartMultiWindowEnable(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setSmartMultiWindowIsScreenLock(Z)V
    .locals 4
    .param p1, "lock"    # Z

    .prologue
    .line 90
    :try_start_0
    const-string v1, "IVivoSmartMultiWindowHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " setSmartMultiWindowIsScreenLock mService "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/IVivoSmartMultiWindowHelper;->mService:Landroid/app/IVivoSmartMultiWindow;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v1, p0, Landroid/app/IVivoSmartMultiWindowHelper;->mService:Landroid/app/IVivoSmartMultiWindow;

    if-eqz v1, :cond_0

    .line 93
    iget-object v1, p0, Landroid/app/IVivoSmartMultiWindowHelper;->mService:Landroid/app/IVivoSmartMultiWindow;

    invoke-interface {v1, p1}, Landroid/app/IVivoSmartMultiWindow;->setSmartMultiWindowIsScreenLock(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public unbind()V
    .locals 3

    .prologue
    .line 61
    const-string v0, "IVivoSmartMultiWindowHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unbind mIsBindServer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/app/IVivoSmartMultiWindowHelper;->mIsBindServer:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-boolean v0, p0, Landroid/app/IVivoSmartMultiWindowHelper;->mIsBindServer:Z

    if-eqz v0, :cond_0

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/IVivoSmartMultiWindowHelper;->mIsBindServer:Z

    .line 64
    iget-object v0, p0, Landroid/app/IVivoSmartMultiWindowHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/app/IVivoSmartMultiWindowHelper;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 66
    :cond_0
    return-void
.end method

.method public updateMoveableIcon(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 102
    :try_start_0
    const-string v1, "IVivoSmartMultiWindowHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " setSmartMultiWindowIsScreenLock mService "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/IVivoSmartMultiWindowHelper;->mService:Landroid/app/IVivoSmartMultiWindow;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v1, p0, Landroid/app/IVivoSmartMultiWindowHelper;->mService:Landroid/app/IVivoSmartMultiWindow;

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Landroid/app/IVivoSmartMultiWindowHelper;->mService:Landroid/app/IVivoSmartMultiWindow;

    invoke-interface {v1, p1}, Landroid/app/IVivoSmartMultiWindow;->updateMoveableIcon(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public updateSplitMode(Z)V
    .locals 4
    .param p1, "split"    # Z

    .prologue
    .line 115
    :try_start_0
    const-string v1, "IVivoSmartMultiWindowHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " updateSplitMode mService "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/IVivoSmartMultiWindowHelper;->mService:Landroid/app/IVivoSmartMultiWindow;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v1, p0, Landroid/app/IVivoSmartMultiWindowHelper;->mService:Landroid/app/IVivoSmartMultiWindow;

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Landroid/app/IVivoSmartMultiWindowHelper;->mService:Landroid/app/IVivoSmartMultiWindow;

    invoke-interface {v1, p1}, Landroid/app/IVivoSmartMultiWindow;->updateSplitMode(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
