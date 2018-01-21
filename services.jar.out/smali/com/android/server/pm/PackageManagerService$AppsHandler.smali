.class Lcom/android/server/pm/PackageManagerService$AppsHandler;
.super Landroid/os/Handler;
.source "PackageManagerService.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppsHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1924
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$AppsHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 1925
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1926
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    .line 1929
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1930
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 1988
    :cond_0
    :goto_0
    return-void

    .line 1933
    :pswitch_0
    if-eqz p1, :cond_0

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v6, :cond_0

    .line 1934
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 1935
    .local v4, "packageName":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 1936
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VIVO_DELAY_DEXOPT: packageName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1937
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$AppsHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6, v4}, Lcom/android/server/pm/PackageManagerService;->performDexOptImmediately(Ljava/lang/String;)I

    goto :goto_0

    .line 1946
    .end local v4    # "packageName":Ljava/lang/String;
    :pswitch_1
    if-eqz p1, :cond_0

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v6, :cond_0

    .line 1947
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 1948
    .restart local v4    # "packageName":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 1949
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$AppsHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6, v4}, Lcom/android/server/pm/PackageManagerService;->performDexOptImmediately(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v5, :cond_3

    .line 1950
    .local v5, "result":Z
    :goto_1
    if-eqz v5, :cond_0

    if-eqz v4, :cond_0

    .line 1952
    :try_start_0
    sget-object v7, Lcom/android/server/pm/PackageManagerService;->serverDex2oatWhiteTable:Ljava/util/ArrayList;

    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1953
    :try_start_1
    sget-object v6, Lcom/android/server/pm/PackageManagerService;->serverDex2oatWhiteTable:Ljava/util/ArrayList;

    if-eqz v6, :cond_4

    sget-object v6, Lcom/android/server/pm/PackageManagerService;->serverDex2oatWhiteTable:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1955
    monitor-exit v7

    goto :goto_0

    .line 1957
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1958
    :catch_0
    move-exception v6

    .line 1961
    :goto_2
    const/4 v2, 0x0

    .line 1963
    .local v2, "fw":Ljava/io/FileWriter;
    :try_start_3
    new-instance v1, Ljava/io/File;

    const-string v6, "/data/bbkcore/vivo_unsupport_dex_execution.xml"

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1964
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1965
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 1967
    :cond_1
    new-instance v3, Ljava/io/FileWriter;

    const-string v6, "/data/bbkcore/vivo_unsupport_dex_execution.xml"

    const/4 v7, 0x1

    invoke-direct {v3, v6, v7}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1968
    .end local v2    # "fw":Ljava/io/FileWriter;
    .local v3, "fw":Ljava/io/FileWriter;
    if-eqz v3, :cond_2

    .line 1969
    :try_start_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1970
    .local v0, "content":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 1971
    invoke-virtual {v3, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1977
    .end local v0    # "content":Ljava/lang/String;
    :cond_2
    if-eqz v3, :cond_0

    .line 1978
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_0

    .line 1949
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "fw":Ljava/io/FileWriter;
    .end local v5    # "result":Z
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 1957
    .restart local v5    # "result":Z
    :cond_4
    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 1974
    .restart local v2    # "fw":Ljava/io/FileWriter;
    :catch_1
    move-exception v6

    .line 1977
    :goto_3
    if-eqz v2, :cond_0

    .line 1978
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_0

    .line 1977
    :catchall_1
    move-exception v6

    :goto_4
    if-eqz v2, :cond_5

    .line 1978
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_5
    throw v6

    .line 1977
    .end local v2    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "fw":Ljava/io/FileWriter;
    :catchall_2
    move-exception v6

    move-object v2, v3

    .end local v3    # "fw":Ljava/io/FileWriter;
    .restart local v2    # "fw":Ljava/io/FileWriter;
    goto :goto_4

    .line 1974
    .end local v2    # "fw":Ljava/io/FileWriter;
    .restart local v3    # "fw":Ljava/io/FileWriter;
    :catch_2
    move-exception v6

    move-object v2, v3

    .end local v3    # "fw":Ljava/io/FileWriter;
    .restart local v2    # "fw":Ljava/io/FileWriter;
    goto :goto_3

    .line 1930
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
