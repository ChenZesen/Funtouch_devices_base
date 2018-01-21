.class public Lcom/vivo/services/vivomain/VivoMainService;
.super Lcom/vivo/services/vivomain/IVivoMainService$Stub;
.source "VivoMainService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VivoMainService"


# instance fields
.field private actionProxy:Lcom/vivo/services/vivomain/VivoActionProxy;

.field private deviceProxy:Lcom/vivo/services/vivodevice/VivoDeviceProxy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/vivo/services/vivomain/IVivoMainService$Stub;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/vivo/services/vivomain/IVivoMainService$Stub;-><init>()V

    .line 29
    invoke-static {}, Lcom/vivo/services/vivodevice/VivoDeviceProxy;->getInstance()Lcom/vivo/services/vivodevice/VivoDeviceProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/services/vivomain/VivoMainService;->deviceProxy:Lcom/vivo/services/vivodevice/VivoDeviceProxy;

    .line 30
    invoke-static {}, Lcom/vivo/services/vivomain/VivoActionProxy;->getInstance()Lcom/vivo/services/vivomain/VivoActionProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/services/vivomain/VivoMainService;->actionProxy:Lcom/vivo/services/vivomain/VivoActionProxy;

    .line 31
    invoke-static {}, Lcom/vivo/services/vivodevice/VivoDeviceNative;->getDeviceNative()Lcom/vivo/services/vivodevice/VivoDeviceNative;

    .line 32
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vivo/services/vivomain/VivoMainService$1;

    invoke-direct {v1, p0}, Lcom/vivo/services/vivomain/VivoMainService$1;-><init>(Lcom/vivo/services/vivomain/VivoMainService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 45
    const-string v0, "VivoMainService"

    const-string v1, "VivoMainService created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void
.end method

.method private handActionCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "comm"    # Ljava/lang/String;

    .prologue
    .line 97
    const-string v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, "strs":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v0, v2, v4

    .line 99
    .local v0, "action":Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v3, v2, v4

    .line 100
    .local v3, "target":Ljava/lang/String;
    const/4 v4, 0x2

    aget-object v1, v2, v4

    .line 101
    .local v1, "operation":Ljava/lang/String;
    const-string v4, "play"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 102
    const-string v4, "boot_animation"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 103
    const-string v4, "start"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 104
    iget-object v4, p0, Lcom/vivo/services/vivomain/VivoMainService;->actionProxy:Lcom/vivo/services/vivomain/VivoActionProxy;

    invoke-virtual {v4}, Lcom/vivo/services/vivomain/VivoActionProxy;->startBootAnimation()Ljava/lang/String;

    move-result-object v4

    .line 110
    :goto_0
    return-object v4

    .line 105
    :cond_0
    const-string v4, "stop"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 106
    iget-object v4, p0, Lcom/vivo/services/vivomain/VivoMainService;->actionProxy:Lcom/vivo/services/vivomain/VivoActionProxy;

    invoke-virtual {v4}, Lcom/vivo/services/vivomain/VivoActionProxy;->stopBootAnimation()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 110
    :cond_1
    const-string v4, "error"

    goto :goto_0
.end method

.method private handDeviceCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "comm"    # Ljava/lang/String;

    .prologue
    .line 73
    const-string v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 74
    .local v3, "strs":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v0, v3, v4

    .line 75
    .local v0, "name":Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v2, v3, v4

    .line 76
    .local v2, "property":Ljava/lang/String;
    const/4 v4, 0x2

    aget-object v1, v3, v4

    .line 77
    .local v1, "operation":Ljava/lang/String;
    const-string v4, "get"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 78
    iget-object v4, p0, Lcom/vivo/services/vivomain/VivoMainService;->deviceProxy:Lcom/vivo/services/vivodevice/VivoDeviceProxy;

    invoke-virtual {v4, v0}, Lcom/vivo/services/vivodevice/VivoDeviceProxy;->getDeviceByName(Ljava/lang/String;)Lcom/vivo/services/vivodevice/VivoDevice;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/vivo/services/vivodevice/VivoDevice;->getPropertyByName(Ljava/lang/String;)Lcom/vivo/services/vivodevice/PropertyData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vivo/services/vivodevice/PropertyData;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 84
    :goto_0
    return-object v4

    .line 80
    :cond_0
    const-string v4, "set"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 81
    iget-object v4, p0, Lcom/vivo/services/vivomain/VivoMainService;->deviceProxy:Lcom/vivo/services/vivodevice/VivoDeviceProxy;

    invoke-virtual {v4, v0}, Lcom/vivo/services/vivodevice/VivoDeviceProxy;->getDeviceByName(Ljava/lang/String;)Lcom/vivo/services/vivodevice/VivoDevice;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/vivo/services/vivodevice/VivoDevice;->getPropertyByName(Ljava/lang/String;)Lcom/vivo/services/vivodevice/PropertyData;

    move-result-object v4

    const/4 v5, 0x3

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Lcom/vivo/services/vivodevice/PropertyData;->setValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 84
    :cond_1
    const-string v4, "error"

    goto :goto_0
.end method

.method private handFileCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "comm"    # Ljava/lang/String;

    .prologue
    .line 88
    const-string v0, "copyApanicFile"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    :cond_0
    :goto_0
    const-string v0, "error"

    return-object v0

    .line 90
    :cond_1
    const-string v0, "copyEfsErrFile"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method


# virtual methods
.method public command(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "comm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 58
    const-string v1, "VivoMainService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VivoMainService comm="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "strs":[Ljava/lang/String;
    aget-object v1, v0, v4

    const-string v2, "device"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    aget-object v1, v0, v5

    invoke-direct {p0, v1}, Lcom/vivo/services/vivomain/VivoMainService;->handDeviceCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 69
    :goto_0
    return-object v1

    .line 63
    :cond_0
    aget-object v1, v0, v4

    const-string v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    aget-object v1, v0, v5

    invoke-direct {p0, v1}, Lcom/vivo/services/vivomain/VivoMainService;->handFileCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 66
    :cond_1
    aget-object v1, v0, v4

    const-string v2, "action"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 67
    aget-object v1, v0, v5

    invoke-direct {p0, v1}, Lcom/vivo/services/vivomain/VivoMainService;->handActionCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 69
    :cond_2
    const-string v1, "error"

    goto :goto_0
.end method
