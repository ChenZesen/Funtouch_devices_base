.class public Lcom/android/server/am/VivoSmartMultiWindowManagerService;
.super Landroid/app/IVivoSmartMultiWindowManager$Stub;
.source "VivoSmartMultiWindowManagerService.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/VivoSmartMultiWindowManagerService$1;,
        Lcom/android/server/am/VivoSmartMultiWindowManagerService$LocalService;
    }
.end annotation


# static fields
.field static final DEBUG_LAYOUT_SMARTWINDOW:Z

.field static final TAG_SMARTWINDOW:Ljava/lang/String; = "vivo_debug_VivoSmartMultiWindowManagerService"


# instance fields
.field mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

.field mSystemReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    sget-boolean v0, Landroid/util/VivoSmartMultiWindowConfig;->DEBUG_IMPORTANT:Z

    sput-boolean v0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->DEBUG_LAYOUT_SMARTWINDOW:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 193
    invoke-direct {p0}, Landroid/app/IVivoSmartMultiWindowManager$Stub;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mSystemReady:Z

    .line 32
    invoke-static {}, Lcom/android/server/am/VivoSmartMultiWindowAms;->getInstance()Lcom/android/server/am/VivoSmartMultiWindowAms;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    .line 194
    sget-boolean v0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->DEBUG_LAYOUT_SMARTWINDOW:Z

    if-eqz v0, :cond_0

    .line 195
    const-string v0, "vivo_debug_VivoSmartMultiWindowManagerService"

    const-string v1, "VivoSmartMultiWindowManagerService construct"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 186
    invoke-direct {p0}, Landroid/app/IVivoSmartMultiWindowManager$Stub;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mSystemReady:Z

    .line 32
    invoke-static {}, Lcom/android/server/am/VivoSmartMultiWindowAms;->getInstance()Lcom/android/server/am/VivoSmartMultiWindowAms;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    .line 187
    sget-boolean v0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->DEBUG_LAYOUT_SMARTWINDOW:Z

    if-eqz v0, :cond_0

    .line 188
    const-string v0, "vivo_debug_VivoSmartMultiWindowManagerService"

    const-string v1, "VivoSmartMultiWindowManagerService construct with context"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_0
    const-class v0, Landroid/app/VivoSmartMultiWindowManagerInternal;

    new-instance v1, Lcom/android/server/am/VivoSmartMultiWindowManagerService$LocalService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/VivoSmartMultiWindowManagerService$LocalService;-><init>(Lcom/android/server/am/VivoSmartMultiWindowManagerService;Lcom/android/server/am/VivoSmartMultiWindowManagerService$1;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 191
    return-void
.end method

.method public static final main(Landroid/content/Context;)Lcom/android/server/am/VivoSmartMultiWindowManagerService;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 181
    new-instance v0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;

    invoke-direct {v0, p0}, Lcom/android/server/am/VivoSmartMultiWindowManagerService;-><init>(Landroid/content/Context;)V

    .line 182
    .local v0, "mService":Lcom/android/server/am/VivoSmartMultiWindowManagerService;
    const-string v1, "vivosmartmultiwindowservice"

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    .line 183
    return-object v0
.end method


# virtual methods
.method public changeFocusedStackDisplayMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    if-nez v0, :cond_0

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    invoke-virtual {v0, p1}, Lcom/android/server/am/VivoSmartMultiWindowAms;->changeFocusedStackDisplayMode(I)V

    goto :goto_0
.end method

.method public decideFocusStack(Landroid/graphics/Point;)I
    .locals 1
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 99
    :cond_0
    const/4 v0, -0x1

    .line 101
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    invoke-virtual {v0, p1}, Lcom/android/server/am/VivoSmartMultiWindowAms;->decideFocusStack(Landroid/graphics/Point;)I

    move-result v0

    goto :goto_0
.end method

.method public getActivityDisplayMode(Landroid/os/IBinder;)I
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 68
    :cond_0
    const/4 v0, 0x0

    .line 70
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    invoke-virtual {v0, p1}, Lcom/android/server/am/VivoSmartMultiWindowAms;->getActivityDisplayMode(Landroid/os/IBinder;)I

    move-result v0

    goto :goto_0
.end method

.method public getAllowSplitApps()Ljava/util/List;
    .locals 1
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
    .line 364
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    if-nez v0, :cond_0

    .line 365
    const/4 v0, 0x0

    .line 367
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    invoke-virtual {v0}, Lcom/android/server/am/VivoSmartMultiWindowAms;->getAllowSplitApps()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public getAnotherStackId()I
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    if-nez v0, :cond_0

    .line 264
    const/4 v0, 0x0

    .line 266
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    invoke-virtual {v0}, Lcom/android/server/am/VivoSmartMultiWindowAms;->getAnotherStackId()I

    move-result v0

    goto :goto_0
.end method

.method public getAnotherStackTopPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    if-nez v0, :cond_0

    .line 271
    const/4 v0, 0x0

    .line 273
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    invoke-virtual {v0}, Lcom/android/server/am/VivoSmartMultiWindowAms;->getAnotherStackTopPackage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAnotherStackTopPackageAndInstanceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    if-nez v0, :cond_0

    .line 292
    const/4 v0, 0x0

    .line 294
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    invoke-virtual {v0}, Lcom/android/server/am/VivoSmartMultiWindowAms;->getAnotherStackTopPackageAndInstanceId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getFocusStackDisplayMode()I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    if-nez v0, :cond_0

    .line 75
    const/4 v0, 0x0

    .line 77
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    invoke-virtual {v0}, Lcom/android/server/am/VivoSmartMultiWindowAms;->getFocusStackDisplayMode()I

    move-result v0

    goto :goto_0
.end method

.method public getFocusedStackId()I
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    if-nez v0, :cond_0

    .line 257
    const/4 v0, 0x0

    .line 259
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    invoke-virtual {v0}, Lcom/android/server/am/VivoSmartMultiWindowAms;->getFocusedStackId()I

    move-result v0

    goto :goto_0
.end method

.method public getFocusedStackRunningPackageName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 155
    const/4 v0, 0x0

    .line 156
    .local v0, "pkg":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    if-eqz v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    invoke-virtual {v1}, Lcom/android/server/am/VivoSmartMultiWindowAms;->getFocusedStackRunningPackageName()Ljava/lang/String;

    move-result-object v0

    .line 159
    :cond_0
    return-object v0
.end method

.method public getFocusedStackTopPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    if-nez v0, :cond_0

    .line 278
    const/4 v0, 0x0

    .line 280
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    invoke-virtual {v0}, Lcom/android/server/am/VivoSmartMultiWindowAms;->getFocusedStackTopPackage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getFocusedStackTopPackageAndInstanceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    if-nez v0, :cond_0

    .line 285
    const/4 v0, 0x0

    .line 287
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    invoke-virtual {v0}, Lcom/android/server/am/VivoSmartMultiWindowAms;->getFocusedStackTopPackageAndInstanceId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    if-nez v0, :cond_0

    .line 392
    const/4 v0, 0x0

    .line 394
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    invoke-virtual {v0}, Lcom/android/server/am/VivoSmartMultiWindowAms;->getIntent()Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method public getKeyboardVisibleState()I
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    invoke-virtual {v0}, Lcom/android/server/am/VivoSmartMultiWindowAms;->getKeyboardVisibleState()I

    move-result v0

    return v0
.end method

.method public getMustFullScreenActivity()Ljava/util/List;
    .locals 1
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
    .line 371
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    if-nez v0, :cond_0

    .line 372
    const/4 v0, 0x0

    .line 374
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    invoke-virtual {v0}, Lcom/android/server/am/VivoSmartMultiWindowAms;->getMustFullScreenActivity()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public getSplitDisplayInfo()[F
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    if-nez v0, :cond_0

    .line 133
    const/4 v0, 0x0

    .line 135
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    invoke-virtual {v0}, Lcom/android/server/am/VivoSmartMultiWindowAms;->getSplitDisplayInfo()[F

    move-result-object v0

    goto :goto_0
.end method

.method public getSplitStackConfiguration()Landroid/content/res/Configuration;
    .locals 2

    .prologue
    .line 147
    const/4 v0, 0x0

    .line 148
    .local v0, "config":Landroid/content/res/Configuration;
    iget-object v1, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    if-nez v1, :cond_0

    .line 151
    .end local v0    # "config":Landroid/content/res/Configuration;
    :goto_0
    return-object v0

    .restart local v0    # "config":Landroid/content/res/Configuration;
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    invoke-virtual {v1}, Lcom/android/server/am/VivoSmartMultiWindowAms;->getSplitStackConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    goto :goto_0
.end method

.method public getSplitStackRotation()I
    .locals 2

    .prologue
    .line 139
    const/4 v0, -0x1

    .line 140
    .local v0, "rotation":I
    iget-object v1, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    if-nez v1, :cond_0

    .line 143
    .end local v0    # "rotation":I
    :goto_0
    return v0

    .restart local v0    # "rotation":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    invoke-virtual {v1}, Lcom/android/server/am/VivoSmartMultiWindowAms;->getSplitStackRotation()I

    move-result v0

    goto :goto_0
.end method

.method public getStackBounds(I)Landroid/graphics/Rect;
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    if-nez v0, :cond_0

    .line 92
    const/4 v0, 0x0

    .line 94
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    invoke-virtual {v0, p1}, Lcom/android/server/am/VivoSmartMultiWindowAms;->getStackBoundsByMode(I)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0
.end method

.method public getStackBoundsById(I)Landroid/graphics/Rect;
    .locals 1
    .param p1, "stackId"    # I

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    invoke-virtual {v0, p1}, Lcom/android/server/am/VivoSmartMultiWindowAms;->getStackBoundsById(I)Landroid/graphics/Rect;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStackBoundsByToken(Landroid/os/IBinder;)Landroid/graphics/Rect;
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    if-nez v0, :cond_0

    .line 117
    const/4 v0, 0x0

    .line 119
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    invoke-virtual {v0, p1}, Lcom/android/server/am/VivoSmartMultiWindowAms;->getStackBounds(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0
.end method

.method public getStackDisplayMode()I
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    if-nez v0, :cond_0

    .line 124
    const/4 v0, 0x0

    .line 126
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    invoke-virtual {v0}, Lcom/android/server/am/VivoSmartMultiWindowAms;->getStackDisplayMode()I

    move-result v0

    goto :goto_0
.end method

.method public getStackDisplayModeById(I)I
    .locals 1
    .param p1, "stackId"    # I

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    if-nez v0, :cond_0

    .line 236
    const/4 v0, 0x0

    .line 238
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    invoke-virtual {v0, p1}, Lcom/android/server/am/VivoSmartMultiWindowAms;->getStackDisplayModeById(I)I

    move-result v0

    goto :goto_0
.end method

.method public getStackScaleValue()F
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    if-nez v0, :cond_0

    .line 164
    const/4 v0, 0x0

    .line 166
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    invoke-virtual {v0}, Lcom/android/server/am/VivoSmartMultiWindowAms;->getStackScaleValue()F

    move-result v0

    goto :goto_0
.end method

.method public getTopRunningPackageName()Ljava/util/List;
    .locals 1
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
    .line 242
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    if-nez v0, :cond_0

    .line 243
    const/4 v0, 0x0

    .line 245
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    invoke-virtual {v0}, Lcom/android/server/am/VivoSmartMultiWindowAms;->getTopRunningPackageName()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public initSmartMultiWindowData()V
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    invoke-virtual {v0}, Lcom/android/server/am/VivoSmartMultiWindowAms;->initSmartMultiWindowData()V

    .line 327
    :cond_0
    return-void
.end method

.method public isSplitMode()Z
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    if-nez v0, :cond_0

    .line 358
    const/4 v0, 0x0

    .line 360
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    invoke-virtual {v0}, Lcom/android/server/am/VivoSmartMultiWindowAms;->isSplitMode()Z

    move-result v0

    goto :goto_0
.end method

.method public isStatusBarVisible()Z
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    if-nez v0, :cond_0

    .line 318
    const/4 v0, 0x0

    .line 320
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    invoke-virtual {v0}, Lcom/android/server/am/VivoSmartMultiWindowAms;->isStatusBarVisible()Z

    move-result v0

    goto :goto_0
.end method

.method public notifyAppsModeListUpdated()V
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    invoke-virtual {v0}, Lcom/android/server/am/VivoSmartMultiWindowAms;->notifyAppsModeListUpdated()V

    .line 340
    :cond_0
    return-void
.end method

.method public setCallFromPassiveMode(IIFF)V
    .locals 1
    .param p1, "callFromPassiveModeInSplitMode"    # I
    .param p2, "taskReturnType"    # I
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/am/VivoSmartMultiWindowAms;->setCallFromPassiveMode(IIFF)V

    .line 308
    :cond_0
    return-void
.end method

.method public setFocusedStack(I)V
    .locals 1
    .param p1, "stackId"    # I

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    invoke-virtual {v0, p1}, Lcom/android/server/am/VivoSmartMultiWindowAms;->setFocusedStack(I)V

    .line 334
    :cond_0
    return-void
.end method

.method public setParamsForImePos(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    invoke-virtual {v0, p1}, Lcom/android/server/am/VivoSmartMultiWindowAms;->setParamsForImePos(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public setSplitMode(Z)V
    .locals 1
    .param p1, "splitMode"    # Z

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    if-nez v0, :cond_0

    .line 347
    :goto_0
    return-void

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    invoke-virtual {v0, p1}, Lcom/android/server/am/VivoSmartMultiWindowAms;->setSplitMode(Z)V

    goto :goto_0
.end method

.method public setStackDisplayModeById(II)V
    .locals 1
    .param p1, "stackId"    # I
    .param p2, "mode"    # I

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/VivoSmartMultiWindowAms;->setStackDisplayModeById(II)V

    .line 314
    :cond_0
    return-void
.end method

.method public setSystemProcess()V
    .locals 3

    .prologue
    .line 224
    :try_start_0
    const-string v1, "vivosmartmultiwindowservice"

    const/4 v2, 0x1

    invoke-static {v1, p0, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :goto_0
    return-void

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setSystemReady(Z)V
    .locals 3
    .param p1, "ready"    # Z

    .prologue
    .line 174
    iput-boolean p1, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mSystemReady:Z

    .line 175
    sget-boolean v0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->DEBUG_LAYOUT_SMARTWINDOW:Z

    if-eqz v0, :cond_0

    .line 176
    const-string v0, "vivo_debug_VivoSmartMultiWindowManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VivoSmartMultiWindowManagerService setSystemReady ready = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_0
    return-void
.end method

.method public setWindowFullScreen(ZZ)Ljava/lang/String;
    .locals 1
    .param p1, "isFocusedStackFull"    # Z
    .param p2, "buttonClick"    # Z

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    if-nez v0, :cond_0

    .line 299
    const/4 v0, 0x0

    .line 301
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/VivoSmartMultiWindowAms;->setWindowFullScreenForApp(ZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public splitHomeOptions()V
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    if-nez v0, :cond_0

    .line 389
    :goto_0
    return-void

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    invoke-virtual {v0}, Lcom/android/server/am/VivoSmartMultiWindowAms;->splitHomeOptions()V

    goto :goto_0
.end method

.method public testIsSystemReady()Z
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mSystemReady:Z

    return v0
.end method

.method public updateActivityStackParam(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 39
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    invoke-virtual {v0, p1}, Lcom/android/server/am/VivoSmartMultiWindowAms;->updateActivityStackParam(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public updateActivityStackParamNoAnimation(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    invoke-virtual {v0, p1}, Lcom/android/server/am/VivoSmartMultiWindowAms;->updateActivityStackParamNoAnimation(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public updateImeDockParam(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    invoke-virtual {v0, p1}, Lcom/android/server/am/VivoSmartMultiWindowAms;->updateImeDockParam(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public updateSpecialConfiguration(Ljava/lang/String;I)V
    .locals 1
    .param p1, "clsname"    # Ljava/lang/String;
    .param p2, "orientation"    # I

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    if-nez v0, :cond_0

    .line 382
    :goto_0
    return-void

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/VivoSmartMultiWindowAms;->updateSpecialConfiguration(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public updateStackOritationByActivity(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 105
    sget-boolean v0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->DEBUG_LAYOUT_SMARTWINDOW:Z

    if-eqz v0, :cond_0

    .line 106
    const-string v0, "vivo_debug_VivoSmartMultiWindowManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VivoSmartMultiWindowManagerService updateStackOritationByActivity token = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mMultiWindowAmsInstance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    if-eqz v0, :cond_1

    if-nez p1, :cond_2

    .line 113
    :cond_1
    :goto_0
    return-void

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    invoke-virtual {v0, p1}, Lcom/android/server/am/VivoSmartMultiWindowAms;->updateStackOritationByActivity(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public vivoForceStopPackage(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    if-nez v0, :cond_0

    .line 253
    :goto_0
    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowManagerService;->mMultiWindowAmsInstance:Lcom/android/server/am/VivoSmartMultiWindowAms;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/VivoSmartMultiWindowAms;->vivoForceStopPackage(Ljava/lang/String;I)V

    goto :goto_0
.end method
