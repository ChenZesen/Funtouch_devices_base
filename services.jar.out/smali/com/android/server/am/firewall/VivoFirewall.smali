.class public Lcom/android/server/am/firewall/VivoFirewall;
.super Ljava/lang/Object;
.source "VivoFirewall.java"


# static fields
.field private static final BRINGUP_FUNCTION:Ljava/lang/String; = "persist.sys.vivofirewall"

.field public static DEBUG:Z = false

.field private static final IS_ENG:Z

.field private static final IS_LOG_CTRL_OPEN:Z

.field private static final KEY_VIVO_LOG_CTRL:Ljava/lang/String; = "persist.sys.log.ctrl"

.field static final TAG:Ljava/lang/String; = "VivoFirewall"

.field private static final VFW_VERSION:Ljava/lang/String; = "persist.sys.vfwversion"


# instance fields
.field private mAppBringupController:Lcom/android/server/am/firewall/VivoBringupController;

.field mHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/firewall/VivoFirewall;->IS_ENG:Z

    .line 21
    const-string v0, "persist.sys.log.ctrl"

    const-string v1, "no"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/firewall/VivoFirewall;->IS_LOG_CTRL_OPEN:Z

    .line 25
    sget-boolean v0, Lcom/android/server/am/firewall/VivoFirewall;->IS_LOG_CTRL_OPEN:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/am/firewall/VivoFirewall;->IS_ENG:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/server/am/firewall/VivoFirewall;->DEBUG:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "vivo_firewall_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/firewall/VivoFirewall;->mHandlerThread:Landroid/os/HandlerThread;

    .line 34
    iget-object v0, p0, Lcom/android/server/am/firewall/VivoFirewall;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 35
    new-instance v0, Lcom/android/server/am/firewall/VivoBringupController;

    iget-object v1, p0, Lcom/android/server/am/firewall/VivoFirewall;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1, p2}, Lcom/android/server/am/firewall/VivoBringupController;-><init>(Landroid/content/Context;Lcom/android/server/am/firewall/VivoFirewall;Landroid/os/Looper;Lcom/android/server/am/ActivityManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/firewall/VivoFirewall;->mAppBringupController:Lcom/android/server/am/firewall/VivoBringupController;

    .line 37
    return-void
.end method


# virtual methods
.method public dumpCachedInfo(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;I)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "opti"    # I

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/am/firewall/VivoFirewall;->mAppBringupController:Lcom/android/server/am/firewall/VivoBringupController;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/am/firewall/VivoBringupController;->dumpCachedInfo(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;I)V

    .line 68
    return-void
.end method

.method public shouldPreventStartProcess(Ljava/lang/String;Landroid/content/pm/ComponentInfo;Ljava/lang/String;II)Z
    .locals 6
    .param p1, "callerPackage"    # Ljava/lang/String;
    .param p2, "bringupSide"    # Landroid/content/pm/ComponentInfo;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "callerPid"    # I
    .param p5, "callerUid"    # I

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/server/am/firewall/VivoFirewall;->mAppBringupController:Lcom/android/server/am/firewall/VivoBringupController;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/firewall/VivoBringupController;->shouldPreventStartProcess(Ljava/lang/String;Landroid/content/pm/ComponentInfo;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public shouldValidateSyncType(Ljava/lang/String;)Z
    .locals 1
    .param p1, "syncType"    # Ljava/lang/String;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/server/am/firewall/VivoFirewall;->mAppBringupController:Lcom/android/server/am/firewall/VivoBringupController;

    invoke-virtual {v0, p1}, Lcom/android/server/am/firewall/VivoBringupController;->shouldValidateSyncType(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 41
    const-string v0, "persist.sys.vivofirewall"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v0, "persist.sys.vfwversion"

    const-string v1, "2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/android/server/am/firewall/VivoFirewall;->mAppBringupController:Lcom/android/server/am/firewall/VivoBringupController;

    invoke-virtual {v0}, Lcom/android/server/am/firewall/VivoBringupController;->start()V

    .line 44
    return-void
.end method

.method public systemReady()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/server/am/firewall/VivoFirewall;->mAppBringupController:Lcom/android/server/am/firewall/VivoBringupController;

    invoke-virtual {v0}, Lcom/android/server/am/firewall/VivoBringupController;->systemReady()V

    .line 49
    return-void
.end method
