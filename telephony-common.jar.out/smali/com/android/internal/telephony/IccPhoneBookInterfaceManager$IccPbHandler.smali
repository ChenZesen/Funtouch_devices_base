.class public Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;
.super Landroid/os/Handler;
.source "IccPhoneBookInterfaceManager.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->CHANGE_CODE:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "IccPbHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    .line 114
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 115
    return-void
.end method

.method private notifyPending(Landroid/os/AsyncResult;)V
    .locals 2
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 243
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 244
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 245
    .local v0, "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 247
    .end local v0    # "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v1, v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 248
    return-void
.end method

.method private notifyPendingForGetSize(Landroid/os/AsyncResult;)V
    .locals 2
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    .line 256
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 257
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 258
    .local v0, "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 260
    .end local v0    # "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mGetSizeLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 261
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->CHANGE_CODE:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 123
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 240
    :goto_0
    return-void

    .line 125
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 128
    .local v1, "ar":Landroid/os/AsyncResult;
    sget-object v5, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mGetSizeLock:Ljava/lang/Object;

    monitor-enter v5

    .line 130
    :try_start_0
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_1

    .line 133
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v4, v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mRecordSize:[I

    const/4 v6, 0x2

    aget v4, v4, v6

    if-eqz v4, :cond_2

    .line 134
    iget-object v4, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    move-object v0, v4

    check-cast v0, [I

    move-object v3, v0

    .line 135
    .local v3, "ret":[I
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v4, v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mRecordSize:[I

    const/4 v6, 0x1

    aget v7, v4, v6

    const/4 v8, 0x1

    aget v8, v3, v8

    add-int/2addr v7, v8

    aput v7, v4, v6

    .line 136
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v4, v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mRecordSize:[I

    const/4 v6, 0x2

    aget v7, v4, v6

    const/4 v8, 0x2

    aget v8, v3, v8

    add-int/2addr v7, v8

    aput v7, v4, v6

    .line 137
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v4, v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mRecordSize:[I

    const/4 v6, 0x0

    aget v4, v4, v6

    const/4 v6, 0x0

    aget v6, v3, v6

    if-eq v4, v6, :cond_0

    .line 138
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    const-string v6, "GET_RECORD_SIZE record size is not equal"

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    .line 148
    .end local v3    # "ret":[I
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GET_RECORD_SIZE Size "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v7, v7, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mRecordSize:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " total "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v7, v7, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mRecordSize:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " #record "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v7, v7, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mRecordSize:[I

    const/4 v8, 0x2

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 154
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;->notifyPendingForGetSize(Landroid/os/AsyncResult;)V

    .line 156
    monitor-exit v5

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 141
    :cond_2
    :try_start_1
    iget-object v6, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v4, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    check-cast v4, [I

    iput-object v4, v6, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mRecordSize:[I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 159
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 160
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v6, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v6, v6, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 161
    :try_start_2
    iget-object v7, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v8, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_3

    :goto_2
    iput-boolean v4, v7, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSuccess:Z

    .line 163
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-boolean v4, v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSuccess:Z

    if-nez v4, :cond_5

    .line 164
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/android/internal/telephony/CommandException;

    if-eqz v4, :cond_4

    .line 165
    iget-object v5, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v7, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v4, Lcom/android/internal/telephony/CommandException;

    # invokes: Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getErrorCauseFromException(Lcom/android/internal/telephony/CommandException;)I
    invoke-static {v7, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->access$000(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;Lcom/android/internal/telephony/CommandException;)I

    move-result v4

    iput v4, v5, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mErrorCause:I

    .line 174
    :goto_3
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "update done result: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget v7, v7, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mErrorCause:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 177
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;->notifyPending(Landroid/os/AsyncResult;)V

    .line 178
    monitor-exit v6

    goto/16 :goto_0

    :catchall_1
    move-exception v4

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    :cond_3
    move v4, v5

    .line 161
    goto :goto_2

    .line 168
    :cond_4
    :try_start_3
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    const/16 v5, -0xa

    iput v5, v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mErrorCause:I

    goto :goto_3

    .line 171
    :cond_5
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    const/4 v5, 0x1

    iput v5, v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mErrorCause:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    .line 181
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 182
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v5, v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 183
    :try_start_4
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_7

    .line 184
    iget-object v6, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v4, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    iput-object v4, v6, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mRecords:Ljava/util/List;

    .line 191
    :cond_6
    :goto_4
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;->notifyPending(Landroid/os/AsyncResult;)V

    .line 192
    monitor-exit v5

    goto/16 :goto_0

    :catchall_2
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v4

    .line 186
    :cond_7
    :try_start_5
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    const-string v6, "Cannot load ADN records"

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 187
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v4, v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mRecords:Ljava/util/List;

    if-eqz v4, :cond_6

    .line 188
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    const/4 v6, 0x0

    iput-object v6, v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mRecords:Ljava/util/List;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_4

    .line 196
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 197
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v5, v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 198
    :try_start_6
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_8

    .line 199
    iget-object v6, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v4, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    iput-object v4, v6, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mRecords:Ljava/util/List;

    .line 200
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    const/4 v6, 0x1

    iput v6, v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mErrorCause:I

    .line 214
    :goto_5
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;->notifyPending(Landroid/os/AsyncResult;)V

    .line 215
    monitor-exit v5

    goto/16 :goto_0

    :catchall_3
    move-exception v4

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v4

    .line 202
    :cond_8
    :try_start_7
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot load ADN records, ar.exception = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 203
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v4, v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mRecords:Ljava/util/List;

    if-eqz v4, :cond_9

    .line 204
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v4, v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mRecords:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 205
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    const/4 v6, 0x0

    iput-object v6, v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mRecords:Ljava/util/List;

    .line 207
    :cond_9
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/android/internal/telephony/CommandException;

    if-eqz v4, :cond_a

    .line 208
    iget-object v6, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v7, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v4, Lcom/android/internal/telephony/CommandException;

    # invokes: Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getErrorCauseFromException(Lcom/android/internal/telephony/CommandException;)I
    invoke-static {v7, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->access$000(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;Lcom/android/internal/telephony/CommandException;)I

    move-result v4

    iput v4, v6, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mErrorCause:I

    goto :goto_5

    .line 211
    :cond_a
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    const/16 v6, -0xa

    iput v6, v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mErrorCause:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_5

    .line 218
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :pswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 219
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v6, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v6, v6, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 220
    :try_start_8
    iget-object v7, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v8, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_b

    :goto_6
    iput-boolean v4, v7, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSuccess:Z

    .line 221
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-boolean v4, v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSuccess:Z

    if-nez v4, :cond_d

    .line 222
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/android/internal/telephony/CommandException;

    if-eqz v4, :cond_c

    .line 223
    iget-object v5, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v7, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v4, Lcom/android/internal/telephony/CommandException;

    # invokes: Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getErrorCauseFromException(Lcom/android/internal/telephony/CommandException;)I
    invoke-static {v7, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->access$000(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;Lcom/android/internal/telephony/CommandException;)I

    move-result v4

    iput v4, v5, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mErrorCause:I

    .line 233
    :goto_7
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EVENT_UPDATE_QMI_PBM_RECORD_DONE: result = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget v7, v7, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mErrorCause:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 235
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;->notifyPending(Landroid/os/AsyncResult;)V

    .line 236
    monitor-exit v6

    goto/16 :goto_0

    :catchall_4
    move-exception v4

    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v4

    :cond_b
    move v4, v5

    .line 220
    goto :goto_6

    .line 226
    :cond_c
    :try_start_9
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    const/16 v5, -0xa

    iput v5, v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mErrorCause:I

    goto :goto_7

    .line 229
    :cond_d
    iget-object v4, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object v0, v4

    check-cast v0, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object v2, v0

    .line 230
    .local v2, "newRecord":Lcom/android/internal/telephony/uicc/AdnRecord;
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getRecordIndex()I

    move-result v5

    iput v5, v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mErrorCause:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_7

    .line 123
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
