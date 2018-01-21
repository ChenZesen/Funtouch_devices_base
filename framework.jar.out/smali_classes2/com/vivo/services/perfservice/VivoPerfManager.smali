.class public Lcom/vivo/services/perfservice/VivoPerfManager;
.super Ljava/lang/Object;
.source "VivoPerfManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VivoPerfManager"

.field private static sService:Lcom/vivo/services/perfservice/IVivoPerfService;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/vivo/services/perfservice/VivoPerfManager;->sService:Lcom/vivo/services/perfservice/IVivoPerfService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/vivo/services/perfservice/VivoPerfManager;->mContext:Landroid/content/Context;

    .line 22
    return-void
.end method

.method private static getService()Lcom/vivo/services/perfservice/IVivoPerfService;
    .locals 2

    .prologue
    .line 25
    sget-object v1, Lcom/vivo/services/perfservice/VivoPerfManager;->sService:Lcom/vivo/services/perfservice/IVivoPerfService;

    if-eqz v1, :cond_0

    .line 26
    sget-object v1, Lcom/vivo/services/perfservice/VivoPerfManager;->sService:Lcom/vivo/services/perfservice/IVivoPerfService;

    .line 32
    .local v0, "b":Landroid/os/IBinder;
    :goto_0
    return-object v1

    .line 28
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    const-string v1, "vivo_perf_service"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 29
    .restart local v0    # "b":Landroid/os/IBinder;
    if-nez v0, :cond_1

    .line 30
    const/4 v1, 0x0

    goto :goto_0

    .line 31
    :cond_1
    invoke-static {v0}, Lcom/vivo/services/perfservice/IVivoPerfService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/vivo/services/perfservice/IVivoPerfService;

    move-result-object v1

    sput-object v1, Lcom/vivo/services/perfservice/VivoPerfManager;->sService:Lcom/vivo/services/perfservice/IVivoPerfService;

    .line 32
    sget-object v1, Lcom/vivo/services/perfservice/VivoPerfManager;->sService:Lcom/vivo/services/perfservice/IVivoPerfService;

    goto :goto_0
.end method


# virtual methods
.method public ping(Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-static {}, Lcom/vivo/services/perfservice/VivoPerfManager;->getService()Lcom/vivo/services/perfservice/IVivoPerfService;

    move-result-object v1

    .line 37
    .local v1, "service":Lcom/vivo/services/perfservice/IVivoPerfService;
    if-nez v1, :cond_0

    .line 45
    :goto_0
    return-void

    .line 41
    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Lcom/vivo/services/perfservice/IVivoPerfService;->ping(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "VivoPerfManager"

    const-string v3, "Dead object in ping"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
