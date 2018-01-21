.class final Lcom/vivo/services/security/client/VivoPermissionManager$1;
.super Landroid/util/Singleton;
.source "VivoPermissionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/security/client/VivoPermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton",
        "<",
        "Lcom/vivo/services/security/client/IVivoPermissionService;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Lcom/vivo/services/security/client/IVivoPermissionService;
    .locals 3

    .prologue
    .line 80
    const-string v2, "vivo_permission_service"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 81
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/vivo/services/security/client/IVivoPermissionService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/vivo/services/security/client/IVivoPermissionService;

    move-result-object v1

    .line 82
    .local v1, "vps":Lcom/vivo/services/security/client/IVivoPermissionService;
    return-object v1
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/vivo/services/security/client/VivoPermissionManager$1;->create()Lcom/vivo/services/security/client/IVivoPermissionService;

    move-result-object v0

    return-object v0
.end method
