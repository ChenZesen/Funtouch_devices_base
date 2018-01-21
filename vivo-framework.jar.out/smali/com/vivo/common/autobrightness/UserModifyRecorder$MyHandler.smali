.class Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;
.super Landroid/os/Handler;
.source "UserModifyRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/autobrightness/UserModifyRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/common/autobrightness/UserModifyRecorder;


# direct methods
.method public constructor <init>(Lcom/vivo/common/autobrightness/UserModifyRecorder;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;->this$0:Lcom/vivo/common/autobrightness/UserModifyRecorder;

    .line 136
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 137
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 25
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 142
    if-nez p1, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 147
    :pswitch_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    .line 148
    .local v24, "uid":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;->this$0:Lcom/vivo/common/autobrightness/UserModifyRecorder;

    move/from16 v0, v24

    # invokes: Lcom/vivo/common/autobrightness/UserModifyRecorder;->getAppNameFromUid(I)Ljava/lang/String;
    invoke-static {v4, v0}, Lcom/vivo/common/autobrightness/UserModifyRecorder;->access$200(Lcom/vivo/common/autobrightness/UserModifyRecorder;I)Ljava/lang/String;

    move-result-object v18

    .line 149
    .local v18, "name":Ljava/lang/String;
    if-nez v18, :cond_2

    .line 150
    const-string v18, "unknown"

    .line 152
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;->this$0:Lcom/vivo/common/autobrightness/UserModifyRecorder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;->this$0:Lcom/vivo/common/autobrightness/UserModifyRecorder;

    # getter for: Lcom/vivo/common/autobrightness/UserModifyRecorder;->mForegroundPkg:Ljava/lang/String;
    invoke-static {v5}, Lcom/vivo/common/autobrightness/UserModifyRecorder;->access$400(Lcom/vivo/common/autobrightness/UserModifyRecorder;)Ljava/lang/String;

    move-result-object v5

    # setter for: Lcom/vivo/common/autobrightness/UserModifyRecorder;->mPreForegroundPkg:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/vivo/common/autobrightness/UserModifyRecorder;->access$302(Lcom/vivo/common/autobrightness/UserModifyRecorder;Ljava/lang/String;)Ljava/lang/String;

    .line 153
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;->this$0:Lcom/vivo/common/autobrightness/UserModifyRecorder;

    move-object/from16 v0, v18

    # setter for: Lcom/vivo/common/autobrightness/UserModifyRecorder;->mForegroundPkg:Ljava/lang/String;
    invoke-static {v4, v0}, Lcom/vivo/common/autobrightness/UserModifyRecorder;->access$402(Lcom/vivo/common/autobrightness/UserModifyRecorder;Ljava/lang/String;)Ljava/lang/String;

    .line 154
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;->this$0:Lcom/vivo/common/autobrightness/UserModifyRecorder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_GET_FOREGROUND_PKG current:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;->this$0:Lcom/vivo/common/autobrightness/UserModifyRecorder;

    # getter for: Lcom/vivo/common/autobrightness/UserModifyRecorder;->mForegroundPkg:Ljava/lang/String;
    invoke-static {v6}, Lcom/vivo/common/autobrightness/UserModifyRecorder;->access$400(Lcom/vivo/common/autobrightness/UserModifyRecorder;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " pre:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;->this$0:Lcom/vivo/common/autobrightness/UserModifyRecorder;

    # getter for: Lcom/vivo/common/autobrightness/UserModifyRecorder;->mPreForegroundPkg:Ljava/lang/String;
    invoke-static {v6}, Lcom/vivo/common/autobrightness/UserModifyRecorder;->access$300(Lcom/vivo/common/autobrightness/UserModifyRecorder;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/vivo/common/autobrightness/UserModifyRecorder;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/vivo/common/autobrightness/UserModifyRecorder;->access$500(Lcom/vivo/common/autobrightness/UserModifyRecorder;Ljava/lang/String;)V

    goto :goto_0

    .line 158
    .end local v18    # "name":Ljava/lang/String;
    .end local v24    # "uid":I
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;->this$0:Lcom/vivo/common/autobrightness/UserModifyRecorder;

    # getter for: Lcom/vivo/common/autobrightness/UserModifyRecorder;->mPreRunningInfo:Lcom/vivo/common/autobrightness/RunningInfo;
    invoke-static {v4}, Lcom/vivo/common/autobrightness/UserModifyRecorder;->access$600(Lcom/vivo/common/autobrightness/UserModifyRecorder;)Lcom/vivo/common/autobrightness/RunningInfo;

    move-result-object v4

    if-nez v4, :cond_3

    .line 159
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;->this$0:Lcom/vivo/common/autobrightness/UserModifyRecorder;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/vivo/common/autobrightness/RunningInfo;

    # setter for: Lcom/vivo/common/autobrightness/UserModifyRecorder;->mPreRunningInfo:Lcom/vivo/common/autobrightness/RunningInfo;
    invoke-static {v5, v4}, Lcom/vivo/common/autobrightness/UserModifyRecorder;->access$602(Lcom/vivo/common/autobrightness/UserModifyRecorder;Lcom/vivo/common/autobrightness/RunningInfo;)Lcom/vivo/common/autobrightness/RunningInfo;

    .line 161
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;->this$0:Lcom/vivo/common/autobrightness/UserModifyRecorder;

    # invokes: Lcom/vivo/common/autobrightness/UserModifyRecorder;->acquireWakelock()V
    invoke-static {v4}, Lcom/vivo/common/autobrightness/UserModifyRecorder;->access$700(Lcom/vivo/common/autobrightness/UserModifyRecorder;)V

    .line 162
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;->this$0:Lcom/vivo/common/autobrightness/UserModifyRecorder;

    const/4 v5, 0x1

    # invokes: Lcom/vivo/common/autobrightness/UserModifyRecorder;->enableLightSensor(Z)V
    invoke-static {v4, v5}, Lcom/vivo/common/autobrightness/UserModifyRecorder;->access$800(Lcom/vivo/common/autobrightness/UserModifyRecorder;Z)V

    .line 163
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;->this$0:Lcom/vivo/common/autobrightness/UserModifyRecorder;

    # getter for: Lcom/vivo/common/autobrightness/UserModifyRecorder;->mHandler:Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;
    invoke-static {v4}, Lcom/vivo/common/autobrightness/UserModifyRecorder;->access$900(Lcom/vivo/common/autobrightness/UserModifyRecorder;)Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;->removeMessages(I)V

    .line 164
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;->this$0:Lcom/vivo/common/autobrightness/UserModifyRecorder;

    # getter for: Lcom/vivo/common/autobrightness/UserModifyRecorder;->mHandler:Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;
    invoke-static {v4}, Lcom/vivo/common/autobrightness/UserModifyRecorder;->access$900(Lcom/vivo/common/autobrightness/UserModifyRecorder;)Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    .line 165
    .local v14, "collectMsg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;->this$0:Lcom/vivo/common/autobrightness/UserModifyRecorder;

    # getter for: Lcom/vivo/common/autobrightness/UserModifyRecorder;->mHandler:Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;
    invoke-static {v4}, Lcom/vivo/common/autobrightness/UserModifyRecorder;->access$900(Lcom/vivo/common/autobrightness/UserModifyRecorder;)Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;

    move-result-object v4

    const-wide/16 v6, 0xbb8

    invoke-virtual {v4, v14, v6, v7}, Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 169
    .end local v14    # "collectMsg":Landroid/os/Message;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;->this$0:Lcom/vivo/common/autobrightness/UserModifyRecorder;

    # getter for: Lcom/vivo/common/autobrightness/UserModifyRecorder;->mPreRunningInfo:Lcom/vivo/common/autobrightness/RunningInfo;
    invoke-static {v4}, Lcom/vivo/common/autobrightness/UserModifyRecorder;->access$600(Lcom/vivo/common/autobrightness/UserModifyRecorder;)Lcom/vivo/common/autobrightness/RunningInfo;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;->this$0:Lcom/vivo/common/autobrightness/UserModifyRecorder;

    # getter for: Lcom/vivo/common/autobrightness/UserModifyRecorder;->mLightLux:F
    invoke-static {v5}, Lcom/vivo/common/autobrightness/UserModifyRecorder;->access$000(Lcom/vivo/common/autobrightness/UserModifyRecorder;)F

    move-result v5

    float-to-int v5, v5

    iput v5, v4, Lcom/vivo/common/autobrightness/RunningInfo;->lux:I

    .line 170
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;->this$0:Lcom/vivo/common/autobrightness/UserModifyRecorder;

    # getter for: Lcom/vivo/common/autobrightness/UserModifyRecorder;->mPreRunningInfo:Lcom/vivo/common/autobrightness/RunningInfo;
    invoke-static {v4}, Lcom/vivo/common/autobrightness/UserModifyRecorder;->access$600(Lcom/vivo/common/autobrightness/UserModifyRecorder;)Lcom/vivo/common/autobrightness/RunningInfo;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;->this$0:Lcom/vivo/common/autobrightness/UserModifyRecorder;

    # getter for: Lcom/vivo/common/autobrightness/UserModifyRecorder;->mSettingBrightness:I
    invoke-static {v5}, Lcom/vivo/common/autobrightness/UserModifyRecorder;->access$1000(Lcom/vivo/common/autobrightness/UserModifyRecorder;)I

    move-result v5

    iput v5, v4, Lcom/vivo/common/autobrightness/RunningInfo;->setting:I

    .line 171
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;->this$0:Lcom/vivo/common/autobrightness/UserModifyRecorder;

    # getter for: Lcom/vivo/common/autobrightness/UserModifyRecorder;->mPreRunningInfo:Lcom/vivo/common/autobrightness/RunningInfo;
    invoke-static {v4}, Lcom/vivo/common/autobrightness/UserModifyRecorder;->access$600(Lcom/vivo/common/autobrightness/UserModifyRecorder;)Lcom/vivo/common/autobrightness/RunningInfo;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;->this$0:Lcom/vivo/common/autobrightness/UserModifyRecorder;

    # getter for: Lcom/vivo/common/autobrightness/UserModifyRecorder;->mLcmBacklight:I
    invoke-static {v5}, Lcom/vivo/common/autobrightness/UserModifyRecorder;->access$1100(Lcom/vivo/common/autobrightness/UserModifyRecorder;)I

    move-result v5

    iput v5, v4, Lcom/vivo/common/autobrightness/RunningInfo;->backlight:I

    .line 172
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;->this$0:Lcom/vivo/common/autobrightness/UserModifyRecorder;

    # getter for: Lcom/vivo/common/autobrightness/UserModifyRecorder;->mPreRunningInfo:Lcom/vivo/common/autobrightness/RunningInfo;
    invoke-static {v4}, Lcom/vivo/common/autobrightness/UserModifyRecorder;->access$600(Lcom/vivo/common/autobrightness/UserModifyRecorder;)Lcom/vivo/common/autobrightness/RunningInfo;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;->this$0:Lcom/vivo/common/autobrightness/UserModifyRecorder;

    # getter for: Lcom/vivo/common/autobrightness/UserModifyRecorder;->mBacklightMode:I
    invoke-static {v5}, Lcom/vivo/common/autobrightness/UserModifyRecorder;->access$1200(Lcom/vivo/common/autobrightness/UserModifyRecorder;)I

    move-result v5

    iput v5, v4, Lcom/vivo/common/autobrightness/RunningInfo;->mode:I

    .line 173
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;->this$0:Lcom/vivo/common/autobrightness/UserModifyRecorder;

    # getter for: Lcom/vivo/common/autobrightness/UserModifyRecorder;->mPreRunningInfo:Lcom/vivo/common/autobrightness/RunningInfo;
    invoke-static {v4}, Lcom/vivo/common/autobrightness/UserModifyRecorder;->access$600(Lcom/vivo/common/autobrightness/UserModifyRecorder;)Lcom/vivo/common/autobrightness/RunningInfo;

    move-result-object v4

    invoke-static {}, Lcom/vivo/common/autobrightness/PowerAssistant;->getPowerAssistantMode()Z

    move-result v5

    iput-boolean v5, v4, Lcom/vivo/common/autobrightness/RunningInfo;->pwrAssistant:Z

    .line 174
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;->this$0:Lcom/vivo/common/autobrightness/UserModifyRecorder;

    const/4 v5, 0x0

    # invokes: Lcom/vivo/common/autobrightness/UserModifyRecorder;->enableLightSensor(Z)V
    invoke-static {v4, v5}, Lcom/vivo/common/autobrightness/UserModifyRecorder;->access$800(Lcom/vivo/common/autobrightness/UserModifyRecorder;Z)V

    .line 176
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;->this$0:Lcom/vivo/common/autobrightness/UserModifyRecorder;

    # getter for: Lcom/vivo/common/autobrightness/UserModifyRecorder;->mBacklightMode:I
    invoke-static {v4}, Lcom/vivo/common/autobrightness/UserModifyRecorder;->access$1200(Lcom/vivo/common/autobrightness/UserModifyRecorder;)I

    move-result v17

    .line 177
    .local v17, "mode":I
    const-string v23, "unk"

    .line 178
    .local v23, "strMode":Ljava/lang/String;
    const/4 v4, 0x1

    move/from16 v0, v17

    if-ne v0, v4, :cond_7

    .line 179
    const-string v23, "auto"

    .line 183
    :cond_4
    :goto_1
    new-instance v19, Lorg/json/JSONObject;

    invoke-direct/range {v19 .. v19}, Lorg/json/JSONObject;-><init>()V

    .line 184
    .local v19, "obj":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;->this$0:Lcom/vivo/common/autobrightness/UserModifyRecorder;

    # getter for: Lcom/vivo/common/autobrightness/UserModifyRecorder;->mPreRunningInfo:Lcom/vivo/common/autobrightness/RunningInfo;
    invoke-static {v4}, Lcom/vivo/common/autobrightness/UserModifyRecorder;->access$600(Lcom/vivo/common/autobrightness/UserModifyRecorder;)Lcom/vivo/common/autobrightness/RunningInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vivo/common/autobrightness/RunningInfo;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v16

    .line 185
    .local v16, "info":Lorg/json/JSONObject;
    if-eqz v16, :cond_5

    .line 187
    :try_start_0
    const-string v4, "typ"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 188
    const-string v4, "inf"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :cond_5
    :goto_2
    if-eqz v19, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;->this$0:Lcom/vivo/common/autobrightness/UserModifyRecorder;

    # getter for: Lcom/vivo/common/autobrightness/UserModifyRecorder;->mCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$ModeRestoreCallback;
    invoke-static {v4}, Lcom/vivo/common/autobrightness/UserModifyRecorder;->access$1300(Lcom/vivo/common/autobrightness/UserModifyRecorder;)Lcom/vivo/common/autobrightness/CameraLumaCallback$ModeRestoreCallback;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 196
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;->this$0:Lcom/vivo/common/autobrightness/UserModifyRecorder;

    # getter for: Lcom/vivo/common/autobrightness/UserModifyRecorder;->mCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$ModeRestoreCallback;
    invoke-static {v4}, Lcom/vivo/common/autobrightness/UserModifyRecorder;->access$1300(Lcom/vivo/common/autobrightness/UserModifyRecorder;)Lcom/vivo/common/autobrightness/CameraLumaCallback$ModeRestoreCallback;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-interface {v4, v0}, Lcom/vivo/common/autobrightness/CameraLumaCallback$ModeRestoreCallback;->saveModifyRecord(Lorg/json/JSONObject;)V

    .line 198
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;->this$0:Lcom/vivo/common/autobrightness/UserModifyRecorder;

    const/4 v5, 0x0

    # setter for: Lcom/vivo/common/autobrightness/UserModifyRecorder;->mPreRunningInfo:Lcom/vivo/common/autobrightness/RunningInfo;
    invoke-static {v4, v5}, Lcom/vivo/common/autobrightness/UserModifyRecorder;->access$602(Lcom/vivo/common/autobrightness/UserModifyRecorder;Lcom/vivo/common/autobrightness/RunningInfo;)Lcom/vivo/common/autobrightness/RunningInfo;

    .line 199
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;->this$0:Lcom/vivo/common/autobrightness/UserModifyRecorder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    # setter for: Lcom/vivo/common/autobrightness/UserModifyRecorder;->mLastRecordTimeMillis:J
    invoke-static {v4, v6, v7}, Lcom/vivo/common/autobrightness/UserModifyRecorder;->access$1402(Lcom/vivo/common/autobrightness/UserModifyRecorder;J)J

    .line 201
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;->this$0:Lcom/vivo/common/autobrightness/UserModifyRecorder;

    # invokes: Lcom/vivo/common/autobrightness/UserModifyRecorder;->releaseWakelock()V
    invoke-static {v4}, Lcom/vivo/common/autobrightness/UserModifyRecorder;->access$1500(Lcom/vivo/common/autobrightness/UserModifyRecorder;)V

    goto/16 :goto_0

    .line 180
    .end local v16    # "info":Lorg/json/JSONObject;
    .end local v19    # "obj":Lorg/json/JSONObject;
    :cond_7
    if-nez v17, :cond_4

    .line 181
    const-string v23, "man"

    goto :goto_1

    .line 189
    .restart local v16    # "info":Lorg/json/JSONObject;
    .restart local v19    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v15

    .line 191
    .local v15, "e":Lorg/json/JSONException;
    invoke-virtual {v15}, Lorg/json/JSONException;->printStackTrace()V

    .line 192
    const/16 v19, 0x0

    goto :goto_2

    .line 205
    .end local v15    # "e":Lorg/json/JSONException;
    .end local v16    # "info":Lorg/json/JSONObject;
    .end local v17    # "mode":I
    .end local v19    # "obj":Lorg/json/JSONObject;
    .end local v23    # "strMode":Ljava/lang/String;
    :pswitch_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 206
    .local v20, "now":J
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    .line 207
    .local v3, "backlight":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;->this$0:Lcom/vivo/common/autobrightness/UserModifyRecorder;

    # getter for: Lcom/vivo/common/autobrightness/UserModifyRecorder;->mLastRecordTimeMillis:J
    invoke-static {v4}, Lcom/vivo/common/autobrightness/UserModifyRecorder;->access$1400(Lcom/vivo/common/autobrightness/UserModifyRecorder;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;->this$0:Lcom/vivo/common/autobrightness/UserModifyRecorder;

    # getter for: Lcom/vivo/common/autobrightness/UserModifyRecorder;->mHandler:Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;
    invoke-static {v4}, Lcom/vivo/common/autobrightness/UserModifyRecorder;->access$900(Lcom/vivo/common/autobrightness/UserModifyRecorder;)Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;->this$0:Lcom/vivo/common/autobrightness/UserModifyRecorder;

    # getter for: Lcom/vivo/common/autobrightness/UserModifyRecorder;->mHandler:Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;
    invoke-static {v4}, Lcom/vivo/common/autobrightness/UserModifyRecorder;->access$900(Lcom/vivo/common/autobrightness/UserModifyRecorder;)Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;->this$0:Lcom/vivo/common/autobrightness/UserModifyRecorder;

    # getter for: Lcom/vivo/common/autobrightness/UserModifyRecorder;->mLastRecordTimeMillis:J
    invoke-static {v4}, Lcom/vivo/common/autobrightness/UserModifyRecorder;->access$1400(Lcom/vivo/common/autobrightness/UserModifyRecorder;)J

    move-result-wide v4

    cmp-long v4, v20, v4

    if-lez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;->this$0:Lcom/vivo/common/autobrightness/UserModifyRecorder;

    # getter for: Lcom/vivo/common/autobrightness/UserModifyRecorder;->mLastRecordTimeMillis:J
    invoke-static {v4}, Lcom/vivo/common/autobrightness/UserModifyRecorder;->access$1400(Lcom/vivo/common/autobrightness/UserModifyRecorder;)J

    move-result-wide v4

    sub-long v4, v20, v4

    # getter for: Lcom/vivo/common/autobrightness/UserModifyRecorder;->DAY_INTERVAL:J
    invoke-static {}, Lcom/vivo/common/autobrightness/UserModifyRecorder;->access$1600()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 210
    new-instance v2, Lcom/vivo/common/autobrightness/RunningInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;->this$0:Lcom/vivo/common/autobrightness/UserModifyRecorder;

    # getter for: Lcom/vivo/common/autobrightness/UserModifyRecorder;->mSettingBrightness:I
    invoke-static {v4}, Lcom/vivo/common/autobrightness/UserModifyRecorder;->access$1000(Lcom/vivo/common/autobrightness/UserModifyRecorder;)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;->this$0:Lcom/vivo/common/autobrightness/UserModifyRecorder;

    # getter for: Lcom/vivo/common/autobrightness/UserModifyRecorder;->mBacklightMode:I
    invoke-static {v5}, Lcom/vivo/common/autobrightness/UserModifyRecorder;->access$1200(Lcom/vivo/common/autobrightness/UserModifyRecorder;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;->this$0:Lcom/vivo/common/autobrightness/UserModifyRecorder;

    # getter for: Lcom/vivo/common/autobrightness/UserModifyRecorder;->mSettingBrightness:I
    invoke-static {v6}, Lcom/vivo/common/autobrightness/UserModifyRecorder;->access$1000(Lcom/vivo/common/autobrightness/UserModifyRecorder;)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;->this$0:Lcom/vivo/common/autobrightness/UserModifyRecorder;

    # getter for: Lcom/vivo/common/autobrightness/UserModifyRecorder;->mBacklightMode:I
    invoke-static {v6}, Lcom/vivo/common/autobrightness/UserModifyRecorder;->access$1200(Lcom/vivo/common/autobrightness/UserModifyRecorder;)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;->this$0:Lcom/vivo/common/autobrightness/UserModifyRecorder;

    # getter for: Lcom/vivo/common/autobrightness/UserModifyRecorder;->mOffBy:Ljava/lang/String;
    invoke-static {v6}, Lcom/vivo/common/autobrightness/UserModifyRecorder;->access$1700(Lcom/vivo/common/autobrightness/UserModifyRecorder;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;->this$0:Lcom/vivo/common/autobrightness/UserModifyRecorder;

    # getter for: Lcom/vivo/common/autobrightness/UserModifyRecorder;->mChangeBy:Ljava/lang/String;
    invoke-static {v6}, Lcom/vivo/common/autobrightness/UserModifyRecorder;->access$1800(Lcom/vivo/common/autobrightness/UserModifyRecorder;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;->this$0:Lcom/vivo/common/autobrightness/UserModifyRecorder;

    # getter for: Lcom/vivo/common/autobrightness/UserModifyRecorder;->mForegroundPkg:Ljava/lang/String;
    invoke-static {v6}, Lcom/vivo/common/autobrightness/UserModifyRecorder;->access$400(Lcom/vivo/common/autobrightness/UserModifyRecorder;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;->this$0:Lcom/vivo/common/autobrightness/UserModifyRecorder;

    # getter for: Lcom/vivo/common/autobrightness/UserModifyRecorder;->mPreForegroundPkg:Ljava/lang/String;
    invoke-static {v6}, Lcom/vivo/common/autobrightness/UserModifyRecorder;->access$300(Lcom/vivo/common/autobrightness/UserModifyRecorder;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;->this$0:Lcom/vivo/common/autobrightness/UserModifyRecorder;

    # getter for: Lcom/vivo/common/autobrightness/UserModifyRecorder;->mPowerSaving:Z
    invoke-static {v6}, Lcom/vivo/common/autobrightness/UserModifyRecorder;->access$1900(Lcom/vivo/common/autobrightness/UserModifyRecorder;)Z

    move-result v13

    move v6, v3

    invoke-direct/range {v2 .. v13}, Lcom/vivo/common/autobrightness/RunningInfo;-><init>(IIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 213
    .local v2, "selfInfo":Lcom/vivo/common/autobrightness/RunningInfo;
    const-string v4, "self"

    iput-object v4, v2, Lcom/vivo/common/autobrightness/RunningInfo;->reason:Ljava/lang/String;

    .line 214
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;->this$0:Lcom/vivo/common/autobrightness/UserModifyRecorder;

    # invokes: Lcom/vivo/common/autobrightness/UserModifyRecorder;->acquireWakelock()V
    invoke-static {v4}, Lcom/vivo/common/autobrightness/UserModifyRecorder;->access$700(Lcom/vivo/common/autobrightness/UserModifyRecorder;)V

    .line 215
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;->this$0:Lcom/vivo/common/autobrightness/UserModifyRecorder;

    const/4 v5, 0x1

    # invokes: Lcom/vivo/common/autobrightness/UserModifyRecorder;->enableLightSensor(Z)V
    invoke-static {v4, v5}, Lcom/vivo/common/autobrightness/UserModifyRecorder;->access$800(Lcom/vivo/common/autobrightness/UserModifyRecorder;Z)V

    .line 216
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;->this$0:Lcom/vivo/common/autobrightness/UserModifyRecorder;

    # getter for: Lcom/vivo/common/autobrightness/UserModifyRecorder;->mHandler:Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;
    invoke-static {v4}, Lcom/vivo/common/autobrightness/UserModifyRecorder;->access$900(Lcom/vivo/common/autobrightness/UserModifyRecorder;)Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v22

    .line 217
    .local v22, "selfMsg":Landroid/os/Message;
    move-object/from16 v0, v22

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 218
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;->this$0:Lcom/vivo/common/autobrightness/UserModifyRecorder;

    # getter for: Lcom/vivo/common/autobrightness/UserModifyRecorder;->mHandler:Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;
    invoke-static {v4}, Lcom/vivo/common/autobrightness/UserModifyRecorder;->access$900(Lcom/vivo/common/autobrightness/UserModifyRecorder;)Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;

    move-result-object v4

    const-wide/16 v6, 0xbb8

    move-object/from16 v0, v22

    invoke-virtual {v4, v0, v6, v7}, Lcom/vivo/common/autobrightness/UserModifyRecorder$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 145
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
