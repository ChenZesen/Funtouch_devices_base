.class final Lcom/android/server/pm/VivoPKMSDatabaseUtils$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "VivoPKMSDatabaseUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/VivoPKMSDatabaseUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/VivoPKMSDatabaseUtils;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/VivoPKMSDatabaseUtils;Landroid/content/ContentResolver;)V
    .locals 0
    .param p2, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 302
    iput-object p1, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$QueryHandler;->this$0:Lcom/android/server/pm/VivoPKMSDatabaseUtils;

    .line 303
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 304
    return-void
.end method


# virtual methods
.method protected onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 348
    sget-boolean v0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->DEBUG_FOR_FB_APL:Z

    if-eqz v0, :cond_0

    .line 349
    const-string v0, "VivoPKMSDatabaseUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInsertComplete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$QueryHandler;->this$0:Lcom/android/server/pm/VivoPKMSDatabaseUtils;

    iget-object v0, v0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mPkmsDBHandler:Lcom/android/server/pm/VivoPKMSDatabaseUtils$PkmsDBHandler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/android/server/pm/VivoPKMSDatabaseUtils$PkmsDBHandler;->removeMessages(I)V

    .line 352
    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 12
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 308
    invoke-super {p0, p1, p2, p3}, Landroid/content/AsyncQueryHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V

    .line 309
    sget-boolean v1, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->DEBUG_FOR_FB_APL:Z

    if-eqz v1, :cond_0

    .line 310
    const-string v1, "VivoPKMSDatabaseUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onQueryComplete   token:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " cookie:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " cursor:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_0
    if-eqz p3, :cond_5

    .line 314
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 316
    .local v8, "installAppConfigListTemp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;>;"
    :try_start_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 318
    :cond_1
    const/4 v1, 0x0

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 319
    .local v2, "_id":I
    const/4 v1, 0x1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 320
    .local v3, "pkgName":Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 321
    .local v4, "isForce":I
    const/4 v1, 0x3

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 322
    .local v5, "last_server_status":I
    const/4 v1, 0x4

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 324
    .local v6, "status":I
    sget-boolean v1, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->DEBUG_FOR_FB_APL:Z

    if-eqz v1, :cond_2

    .line 325
    const-string v1, "VivoPKMSDatabaseUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "query pkgName:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " isForce "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " last_server_status:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " status "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_2
    new-instance v0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;

    iget-object v1, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$QueryHandler;->this$0:Lcom/android/server/pm/VivoPKMSDatabaseUtils;

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;-><init>(Lcom/android/server/pm/VivoPKMSDatabaseUtils;ILjava/lang/String;III)V

    .line 330
    .local v0, "appConfig":Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 336
    .end local v0    # "appConfig":Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;
    .end local v2    # "_id":I
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v4    # "isForce":I
    .end local v5    # "last_server_status":I
    .end local v6    # "status":I
    :cond_3
    if-eqz p3, :cond_4

    .line 337
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 340
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$QueryHandler;->this$0:Lcom/android/server/pm/VivoPKMSDatabaseUtils;

    iget-object v1, v1, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mPkmsDBHandler:Lcom/android/server/pm/VivoPKMSDatabaseUtils$PkmsDBHandler;

    const/16 v10, 0x3e8

    invoke-virtual {v1, v10}, Lcom/android/server/pm/VivoPKMSDatabaseUtils$PkmsDBHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 341
    .local v9, "msg":Landroid/os/Message;
    iput-object v8, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 342
    iget-object v1, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$QueryHandler;->this$0:Lcom/android/server/pm/VivoPKMSDatabaseUtils;

    iget-object v1, v1, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mPkmsDBHandler:Lcom/android/server/pm/VivoPKMSDatabaseUtils$PkmsDBHandler;

    invoke-virtual {v1, v9}, Lcom/android/server/pm/VivoPKMSDatabaseUtils$PkmsDBHandler;->sendMessage(Landroid/os/Message;)Z

    .line 344
    .end local v8    # "installAppConfigListTemp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;>;"
    .end local v9    # "msg":Landroid/os/Message;
    :cond_5
    return-void

    .line 333
    .restart local v8    # "installAppConfigListTemp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/VivoPKMSDatabaseUtils$InstallAppConfig;>;"
    :catch_0
    move-exception v7

    .line 334
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "VivoPKMSDatabaseUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "query complete catch exception "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 336
    if-eqz p3, :cond_4

    .line 337
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 336
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz p3, :cond_6

    .line 337
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v1
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "result"    # I

    .prologue
    .line 366
    sget-boolean v0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->DEBUG_FOR_FB_APL:Z

    if-eqz v0, :cond_0

    .line 367
    const-string v0, "VivoPKMSDatabaseUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdateComplete  token:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_0
    return-void
.end method
