.class public Lcom/vivo/services/vivodevice/VivoDeviceNative;
.super Ljava/lang/Object;
.source "VivoDeviceNative.java"


# static fields
.field public static final ACCELEROMETER:Ljava/lang/String; = "accelerometer"

.field public static final CPU:Ljava/lang/String; = "cpu"

.field public static final CPU_FREQUENCY:Ljava/lang/String; = "cpu_frequency"

.field public static final GEOMAGNETIC:Ljava/lang/String; = "geomagnetic"

.field public static final GPIO_KEYS:Ljava/lang/String; = "gpio-keys"

.field public static final HANDSET:Ljava/lang/String; = "7k_handset"

.field public static final LCDBACKLIGHT:Ljava/lang/String; = "lcd-backlight"

.field public static final LCDBACKLIGHT_BRIGHTNESS:Ljava/lang/String; = "lcdbacklight_brightness"

.field public static final LIGHT:Ljava/lang/String; = "light"

.field public static final ORIENTATION:Ljava/lang/String; = "orientation"

.field public static final PROXIMITY:Ljava/lang/String; = "proximity"

.field public static final TOUCHSCREEN:Ljava/lang/String; = "AT42QT602240/ATMXT224 Touchscreen"

.field public static final TOUCHSCREEN_COLOR:Ljava/lang/String; = "touchscreen_color"

.field public static final ULTRAVIOLET:Ljava/lang/String; = "ultraviolet"

.field public static final ULTRAVIOLET_ENABLE:Ljava/lang/String; = "ultraviolet_enable"

.field private static deviceNative:Lcom/vivo/services/vivodevice/VivoDeviceNative;


# instance fields
.field private accelerometer_inputorder:Ljava/lang/String;

.field private geomagnetic_inputorder:Ljava/lang/String;

.field private gpio_keys_inputorder:Ljava/lang/String;

.field private handset_inputorder:Ljava/lang/String;

.field private light_inputorder:Ljava/lang/String;

.field private orientation_inputorder:Ljava/lang/String;

.field private proximity_inputorder:Ljava/lang/String;

.field private touchscreen_inputorder:Ljava/lang/String;

.field private ultraviolet_inputorder:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/services/vivodevice/VivoDeviceNative;->gpio_keys_inputorder:Ljava/lang/String;

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/services/vivodevice/VivoDeviceNative;->touchscreen_inputorder:Ljava/lang/String;

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/services/vivodevice/VivoDeviceNative;->geomagnetic_inputorder:Ljava/lang/String;

    .line 87
    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/services/vivodevice/VivoDeviceNative;->orientation_inputorder:Ljava/lang/String;

    .line 91
    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/services/vivodevice/VivoDeviceNative;->accelerometer_inputorder:Ljava/lang/String;

    .line 95
    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/services/vivodevice/VivoDeviceNative;->proximity_inputorder:Ljava/lang/String;

    .line 99
    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/services/vivodevice/VivoDeviceNative;->light_inputorder:Ljava/lang/String;

    .line 103
    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/services/vivodevice/VivoDeviceNative;->ultraviolet_inputorder:Ljava/lang/String;

    .line 113
    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/services/vivodevice/VivoDeviceNative;->handset_inputorder:Ljava/lang/String;

    .line 13
    invoke-direct {p0}, Lcom/vivo/services/vivodevice/VivoDeviceNative;->init()V

    .line 14
    return-void
.end method

.method public static addKernelProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p0, "device"    # Ljava/lang/String;
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 118
    invoke-static {}, Lcom/vivo/services/vivodevice/VivoDeviceProxy;->getInstance()Lcom/vivo/services/vivodevice/VivoDeviceProxy;

    move-result-object v0

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v7}, Lcom/vivo/services/vivodevice/VivoDeviceProxy;->putDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getDeviceNative()Lcom/vivo/services/vivodevice/VivoDeviceNative;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/vivo/services/vivodevice/VivoDeviceNative;->deviceNative:Lcom/vivo/services/vivodevice/VivoDeviceNative;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/vivo/services/vivodevice/VivoDeviceNative;

    invoke-direct {v0}, Lcom/vivo/services/vivodevice/VivoDeviceNative;-><init>()V

    sput-object v0, Lcom/vivo/services/vivodevice/VivoDeviceNative;->deviceNative:Lcom/vivo/services/vivodevice/VivoDeviceNative;

    .line 21
    :cond_0
    sget-object v0, Lcom/vivo/services/vivodevice/VivoDeviceNative;->deviceNative:Lcom/vivo/services/vivodevice/VivoDeviceNative;

    return-object v0
.end method

.method private init()V
    .locals 0

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/vivo/services/vivodevice/VivoDeviceNative;->nativeInit()V

    .line 26
    invoke-virtual {p0}, Lcom/vivo/services/vivodevice/VivoDeviceNative;->test()V

    .line 27
    return-void
.end method


# virtual methods
.method public native fileSystemSync()V
.end method

.method public native getCpuFreq()Ljava/lang/String;
.end method

.method public native getLcdbacklightBrightness()Ljava/lang/String;
.end method

.method public native getTouchscreenColor()Ljava/lang/String;
.end method

.method public native getUltravioletEnable()Ljava/lang/String;
.end method

.method public native nativeInit()V
.end method

.method public native nativeTest()V
.end method

.method public native setCpuFreq(Ljava/lang/String;)Z
.end method

.method public native setLcdbacklightBrightness(Ljava/lang/String;)Z
.end method

.method public native setUltravioletEnable(Ljava/lang/String;)Z
.end method

.method public test()V
    .locals 3

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/vivo/services/vivodevice/VivoDeviceNative;->nativeTest()V

    .line 32
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^^^^^^^^^^^["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/services/vivodevice/VivoDeviceNative;->gpio_keys_inputorder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]^^^^^^^^^^^^^\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 33
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^^^^^^^^^^^["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/services/vivodevice/VivoDeviceNative;->touchscreen_inputorder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]^^^^^^^^^^^^^\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 34
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^^^^^^^^^^^["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/services/vivodevice/VivoDeviceNative;->geomagnetic_inputorder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]^^^^^^^^^^^^^\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 35
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^^^^^^^^^^^["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/services/vivodevice/VivoDeviceNative;->orientation_inputorder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]^^^^^^^^^^^^^\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 36
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^^^^^^^^^^^["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/services/vivodevice/VivoDeviceNative;->accelerometer_inputorder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]^^^^^^^^^^^^^\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 37
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^^^^^^^^^^^["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/services/vivodevice/VivoDeviceNative;->proximity_inputorder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]^^^^^^^^^^^^^\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 38
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^^^^^^^^^^^["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/services/vivodevice/VivoDeviceNative;->light_inputorder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]^^^^^^^^^^^^^\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 39
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^^^^^^^^^^^["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/services/vivodevice/VivoDeviceNative;->ultraviolet_inputorder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]^^^^^^^^^^^^^\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 40
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^^^^^^^^^^^["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/services/vivodevice/VivoDeviceNative;->handset_inputorder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]^^^^^^^^^^^^^\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 41
    return-void
.end method
