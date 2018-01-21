.class public Lcom/vivo/services/vivodevice/VivoDeviceProxy;
.super Ljava/lang/Object;
.source "VivoDeviceProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VivoDeviceProxy"

.field private static mInstance:Lcom/vivo/services/vivodevice/VivoDeviceProxy;


# instance fields
.field private deviceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/vivo/services/vivodevice/VivoDevice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vivo/services/vivodevice/VivoDeviceProxy;->deviceMap:Ljava/util/Map;

    .line 23
    invoke-direct {p0}, Lcom/vivo/services/vivodevice/VivoDeviceProxy;->init()V

    .line 24
    return-void
.end method

.method public static getInstance()Lcom/vivo/services/vivodevice/VivoDeviceProxy;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/vivo/services/vivodevice/VivoDeviceProxy;->mInstance:Lcom/vivo/services/vivodevice/VivoDeviceProxy;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/vivo/services/vivodevice/VivoDeviceProxy;

    invoke-direct {v0}, Lcom/vivo/services/vivodevice/VivoDeviceProxy;-><init>()V

    sput-object v0, Lcom/vivo/services/vivodevice/VivoDeviceProxy;->mInstance:Lcom/vivo/services/vivodevice/VivoDeviceProxy;

    .line 48
    :cond_0
    sget-object v0, Lcom/vivo/services/vivodevice/VivoDeviceProxy;->mInstance:Lcom/vivo/services/vivodevice/VivoDeviceProxy;

    return-object v0
.end method

.method private init()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 30
    const-string v1, "ultraviolet"

    const-string v2, "ultraviolet"

    const-string v3, ""

    const-string v4, "setUltravioletEnable"

    const-string v5, "getUltravioletEnable"

    const-string v6, ""

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/vivo/services/vivodevice/VivoDeviceProxy;->putDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 33
    const-string v1, "cpu"

    const-string v2, "cpu_frequency"

    const-string v3, ""

    const-string v4, "setCpuFreq"

    const-string v5, "getCpuFreq"

    const-string v6, ""

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/vivo/services/vivodevice/VivoDeviceProxy;->putDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 36
    const-string v1, "lcd-backlight"

    const-string v2, "lcdbacklight_brightness"

    const-string v3, ""

    const-string v4, "setLcdbacklightBrightness"

    const-string v5, "getLcdbacklightBrightness"

    const-string v6, ""

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/vivo/services/vivodevice/VivoDeviceProxy;->putDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 39
    const-string v1, "AT42QT602240/ATMXT224 Touchscreen"

    const-string v2, "touchscreen_color"

    const-string v3, ""

    const-string v4, ""

    const-string v5, "getTouchscreenColor"

    const-string v6, ""

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/vivo/services/vivodevice/VivoDeviceProxy;->putDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 41
    return-void
.end method


# virtual methods
.method public getDeviceByName(Ljava/lang/String;)Lcom/vivo/services/vivodevice/VivoDevice;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/vivo/services/vivodevice/VivoDeviceProxy;->deviceMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/services/vivodevice/VivoDevice;

    return-object v0
.end method

.method public getDeviceNameSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/vivo/services/vivodevice/VivoDeviceProxy;->deviceMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public putDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 7
    .param p1, "devName"    # Ljava/lang/String;
    .param p2, "propName"    # Ljava/lang/String;
    .param p3, "propValue"    # Ljava/lang/String;
    .param p4, "set"    # Ljava/lang/String;
    .param p5, "get"    # Ljava/lang/String;
    .param p6, "dataPoll"    # Ljava/lang/String;
    .param p7, "reloadEachTime"    # Z

    .prologue
    .line 54
    iget-object v0, p0, Lcom/vivo/services/vivodevice/VivoDeviceProxy;->deviceMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vivo/services/vivodevice/VivoDevice;

    .line 55
    .local v6, "vd":Lcom/vivo/services/vivodevice/VivoDevice;
    if-nez v6, :cond_0

    .line 56
    new-instance v6, Lcom/vivo/services/vivodevice/VivoDevice;

    .end local v6    # "vd":Lcom/vivo/services/vivodevice/VivoDevice;
    invoke-direct {v6}, Lcom/vivo/services/vivodevice/VivoDevice;-><init>()V

    .line 57
    .restart local v6    # "vd":Lcom/vivo/services/vivodevice/VivoDevice;
    iget-object v0, p0, Lcom/vivo/services/vivodevice/VivoDeviceProxy;->deviceMap:Ljava/util/Map;

    invoke-interface {v0, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :cond_0
    new-instance v0, Lcom/vivo/services/vivodevice/PropertyData;

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/vivo/services/vivodevice/PropertyData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v6, p2, v0}, Lcom/vivo/services/vivodevice/VivoDevice;->setPropertyByName(Ljava/lang/String;Lcom/vivo/services/vivodevice/PropertyData;)Lcom/vivo/services/vivodevice/VivoDevice;

    .line 60
    const/4 v0, 0x1

    return v0
.end method

.method public setDeviceByName(Ljava/lang/String;Lcom/vivo/services/vivodevice/VivoDevice;)Lcom/vivo/services/vivodevice/VivoDeviceProxy;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "device"    # Lcom/vivo/services/vivodevice/VivoDevice;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/vivo/services/vivodevice/VivoDeviceProxy;->deviceMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/vivo/services/vivodevice/VivoDeviceProxy;->deviceMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    return-object p0

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The device named "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has been existed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
