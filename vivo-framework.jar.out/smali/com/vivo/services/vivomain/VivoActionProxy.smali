.class public Lcom/vivo/services/vivomain/VivoActionProxy;
.super Ljava/lang/Object;
.source "VivoActionProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VivoActionProxy"

.field private static mInstance:Lcom/vivo/services/vivomain/VivoActionProxy;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static getInstance()Lcom/vivo/services/vivomain/VivoActionProxy;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/vivo/services/vivomain/VivoActionProxy;->mInstance:Lcom/vivo/services/vivomain/VivoActionProxy;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/vivo/services/vivomain/VivoActionProxy;

    invoke-direct {v0}, Lcom/vivo/services/vivomain/VivoActionProxy;-><init>()V

    sput-object v0, Lcom/vivo/services/vivomain/VivoActionProxy;->mInstance:Lcom/vivo/services/vivomain/VivoActionProxy;

    .line 25
    :cond_0
    sget-object v0, Lcom/vivo/services/vivomain/VivoActionProxy;->mInstance:Lcom/vivo/services/vivomain/VivoActionProxy;

    return-object v0
.end method


# virtual methods
.method public startBootAnimation()Ljava/lang/String;
    .locals 2

    .prologue
    .line 30
    const-string v0, "ctl.start"

    const-string v1, "bootanim"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const-string v0, "success"

    return-object v0
.end method

.method public stopBootAnimation()Ljava/lang/String;
    .locals 2

    .prologue
    .line 36
    const-string v0, "ctl.stop"

    const-string v1, "bootanim"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v0, "success"

    return-object v0
.end method
