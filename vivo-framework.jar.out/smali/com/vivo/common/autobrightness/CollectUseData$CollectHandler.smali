.class Lcom/vivo/common/autobrightness/CollectUseData$CollectHandler;
.super Landroid/os/Handler;
.source "CollectUseData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/autobrightness/CollectUseData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CollectHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/common/autobrightness/CollectUseData;


# direct methods
.method public constructor <init>(Lcom/vivo/common/autobrightness/CollectUseData;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/vivo/common/autobrightness/CollectUseData$CollectHandler;->this$0:Lcom/vivo/common/autobrightness/CollectUseData;

    .line 123
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 124
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 128
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 177
    :goto_0
    return-void

    .line 130
    :pswitch_0
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isDebug()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 131
    const-string v4, "CollectUseData"

    const-string v5, "handleMessage MSG_WRITE_TO_DB"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/common/autobrightness/CollectUseData$CollectHandler;->this$0:Lcom/vivo/common/autobrightness/CollectUseData;

    # getter for: Lcom/vivo/common/autobrightness/CollectUseData;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/vivo/common/autobrightness/CollectUseData;->access$000(Lcom/vivo/common/autobrightness/CollectUseData;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 134
    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/common/autobrightness/CollectUseData$CollectHandler;->this$0:Lcom/vivo/common/autobrightness/CollectUseData;

    # getter for: Lcom/vivo/common/autobrightness/CollectUseData;->mDataParameterList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/vivo/common/autobrightness/CollectUseData;->access$200(Lcom/vivo/common/autobrightness/CollectUseData;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x1

    if-lt v4, v6, :cond_1

    .line 135
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vivo/common/autobrightness/CollectUseData$CollectHandler;->this$0:Lcom/vivo/common/autobrightness/CollectUseData;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/common/autobrightness/CollectUseData$CollectHandler;->this$0:Lcom/vivo/common/autobrightness/CollectUseData;

    # getter for: Lcom/vivo/common/autobrightness/CollectUseData;->mDataParameterList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/vivo/common/autobrightness/CollectUseData;->access$200(Lcom/vivo/common/autobrightness/CollectUseData;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vivo/common/autobrightness/DataParameter;

    # invokes: Lcom/vivo/common/autobrightness/CollectUseData;->writeDatabaseUnlock(Lcom/vivo/common/autobrightness/DataParameter;)V
    invoke-static {v6, v4}, Lcom/vivo/common/autobrightness/CollectUseData;->access$300(Lcom/vivo/common/autobrightness/CollectUseData;Lcom/vivo/common/autobrightness/DataParameter;)V

    .line 136
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/common/autobrightness/CollectUseData$CollectHandler;->this$0:Lcom/vivo/common/autobrightness/CollectUseData;

    # getter for: Lcom/vivo/common/autobrightness/CollectUseData;->mDataParameterList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/vivo/common/autobrightness/CollectUseData;->access$200(Lcom/vivo/common/autobrightness/CollectUseData;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 138
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_1
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 142
    :pswitch_1
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isDebug()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 143
    const-string v4, "CollectUseData"

    const-string v5, "handleMessage MSG_BIRGHTNESS_MANUAL_HAPPENED"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/common/autobrightness/CollectUseData$CollectHandler;->this$0:Lcom/vivo/common/autobrightness/CollectUseData;

    # getter for: Lcom/vivo/common/autobrightness/CollectUseData;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/vivo/common/autobrightness/CollectUseData;->access$000(Lcom/vivo/common/autobrightness/CollectUseData;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 146
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/common/autobrightness/CollectUseData$CollectHandler;->this$0:Lcom/vivo/common/autobrightness/CollectUseData;

    # getter for: Lcom/vivo/common/autobrightness/CollectUseData;->mLightBuffer:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/vivo/common/autobrightness/CollectUseData;->access$100(Lcom/vivo/common/autobrightness/CollectUseData;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 147
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/common/autobrightness/CollectUseData$CollectHandler;->this$0:Lcom/vivo/common/autobrightness/CollectUseData;

    # getter for: Lcom/vivo/common/autobrightness/CollectUseData;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v4}, Lcom/vivo/common/autobrightness/CollectUseData;->access$700(Lcom/vivo/common/autobrightness/CollectUseData;)Landroid/hardware/SensorManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vivo/common/autobrightness/CollectUseData$CollectHandler;->this$0:Lcom/vivo/common/autobrightness/CollectUseData;

    # getter for: Lcom/vivo/common/autobrightness/CollectUseData;->mListener:Landroid/hardware/SensorEventListener;
    invoke-static {v6}, Lcom/vivo/common/autobrightness/CollectUseData;->access$400(Lcom/vivo/common/autobrightness/CollectUseData;)Landroid/hardware/SensorEventListener;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/vivo/common/autobrightness/CollectUseData$CollectHandler;->this$0:Lcom/vivo/common/autobrightness/CollectUseData;

    # getter for: Lcom/vivo/common/autobrightness/CollectUseData;->mLightSensor:Landroid/hardware/Sensor;
    invoke-static {v7}, Lcom/vivo/common/autobrightness/CollectUseData;->access$500(Lcom/vivo/common/autobrightness/CollectUseData;)Landroid/hardware/Sensor;

    move-result-object v7

    const/4 v8, 0x3

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vivo/common/autobrightness/CollectUseData$CollectHandler;->this$0:Lcom/vivo/common/autobrightness/CollectUseData;

    # getter for: Lcom/vivo/common/autobrightness/CollectUseData;->mHandler:Lcom/vivo/common/autobrightness/CollectUseData$CollectHandler;
    invoke-static {v9}, Lcom/vivo/common/autobrightness/CollectUseData;->access$600(Lcom/vivo/common/autobrightness/CollectUseData;)Lcom/vivo/common/autobrightness/CollectUseData$CollectHandler;

    move-result-object v9

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 148
    monitor-exit v5

    goto/16 :goto_0

    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .line 152
    :pswitch_2
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isDebug()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 153
    const-string v4, "CollectUseData"

    const-string v5, "handleMessage MSG_BIRGHTNESS_MANUAL_TIMEUP"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_3
    const/high16 v14, -0x40800000    # -1.0f

    .line 156
    .local v14, "luxAverage":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/common/autobrightness/CollectUseData$CollectHandler;->this$0:Lcom/vivo/common/autobrightness/CollectUseData;

    # getter for: Lcom/vivo/common/autobrightness/CollectUseData;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v4}, Lcom/vivo/common/autobrightness/CollectUseData;->access$700(Lcom/vivo/common/autobrightness/CollectUseData;)Landroid/hardware/SensorManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vivo/common/autobrightness/CollectUseData$CollectHandler;->this$0:Lcom/vivo/common/autobrightness/CollectUseData;

    # getter for: Lcom/vivo/common/autobrightness/CollectUseData;->mListener:Landroid/hardware/SensorEventListener;
    invoke-static {v5}, Lcom/vivo/common/autobrightness/CollectUseData;->access$400(Lcom/vivo/common/autobrightness/CollectUseData;)Landroid/hardware/SensorEventListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 157
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/common/autobrightness/CollectUseData$CollectHandler;->this$0:Lcom/vivo/common/autobrightness/CollectUseData;

    # getter for: Lcom/vivo/common/autobrightness/CollectUseData;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/vivo/common/autobrightness/CollectUseData;->access$000(Lcom/vivo/common/autobrightness/CollectUseData;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 158
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/common/autobrightness/CollectUseData$CollectHandler;->this$0:Lcom/vivo/common/autobrightness/CollectUseData;

    # getter for: Lcom/vivo/common/autobrightness/CollectUseData;->mLightBuffer:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/vivo/common/autobrightness/CollectUseData;->access$100(Lcom/vivo/common/autobrightness/CollectUseData;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 159
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/common/autobrightness/CollectUseData$CollectHandler;->this$0:Lcom/vivo/common/autobrightness/CollectUseData;

    # getter for: Lcom/vivo/common/autobrightness/CollectUseData;->mLightBuffer:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/vivo/common/autobrightness/CollectUseData;->access$100(Lcom/vivo/common/autobrightness/CollectUseData;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 160
    .local v15, "size":I
    const/16 v16, 0x0

    .line 161
    .local v16, "sum":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v15, :cond_4

    .line 162
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/common/autobrightness/CollectUseData$CollectHandler;->this$0:Lcom/vivo/common/autobrightness/CollectUseData;

    # getter for: Lcom/vivo/common/autobrightness/CollectUseData;->mLightBuffer:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/vivo/common/autobrightness/CollectUseData;->access$100(Lcom/vivo/common/autobrightness/CollectUseData;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    add-float v16, v16, v4

    .line 161
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 164
    :cond_4
    int-to-float v4, v15

    div-float v14, v16, v4

    .line 166
    .end local v2    # "i":I
    .end local v15    # "size":I
    .end local v16    # "sum":F
    :cond_5
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 167
    new-instance v13, Ljava/util/HashMap;

    const/4 v4, 0x3

    invoke-direct {v13, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 168
    .local v13, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "setbright"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vivo/common/autobrightness/CollectUseData$CollectHandler;->this$0:Lcom/vivo/common/autobrightness/CollectUseData;

    # getter for: Lcom/vivo/common/autobrightness/CollectUseData;->mManualBrightness:I
    invoke-static {v5}, Lcom/vivo/common/autobrightness/CollectUseData;->access$800(Lcom/vivo/common/autobrightness/CollectUseData;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string v4, "autobright"

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string v4, "autoinfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AutoBrightnesOff-Invalid:lux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    float-to-int v6, v14

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    new-instance v3, Lcom/vivo/common/autobrightness/DataParameter;

    const-string v4, "1005"

    const-string v5, "10054"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    const-wide/16 v10, 0x0

    const/4 v12, 0x1

    invoke-direct/range {v3 .. v13}, Lcom/vivo/common/autobrightness/DataParameter;-><init>(Ljava/lang/String;Ljava/lang/String;JJJILjava/util/HashMap;)V

    .line 173
    .local v3, "data":Lcom/vivo/common/autobrightness/DataParameter;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/common/autobrightness/CollectUseData$CollectHandler;->this$0:Lcom/vivo/common/autobrightness/CollectUseData;

    invoke-virtual {v4, v3}, Lcom/vivo/common/autobrightness/CollectUseData;->sendDataParameter(Lcom/vivo/common/autobrightness/DataParameter;)V

    goto/16 :goto_0

    .line 166
    .end local v3    # "data":Lcom/vivo/common/autobrightness/DataParameter;
    .end local v13    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_2
    move-exception v4

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v4

    .line 128
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
