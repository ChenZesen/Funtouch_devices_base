.class Lcom/android/server/pm/VivoPKMSDatabaseUtils$PkmsDBHandler;
.super Landroid/os/Handler;
.source "VivoPKMSDatabaseUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/VivoPKMSDatabaseUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PkmsDBHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/VivoPKMSDatabaseUtils;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/VivoPKMSDatabaseUtils;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 720
    iput-object p1, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$PkmsDBHandler;->this$0:Lcom/android/server/pm/VivoPKMSDatabaseUtils;

    .line 721
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 722
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 726
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 727
    const-string v0, "VivoPKMSDatabaseUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--handleMessage "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 762
    :goto_0
    :pswitch_0
    return-void

    .line 731
    :pswitch_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$PkmsDBHandler;->this$0:Lcom/android/server/pm/VivoPKMSDatabaseUtils;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    # invokes: Lcom/android/server/pm/VivoPKMSDatabaseUtils;->convertPackageName(Ljava/util/ArrayList;)V
    invoke-static {v1, v0}, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->access$500(Lcom/android/server/pm/VivoPKMSDatabaseUtils;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 732
    :catch_0
    move-exception v9

    .line 733
    .local v9, "e":Ljava/lang/Exception;
    const-string v0, "VivoPKMSDatabaseUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convert package catch exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 738
    .end local v9    # "e":Ljava/lang/Exception;
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$PkmsDBHandler;->this$0:Lcom/android/server/pm/VivoPKMSDatabaseUtils;

    # getter for: Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mQueryHandler:Lcom/android/server/pm/VivoPKMSDatabaseUtils$QueryHandler;
    invoke-static {v0}, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->access$300(Lcom/android/server/pm/VivoPKMSDatabaseUtils;)Lcom/android/server/pm/VivoPKMSDatabaseUtils$QueryHandler;

    move-result-object v0

    const/16 v1, 0x64

    iget-object v3, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$PkmsDBHandler;->this$0:Lcom/android/server/pm/VivoPKMSDatabaseUtils;

    # getter for: Lcom/android/server/pm/VivoPKMSDatabaseUtils;->CONTENT_URI:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->access$000(Lcom/android/server/pm/VivoPKMSDatabaseUtils;)Landroid/net/Uri;

    move-result-object v3

    # getter for: Lcom/android/server/pm/VivoPKMSDatabaseUtils;->QUERY_SELECTION_ARGS:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->access$200()[Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/VivoPKMSDatabaseUtils$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 742
    :pswitch_3
    iget-object v1, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$PkmsDBHandler;->this$0:Lcom/android/server/pm/VivoPKMSDatabaseUtils;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->deleteForbideShowToastAppFromCacheList(Ljava/lang/String;)Z

    goto :goto_0

    .line 745
    :pswitch_4
    iget-object v1, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$PkmsDBHandler;->this$0:Lcom/android/server/pm/VivoPKMSDatabaseUtils;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->deleteAppConfigFromLocalCache(Ljava/lang/String;)V

    goto :goto_0

    .line 748
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$PkmsDBHandler;->this$0:Lcom/android/server/pm/VivoPKMSDatabaseUtils;

    invoke-virtual {v0}, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->handlerInitBuildInAppData()V

    goto :goto_0

    .line 751
    :pswitch_6
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;

    .line 752
    .local v8, "appConfig":Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 753
    .local v4, "contentValue":Landroid/content/ContentValues;
    const-string v0, "is_force"

    iget v1, v8, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->isForce:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 754
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v8, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;->_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 755
    .local v5, "selection":Ljava/lang/String;
    sget-boolean v0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->DEBUG_FOR_FB_APL:Z

    if-eqz v0, :cond_0

    .line 756
    const-string v0, "VivoPKMSDatabaseUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "will update "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " to db.   "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$PkmsDBHandler;->this$0:Lcom/android/server/pm/VivoPKMSDatabaseUtils;

    # getter for: Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mQueryHandler:Lcom/android/server/pm/VivoPKMSDatabaseUtils$QueryHandler;
    invoke-static {v0}, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->access$300(Lcom/android/server/pm/VivoPKMSDatabaseUtils;)Lcom/android/server/pm/VivoPKMSDatabaseUtils$QueryHandler;

    move-result-object v0

    const/16 v1, 0xc8

    iget-object v3, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$PkmsDBHandler;->this$0:Lcom/android/server/pm/VivoPKMSDatabaseUtils;

    # getter for: Lcom/android/server/pm/VivoPKMSDatabaseUtils;->CONTENT_URI:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->access$000(Lcom/android/server/pm/VivoPKMSDatabaseUtils;)Landroid/net/Uri;

    move-result-object v3

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/VivoPKMSDatabaseUtils$QueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 728
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
