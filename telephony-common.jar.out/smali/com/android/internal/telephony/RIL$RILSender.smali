.class Lcom/android/internal/telephony/RIL$RILSender;
.super Landroid/os/Handler;
.source "RIL.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RILSender"
.end annotation


# instance fields
.field dataLength:[B

.field final synthetic this$0:Lcom/android/internal/telephony/RIL;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/RIL;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 465
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    .line 466
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 470
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/RIL$RILSender;->dataLength:[B

    .line 467
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 26
    .param p1, "msg"    # Landroid/os/Message;
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->CHANGE_CODE:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    .line 484
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/internal/telephony/RILRequest;

    move-object/from16 v15, v19

    check-cast v15, Lcom/android/internal/telephony/RILRequest;

    .line 485
    .local v15, "rr":Lcom/android/internal/telephony/RILRequest;
    const/4 v14, 0x0

    .line 487
    .local v14, "req":Lcom/android/internal/telephony/RILRequest;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v19, v0

    sparse-switch v19, :sswitch_data_0

    .line 631
    :cond_0
    :goto_0
    return-void

    .line 492
    :sswitch_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    move-object/from16 v16, v0

    .line 494
    .local v16, "s":Landroid/net/LocalSocket;
    if-nez v16, :cond_1

    .line 495
    const/16 v19, 0x1

    const/16 v20, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 496
    invoke-virtual {v15}, Lcom/android/internal/telephony/RILRequest;->release()V

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v19, v0

    # invokes: Lcom/android/internal/telephony/RIL;->decrementWakeLock()V
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/RIL;->access$100(Lcom/android/internal/telephony/RIL;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 526
    .end local v16    # "s":Landroid/net/LocalSocket;
    :catch_0
    move-exception v6

    .line 527
    .local v6, "ex":Ljava/io/IOException;
    const-string v19, "RILJ"

    const-string v20, "IOException"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v19, v0

    iget v0, v15, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    move/from16 v20, v0

    # invokes: Lcom/android/internal/telephony/RIL;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;
    invoke-static/range {v19 .. v20}, Lcom/android/internal/telephony/RIL;->access$200(Lcom/android/internal/telephony/RIL;I)Lcom/android/internal/telephony/RILRequest;

    move-result-object v14

    .line 531
    if-eqz v14, :cond_0

    .line 532
    const/16 v19, 0x1

    const/16 v20, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 533
    invoke-virtual {v15}, Lcom/android/internal/telephony/RILRequest;->release()V

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v19, v0

    # invokes: Lcom/android/internal/telephony/RIL;->decrementWakeLock()V
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/RIL;->access$100(Lcom/android/internal/telephony/RIL;)V

    goto :goto_0

    .line 501
    .end local v6    # "ex":Ljava/io/IOException;
    .restart local v16    # "s":Landroid/net/LocalSocket;
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    monitor-enter v20
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 502
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    iget v0, v15, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 503
    monitor-exit v20
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 507
    :try_start_3
    iget-object v0, v15, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/Parcel;->marshall()[B

    move-result-object v5

    .line 508
    .local v5, "data":[B
    iget-object v0, v15, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/Parcel;->recycle()V

    .line 509
    const/16 v19, 0x0

    move-object/from16 v0, v19

    iput-object v0, v15, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    .line 511
    array-length v0, v5

    move/from16 v19, v0

    const/16 v20, 0x2000

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_2

    .line 512
    new-instance v19, Ljava/lang/RuntimeException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Parcel larger than max bytes allowed! "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    array-length v0, v5

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v19
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 536
    .end local v5    # "data":[B
    .end local v16    # "s":Landroid/net/LocalSocket;
    :catch_1
    move-exception v7

    .line 537
    .local v7, "exc":Ljava/lang/RuntimeException;
    const-string v19, "RILJ"

    const-string v20, "Uncaught exception "

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v19, v0

    iget v0, v15, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    move/from16 v20, v0

    # invokes: Lcom/android/internal/telephony/RIL;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;
    invoke-static/range {v19 .. v20}, Lcom/android/internal/telephony/RIL;->access$200(Lcom/android/internal/telephony/RIL;I)Lcom/android/internal/telephony/RILRequest;

    move-result-object v14

    .line 541
    if-eqz v14, :cond_0

    .line 542
    const/16 v19, 0x2

    const/16 v20, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 543
    invoke-virtual {v15}, Lcom/android/internal/telephony/RILRequest;->release()V

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v19, v0

    # invokes: Lcom/android/internal/telephony/RIL;->decrementWakeLock()V
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/RIL;->access$100(Lcom/android/internal/telephony/RIL;)V

    goto/16 :goto_0

    .line 503
    .end local v7    # "exc":Ljava/lang/RuntimeException;
    .restart local v16    # "s":Landroid/net/LocalSocket;
    :catchall_0
    move-exception v19

    :try_start_4
    monitor-exit v20
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v19

    .line 518
    .restart local v5    # "data":[B
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILSender;->dataLength:[B

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILSender;->dataLength:[B

    move-object/from16 v21, v0

    const/16 v22, 0x1

    const/16 v23, 0x0

    aput-byte v23, v21, v22

    aput-byte v23, v19, v20

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILSender;->dataLength:[B

    move-object/from16 v19, v0

    const/16 v20, 0x2

    array-length v0, v5

    move/from16 v21, v0

    shr-int/lit8 v21, v21, 0x8

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    aput-byte v21, v19, v20

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILSender;->dataLength:[B

    move-object/from16 v19, v0

    const/16 v20, 0x3

    array-length v0, v5

    move/from16 v21, v0

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    aput-byte v21, v19, v20

    .line 524
    invoke-virtual/range {v16 .. v16}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILSender;->dataLength:[B

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/io/OutputStream;->write([B)V

    .line 525
    invoke-virtual/range {v16 .. v16}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/io/OutputStream;->write([B)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 552
    .end local v5    # "data":[B
    .end local v16    # "s":Landroid/net/LocalSocket;
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 553
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v19, v0

    # operator++ for: Lcom/android/internal/telephony/RIL;->mTimeOutCount:I
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/RIL;->access$308(Lcom/android/internal/telephony/RIL;)I

    .line 554
    monitor-exit v20
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 568
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v19, v0

    # invokes: Lcom/android/internal/telephony/RIL;->clearWakeLock()Z
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/RIL;->access$400(Lcom/android/internal/telephony/RIL;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 571
    .local v4, "count":I
    const-string v19, "RILJ"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "WAKE_LOCK_TIMEOUT  mRequestList="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v4, :cond_3

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    check-cast v0, Lcom/android/internal/telephony/RILRequest;

    move-object v15, v0

    .line 575
    const-string v19, "RILJ"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ": ["

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget v0, v15, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "] "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget v0, v15, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 573
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 554
    .end local v4    # "count":I
    .end local v8    # "i":I
    :catchall_1
    move-exception v19

    :try_start_8
    monitor-exit v20
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v19

    .line 580
    .restart local v4    # "count":I
    .restart local v8    # "i":I
    :cond_3
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v19, v0

    # getter for: Lcom/android/internal/telephony/RIL;->mTimeOutCount:I
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/RIL;->access$300(Lcom/android/internal/telephony/RIL;)I

    move-result v19

    const/16 v21, 0x6

    move/from16 v0, v19

    move/from16 v1, v21

    if-le v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseArray;->size()I

    move-result v19

    const/16 v21, 0x1e

    move/from16 v0, v19

    move/from16 v1, v21

    if-le v0, v1, :cond_4

    .line 581
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 582
    .local v12, "nowTms":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v19, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    # setter for: Lcom/android/internal/telephony/RIL;->mTimeOutCount:I
    invoke-static {v0, v1}, Lcom/android/internal/telephony/RIL;->access$302(Lcom/android/internal/telephony/RIL;I)I

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v19, v0

    # getter for: Lcom/android/internal/telephony/RIL;->mRildKillTime:J
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/RIL;->access$500(Lcom/android/internal/telephony/RIL;)J

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmp-long v19, v22, v24

    if-lez v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v19, v0

    # getter for: Lcom/android/internal/telephony/RIL;->mRildKillTime:J
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/RIL;->access$500(Lcom/android/internal/telephony/RIL;)J

    move-result-wide v22

    sub-long v22, v12, v22

    const-wide/32 v24, 0x927c0

    cmp-long v19, v22, v24

    if-gez v19, :cond_5

    .line 584
    const-string v19, "RILJ_LOG_TAG"

    const-string v21, "ril error,reboot system"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v19, v0

    const-wide/16 v22, 0x0

    move-object/from16 v0, v19

    move-wide/from16 v1, v22

    # setter for: Lcom/android/internal/telephony/RIL;->mRildKillTime:J
    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->access$502(Lcom/android/internal/telephony/RIL;J)J

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v19, v0

    # invokes: Lcom/android/internal/telephony/RIL;->rebootSystem()V
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/RIL;->access$600(Lcom/android/internal/telephony/RIL;)V

    .line 595
    .end local v4    # "count":I
    .end local v8    # "i":I
    .end local v12    # "nowTms":J
    :cond_4
    :goto_2
    monitor-exit v20

    goto/16 :goto_0

    :catchall_2
    move-exception v19

    monitor-exit v20
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v19

    .line 588
    .restart local v4    # "count":I
    .restart local v8    # "i":I
    .restart local v12    # "nowTms":J
    :cond_5
    :try_start_a
    const-string v19, "RILJ_LOG_TAG"

    const-string v21, "ril error,restart rild"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    # setter for: Lcom/android/internal/telephony/RIL;->mRildKillTime:J
    invoke-static {v0, v12, v13}, Lcom/android/internal/telephony/RIL;->access$502(Lcom/android/internal/telephony/RIL;J)J

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v19, v0

    # invokes: Lcom/android/internal/telephony/RIL;->killRild()V
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/RIL;->access$700(Lcom/android/internal/telephony/RIL;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_2

    .line 599
    .end local v4    # "count":I
    .end local v8    # "i":I
    .end local v12    # "nowTms":J
    :sswitch_2
    const/4 v10, 0x0

    .line 600
    .local v10, "mg2_band_str":Ljava/lang/String;
    # getter for: Lcom/android/internal/telephony/RIL;->bandsignal_flag:I
    invoke-static {}, Lcom/android/internal/telephony/RIL;->access$800()I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 603
    :try_start_b
    new-instance v9, Lcom/vivo/common/VivoCollectData;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Lcom/vivo/common/VivoCollectData;-><init>(Landroid/content/Context;)V

    .line 604
    .local v9, "mVivoCollectData":Lcom/vivo/common/VivoCollectData;
    const-string v19, "805"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Lcom/vivo/common/VivoCollectData;->getControlInfo(Ljava/lang/String;)Z

    move-result v17

    .line 605
    .local v17, "status":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    const-string v19, "1"

    const-string v21, "persist.radio.bswritefile"

    const-string v22, "2"

    invoke-static/range {v21 .. v22}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    const/16 v19, 0x1

    :goto_3
    move-object/from16 v0, v20

    move/from16 v1, v19

    # setter for: Lcom/android/internal/telephony/RIL;->BAND_SIGNAL_WRITE_FLAG:Z
    invoke-static {v0, v1}, Lcom/android/internal/telephony/RIL;->access$902(Lcom/android/internal/telephony/RIL;Z)Z

    .line 606
    if-nez v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v19, v0

    # getter for: Lcom/android/internal/telephony/RIL;->BAND_SIGNAL_WRITE_FLAG:Z
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/RIL;->access$900(Lcom/android/internal/telephony/RIL;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 607
    :cond_6
    const/16 v19, 0x1

    # setter for: Lcom/android/internal/telephony/RIL;->bandsignal_flag:I
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/RIL;->access$802(I)I
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_2

    .line 615
    .end local v9    # "mVivoCollectData":Lcom/vivo/common/VivoCollectData;
    .end local v17    # "status":Z
    :cond_7
    :goto_4
    # getter for: Lcom/android/internal/telephony/RIL;->bandsignal_flag:I
    invoke-static {}, Lcom/android/internal/telephony/RIL;->access$800()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 616
    # getter for: Lcom/android/internal/telephony/RIL;->data_sub:I
    invoke-static {}, Lcom/android/internal/telephony/RIL;->access$1000()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    # getter for: Lcom/android/internal/telephony/RIL;->mInstanceId:Ljava/lang/Integer;
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/RIL;->access$1100(Lcom/android/internal/telephony/RIL;)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v19, v0

    const/16 v20, 0xb

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "ssssss"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    # getter for: Lcom/android/internal/telephony/RIL;->data_sub:I
    invoke-static {}, Lcom/android/internal/telephony/RIL;->access$1000()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v19 .. v22}, Lcom/android/internal/telephony/RIL;->sendMiscInfo(ILjava/lang/String;Landroid/os/Message;)V

    .line 619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSender:Lcom/android/internal/telephony/RIL$RILSender;

    move-object/from16 v19, v0

    const/16 v20, 0xa1

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/telephony/RIL$RILSender;->removeMessages(I)V

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSender:Lcom/android/internal/telephony/RIL$RILSender;

    move-object/from16 v19, v0

    const/16 v20, 0xa1

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/telephony/RIL$RILSender;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    .line 621
    .local v11, "msg_signals":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSender:Lcom/android/internal/telephony/RIL$RILSender;

    move-object/from16 v19, v0

    const-wide/32 v20, 0xea60

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-virtual {v0, v11, v1, v2}, Lcom/android/internal/telephony/RIL$RILSender;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 605
    .end local v11    # "msg_signals":Landroid/os/Message;
    .restart local v9    # "mVivoCollectData":Lcom/vivo/common/VivoCollectData;
    .restart local v17    # "status":Z
    :cond_8
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 609
    :cond_9
    const/16 v19, 0x0

    :try_start_c
    # setter for: Lcom/android/internal/telephony/RIL;->bandsignal_flag:I
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/RIL;->access$802(I)I
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_2

    goto/16 :goto_4

    .line 610
    .end local v9    # "mVivoCollectData":Lcom/vivo/common/VivoCollectData;
    .end local v17    # "status":Z
    :catch_2
    move-exception v18

    .line 611
    .local v18, "tr":Ljava/lang/Throwable;
    const-string v19, "RILJ"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "bandsignal uncaught exception"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 624
    .end local v18    # "tr":Ljava/lang/Throwable;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSender:Lcom/android/internal/telephony/RIL$RILSender;

    move-object/from16 v19, v0

    const/16 v20, 0xa1

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/telephony/RIL$RILSender;->removeMessages(I)V

    goto/16 :goto_0

    .line 487
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0xa1 -> :sswitch_2
    .end sparse-switch
.end method

.method public run()V
    .locals 0

    .prologue
    .line 477
    return-void
.end method
