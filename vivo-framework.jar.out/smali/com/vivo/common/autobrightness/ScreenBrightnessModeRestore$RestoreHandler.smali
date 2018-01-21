.class Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$RestoreHandler;
.super Landroid/os/Handler;
.source "ScreenBrightnessModeRestore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;


# direct methods
.method public constructor <init>(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$RestoreHandler;->this$0:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    .line 176
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 177
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 182
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 184
    :pswitch_0
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 185
    .local v5, "pid":I
    iget v8, p1, Landroid/os/Message;->arg2:I

    .line 186
    .local v8, "uid":I
    iget-object v9, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$RestoreHandler;->this$0:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    # getter for: Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->access$000(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v6

    .line 187
    .local v6, "pkg":Ljava/lang/String;
    const/16 v9, 0xff

    const/16 v10, 0x3e8

    invoke-static {v9, v10, v6}, Lcom/vivo/common/autobrightness/BrightnessSceneRatio;->getRatio(IILjava/lang/String;)F

    move-result v7

    .line 188
    .local v7, "ratio":F
    iget-object v10, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$RestoreHandler;->this$0:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "FOREGROUND_APP_CHANGE pkg="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " ratio="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " mBrightnessRatio="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$RestoreHandler;->this$0:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    # getter for: Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mBrightnessRatio:F
    invoke-static {v11}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->access$100(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;)F

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " callback="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v9, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$RestoreHandler;->this$0:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    # getter for: Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mRatioCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$BrightnessRatioCallback;
    invoke-static {v9}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->access$200(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;)Lcom/vivo/common/autobrightness/CameraLumaCallback$BrightnessRatioCallback;

    move-result-object v9

    if-nez v9, :cond_1

    const-string v9, "Null"

    :goto_1
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->log(Ljava/lang/String;)V
    invoke-static {v10, v9}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->access$300(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;Ljava/lang/String;)V

    .line 189
    iget-object v9, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$RestoreHandler;->this$0:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    # getter for: Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mBrightnessRatio:F
    invoke-static {v9}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->access$100(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;)F

    move-result v9

    cmpl-float v9, v7, v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$RestoreHandler;->this$0:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    # getter for: Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mRatioCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$BrightnessRatioCallback;
    invoke-static {v9}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->access$200(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;)Lcom/vivo/common/autobrightness/CameraLumaCallback$BrightnessRatioCallback;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 190
    iget-object v9, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$RestoreHandler;->this$0:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    # setter for: Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mBrightnessRatio:F
    invoke-static {v9, v7}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->access$102(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;F)F

    .line 191
    iget-object v9, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$RestoreHandler;->this$0:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    # getter for: Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mRatioCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$BrightnessRatioCallback;
    invoke-static {v9}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->access$200(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;)Lcom/vivo/common/autobrightness/CameraLumaCallback$BrightnessRatioCallback;

    move-result-object v9

    invoke-interface {v9}, Lcom/vivo/common/autobrightness/CameraLumaCallback$BrightnessRatioCallback;->onRatioChanged()V

    goto/16 :goto_0

    .line 188
    :cond_1
    const-string v9, "NotNull"

    goto :goto_1

    .line 195
    .end local v5    # "pid":I
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v7    # "ratio":F
    .end local v8    # "uid":I
    :pswitch_1
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v9, :cond_2

    .line 196
    const-string v9, "ScreenBrightnessModeRestore"

    const-string v10, "MSG_FOREGROUND_ACTIVITY_CHANGED msg.obj == null"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 199
    :cond_2
    iget-object v10, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$RestoreHandler;->this$0:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    iget v11, p1, Landroid/os/Message;->arg1:I

    iget v12, p1, Landroid/os/Message;->arg2:I

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    # invokes: Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->onForegroundActivitiesChangedInner(IIZ)V
    invoke-static {v10, v11, v12, v9}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->access$400(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;IIZ)V

    goto/16 :goto_0

    .line 203
    :pswitch_2
    iget-object v9, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$RestoreHandler;->this$0:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    iget v10, p1, Landroid/os/Message;->arg1:I

    iget v11, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->onProcessDiedInner(II)V
    invoke-static {v9, v10, v11}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->access$500(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;II)V

    goto/16 :goto_0

    .line 207
    :pswitch_3
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v9, :cond_3

    .line 208
    const-string v9, "ScreenBrightnessModeRestore"

    const-string v10, "MSG_ON_GET_SETTINGS_ARG4 msg.obj == null; return"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 211
    :cond_3
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/json/JSONObject;

    .line 212
    .local v2, "obj":Lorg/json/JSONObject;
    const/4 v3, 0x0

    .line 213
    .local v3, "off":Ljava/lang/String;
    const/4 v0, 0x0

    .line 215
    .local v0, "change":Ljava/lang/String;
    :try_start_0
    const-string v9, "offBy"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 216
    const-string v9, "changeBy"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 221
    if-eqz v3, :cond_4

    if-nez v0, :cond_5

    .line 222
    :cond_4
    const-string v9, "ScreenBrightnessModeRestore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MSG_ON_GET_SETTINGS_ARG4 get json null, off="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " change="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 217
    :catch_0
    move-exception v1

    .line 218
    .local v1, "e":Ljava/lang/Exception;
    const-string v9, "ScreenBrightnessModeRestore"

    const-string v10, "MSG_ON_GET_SETTINGS_ARG4 get json got exception "

    invoke-static {v9, v10, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 225
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    iget-object v9, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$RestoreHandler;->this$0:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    iget v10, p1, Landroid/os/Message;->arg1:I

    iget v11, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->onGetSettingsInner(IILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v9, v10, v11, v3, v0}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->access$600(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 229
    .end local v0    # "change":Ljava/lang/String;
    .end local v2    # "obj":Lorg/json/JSONObject;
    .end local v3    # "off":Ljava/lang/String;
    :pswitch_4
    const/4 v4, 0x0

    .line 230
    .local v4, "offBy":Ljava/lang/String;
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v9, :cond_6

    .line 231
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v4    # "offBy":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 233
    .restart local v4    # "offBy":Ljava/lang/String;
    :cond_6
    iget-object v9, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$RestoreHandler;->this$0:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    iget v10, p1, Landroid/os/Message;->arg1:I

    iget v11, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->onGetSettingsInner(IILjava/lang/String;)V
    invoke-static {v9, v10, v11, v4}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->access$700(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;IILjava/lang/String;)V

    goto/16 :goto_0

    .line 237
    .end local v4    # "offBy":Ljava/lang/String;
    :pswitch_5
    iget-object v9, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$RestoreHandler;->this$0:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    iget v10, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v9, v10}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->setbacklightInner(I)V

    goto/16 :goto_0

    .line 182
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
