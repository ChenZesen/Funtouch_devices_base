.class Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionHandler;
.super Landroid/os/Handler;
.source "MotionRecognitionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/motion/MotionRecognitionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MotionRecognitionHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/services/motion/MotionRecognitionManager;


# direct methods
.method public constructor <init>(Lcom/vivo/services/motion/MotionRecognitionManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "mLooper"    # Landroid/os/Looper;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionHandler;->this$0:Lcom/vivo/services/motion/MotionRecognitionManager;

    .line 247
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 248
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 24
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 253
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 256
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .line 259
    .local v2, "IntegerAction":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 260
    .local v14, "action":I
    const-string v3, "MotionRecognitionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const/4 v3, 0x1

    if-eq v14, v3, :cond_1

    const/4 v3, 0x2

    if-eq v14, v3, :cond_1

    const/4 v3, 0x3

    if-eq v14, v3, :cond_1

    const/4 v3, 0x4

    if-eq v14, v3, :cond_1

    const/4 v3, 0x5

    if-eq v14, v3, :cond_1

    const/4 v3, 0x6

    if-eq v14, v3, :cond_1

    const/4 v3, 0x7

    if-eq v14, v3, :cond_1

    const/16 v3, 0x8

    if-eq v14, v3, :cond_1

    const/16 v3, 0x9

    if-eq v14, v3, :cond_1

    const/16 v3, 0x11

    if-eq v14, v3, :cond_1

    const/16 v3, 0x12

    if-eq v14, v3, :cond_1

    const/16 v3, 0x13

    if-eq v14, v3, :cond_1

    const/16 v3, 0x14

    if-eq v14, v3, :cond_1

    const/16 v3, 0x15

    if-eq v14, v3, :cond_1

    const/16 v3, 0x16

    if-eq v14, v3, :cond_1

    const/16 v3, 0x17

    if-eq v14, v3, :cond_1

    const/16 v3, 0x18

    if-eq v14, v3, :cond_1

    const/16 v3, 0x50

    if-eq v14, v3, :cond_1

    const/16 v3, 0x51

    if-eq v14, v3, :cond_1

    const/16 v3, 0x52

    if-eq v14, v3, :cond_1

    const/16 v3, 0x53

    if-eq v14, v3, :cond_1

    const/16 v3, 0x54

    if-ne v14, v3, :cond_0

    .line 289
    :cond_1
    const/16 v3, 0x8

    if-ne v3, v14, :cond_4

    .line 291
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionHandler;->this$0:Lcom/vivo/services/motion/MotionRecognitionManager;

    iget-object v3, v3, Lcom/vivo/services/motion/MotionRecognitionManager;->mVivoCollectData:Lcom/vivo/common/VivoCollectData;

    const-string v4, "1006"

    const-string v5, "10061"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual/range {v3 .. v13}, Lcom/vivo/common/VivoCollectData;->writeData(Ljava/lang/String;Ljava/lang/String;JJJILjava/util/HashMap;)V

    .line 292
    const-string v3, "MotionRecognitionManager"

    const-string v4, "vivo collect data: SCREEN_OFF_WAKEUP"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_2
    :goto_1
    const-string v3, "ro.product.model.bbk"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 316
    .local v23, "prop":Ljava/lang/String;
    const/16 v3, 0x400

    :try_start_0
    new-array v15, v3, [C

    .line 317
    .local v15, "buffer":[C
    new-instance v17, Ljava/io/FileReader;

    const-string v3, "/sys/class/switch/hall/state"

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 320
    .local v17, "file":Ljava/io/FileReader;
    const/4 v3, 0x0

    const/16 v4, 0x400

    :try_start_1
    move-object/from16 v0, v17

    invoke-virtual {v0, v15, v3, v4}, Ljava/io/FileReader;->read([CII)I

    move-result v19

    .line 321
    .local v19, "len":I
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    move/from16 v0, v19

    invoke-direct {v3, v15, v4, v0}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    # setter for: Lcom/vivo/services/motion/MotionRecognitionManager;->newState:I
    invoke-static {v3}, Lcom/vivo/services/motion/MotionRecognitionManager;->access$002(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 325
    :try_start_2
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 337
    .end local v15    # "buffer":[C
    .end local v17    # "file":Ljava/io/FileReader;
    .end local v19    # "len":I
    :goto_2
    const-string v3, "MotionRecognitionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "newState:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/vivo/services/motion/MotionRecognitionManager;->newState:I
    invoke-static {}, Lcom/vivo/services/motion/MotionRecognitionManager;->access$000()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    # getter for: Lcom/vivo/services/motion/MotionRecognitionManager;->newState:I
    invoke-static {}, Lcom/vivo/services/motion/MotionRecognitionManager;->access$000()I

    move-result v3

    if-nez v3, :cond_7

    const/4 v3, 0x1

    if-eq v14, v3, :cond_3

    const/4 v3, 0x3

    if-eq v14, v3, :cond_3

    const/4 v3, 0x4

    if-eq v14, v3, :cond_3

    const/4 v3, 0x6

    if-eq v14, v3, :cond_3

    const/4 v3, 0x7

    if-eq v14, v3, :cond_3

    const/16 v3, 0x8

    if-eq v14, v3, :cond_3

    const/16 v3, 0x50

    if-eq v14, v3, :cond_3

    const/16 v3, 0x51

    if-eq v14, v3, :cond_3

    const/16 v3, 0x52

    if-eq v14, v3, :cond_3

    const/16 v3, 0x53

    if-eq v14, v3, :cond_3

    const/16 v3, 0x54

    if-ne v14, v3, :cond_7

    .line 351
    :cond_3
    const-string v3, "MotionRecognitionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "return newState:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/vivo/services/motion/MotionRecognitionManager;->newState:I
    invoke-static {}, Lcom/vivo/services/motion/MotionRecognitionManager;->access$000()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 294
    .end local v23    # "prop":Ljava/lang/String;
    :cond_4
    const/4 v3, 0x6

    if-ne v3, v14, :cond_5

    .line 296
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionHandler;->this$0:Lcom/vivo/services/motion/MotionRecognitionManager;

    iget-object v3, v3, Lcom/vivo/services/motion/MotionRecognitionManager;->mVivoCollectData:Lcom/vivo/common/VivoCollectData;

    const-string v4, "1008"

    const-string v5, "10081"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual/range {v3 .. v13}, Lcom/vivo/common/VivoCollectData;->writeData(Ljava/lang/String;Ljava/lang/String;JJJILjava/util/HashMap;)V

    .line 297
    const-string v3, "MotionRecognitionManager"

    const-string v4, "vivo collect data: POCKET_MODE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 299
    :cond_5
    const/4 v3, 0x7

    if-ne v3, v14, :cond_6

    .line 301
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionHandler;->this$0:Lcom/vivo/services/motion/MotionRecognitionManager;

    iget-object v3, v3, Lcom/vivo/services/motion/MotionRecognitionManager;->mVivoCollectData:Lcom/vivo/common/VivoCollectData;

    const-string v4, "1010"

    const-string v5, "10101"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual/range {v3 .. v13}, Lcom/vivo/common/VivoCollectData;->writeData(Ljava/lang/String;Ljava/lang/String;JJJILjava/util/HashMap;)V

    .line 302
    const-string v3, "MotionRecognitionManager"

    const-string v4, "vivo collect data: SHAKE_PHONE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 303
    :cond_6
    const/4 v3, 0x4

    if-ne v3, v14, :cond_2

    .line 304
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionHandler;->this$0:Lcom/vivo/services/motion/MotionRecognitionManager;

    iget-object v3, v3, Lcom/vivo/services/motion/MotionRecognitionManager;->mVivoCollectData:Lcom/vivo/common/VivoCollectData;

    const-string v4, "1007"

    const-string v5, "10071"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual/range {v3 .. v13}, Lcom/vivo/common/VivoCollectData;->writeData(Ljava/lang/String;Ljava/lang/String;JJJILjava/util/HashMap;)V

    .line 305
    const-string v3, "MotionRecognitionManager"

    const-string v4, "vivo collect data: PROXACROSS_DETECT"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 325
    .restart local v15    # "buffer":[C
    .restart local v17    # "file":Ljava/io/FileReader;
    .restart local v23    # "prop":Ljava/lang/String;
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileReader;->close()V

    throw v3
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 328
    .end local v15    # "buffer":[C
    .end local v17    # "file":Ljava/io/FileReader;
    :catch_0
    move-exception v16

    .line 330
    .local v16, "e":Ljava/io/FileNotFoundException;
    const-string v3, "MotionRecognitionManager"

    const-string v4, "This kernel does not have hall support"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 332
    .end local v16    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v16

    .line 334
    .local v16, "e":Ljava/lang/Exception;
    const-string v3, "MotionRecognitionManager"

    const-string v4, ""

    move-object/from16 v0, v16

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 356
    .end local v16    # "e":Ljava/lang/Exception;
    :cond_7
    sget-object v4, Lcom/vivo/services/motion/MotionRecognitionManager;->sListenersClassList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 358
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_3
    :try_start_4
    sget-object v3, Lcom/vivo/services/motion/MotionRecognitionManager;->sListenersClassList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v18

    if-ge v0, v3, :cond_a

    .line 360
    sget-object v3, Lcom/vivo/services/motion/MotionRecognitionManager;->sListenersClassList:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;

    .line 363
    .local v21, "mListenerClass":Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;
    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;->hasActionType(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 365
    const-string v3, "MotionRecognitionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hasActionType:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    # getter for: Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;->mMotionRecognitionListener:Lcom/vivo/services/motion/MotionRecognitionListener;
    invoke-static/range {v21 .. v21}, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;->access$100(Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;)Lcom/vivo/services/motion/MotionRecognitionListener;

    move-result-object v3

    invoke-interface {v3, v14}, Lcom/vivo/services/motion/MotionRecognitionListener;->onMotionActionTriger(I)Landroid/content/Context;

    move-result-object v20

    .line 369
    .local v20, "mContext":Landroid/content/Context;
    if-eqz v20, :cond_8

    .line 371
    const/4 v3, 0x1

    if-ne v14, v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionHandler;->this$0:Lcom/vivo/services/motion/MotionRecognitionManager;

    # getter for: Lcom/vivo/services/motion/MotionRecognitionManager;->mNeedVibrator:Z
    invoke-static {v3}, Lcom/vivo/services/motion/MotionRecognitionManager;->access$200(Lcom/vivo/services/motion/MotionRecognitionManager;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 373
    const-string v3, "vibrator"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/os/Vibrator;

    .line 374
    .local v22, "mVibrator":Landroid/os/Vibrator;
    const/4 v3, 0x2

    new-array v3, v3, [J

    fill-array-data v3, :array_0

    const/4 v5, -0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v5}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 379
    .end local v22    # "mVibrator":Landroid/os/Vibrator;
    :cond_8
    move-object/from16 v0, v21

    iget v3, v0, Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;->needDelete:I

    if-lez v3, :cond_9

    .line 381
    sget-object v3, Lcom/vivo/services/motion/MotionRecognitionManager;->sListenersClassList:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 358
    .end local v20    # "mContext":Landroid/content/Context;
    :cond_9
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 389
    .end local v21    # "mListenerClass":Lcom/vivo/services/motion/MotionRecognitionManager$MotionRecognitionListenerClass;
    :cond_a
    monitor-exit v4

    goto/16 :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3

    .line 253
    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch

    .line 374
    :array_0
    .array-data 8
        0x1
        0x32
    .end array-data
.end method
