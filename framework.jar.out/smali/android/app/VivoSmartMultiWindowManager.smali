.class public Landroid/app/VivoSmartMultiWindowManager;
.super Ljava/lang/Object;
.source "VivoSmartMultiWindowManager.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "VivoSmartMultiWindowManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mService:Landroid/app/IVivoSmartMultiWindowManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    .line 34
    iput-object p1, p0, Landroid/app/VivoSmartMultiWindowManager;->mContext:Landroid/content/Context;

    .line 35
    invoke-direct {p0}, Landroid/app/VivoSmartMultiWindowManager;->getService()Landroid/app/IVivoSmartMultiWindowManager;

    .line 36
    return-void
.end method

.method private declared-synchronized getService()Landroid/app/IVivoSmartMultiWindowManager;
    .locals 4

    .prologue
    .line 39
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 41
    :try_start_1
    const-string/jumbo v1, "vivosmartmultiwindowservice"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IVivoSmartMultiWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IVivoSmartMultiWindowManager;

    move-result-object v1

    iput-object v1, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    :goto_0
    :try_start_2
    iget-object v1, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    if-nez v1, :cond_0

    .line 46
    const-string v1, "VivoSmartMultiWindowManager"

    const-string/jumbo v2, "warning: no VivoSmartMultiWindowManagerService"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_0
    iget-object v1, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v1, "VivoSmartMultiWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getService e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 39
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public changeFocusedStackDisplayMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 132
    invoke-direct {p0}, Landroid/app/VivoSmartMultiWindowManager;->getService()Landroid/app/IVivoSmartMultiWindowManager;

    .line 133
    iget-object v0, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    if-nez v0, :cond_0

    .line 140
    :goto_0
    return-void

    .line 137
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    invoke-interface {v0, p1}, Landroid/app/IVivoSmartMultiWindowManager;->changeFocusedStackDisplayMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public decideFocusStack(Landroid/graphics/Point;)I
    .locals 4
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 143
    const/4 v1, -0x1

    .line 144
    .local v1, "res":I
    invoke-direct {p0}, Landroid/app/VivoSmartMultiWindowManager;->getService()Landroid/app/IVivoSmartMultiWindowManager;

    .line 145
    if-eqz p1, :cond_0

    iget-object v3, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    if-nez v3, :cond_1

    :cond_0
    move v2, v1

    .line 153
    .end local v1    # "res":I
    .local v2, "res":I
    :goto_0
    return v2

    .line 149
    .end local v2    # "res":I
    .restart local v1    # "res":I
    :cond_1
    :try_start_0
    iget-object v3, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    invoke-interface {v3, p1}, Landroid/app/IVivoSmartMultiWindowManager;->decideFocusStack(Landroid/graphics/Point;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 153
    .end local v1    # "res":I
    .restart local v2    # "res":I
    goto :goto_0

    .line 150
    .end local v2    # "res":I
    .restart local v1    # "res":I
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getActivityDisplayMode(Landroid/os/IBinder;)I
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 104
    const/4 v1, 0x0

    .line 105
    .local v1, "mode":I
    invoke-direct {p0}, Landroid/app/VivoSmartMultiWindowManager;->getService()Landroid/app/IVivoSmartMultiWindowManager;

    .line 106
    if-eqz p1, :cond_0

    iget-object v2, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    if-nez v2, :cond_1

    .line 107
    :cond_0
    const/4 v2, 0x0

    .line 114
    :goto_0
    return v2

    .line 110
    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    invoke-interface {v2, p1}, Landroid/app/IVivoSmartMultiWindowManager;->getActivityDisplayMode(Landroid/os/IBinder;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 114
    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getAllowSplitApps()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 500
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 501
    .local v0, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/app/VivoSmartMultiWindowManager;->getService()Landroid/app/IVivoSmartMultiWindowManager;

    .line 502
    iget-object v2, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    if-nez v2, :cond_0

    move-object v1, v0

    .line 509
    .end local v0    # "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v1, "pkgs":Ljava/lang/Object;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    return-object v1

    .line 506
    .end local v1    # "pkgs":Ljava/lang/Object;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v0    # "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    invoke-interface {v2}, Landroid/app/IVivoSmartMultiWindowManager;->getAllowSplitApps()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 509
    .restart local v1    # "pkgs":Ljava/lang/Object;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 507
    .end local v1    # "pkgs":Ljava/lang/Object;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public getAnotherStackId()I
    .locals 4

    .prologue
    .line 350
    const/4 v1, 0x0

    .line 351
    .local v1, "stackId":I
    invoke-direct {p0}, Landroid/app/VivoSmartMultiWindowManager;->getService()Landroid/app/IVivoSmartMultiWindowManager;

    .line 352
    iget-object v3, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    if-nez v3, :cond_0

    move v2, v1

    .line 360
    .end local v1    # "stackId":I
    .local v2, "stackId":I
    :goto_0
    return v2

    .line 356
    .end local v2    # "stackId":I
    .restart local v1    # "stackId":I
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    invoke-interface {v3}, Landroid/app/IVivoSmartMultiWindowManager;->getAnotherStackId()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 360
    .end local v1    # "stackId":I
    .restart local v2    # "stackId":I
    goto :goto_0

    .line 357
    .end local v2    # "stackId":I
    .restart local v1    # "stackId":I
    :catch_0
    move-exception v0

    .line 358
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getAnotherStackTopPackage()Ljava/lang/String;
    .locals 6

    .prologue
    .line 364
    const/4 v1, 0x0

    .line 365
    .local v1, "pkg":Ljava/lang/String;
    invoke-direct {p0}, Landroid/app/VivoSmartMultiWindowManager;->getService()Landroid/app/IVivoSmartMultiWindowManager;

    .line 367
    const-string v3, "VivoSmartMultiWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAnotherStackTopPackage mService = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v3, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    if-nez v3, :cond_0

    move-object v2, v1

    .line 378
    .end local v1    # "pkg":Ljava/lang/String;
    .local v2, "pkg":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 373
    .end local v2    # "pkg":Ljava/lang/String;
    .restart local v1    # "pkg":Ljava/lang/String;
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    invoke-interface {v3}, Landroid/app/IVivoSmartMultiWindowManager;->getAnotherStackTopPackage()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    move-object v2, v1

    .line 378
    .end local v1    # "pkg":Ljava/lang/String;
    .restart local v2    # "pkg":Ljava/lang/String;
    goto :goto_0

    .line 374
    .end local v2    # "pkg":Ljava/lang/String;
    .restart local v1    # "pkg":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 375
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 376
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getAnotherStackTopPackageAndInstanceId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 568
    const/4 v1, 0x0

    .line 569
    .local v1, "pkg":Ljava/lang/String;
    invoke-direct {p0}, Landroid/app/VivoSmartMultiWindowManager;->getService()Landroid/app/IVivoSmartMultiWindowManager;

    .line 570
    iget-object v3, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    if-nez v3, :cond_0

    move-object v2, v1

    .line 578
    .end local v1    # "pkg":Ljava/lang/String;
    .local v2, "pkg":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 574
    .end local v2    # "pkg":Ljava/lang/String;
    .restart local v1    # "pkg":Ljava/lang/String;
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    invoke-interface {v3}, Landroid/app/IVivoSmartMultiWindowManager;->getAnotherStackTopPackageAndInstanceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    move-object v2, v1

    .line 578
    .end local v1    # "pkg":Ljava/lang/String;
    .restart local v2    # "pkg":Ljava/lang/String;
    goto :goto_0

    .line 575
    .end local v2    # "pkg":Ljava/lang/String;
    .restart local v1    # "pkg":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 576
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getFocusStackDisplayMode()I
    .locals 4

    .prologue
    .line 118
    const/4 v1, 0x0

    .line 119
    .local v1, "mode":I
    invoke-direct {p0}, Landroid/app/VivoSmartMultiWindowManager;->getService()Landroid/app/IVivoSmartMultiWindowManager;

    .line 120
    iget-object v3, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    if-nez v3, :cond_0

    move v2, v1

    .line 128
    .end local v1    # "mode":I
    .local v2, "mode":I
    :goto_0
    return v2

    .line 124
    .end local v2    # "mode":I
    .restart local v1    # "mode":I
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    invoke-interface {v3}, Landroid/app/IVivoSmartMultiWindowManager;->getFocusStackDisplayMode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 128
    .end local v1    # "mode":I
    .restart local v2    # "mode":I
    goto :goto_0

    .line 125
    .end local v2    # "mode":I
    .restart local v1    # "mode":I
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getFocusedStackId()I
    .locals 4

    .prologue
    .line 336
    const/4 v1, 0x0

    .line 337
    .local v1, "stackId":I
    invoke-direct {p0}, Landroid/app/VivoSmartMultiWindowManager;->getService()Landroid/app/IVivoSmartMultiWindowManager;

    .line 338
    iget-object v3, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    if-nez v3, :cond_0

    move v2, v1

    .line 346
    .end local v1    # "stackId":I
    .local v2, "stackId":I
    :goto_0
    return v2

    .line 342
    .end local v2    # "stackId":I
    .restart local v1    # "stackId":I
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    invoke-interface {v3}, Landroid/app/IVivoSmartMultiWindowManager;->getFocusedStackId()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 346
    .end local v1    # "stackId":I
    .restart local v2    # "stackId":I
    goto :goto_0

    .line 343
    .end local v2    # "stackId":I
    .restart local v1    # "stackId":I
    :catch_0
    move-exception v0

    .line 344
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getFocusedStackRunningPackageName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 254
    const/4 v1, 0x0

    .line 255
    .local v1, "pkg":Ljava/lang/String;
    invoke-direct {p0}, Landroid/app/VivoSmartMultiWindowManager;->getService()Landroid/app/IVivoSmartMultiWindowManager;

    .line 256
    iget-object v3, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    if-nez v3, :cond_0

    move-object v2, v1

    .line 264
    .end local v1    # "pkg":Ljava/lang/String;
    .local v2, "pkg":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 260
    .end local v2    # "pkg":Ljava/lang/String;
    .restart local v1    # "pkg":Ljava/lang/String;
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    invoke-interface {v3}, Landroid/app/IVivoSmartMultiWindowManager;->getFocusedStackRunningPackageName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    move-object v2, v1

    .line 264
    .end local v1    # "pkg":Ljava/lang/String;
    .restart local v2    # "pkg":Ljava/lang/String;
    goto :goto_0

    .line 261
    .end local v2    # "pkg":Ljava/lang/String;
    .restart local v1    # "pkg":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getFocusedStackTopPackage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 540
    const/4 v1, 0x0

    .line 541
    .local v1, "pkg":Ljava/lang/String;
    invoke-direct {p0}, Landroid/app/VivoSmartMultiWindowManager;->getService()Landroid/app/IVivoSmartMultiWindowManager;

    .line 542
    iget-object v3, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    if-nez v3, :cond_0

    move-object v2, v1

    .line 550
    .end local v1    # "pkg":Ljava/lang/String;
    .local v2, "pkg":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 546
    .end local v2    # "pkg":Ljava/lang/String;
    .restart local v1    # "pkg":Ljava/lang/String;
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    invoke-interface {v3}, Landroid/app/IVivoSmartMultiWindowManager;->getFocusedStackTopPackage()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    move-object v2, v1

    .line 550
    .end local v1    # "pkg":Ljava/lang/String;
    .restart local v2    # "pkg":Ljava/lang/String;
    goto :goto_0

    .line 547
    .end local v2    # "pkg":Ljava/lang/String;
    .restart local v1    # "pkg":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 548
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getFocusedStackTopPackageAndInstanceId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 554
    const/4 v1, 0x0

    .line 555
    .local v1, "pkg":Ljava/lang/String;
    invoke-direct {p0}, Landroid/app/VivoSmartMultiWindowManager;->getService()Landroid/app/IVivoSmartMultiWindowManager;

    .line 556
    iget-object v3, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    if-nez v3, :cond_0

    move-object v2, v1

    .line 564
    .end local v1    # "pkg":Ljava/lang/String;
    .local v2, "pkg":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 560
    .end local v2    # "pkg":Ljava/lang/String;
    .restart local v1    # "pkg":Ljava/lang/String;
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    invoke-interface {v3}, Landroid/app/IVivoSmartMultiWindowManager;->getFocusedStackTopPackageAndInstanceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    move-object v2, v1

    .line 564
    .end local v1    # "pkg":Ljava/lang/String;
    .restart local v2    # "pkg":Ljava/lang/String;
    goto :goto_0

    .line 561
    .end local v2    # "pkg":Ljava/lang/String;
    .restart local v1    # "pkg":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 562
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 593
    const/4 v1, 0x0

    .line 594
    .local v1, "intent":Landroid/content/Intent;
    invoke-direct {p0}, Landroid/app/VivoSmartMultiWindowManager;->getService()Landroid/app/IVivoSmartMultiWindowManager;

    .line 595
    iget-object v3, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    if-nez v3, :cond_0

    move-object v2, v1

    .line 603
    .end local v1    # "intent":Landroid/content/Intent;
    .local v2, "intent":Landroid/content/Intent;
    :goto_0
    return-object v2

    .line 599
    .end local v2    # "intent":Landroid/content/Intent;
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    invoke-interface {v3}, Landroid/app/IVivoSmartMultiWindowManager;->getIntent()Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    move-object v2, v1

    .line 603
    .end local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 600
    .end local v2    # "intent":Landroid/content/Intent;
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 601
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getKeyboardVisibleState()I
    .locals 2

    .prologue
    .line 79
    invoke-direct {p0}, Landroid/app/VivoSmartMultiWindowManager;->getService()Landroid/app/IVivoSmartMultiWindowManager;

    .line 80
    const/4 v0, 0x0

    .line 82
    .local v0, "visibleState":I
    :try_start_0
    iget-object v1, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    invoke-interface {v1}, Landroid/app/IVivoSmartMultiWindowManager;->getKeyboardVisibleState()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 85
    :goto_0
    return v0

    .line 83
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getMustFullScreenActivity()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 513
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 514
    .local v0, "activitys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/app/VivoSmartMultiWindowManager;->getService()Landroid/app/IVivoSmartMultiWindowManager;

    .line 515
    iget-object v2, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    if-nez v2, :cond_0

    move-object v1, v0

    .line 522
    .end local v0    # "activitys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v1, "activitys":Ljava/lang/Object;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    return-object v1

    .line 519
    .end local v1    # "activitys":Ljava/lang/Object;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v0    # "activitys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    invoke-interface {v2}, Landroid/app/IVivoSmartMultiWindowManager;->getMustFullScreenActivity()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 522
    .restart local v1    # "activitys":Ljava/lang/Object;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 520
    .end local v1    # "activitys":Ljava/lang/Object;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public getSplitDisplayInfo()[F
    .locals 3

    .prologue
    .line 212
    const/4 v1, 0x0

    .line 213
    .local v1, "info":[F
    invoke-direct {p0}, Landroid/app/VivoSmartMultiWindowManager;->getService()Landroid/app/IVivoSmartMultiWindowManager;

    .line 214
    iget-object v2, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    if-nez v2, :cond_0

    .line 215
    const/4 v2, 0x0

    .line 222
    :goto_0
    return-object v2

    .line 218
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    invoke-interface {v2}, Landroid/app/IVivoSmartMultiWindowManager;->getSplitDisplayInfo()[F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    move-object v2, v1

    .line 222
    goto :goto_0

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getSplitStackConfiguration()Landroid/content/res/Configuration;
    .locals 4

    .prologue
    .line 240
    const/4 v0, 0x0

    .line 241
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-direct {p0}, Landroid/app/VivoSmartMultiWindowManager;->getService()Landroid/app/IVivoSmartMultiWindowManager;

    .line 242
    iget-object v3, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    if-nez v3, :cond_0

    move-object v1, v0

    .line 250
    .end local v0    # "config":Landroid/content/res/Configuration;
    .local v1, "config":Landroid/content/res/Configuration;
    :goto_0
    return-object v1

    .line 246
    .end local v1    # "config":Landroid/content/res/Configuration;
    .restart local v0    # "config":Landroid/content/res/Configuration;
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    invoke-interface {v3}, Landroid/app/IVivoSmartMultiWindowManager;->getSplitStackConfiguration()Landroid/content/res/Configuration;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 250
    .end local v0    # "config":Landroid/content/res/Configuration;
    .restart local v1    # "config":Landroid/content/res/Configuration;
    goto :goto_0

    .line 247
    .end local v1    # "config":Landroid/content/res/Configuration;
    .restart local v0    # "config":Landroid/content/res/Configuration;
    :catch_0
    move-exception v2

    .line 248
    .local v2, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getSplitStackRotation()I
    .locals 4

    .prologue
    .line 226
    const/4 v1, -0x1

    .line 227
    .local v1, "rotation":I
    invoke-direct {p0}, Landroid/app/VivoSmartMultiWindowManager;->getService()Landroid/app/IVivoSmartMultiWindowManager;

    .line 228
    iget-object v3, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    if-nez v3, :cond_0

    move v2, v1

    .line 236
    .end local v1    # "rotation":I
    .local v2, "rotation":I
    :goto_0
    return v2

    .line 232
    .end local v2    # "rotation":I
    .restart local v1    # "rotation":I
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    invoke-interface {v3}, Landroid/app/IVivoSmartMultiWindowManager;->getSplitStackRotation()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 236
    .end local v1    # "rotation":I
    .restart local v2    # "rotation":I
    goto :goto_0

    .line 233
    .end local v2    # "rotation":I
    .restart local v1    # "rotation":I
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getStackBounds(I)Landroid/graphics/Rect;
    .locals 4
    .param p1, "mode"    # I

    .prologue
    .line 157
    const/4 v0, 0x0

    .line 158
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-direct {p0}, Landroid/app/VivoSmartMultiWindowManager;->getService()Landroid/app/IVivoSmartMultiWindowManager;

    .line 159
    iget-object v3, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    if-nez v3, :cond_0

    move-object v1, v0

    .line 167
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .local v1, "bounds":Landroid/graphics/Rect;
    :goto_0
    return-object v1

    .line 163
    .end local v1    # "bounds":Landroid/graphics/Rect;
    .restart local v0    # "bounds":Landroid/graphics/Rect;
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    invoke-interface {v3, p1}, Landroid/app/IVivoSmartMultiWindowManager;->getStackBounds(I)Landroid/graphics/Rect;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 167
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .restart local v1    # "bounds":Landroid/graphics/Rect;
    goto :goto_0

    .line 164
    .end local v1    # "bounds":Landroid/graphics/Rect;
    .restart local v0    # "bounds":Landroid/graphics/Rect;
    :catch_0
    move-exception v2

    .line 165
    .local v2, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getStackBoundsById(I)Landroid/graphics/Rect;
    .locals 4
    .param p1, "stackId"    # I

    .prologue
    .line 308
    const/4 v0, 0x0

    .line 309
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-direct {p0}, Landroid/app/VivoSmartMultiWindowManager;->getService()Landroid/app/IVivoSmartMultiWindowManager;

    .line 310
    iget-object v3, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    if-nez v3, :cond_0

    move-object v1, v0

    .line 318
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .local v1, "bounds":Landroid/graphics/Rect;
    :goto_0
    return-object v1

    .line 314
    .end local v1    # "bounds":Landroid/graphics/Rect;
    .restart local v0    # "bounds":Landroid/graphics/Rect;
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    invoke-interface {v3, p1}, Landroid/app/IVivoSmartMultiWindowManager;->getStackBoundsById(I)Landroid/graphics/Rect;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 318
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .restart local v1    # "bounds":Landroid/graphics/Rect;
    goto :goto_0

    .line 315
    .end local v1    # "bounds":Landroid/graphics/Rect;
    .restart local v0    # "bounds":Landroid/graphics/Rect;
    :catch_0
    move-exception v2

    .line 316
    .local v2, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getStackBoundsByToken(Landroid/os/IBinder;)Landroid/graphics/Rect;
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 182
    const/4 v0, 0x0

    .line 183
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-direct {p0}, Landroid/app/VivoSmartMultiWindowManager;->getService()Landroid/app/IVivoSmartMultiWindowManager;

    .line 184
    iget-object v2, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    if-nez v2, :cond_0

    move-object v2, v0

    .line 192
    :goto_0
    return-object v2

    .line 188
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    invoke-interface {v2, p1}, Landroid/app/IVivoSmartMultiWindowManager;->getStackBoundsByToken(Landroid/os/IBinder;)Landroid/graphics/Rect;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 192
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 189
    :catch_0
    move-exception v1

    .line 190
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getStackDisplayMode()I
    .locals 4

    .prologue
    .line 196
    const/4 v1, 0x0

    .line 197
    .local v1, "mode":I
    invoke-direct {p0}, Landroid/app/VivoSmartMultiWindowManager;->getService()Landroid/app/IVivoSmartMultiWindowManager;

    .line 198
    iget-object v3, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    if-nez v3, :cond_0

    move v2, v1

    .line 206
    .end local v1    # "mode":I
    .local v2, "mode":I
    :goto_0
    return v2

    .line 202
    .end local v2    # "mode":I
    .restart local v1    # "mode":I
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    invoke-interface {v3}, Landroid/app/IVivoSmartMultiWindowManager;->getStackDisplayMode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 206
    .end local v1    # "mode":I
    .restart local v2    # "mode":I
    goto :goto_0

    .line 203
    .end local v2    # "mode":I
    .restart local v1    # "mode":I
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getStackDisplayModeById(I)I
    .locals 4
    .param p1, "stackId"    # I

    .prologue
    .line 322
    const/4 v1, 0x0

    .line 323
    .local v1, "mode":I
    invoke-direct {p0}, Landroid/app/VivoSmartMultiWindowManager;->getService()Landroid/app/IVivoSmartMultiWindowManager;

    .line 324
    iget-object v3, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    if-nez v3, :cond_0

    move v2, v1

    .line 332
    .end local v1    # "mode":I
    .local v2, "mode":I
    :goto_0
    return v2

    .line 328
    .end local v2    # "mode":I
    .restart local v1    # "mode":I
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    invoke-interface {v3, p1}, Landroid/app/IVivoSmartMultiWindowManager;->getStackDisplayModeById(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 332
    .end local v1    # "mode":I
    .restart local v2    # "mode":I
    goto :goto_0

    .line 329
    .end local v2    # "mode":I
    .restart local v1    # "mode":I
    :catch_0
    move-exception v0

    .line 330
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getStackScaleValue()F
    .locals 4

    .prologue
    .line 268
    const/4 v1, 0x0

    .line 269
    .local v1, "scale":F
    invoke-direct {p0}, Landroid/app/VivoSmartMultiWindowManager;->getService()Landroid/app/IVivoSmartMultiWindowManager;

    .line 270
    iget-object v3, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    if-nez v3, :cond_0

    move v2, v1

    .line 278
    .end local v1    # "scale":F
    .local v2, "scale":F
    :goto_0
    return v2

    .line 274
    .end local v2    # "scale":F
    .restart local v1    # "scale":F
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    invoke-interface {v3}, Landroid/app/IVivoSmartMultiWindowManager;->getStackScaleValue()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 278
    .end local v1    # "scale":F
    .restart local v2    # "scale":F
    goto :goto_0

    .line 275
    .end local v2    # "scale":F
    .restart local v1    # "scale":F
    :catch_0
    move-exception v0

    .line 276
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getTopRunningPackageName()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 406
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 407
    .local v0, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/app/VivoSmartMultiWindowManager;->getService()Landroid/app/IVivoSmartMultiWindowManager;

    .line 408
    iget-object v2, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    if-nez v2, :cond_0

    move-object v1, v0

    .line 415
    .end local v0    # "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v1, "pkgs":Ljava/lang/Object;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    return-object v1

    .line 412
    .end local v1    # "pkgs":Ljava/lang/Object;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v0    # "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    invoke-interface {v2}, Landroid/app/IVivoSmartMultiWindowManager;->getTopRunningPackageName()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 415
    .restart local v1    # "pkgs":Ljava/lang/Object;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 413
    .end local v1    # "pkgs":Ljava/lang/Object;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public initSmartMultiWindowData()V
    .locals 1

    .prologue
    .line 432
    invoke-direct {p0}, Landroid/app/VivoSmartMultiWindowManager;->getService()Landroid/app/IVivoSmartMultiWindowManager;

    .line 433
    iget-object v0, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    if-nez v0, :cond_0

    .line 440
    :goto_0
    return-void

    .line 437
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    invoke-interface {v0}, Landroid/app/IVivoSmartMultiWindowManager;->initSmartMultiWindowData()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 438
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public isSplitMode()Z
    .locals 3

    .prologue
    .line 487
    const/4 v0, 0x0

    .line 488
    .local v0, "isSplit":Z
    invoke-direct {p0}, Landroid/app/VivoSmartMultiWindowManager;->getService()Landroid/app/IVivoSmartMultiWindowManager;

    .line 489
    iget-object v2, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    if-nez v2, :cond_0

    move v1, v0

    .line 496
    .end local v0    # "isSplit":Z
    .local v1, "isSplit":I
    :goto_0
    return v1

    .line 493
    .end local v1    # "isSplit":I
    .restart local v0    # "isSplit":Z
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    invoke-interface {v2}, Landroid/app/IVivoSmartMultiWindowManager;->isSplitMode()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    move v1, v0

    .line 496
    .restart local v1    # "isSplit":I
    goto :goto_0

    .line 494
    .end local v1    # "isSplit":I
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public isStatusBarVisible()Z
    .locals 3

    .prologue
    .line 419
    const/4 v0, 0x0

    .line 420
    .local v0, "visible":Z
    invoke-direct {p0}, Landroid/app/VivoSmartMultiWindowManager;->getService()Landroid/app/IVivoSmartMultiWindowManager;

    .line 421
    iget-object v2, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    if-nez v2, :cond_0

    move v1, v0

    .line 428
    .end local v0    # "visible":Z
    .local v1, "visible":I
    :goto_0
    return v1

    .line 425
    .end local v1    # "visible":I
    .restart local v0    # "visible":Z
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    invoke-interface {v2}, Landroid/app/IVivoSmartMultiWindowManager;->isStatusBarVisible()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    move v1, v0

    .line 428
    .restart local v1    # "visible":I
    goto :goto_0

    .line 426
    .end local v1    # "visible":I
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public notifyAppsModeListUpdated()V
    .locals 1

    .prologue
    .line 454
    invoke-direct {p0}, Landroid/app/VivoSmartMultiWindowManager;->getService()Landroid/app/IVivoSmartMultiWindowManager;

    .line 455
    iget-object v0, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    if-nez v0, :cond_0

    .line 462
    :goto_0
    return-void

    .line 459
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    invoke-interface {v0}, Landroid/app/IVivoSmartMultiWindowManager;->notifyAppsModeListUpdated()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 460
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setCallFromPassiveMode(IIFF)V
    .locals 1
    .param p1, "callFromPassiveModeInSplitMode"    # I
    .param p2, "taskReturnType"    # I
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    .line 395
    invoke-direct {p0}, Landroid/app/VivoSmartMultiWindowManager;->getService()Landroid/app/IVivoSmartMultiWindowManager;

    .line 396
    iget-object v0, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    if-nez v0, :cond_0

    .line 403
    :goto_0
    return-void

    .line 400
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/app/IVivoSmartMultiWindowManager;->setCallFromPassiveMode(IIFF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 401
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setFocusedStack(I)V
    .locals 1
    .param p1, "StackId"    # I

    .prologue
    .line 443
    invoke-direct {p0}, Landroid/app/VivoSmartMultiWindowManager;->getService()Landroid/app/IVivoSmartMultiWindowManager;

    .line 444
    iget-object v0, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    if-nez v0, :cond_0

    .line 451
    :goto_0
    return-void

    .line 448
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    invoke-interface {v0, p1}, Landroid/app/IVivoSmartMultiWindowManager;->setFocusedStack(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 449
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setParamsForImePos(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "object"    # Landroid/os/Bundle;

    .prologue
    .line 91
    invoke-direct {p0}, Landroid/app/VivoSmartMultiWindowManager;->getService()Landroid/app/IVivoSmartMultiWindowManager;

    .line 92
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    if-nez v0, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    :try_start_0
    iget-object v0, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    invoke-interface {v0, p1}, Landroid/app/IVivoSmartMultiWindowManager;->setParamsForImePos(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setSplitMode(Z)V
    .locals 1
    .param p1, "splitMode"    # Z

    .prologue
    .line 465
    invoke-direct {p0}, Landroid/app/VivoSmartMultiWindowManager;->getService()Landroid/app/IVivoSmartMultiWindowManager;

    .line 466
    iget-object v0, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    if-nez v0, :cond_0

    .line 473
    :goto_0
    return-void

    .line 470
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    invoke-interface {v0, p1}, Landroid/app/IVivoSmartMultiWindowManager;->setSplitMode(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 471
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setStackDisplayModeById(II)V
    .locals 1
    .param p1, "stackId"    # I
    .param p2, "mode"    # I

    .prologue
    .line 297
    invoke-direct {p0}, Landroid/app/VivoSmartMultiWindowManager;->getService()Landroid/app/IVivoSmartMultiWindowManager;

    .line 298
    iget-object v0, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    if-nez v0, :cond_0

    .line 305
    :goto_0
    return-void

    .line 302
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    invoke-interface {v0, p1, p2}, Landroid/app/IVivoSmartMultiWindowManager;->setStackDisplayModeById(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 303
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setWindowFullScreen(ZZ)Ljava/lang/String;
    .locals 3
    .param p1, "isFocusedStackFull"    # Z
    .param p2, "buttonClick"    # Z

    .prologue
    .line 382
    const/4 v0, 0x0

    .line 383
    .local v0, "pkgName":Ljava/lang/String;
    invoke-direct {p0}, Landroid/app/VivoSmartMultiWindowManager;->getService()Landroid/app/IVivoSmartMultiWindowManager;

    .line 384
    iget-object v2, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    if-nez v2, :cond_0

    move-object v1, v0

    .line 391
    .end local v0    # "pkgName":Ljava/lang/String;
    .local v1, "pkgName":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 388
    .end local v1    # "pkgName":Ljava/lang/String;
    .restart local v0    # "pkgName":Ljava/lang/String;
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    invoke-interface {v2, p1, p2}, Landroid/app/IVivoSmartMultiWindowManager;->setWindowFullScreen(ZZ)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 391
    .end local v0    # "pkgName":Ljava/lang/String;
    .restart local v1    # "pkgName":Ljava/lang/String;
    goto :goto_0

    .line 389
    .end local v1    # "pkgName":Ljava/lang/String;
    .restart local v0    # "pkgName":Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public splitHomeOptions()V
    .locals 1

    .prologue
    .line 582
    invoke-direct {p0}, Landroid/app/VivoSmartMultiWindowManager;->getService()Landroid/app/IVivoSmartMultiWindowManager;

    .line 583
    iget-object v0, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    if-nez v0, :cond_0

    .line 590
    :goto_0
    return-void

    .line 587
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    invoke-interface {v0}, Landroid/app/IVivoSmartMultiWindowManager;->splitHomeOptions()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 588
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public updateActivityStackParam(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "object"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/VivoSmartMultiWindowManager;->getService()Landroid/app/IVivoSmartMultiWindowManager;

    .line 54
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    if-nez v0, :cond_1

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    :try_start_0
    iget-object v0, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    invoke-interface {v0, p1}, Landroid/app/IVivoSmartMultiWindowManager;->updateActivityStackParam(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public updateActivityStackParamNoAnimation(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "object"    # Landroid/os/Bundle;

    .prologue
    .line 476
    invoke-direct {p0}, Landroid/app/VivoSmartMultiWindowManager;->getService()Landroid/app/IVivoSmartMultiWindowManager;

    .line 477
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    if-nez v0, :cond_1

    .line 484
    :cond_0
    :goto_0
    return-void

    .line 481
    :cond_1
    :try_start_0
    iget-object v0, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    invoke-interface {v0, p1}, Landroid/app/IVivoSmartMultiWindowManager;->updateActivityStackParamNoAnimation(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 482
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public updateImeDockParam(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "object"    # Landroid/os/Bundle;

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/app/VivoSmartMultiWindowManager;->getService()Landroid/app/IVivoSmartMultiWindowManager;

    .line 66
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    if-nez v0, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    :try_start_0
    iget-object v0, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    invoke-interface {v0, p1}, Landroid/app/IVivoSmartMultiWindowManager;->updateImeDockParam(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public updateSpecialConfiguration(Ljava/lang/String;I)V
    .locals 1
    .param p1, "clsname"    # Ljava/lang/String;
    .param p2, "orientation"    # I

    .prologue
    .line 526
    if-nez p1, :cond_1

    .line 537
    :cond_0
    :goto_0
    return-void

    .line 529
    :cond_1
    invoke-direct {p0}, Landroid/app/VivoSmartMultiWindowManager;->getService()Landroid/app/IVivoSmartMultiWindowManager;

    .line 530
    iget-object v0, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    if-eqz v0, :cond_0

    .line 534
    :try_start_0
    iget-object v0, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    invoke-interface {v0, p1, p2}, Landroid/app/IVivoSmartMultiWindowManager;->updateSpecialConfiguration(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 535
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public updateStackOritationByActivity(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 171
    invoke-direct {p0}, Landroid/app/VivoSmartMultiWindowManager;->getService()Landroid/app/IVivoSmartMultiWindowManager;

    .line 172
    iget-object v0, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    if-nez v0, :cond_0

    .line 179
    :goto_0
    return-void

    .line 176
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    invoke-interface {v0, p1}, Landroid/app/IVivoSmartMultiWindowManager;->updateStackOritationByActivity(Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 177
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public vivoForceStopPackage(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 293
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/VivoSmartMultiWindowManager;->vivoForceStopPackageAsUser(Ljava/lang/String;I)V

    .line 294
    return-void
.end method

.method public vivoForceStopPackageAsUser(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 282
    invoke-direct {p0}, Landroid/app/VivoSmartMultiWindowManager;->getService()Landroid/app/IVivoSmartMultiWindowManager;

    .line 283
    iget-object v0, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    if-nez v0, :cond_0

    .line 290
    :goto_0
    return-void

    .line 287
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/app/VivoSmartMultiWindowManager;->mService:Landroid/app/IVivoSmartMultiWindowManager;

    invoke-interface {v0, p1, p2}, Landroid/app/IVivoSmartMultiWindowManager;->vivoForceStopPackage(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 288
    :catch_0
    move-exception v0

    goto :goto_0
.end method
