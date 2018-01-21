.class Lcom/android/server/am/ActivityManagerService$AppsHandler;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppsHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 23719
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$AppsHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 23720
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 23721
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 24
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 23724
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 23725
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 23842
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 23727
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$AppsHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # invokes: Lcom/android/server/am/ActivityManagerService;->initBBKCoreFile()V
    invoke-static {v1}, Lcom/android/server/am/ActivityManagerService;->access$2200(Lcom/android/server/am/ActivityManagerService;)V

    goto :goto_0

    .line 23730
    :pswitch_2
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v1, :cond_1

    const-string v1, "ActivityManager"

    const-string v2, "VIVO_CONTROL_PROCESS_RESTART_UPDATE_MSG"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23732
    :cond_1
    :try_start_0
    new-instance v6, Ljava/io/File;

    const-string v1, "/data/bbkcore/SelectThrityAppList_Encrypt.xml"

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 23733
    .local v6, "file":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$AppsHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # invokes: Lcom/android/server/am/ActivityManagerService;->readByBufferedReader(Ljava/io/File;)Ljava/lang/String;
    invoke-static {v1, v6}, Lcom/android/server/am/ActivityManagerService;->access$2300(Lcom/android/server/am/ActivityManagerService;Ljava/io/File;)Ljava/lang/String;

    move-result-object v23

    .line 23734
    .local v23, "result":Ljava/lang/String;
    if-eqz v23, :cond_0

    .line 23735
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$AppsHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const-string v2, "dE80aWhsZzVWa1Zyc0c0N0FvR2FBdz09"

    move-object/from16 v0, v23

    # invokes: Lcom/android/server/am/ActivityManagerService;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2, v0}, Lcom/android/server/am/ActivityManagerService;->access$2400(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 23736
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v1, :cond_2

    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Decode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23737
    :cond_2
    if-eqz v23, :cond_0

    .line 23738
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$AppsHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    # invokes: Lcom/android/server/am/ActivityManagerService;->readXmlFile(Ljava/io/InputStream;)V
    invoke-static {v1, v2}, Lcom/android/server/am/ActivityManagerService;->access$2500(Lcom/android/server/am/ActivityManagerService;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 23741
    .end local v6    # "file":Ljava/io/File;
    .end local v23    # "result":Ljava/lang/String;
    :catch_0
    move-exception v19

    .line 23742
    .local v19, "e":Ljava/lang/Exception;
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decode data error! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 23747
    .end local v19    # "e":Ljava/lang/Exception;
    :pswitch_3
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 23748
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Ljava/lang/String;

    .line 23749
    .local v21, "packageName":Ljava/lang/String;
    if-eqz v21, :cond_0

    .line 23750
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$AppsHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const-string v2, "Crash"

    move-object/from16 v0, v21

    invoke-virtual {v1, v0, v2}, Lcom/android/server/am/ActivityManagerService;->ensurePackageDexOptImmediately(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 23759
    .end local v21    # "packageName":Ljava/lang/String;
    :pswitch_4
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 23760
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Ljava/lang/String;

    .line 23761
    .local v22, "pkgName":Ljava/lang/String;
    if-eqz v22, :cond_0

    .line 23762
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$AppsHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/4 v2, 0x5

    move-object/from16 v0, v22

    invoke-virtual {v1, v2, v0}, Lcom/android/server/am/ActivityManagerService$MainHandler;->hasMessages(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 23763
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PRELOAD:Z

    if-eqz v1, :cond_0

    .line 23764
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Already has VIVO_START_PRELOAD_PROCESS_MSG for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 23768
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$AppsHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v22

    # invokes: Lcom/android/server/am/ActivityManagerService;->handleStartPreloadProcess(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/server/am/ActivityManagerService;->access$2600(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 23777
    .end local v22    # "pkgName":Ljava/lang/String;
    :pswitch_5
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 23778
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Ljava/lang/String;

    .line 23779
    .restart local v22    # "pkgName":Ljava/lang/String;
    if-eqz v22, :cond_0

    .line 23780
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$AppsHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/4 v2, 0x6

    move-object/from16 v0, v22

    invoke-virtual {v1, v2, v0}, Lcom/android/server/am/ActivityManagerService$MainHandler;->hasMessages(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 23781
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PRELOAD:Z

    if-eqz v1, :cond_0

    .line 23782
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Already has VIVO_KILL_PRELOAD_PROCESS_MSG for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 23786
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$AppsHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v22

    # invokes: Lcom/android/server/am/ActivityManagerService;->handlekillPreloadProcess(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/server/am/ActivityManagerService;->access$2700(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 23795
    .end local v22    # "pkgName":Ljava/lang/String;
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$AppsHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # invokes: Lcom/android/server/am/ActivityManagerService;->updateServerPreloadProcessList()V
    invoke-static {v1}, Lcom/android/server/am/ActivityManagerService;->access$2800(Lcom/android/server/am/ActivityManagerService;)V

    goto/16 :goto_0

    .line 23801
    :pswitch_7
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v1, :cond_5

    const-string v1, "ActivityManager"

    const-string v2, "VIVO_CONTROL_PROCESS_RESTART_READ_CONFIG_MSG"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23803
    :cond_5
    :try_start_1
    new-instance v6, Ljava/io/File;

    const-string v1, "/data/bbkcore/pqlamzv_limit.xml"

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 23804
    .restart local v6    # "file":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$AppsHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # invokes: Lcom/android/server/am/ActivityManagerService;->readByBufferedReader(Ljava/io/File;)Ljava/lang/String;
    invoke-static {v1, v6}, Lcom/android/server/am/ActivityManagerService;->access$2300(Lcom/android/server/am/ActivityManagerService;Ljava/io/File;)Ljava/lang/String;

    move-result-object v23

    .line 23805
    .restart local v23    # "result":Ljava/lang/String;
    if-eqz v23, :cond_0

    .line 23806
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$AppsHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const-string v2, "dE80aWhsZzVWa1Zyc0c0N0FvR2FBdz09"

    move-object/from16 v0, v23

    # invokes: Lcom/android/server/am/ActivityManagerService;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2, v0}, Lcom/android/server/am/ActivityManagerService;->access$2400(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 23807
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v1, :cond_6

    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Decode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23808
    :cond_6
    if-eqz v23, :cond_0

    .line 23809
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$AppsHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    # invokes: Lcom/android/server/am/ActivityManagerService;->readXmlFile(Ljava/io/InputStream;)V
    invoke-static {v1, v2}, Lcom/android/server/am/ActivityManagerService;->access$2500(Lcom/android/server/am/ActivityManagerService;Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 23812
    .end local v6    # "file":Ljava/io/File;
    .end local v23    # "result":Ljava/lang/String;
    :catch_1
    move-exception v19

    .line 23813
    .restart local v19    # "e":Ljava/lang/Exception;
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decode data error! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 23818
    .end local v19    # "e":Ljava/lang/Exception;
    :pswitch_8
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v1, :cond_7

    const-string v1, "ActivityManager"

    const-string v2, "VIVO_UNIFIEDCONFIG_DOWNLOAD_AND_SAVE_MSG"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23819
    :cond_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/String;

    .line 23820
    .local v20, "filePath":Ljava/lang/String;
    if-eqz v20, :cond_0

    .line 23823
    const-string v1, "/data/bbkcore/pqlamzv_limit.xml"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 23824
    new-instance v6, Ljava/io/File;

    const-string v1, "/data/bbkcore/pqlamzv_limit.xml"

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 23825
    .restart local v6    # "file":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$AppsHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const-string v2, "AppServiceListLimit"

    const-string v3, "1"

    const-string v4, "1.0"

    const-string v5, "qpalzmv"

    # invokes: Lcom/android/server/am/ActivityManagerService;->readXmlFileFromUnifiedConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ActivityManagerService;->access$2900(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    goto/16 :goto_0

    .line 23826
    .end local v6    # "file":Ljava/io/File;
    :cond_8
    const-string v1, "/data/bbkcore/server_dex2oat_white_table_native.xml"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 23827
    new-instance v6, Ljava/io/File;

    const-string v1, "/data/bbkcore/server_dex2oat_white_table_native.xml"

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 23828
    .restart local v6    # "file":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$AppsHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const-string v2, "DelayDexopt"

    const-string v3, "1"

    const-string v4, "1.0"

    const-string v5, "ForbidDelayDexopt"

    # invokes: Lcom/android/server/am/ActivityManagerService;->readXmlFileFromUnifiedConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ActivityManagerService;->access$2900(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    goto/16 :goto_0

    .line 23833
    .end local v6    # "file":Ljava/io/File;
    .end local v20    # "filePath":Ljava/lang/String;
    :pswitch_9
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v1, :cond_9

    const-string v1, "ActivityManager"

    const-string v2, "VIVO_UNIFIEDCONFIG_DOWNLOAD_UPDATE_MSG"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23834
    :cond_9
    new-instance v12, Ljava/io/File;

    const-string v1, "/data/bbkcore/pqlamzv_limit.xml"

    invoke-direct {v12, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 23835
    .local v12, "appListFile":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$AppsHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const-string v8, "AppServiceListLimit"

    const-string v9, "1"

    const-string v10, "1.0"

    const-string v11, "qpalzmv"

    # invokes: Lcom/android/server/am/ActivityManagerService;->readXmlFileFromUnifiedConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    invoke-static/range {v7 .. v12}, Lcom/android/server/am/ActivityManagerService;->access$2900(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 23837
    new-instance v18, Ljava/io/File;

    const-string v1, "/data/bbkcore/server_dex2oat_white_table_native.xml"

    move-object/from16 v0, v18

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 23838
    .local v18, "serverDexFile":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$AppsHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const-string v14, "DelayDexopt"

    const-string v15, "1"

    const-string v16, "1.0"

    const-string v17, "ForbidDelayDexopt"

    # invokes: Lcom/android/server/am/ActivityManagerService;->readXmlFileFromUnifiedConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    invoke-static/range {v13 .. v18}, Lcom/android/server/am/ActivityManagerService;->access$2900(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    goto/16 :goto_0

    .line 23725
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_9
    .end packed-switch
.end method
