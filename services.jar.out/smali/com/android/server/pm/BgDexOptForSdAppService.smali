.class public Lcom/android/server/pm/BgDexOptForSdAppService;
.super Landroid/app/job/JobService;
.source "BgDexOptForSdAppService.java"


# static fields
.field static final BACKGROUND_DEXOPT_JOB_FOR_SD:I = 0x378

.field static DEBUG:Z = false

.field static final MINIMUM_LATENCY:I = 0x3a98

.field static final PER_DELAY_TIME:I = 0x7d0

.field static final TAG:Ljava/lang/String; = "BgDexOptForSdAppService"

.field static needToDexoatpkgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sDexoptServiceName:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/pm/BgDexOptForSdAppService;->DEBUG:Z

    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/pm/BgDexOptForSdAppService;->needToDexoatpkgs:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "android"

    const-class v2, Lcom/android/server/pm/BgDexOptForSdAppService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/pm/BgDexOptForSdAppService;->sDexoptServiceName:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method public static schedule(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p0, :cond_1

    .line 49
    const-string v2, "BgDexOptForSdAppService"

    const-string v3, "Nothing to do! context==null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    const-string v2, "BgDexOptForSdAppService"

    const-string v3, "come in"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const-string v2, "jobscheduler"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobScheduler;

    .line 55
    .local v1, "js":Landroid/app/job/JobScheduler;
    if-nez v1, :cond_2

    .line 56
    const-string v2, "BgDexOptForSdAppService"

    const-string v3, "JobScheduler is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 60
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_4

    .line 61
    :cond_3
    const-string v2, "BgDexOptForSdAppService"

    const-string v3, "Nothing to do! pkgs == null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 64
    :cond_4
    sget-object v2, Lcom/android/server/pm/BgDexOptForSdAppService;->needToDexoatpkgs:Ljava/util/ArrayList;

    if-nez v2, :cond_5

    .line 65
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/android/server/pm/BgDexOptForSdAppService;->needToDexoatpkgs:Ljava/util/ArrayList;

    .line 67
    :cond_5
    sget-object v2, Lcom/android/server/pm/BgDexOptForSdAppService;->needToDexoatpkgs:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 70
    new-instance v2, Landroid/app/job/JobInfo$Builder;

    const/16 v3, 0x378

    sget-object v4, Lcom/android/server/pm/BgDexOptForSdAppService;->sDexoptServiceName:Landroid/content/ComponentName;

    invoke-direct {v2, v3, v4}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const-wide/16 v4, 0x3a98

    invoke-virtual {v2, v4, v5}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    .line 74
    .local v0, "job":Landroid/app/job/JobInfo;
    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v1, v0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    goto :goto_0
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 5
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .prologue
    const/4 v2, 0x0

    .line 81
    if-nez p1, :cond_0

    .line 128
    :goto_0
    return v2

    .line 84
    :cond_0
    const-string v3, "BgDexOptForSdAppService"

    const-string v4, "onIdleStart"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const-string v3, "package"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageManagerService;

    .line 89
    .local v1, "pm":Lcom/android/server/pm/PackageManagerService;
    if-nez v1, :cond_1

    .line 90
    const-string v3, "BgDexOptForSdAppService"

    const-string v4, "Nothing to do pm==null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 94
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->isStorageLow()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 95
    const-string v3, "BgDexOptForSdAppService"

    const-string v4, "Nothing to do StorageLow"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 99
    :cond_2
    move-object v0, p1

    .line 100
    .local v0, "jobParams":Landroid/app/job/JobParameters;
    new-instance v2, Lcom/android/server/pm/BgDexOptForSdAppService$1;

    const-string v3, "BgDexOptForSdAppService_DexOpter"

    invoke-direct {v2, p0, v3, v1, v0}, Lcom/android/server/pm/BgDexOptForSdAppService$1;-><init>(Lcom/android/server/pm/BgDexOptForSdAppService;Ljava/lang/String;Lcom/android/server/pm/PackageManagerService;Landroid/app/job/JobParameters;)V

    invoke-virtual {v2}, Lcom/android/server/pm/BgDexOptForSdAppService$1;->start()V

    .line 128
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 1
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .prologue
    .line 133
    const/4 v0, 0x0

    return v0
.end method
