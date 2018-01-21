.class Lcom/android/server/pm/BgDexOptForSdAppService$1;
.super Ljava/lang/Thread;
.source "BgDexOptForSdAppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/BgDexOptForSdAppService;->onStartJob(Landroid/app/job/JobParameters;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/BgDexOptForSdAppService;

.field final synthetic val$jobParams:Landroid/app/job/JobParameters;

.field final synthetic val$pm:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/BgDexOptForSdAppService;Ljava/lang/String;Lcom/android/server/pm/PackageManagerService;Landroid/app/job/JobParameters;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/server/pm/BgDexOptForSdAppService$1;->this$0:Lcom/android/server/pm/BgDexOptForSdAppService;

    iput-object p3, p0, Lcom/android/server/pm/BgDexOptForSdAppService$1;->val$pm:Lcom/android/server/pm/PackageManagerService;

    iput-object p4, p0, Lcom/android/server/pm/BgDexOptForSdAppService$1;->val$jobParams:Landroid/app/job/JobParameters;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 104
    :try_start_0
    sget-object v3, Lcom/android/server/pm/BgDexOptForSdAppService;->needToDexoatpkgs:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/server/pm/BgDexOptForSdAppService;->needToDexoatpkgs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 106
    sget-object v3, Lcom/android/server/pm/BgDexOptForSdAppService;->needToDexoatpkgs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 107
    .local v2, "pkg":Ljava/lang/String;
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/server/pm/BgDexOptForSdAppService$1;->val$pm:Lcom/android/server/pm/PackageManagerService;

    const-string v4, "Immediately"

    invoke-virtual {v3, v2, v4}, Lcom/android/server/pm/PackageManagerService;->performDexOptIfNeeded(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 108
    const-string v3, "BgDexOptForSdAppService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "dex2oat failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 113
    :cond_0
    const-wide/16 v4, 0x7d0

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 114
    :catch_0
    move-exception v3

    goto :goto_0

    .line 120
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_1
    :try_start_2
    const-string v3, "BgDexOptForSdAppService"

    const-string v4, "job completion"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v3, p0, Lcom/android/server/pm/BgDexOptForSdAppService$1;->this$0:Lcom/android/server/pm/BgDexOptForSdAppService;

    iget-object v4, p0, Lcom/android/server/pm/BgDexOptForSdAppService$1;->val$jobParams:Landroid/app/job/JobParameters;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/pm/BgDexOptForSdAppService;->jobFinished(Landroid/app/job/JobParameters;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 126
    :goto_1
    return-void

    .line 123
    :catch_1
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_1
.end method
