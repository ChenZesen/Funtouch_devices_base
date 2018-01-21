.class Lcom/android/server/power/PowerManagerService$5;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field countNumberInThreeSeconds:I

.field now:J

.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;

.field totalValueInThreeSeconds:I


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 2

    .prologue
    .line 4966
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4967
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/PowerManagerService$5;->totalValueInThreeSeconds:I

    .line 4968
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/power/PowerManagerService$5;->countNumberInThreeSeconds:I

    .line 4969
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerService$5;->now:J

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 5008
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 12
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 4971
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/server/power/PowerManagerService;->access$800(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 4973
    const/4 v0, 0x0

    .line 4974
    .local v0, "active":Z
    const/4 v1, 0x0

    .line 4975
    .local v1, "avgValue":I
    :try_start_0
    iget-object v8, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v9, 0x0

    aget v8, v8, v9

    float-to-int v4, v8

    .line 4976
    .local v4, "value":I
    int-to-float v8, v4

    const/high16 v9, 0x43fa0000    # 500.0f

    mul-float/2addr v8, v9

    const-string v9, "persist.sys.light_threshold"

    const-string v10, "500"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    div-float/2addr v8, v9

    float-to-int v4, v8

    .line 4977
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/server/power/PowerManagerService$5;->now:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0xbb8

    cmp-long v8, v8, v10

    if-gtz v8, :cond_1

    .line 4978
    iget v5, p0, Lcom/android/server/power/PowerManagerService$5;->totalValueInThreeSeconds:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/android/server/power/PowerManagerService$5;->totalValueInThreeSeconds:I

    .line 4979
    iget v5, p0, Lcom/android/server/power/PowerManagerService$5;->countNumberInThreeSeconds:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/server/power/PowerManagerService$5;->countNumberInThreeSeconds:I

    .line 5004
    :cond_0
    :goto_0
    monitor-exit v7

    .line 5005
    return-void

    .line 4981
    :cond_1
    iget v8, p0, Lcom/android/server/power/PowerManagerService$5;->countNumberInThreeSeconds:I

    if-le v8, v5, :cond_2

    .line 4982
    iget v8, p0, Lcom/android/server/power/PowerManagerService$5;->totalValueInThreeSeconds:I

    iget v9, p0, Lcom/android/server/power/PowerManagerService$5;->countNumberInThreeSeconds:I

    add-int/lit8 v9, v9, -0x1

    div-int v1, v8, v9

    .line 4987
    :goto_1
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/power/PowerManagerService$5;->totalValueInThreeSeconds:I

    .line 4988
    const/4 v8, 0x1

    iput v8, p0, Lcom/android/server/power/PowerManagerService$5;->countNumberInThreeSeconds:I

    .line 4989
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/power/PowerManagerService$5;->now:J

    .line 4990
    const/4 v2, 0x4

    .line 4991
    .local v2, "in_threshold":I
    const/16 v3, 0xf

    .line 4992
    .local v3, "out_threshold":I
    iget-object v8, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mButtonLightSensorLastActive:Z
    invoke-static {v8}, Lcom/android/server/power/PowerManagerService;->access$8300(Lcom/android/server/power/PowerManagerService;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 4993
    if-ge v1, v3, :cond_3

    move v0, v5

    .line 4998
    :goto_2
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mButtonLightSensorLastActive:Z
    invoke-static {v5}, Lcom/android/server/power/PowerManagerService;->access$8300(Lcom/android/server/power/PowerManagerService;)Z

    move-result v5

    if-eq v5, v0, :cond_0

    .line 5000
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    # setter for: Lcom/android/server/power/PowerManagerService;->mButtonLightSensorLastActive:Z
    invoke-static {v5, v0}, Lcom/android/server/power/PowerManagerService;->access$8302(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 5001
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    # setter for: Lcom/android/server/power/PowerManagerService;->mButtonLightOn:Z
    invoke-static {v5, v0}, Lcom/android/server/power/PowerManagerService;->access$3202(Lcom/android/server/power/PowerManagerService;Z)Z

    goto :goto_0

    .line 5004
    .end local v2    # "in_threshold":I
    .end local v3    # "out_threshold":I
    .end local v4    # "value":I
    :catchall_0
    move-exception v5

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 4984
    .restart local v4    # "value":I
    :cond_2
    :try_start_1
    iget v8, p0, Lcom/android/server/power/PowerManagerService$5;->totalValueInThreeSeconds:I

    iget v9, p0, Lcom/android/server/power/PowerManagerService$5;->countNumberInThreeSeconds:I

    div-int v1, v8, v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .restart local v2    # "in_threshold":I
    .restart local v3    # "out_threshold":I
    :cond_3
    move v0, v6

    .line 4993
    goto :goto_2

    .line 4995
    :cond_4
    if-gt v1, v2, :cond_5

    move v0, v5

    :goto_3
    goto :goto_2

    :cond_5
    move v0, v6

    goto :goto_3
.end method
