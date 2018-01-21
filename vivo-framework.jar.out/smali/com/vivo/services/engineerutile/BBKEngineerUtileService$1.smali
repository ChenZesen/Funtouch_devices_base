.class Lcom/vivo/services/engineerutile/BBKEngineerUtileService$1;
.super Ljava/lang/Object;
.source "BBKEngineerUtileService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/engineerutile/BBKEngineerUtileService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/services/engineerutile/BBKEngineerUtileService;


# direct methods
.method constructor <init>(Lcom/vivo/services/engineerutile/BBKEngineerUtileService;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/vivo/services/engineerutile/BBKEngineerUtileService$1;->this$0:Lcom/vivo/services/engineerutile/BBKEngineerUtileService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 70
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v4, "proc/isroot/isroot"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 71
    .local v2, "file":Ljava/io/File;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 72
    .local v0, "br":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, "string":Ljava/lang/String;
    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 74
    const-string v4, "sys.emsvr.opt"

    const-string v5, "2"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v4, "BBKEngineerUtileService"

    const-string v5, "set is_root flag"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 83
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "string":Ljava/lang/String;
    :goto_1
    return-void

    .line 77
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "string":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/vivo/services/engineerutile/BBKEngineerUtileService$1;->this$0:Lcom/vivo/services/engineerutile/BBKEngineerUtileService;

    # getter for: Lcom/vivo/services/engineerutile/BBKEngineerUtileService;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/vivo/services/engineerutile/BBKEngineerUtileService;->access$000(Lcom/vivo/services/engineerutile/BBKEngineerUtileService;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/vivo/services/engineerutile/BBKEngineerUtileService$1;->this$0:Lcom/vivo/services/engineerutile/BBKEngineerUtileService;

    iget-object v5, v5, Lcom/vivo/services/engineerutile/BBKEngineerUtileService;->poolRoot:Ljava/lang/Runnable;

    const-wide/16 v6, 0xbb8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 80
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "string":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 81
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "BBKEngineerUtileService"

    const-string v5, "Open proc/isroot/isroot fail!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
