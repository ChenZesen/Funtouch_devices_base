.class Lcom/vivo/services/touchscreen/BBKTouchScreenService$1;
.super Ljava/lang/Object;
.source "BBKTouchScreenService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/touchscreen/BBKTouchScreenService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/services/touchscreen/BBKTouchScreenService;


# direct methods
.method constructor <init>(Lcom/vivo/services/touchscreen/BBKTouchScreenService;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService$1;->this$0:Lcom/vivo/services/touchscreen/BBKTouchScreenService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 213
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v8, 0x1

    .line 145
    iget-object v2, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService$1;->this$0:Lcom/vivo/services/touchscreen/BBKTouchScreenService;

    # getter for: Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->access$000(Lcom/vivo/services/touchscreen/BBKTouchScreenService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 146
    :try_start_0
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x0

    aget v1, v2, v4

    .line 147
    .local v1, "distance":F
    float-to-double v4, v1

    const-wide/16 v6, 0x0

    cmpl-double v2, v4, v6

    if-ltz v2, :cond_1

    const/high16 v2, 0x40a00000    # 5.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService$1;->this$0:Lcom/vivo/services/touchscreen/BBKTouchScreenService;

    # getter for: Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mProximitySensor:Landroid/hardware/Sensor;
    invoke-static {v2}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->access$100(Lcom/vivo/services/touchscreen/BBKTouchScreenService;)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v2

    cmpg-float v2, v1, v2

    if-gez v2, :cond_1

    .line 149
    const/4 v0, 0x1

    .line 160
    .local v0, "ProximityState":I
    :goto_0
    iget-object v2, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService$1;->this$0:Lcom/vivo/services/touchscreen/BBKTouchScreenService;

    # getter for: Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mNeedDownSensitivity:Z
    invoke-static {v2}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->access$200(Lcom/vivo/services/touchscreen/BBKTouchScreenService;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 162
    iget-object v2, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService$1;->this$0:Lcom/vivo/services/touchscreen/BBKTouchScreenService;

    # getter for: Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mProximiteListenerRegistered:I
    invoke-static {v2}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->access$300(Lcom/vivo/services/touchscreen/BBKTouchScreenService;)I

    move-result v2

    if-ne v2, v8, :cond_0

    .line 163
    iget-object v2, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService$1;->this$0:Lcom/vivo/services/touchscreen/BBKTouchScreenService;

    # getter for: Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mProximited:I
    invoke-static {v2}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->access$400(Lcom/vivo/services/touchscreen/BBKTouchScreenService;)I

    move-result v2

    if-eq v2, v0, :cond_0

    .line 164
    iget-object v2, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService$1;->this$0:Lcom/vivo/services/touchscreen/BBKTouchScreenService;

    # setter for: Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mProximited:I
    invoke-static {v2, v0}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->access$402(Lcom/vivo/services/touchscreen/BBKTouchScreenService;I)I

    .line 165
    if-ne v0, v8, :cond_2

    .line 166
    const-string v2, "BBKTouchScreenService"

    const-string v4, "Proximity Sensor proximited"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const/4 v2, 0x0

    # invokes: Lcom/vivo/services/touchscreen/BBKTouchScreenService;->nativeTouchScreenDclickEnable(I)I
    invoke-static {v2}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->access$500(I)I

    .line 168
    iget-object v2, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService$1;->this$0:Lcom/vivo/services/touchscreen/BBKTouchScreenService;

    const/4 v4, 0x0

    # setter for: Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mHasGesturesEnabled:Z
    invoke-static {v2, v4}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->access$602(Lcom/vivo/services/touchscreen/BBKTouchScreenService;Z)Z

    .line 207
    :cond_0
    :goto_1
    monitor-exit v3

    .line 208
    return-void

    .line 151
    .end local v0    # "ProximityState":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "ProximityState":I
    goto :goto_0

    .line 170
    :cond_2
    const-string v2, "BBKTouchScreenService"

    const-string v4, "Proximity Sensor check move away"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const/4 v2, 0x1

    # invokes: Lcom/vivo/services/touchscreen/BBKTouchScreenService;->nativeTouchScreenDclickEnable(I)I
    invoke-static {v2}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->access$500(I)I

    .line 172
    iget-object v2, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService$1;->this$0:Lcom/vivo/services/touchscreen/BBKTouchScreenService;

    const/4 v4, 0x1

    # setter for: Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mHasGesturesEnabled:Z
    invoke-static {v2, v4}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->access$602(Lcom/vivo/services/touchscreen/BBKTouchScreenService;Z)Z

    goto :goto_1

    .line 207
    .end local v0    # "ProximityState":I
    .end local v1    # "distance":F
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 177
    .restart local v0    # "ProximityState":I
    .restart local v1    # "distance":F
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService$1;->this$0:Lcom/vivo/services/touchscreen/BBKTouchScreenService;

    # getter for: Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mIsScreenOn:Z
    invoke-static {v2}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->access$700(Lcom/vivo/services/touchscreen/BBKTouchScreenService;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 178
    iget-object v2, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService$1;->this$0:Lcom/vivo/services/touchscreen/BBKTouchScreenService;

    # getter for: Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mProximiteListenerRegistered:I
    invoke-static {v2}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->access$300(Lcom/vivo/services/touchscreen/BBKTouchScreenService;)I

    move-result v2

    if-ne v2, v8, :cond_0

    .line 179
    iget-object v2, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService$1;->this$0:Lcom/vivo/services/touchscreen/BBKTouchScreenService;

    # getter for: Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mProximited:I
    invoke-static {v2}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->access$400(Lcom/vivo/services/touchscreen/BBKTouchScreenService;)I

    move-result v2

    if-eq v2, v0, :cond_0

    .line 180
    iget-object v2, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService$1;->this$0:Lcom/vivo/services/touchscreen/BBKTouchScreenService;

    # setter for: Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mProximited:I
    invoke-static {v2, v0}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->access$402(Lcom/vivo/services/touchscreen/BBKTouchScreenService;I)I

    .line 181
    if-ne v0, v8, :cond_4

    .line 182
    const-string v2, "BBKTouchScreenService"

    const-string v4, "Proximity Sensor proximited"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/4 v2, 0x0

    # invokes: Lcom/vivo/services/touchscreen/BBKTouchScreenService;->nativeTouchScreenDclickEnable(I)I
    invoke-static {v2}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->access$500(I)I

    .line 184
    iget-object v2, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService$1;->this$0:Lcom/vivo/services/touchscreen/BBKTouchScreenService;

    const/4 v4, 0x0

    # setter for: Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mHasGesturesEnabled:Z
    invoke-static {v2, v4}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->access$602(Lcom/vivo/services/touchscreen/BBKTouchScreenService;Z)Z

    goto :goto_1

    .line 186
    :cond_4
    const-string v2, "BBKTouchScreenService"

    const-string v4, "Proximity Sensor check move away"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const/4 v2, 0x1

    # invokes: Lcom/vivo/services/touchscreen/BBKTouchScreenService;->nativeTouchScreenDclickEnable(I)I
    invoke-static {v2}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->access$500(I)I

    .line 188
    iget-object v2, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService$1;->this$0:Lcom/vivo/services/touchscreen/BBKTouchScreenService;

    const/4 v4, 0x1

    # setter for: Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mHasGesturesEnabled:Z
    invoke-static {v2, v4}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->access$602(Lcom/vivo/services/touchscreen/BBKTouchScreenService;Z)Z

    goto :goto_1

    .line 193
    :cond_5
    iget-object v2, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService$1;->this$0:Lcom/vivo/services/touchscreen/BBKTouchScreenService;

    # getter for: Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mProximiteListenerRegistered:I
    invoke-static {v2}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->access$300(Lcom/vivo/services/touchscreen/BBKTouchScreenService;)I

    move-result v2

    if-ne v2, v8, :cond_0

    .line 194
    iget-object v2, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService$1;->this$0:Lcom/vivo/services/touchscreen/BBKTouchScreenService;

    # getter for: Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mProximited:I
    invoke-static {v2}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->access$400(Lcom/vivo/services/touchscreen/BBKTouchScreenService;)I

    move-result v2

    if-eq v2, v0, :cond_0

    .line 195
    iget-object v2, p0, Lcom/vivo/services/touchscreen/BBKTouchScreenService$1;->this$0:Lcom/vivo/services/touchscreen/BBKTouchScreenService;

    # setter for: Lcom/vivo/services/touchscreen/BBKTouchScreenService;->mProximited:I
    invoke-static {v2, v0}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->access$402(Lcom/vivo/services/touchscreen/BBKTouchScreenService;I)I

    .line 196
    if-ne v0, v8, :cond_6

    .line 197
    const-string v2, "BBKTouchScreenService"

    const-string v4, "NeedDownSensitivity Proximity Sensor proximited"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const/4 v2, 0x1

    # invokes: Lcom/vivo/services/touchscreen/BBKTouchScreenService;->nativeTouchScreenGlovesModeSwitch(I)I
    invoke-static {v2}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->access$800(I)I

    goto :goto_1

    .line 200
    :cond_6
    const-string v2, "BBKTouchScreenService"

    const-string v4, "NeedDownSensitivity Proximity Sensor check move away"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const/4 v2, 0x0

    # invokes: Lcom/vivo/services/touchscreen/BBKTouchScreenService;->nativeTouchScreenGlovesModeSwitch(I)I
    invoke-static {v2}, Lcom/vivo/services/touchscreen/BBKTouchScreenService;->access$800(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1
.end method
