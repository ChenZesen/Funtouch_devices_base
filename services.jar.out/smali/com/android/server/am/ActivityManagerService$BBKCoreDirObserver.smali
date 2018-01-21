.class final Lcom/android/server/am/ActivityManagerService$BBKCoreDirObserver;
.super Landroid/os/FileObserver;
.source "ActivityManagerService.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BBKCoreDirObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;I)V
    .locals 0
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "mask"    # I

    .prologue
    .line 23871
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$BBKCoreDirObserver;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 23872
    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 23873
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 8
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0xa

    const/16 v6, 0x9

    const/16 v5, 0x100

    const/4 v4, 0x2

    .line 23877
    if-eqz p2, :cond_2

    const-string v1, "pqlamzv_limit.xml"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 23878
    if-eq p1, v5, :cond_0

    if-ne p1, v4, :cond_2

    .line 23879
    :cond_0
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v1, :cond_1

    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BBKCoreDirObserver: onEvent() event is create or modify, start read "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23881
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$BBKCoreDirObserver;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mAppsHandler:Lcom/android/server/am/ActivityManagerService$AppsHandler;
    invoke-static {v1}, Lcom/android/server/am/ActivityManagerService;->access$3000(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/ActivityManagerService$AppsHandler;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/android/server/am/ActivityManagerService$AppsHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 23882
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$BBKCoreDirObserver;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mAppsHandler:Lcom/android/server/am/ActivityManagerService$AppsHandler;
    invoke-static {v1}, Lcom/android/server/am/ActivityManagerService;->access$3000(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/ActivityManagerService$AppsHandler;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/android/server/am/ActivityManagerService$AppsHandler;->sendEmptyMessage(I)Z

    .line 23888
    :cond_2
    if-eqz p2, :cond_5

    const-string v1, "vivo_server_preload_list.xml"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 23889
    if-eq p1, v5, :cond_3

    if-ne p1, v4, :cond_5

    .line 23890
    :cond_3
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PRELOAD:Z

    if-eqz v1, :cond_4

    .line 23891
    const-string v1, "ActivityManager"

    const-string v2, "/data/bbkcore/vivo_server_preload_list.xml file be create or modify, then update preload list"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23893
    :cond_4
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$BBKCoreDirObserver;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mAppsHandler:Lcom/android/server/am/ActivityManagerService$AppsHandler;
    invoke-static {v1}, Lcom/android/server/am/ActivityManagerService;->access$3000(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/ActivityManagerService$AppsHandler;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService$AppsHandler;->sendEmptyMessage(I)Z

    .line 23898
    :cond_5
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$BBKCoreDirObserver;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->IS_UNIFIEDCONFIG:Z
    invoke-static {v1}, Lcom/android/server/am/ActivityManagerService;->access$3100(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 23899
    if-eqz p2, :cond_8

    const-string v1, "SelectThrityAppList_Encrypt.xml"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 23900
    if-eq p1, v5, :cond_6

    if-ne p1, v4, :cond_8

    .line 23901
    :cond_6
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v1, :cond_7

    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BBKCoreDirObserver: onEvent() event is create or modify, start read "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23903
    :cond_7
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$BBKCoreDirObserver;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mAppsHandler:Lcom/android/server/am/ActivityManagerService$AppsHandler;
    invoke-static {v1}, Lcom/android/server/am/ActivityManagerService;->access$3000(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/ActivityManagerService$AppsHandler;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/server/am/ActivityManagerService$AppsHandler;->sendEmptyMessage(I)Z

    .line 23930
    :cond_8
    :goto_0
    return-void

    .line 23907
    :cond_9
    if-eqz p2, :cond_8

    .line 23908
    if-eq p1, v5, :cond_a

    if-ne p1, v4, :cond_8

    .line 23909
    :cond_a
    const/4 v0, 0x0

    .line 23910
    .local v0, "msg":Landroid/os/Message;
    const-string v1, "SelectThrityAppList_Encrypt.xml"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 23911
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 23912
    const-string v1, "/data/bbkcore/pqlamzv_limit.xml"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 23917
    :cond_b
    :goto_1
    if-eqz v0, :cond_8

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_8

    .line 23918
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v1, :cond_c

    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BBKCoreDirObserver: onEvent() event is create or modify, start read "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23920
    :cond_c
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$BBKCoreDirObserver;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mAppsHandler:Lcom/android/server/am/ActivityManagerService$AppsHandler;
    invoke-static {v1}, Lcom/android/server/am/ActivityManagerService;->access$3000(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/ActivityManagerService$AppsHandler;

    move-result-object v1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v6, v2}, Lcom/android/server/am/ActivityManagerService$AppsHandler;->hasMessages(ILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 23921
    iput v6, v0, Landroid/os/Message;->what:I

    .line 23924
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$BBKCoreDirObserver;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mAppsHandler:Lcom/android/server/am/ActivityManagerService$AppsHandler;
    invoke-static {v1}, Lcom/android/server/am/ActivityManagerService;->access$3000(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/ActivityManagerService$AppsHandler;

    move-result-object v1

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/am/ActivityManagerService$AppsHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 23913
    :cond_d
    const-string v1, "server_dex2oat_white_table_encrypt.xml"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 23914
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 23915
    const-string v1, "/data/bbkcore/server_dex2oat_white_table_native.xml"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1
.end method
