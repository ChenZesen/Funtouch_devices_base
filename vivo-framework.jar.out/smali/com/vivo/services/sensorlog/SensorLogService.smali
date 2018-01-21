.class public Lcom/vivo/services/sensorlog/SensorLogService;
.super Lcom/vivo/services/sensorlog/ISensorLogService$Stub;
.source "SensorLogService.java"


# static fields
.field public static final ASSERT:I = 0x7

.field public static final DEBUG:I = 0x3

.field public static final ERROR:I = 0x6

.field public static final INFO:I = 0x4

.field private static final LOG_ID_INIT:I = 0x1

.field private static final LOG_ID_MAIN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SensorLogService"

.field public static final VERBOSE:I = 0x2

.field public static final WARN:I = 0x5

.field private static isNativeInt:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    sput v0, Lcom/vivo/services/sensorlog/SensorLogService;->isNativeInt:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/vivo/services/sensorlog/ISensorLogService$Stub;-><init>()V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/vivo/services/sensorlog/ISensorLogService$Stub;-><init>()V

    .line 77
    :try_start_0
    const-string v1, "jnisensorlog"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    invoke-direct {p0}, Lcom/vivo/services/sensorlog/SensorLogService;->InitNativeClass()V

    .line 83
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "catch  UnsatisfiedLinkError:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private InitNativeClass()V
    .locals 3

    .prologue
    .line 87
    sget v0, Lcom/vivo/services/sensorlog/SensorLogService;->isNativeInt:I

    if-nez v0, :cond_0

    .line 88
    invoke-direct {p0}, Lcom/vivo/services/sensorlog/SensorLogService;->nativeClassInit()I

    .line 89
    const/4 v0, 0x1

    sput v0, Lcom/vivo/services/sensorlog/SensorLogService;->isNativeInt:I

    .line 90
    const-string v0, "SensorLogService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nativeClassInit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/vivo/services/sensorlog/SensorLogService;->isNativeInt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_0
    return-void
.end method

.method private native nativeClassInit()I
.end method

.method private native vivo_println_native(IILjava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public vivoprintinit(ILjava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "priority"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 101
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/vivo/services/sensorlog/SensorLogService;->vivo_println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public vivoprintmain(ILjava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "priority"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 96
    invoke-direct {p0, v0, v0, p2, p3}, Lcom/vivo/services/sensorlog/SensorLogService;->vivo_println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
