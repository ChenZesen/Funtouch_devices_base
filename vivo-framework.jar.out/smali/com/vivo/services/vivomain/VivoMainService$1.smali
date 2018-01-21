.class Lcom/vivo/services/vivomain/VivoMainService$1;
.super Ljava/lang/Object;
.source "VivoMainService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/services/vivomain/VivoMainService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/services/vivomain/VivoMainService;


# direct methods
.method constructor <init>(Lcom/vivo/services/vivomain/VivoMainService;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/vivo/services/vivomain/VivoMainService$1;->this$0:Lcom/vivo/services/vivomain/VivoMainService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 36
    :goto_0
    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xf

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->sleep(J)V

    .line 37
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "ywb : sync file system."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lcom/vivo/services/vivodevice/VivoDeviceNative;->getDeviceNative()Lcom/vivo/services/vivodevice/VivoDeviceNative;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/services/vivodevice/VivoDeviceNative;->fileSystemSync()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
