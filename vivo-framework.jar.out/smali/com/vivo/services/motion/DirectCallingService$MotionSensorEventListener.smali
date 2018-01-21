.class Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;
.super Ljava/lang/Object;
.source "DirectCallingService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/motion/DirectCallingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MotionSensorEventListener"
.end annotation


# instance fields
.field private current:J

.field private data_ab:I

.field public data_collect_buf:[[F

.field public data_collect_idx:I

.field private last:J

.field private last_prox:I

.field private pick_up_cnt:I

.field public stable_cnt:I

.field final synthetic this$0:Lcom/vivo/services/motion/DirectCallingService;


# direct methods
.method private constructor <init>(Lcom/vivo/services/motion/DirectCallingService;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 127
    iput-object p1, p0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    const/16 v0, 0x40

    const/4 v1, 0x3

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->data_collect_buf:[[F

    .line 130
    iput v2, p0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->data_collect_idx:I

    iput v2, p0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->stable_cnt:I

    .line 131
    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->last_prox:I

    .line 132
    iput v2, p0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->pick_up_cnt:I

    .line 133
    iput-wide v4, p0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->current:J

    iput-wide v4, p0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->last:J

    .line 134
    iput v2, p0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->data_ab:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/services/motion/DirectCallingService;Lcom/vivo/services/motion/DirectCallingService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vivo/services/motion/DirectCallingService;
    .param p2, "x1"    # Lcom/vivo/services/motion/DirectCallingService$1;

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;-><init>(Lcom/vivo/services/motion/DirectCallingService;)V

    return-void
.end method

.method static synthetic access$4202(Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;
    .param p1, "x1"    # I

    .prologue
    .line 127
    iput p1, p0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->last_prox:I

    return p1
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 598
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 24
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->MotionDetState:I
    invoke-static/range {v17 .. v17}, Lcom/vivo/services/motion/DirectCallingService;->access$000(Lcom/vivo/services/motion/DirectCallingService;)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->MotionDetState:I
    invoke-static/range {v17 .. v17}, Lcom/vivo/services/motion/DirectCallingService;->access$000(Lcom/vivo/services/motion/DirectCallingService;)I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 142
    sget-boolean v17, Lcom/vivo/services/motion/AllConfig;->mIsAKMVirtGryo:Z

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->data_ab:I

    move/from16 v17, v0

    rem-int/lit8 v17, v17, 0x2

    if-nez v17, :cond_3

    .line 174
    :cond_0
    :goto_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/hardware/Sensor;->getType()I

    move-result v17

    sparse-switch v17, :sswitch_data_0

    .line 593
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->data_ab:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->data_ab:I

    .line 594
    :cond_2
    return-void

    .line 148
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->first_flag:Z
    invoke-static/range {v17 .. v17}, Lcom/vivo/services/motion/DirectCallingService;->access$100(Lcom/vivo/services/motion/DirectCallingService;)Z

    move-result v17

    if-eqz v17, :cond_4

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/hardware/Sensor;->getType()I

    move-result v17

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 153
    :cond_4
    const/16 v12, 0x3f

    .local v12, "m":I
    :goto_2
    if-lez v12, :cond_6

    .line 155
    const/4 v15, 0x0

    .local v15, "n":I
    :goto_3
    const/16 v17, 0x3

    move/from16 v0, v17

    if-ge v15, v0, :cond_5

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->data_collect_buf:[[F

    move-object/from16 v17, v0

    aget-object v17, v17, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->data_collect_buf:[[F

    move-object/from16 v18, v0

    add-int/lit8 v19, v12, -0x1

    aget-object v18, v18, v19

    aget v18, v18, v15

    aput v18, v17, v15

    .line 155
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 153
    :cond_5
    add-int/lit8 v12, v12, -0x1

    goto :goto_2

    .line 160
    .end local v15    # "n":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->data_collect_buf:[[F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v17, v17, v18

    const/16 v18, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget v19, v19, v20

    aput v19, v17, v18

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->data_collect_buf:[[F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v17, v17, v18

    const/16 v18, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget v19, v19, v20

    aput v19, v17, v18

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->data_collect_buf:[[F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v17, v17, v18

    const/16 v18, 0x2

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v19, v0

    const/16 v20, 0x2

    aget v19, v19, v20

    aput v19, v17, v18

    .line 164
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->data_collect_idx:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->data_collect_idx:I

    .line 165
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->data_collect_idx:I

    move/from16 v17, v0

    const/16 v18, 0x40

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 167
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->data_collect_idx:I

    goto/16 :goto_0

    .line 178
    .end local v12    # "m":I
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->MotionDetState:I
    invoke-static/range {v17 .. v17}, Lcom/vivo/services/motion/DirectCallingService;->access$000(Lcom/vivo/services/motion/DirectCallingService;)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->MotionDetState:I
    invoke-static/range {v17 .. v17}, Lcom/vivo/services/motion/DirectCallingService;->access$000(Lcom/vivo/services/motion/DirectCallingService;)I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    .line 183
    sget-boolean v17, Lcom/vivo/services/motion/AllConfig;->mIsAKMVirtGryo:Z

    if-eqz v17, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService;->callVibrateSetting:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 185
    const/high16 v17, 0x40600000    # 3.5f

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v18

    cmpg-float v17, v17, v18

    if-gez v17, :cond_f

    const/high16 v17, 0x41100000    # 9.0f

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v18, v0

    const/16 v19, 0x2

    aget v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v18

    cmpg-float v17, v17, v18

    if-gez v17, :cond_f

    const v17, 0x4129999a    # 10.6f

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v18, v0

    const/16 v19, 0x2

    aget v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v18

    cmpl-float v17, v17, v18

    if-lez v17, :cond_f

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    # operator++ for: Lcom/vivo/services/motion/DirectCallingService;->VibratorStateCount:I
    invoke-static/range {v17 .. v17}, Lcom/vivo/services/motion/DirectCallingService;->access$208(Lcom/vivo/services/motion/DirectCallingService;)I

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->VibratorStateCount:I
    invoke-static/range {v17 .. v17}, Lcom/vivo/services/motion/DirectCallingService;->access$200(Lcom/vivo/services/motion/DirectCallingService;)I

    move-result v17

    if-lez v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v18, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->VibratorStateCount:I
    invoke-static/range {v18 .. v18}, Lcom/vivo/services/motion/DirectCallingService;->access$200(Lcom/vivo/services/motion/DirectCallingService;)I

    move-result v18

    # setter for: Lcom/vivo/services/motion/DirectCallingService;->VibratorState:I
    invoke-static/range {v17 .. v18}, Lcom/vivo/services/motion/DirectCallingService;->access$302(Lcom/vivo/services/motion/DirectCallingService;I)I

    .line 189
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/vivo/services/motion/DirectCallingService;->VibratorStaticCount:I
    invoke-static/range {v17 .. v18}, Lcom/vivo/services/motion/DirectCallingService;->access$402(Lcom/vivo/services/motion/DirectCallingService;I)I

    .line 200
    :cond_8
    :goto_4
    sget-boolean v17, Lcom/vivo/services/motion/AllConfig;->mIsYASVirtGryo:Z

    if-nez v17, :cond_9

    sget-boolean v17, Lcom/vivo/services/motion/AllConfig;->mIsADSPAKMVirtGryo:Z

    if-eqz v17, :cond_b

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService;->callVibrateSetting:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    .line 202
    const/high16 v17, 0x41080000    # 8.5f

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v18, v0

    const/16 v19, 0x2

    aget v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v18

    cmpg-float v17, v17, v18

    if-gez v17, :cond_10

    const/high16 v17, 0x41300000    # 11.0f

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v18, v0

    const/16 v19, 0x2

    aget v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v18

    cmpl-float v17, v17, v18

    if-lez v17, :cond_10

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    # operator++ for: Lcom/vivo/services/motion/DirectCallingService;->VibratorStateCount:I
    invoke-static/range {v17 .. v17}, Lcom/vivo/services/motion/DirectCallingService;->access$208(Lcom/vivo/services/motion/DirectCallingService;)I

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->VibratorStateCount:I
    invoke-static/range {v17 .. v17}, Lcom/vivo/services/motion/DirectCallingService;->access$200(Lcom/vivo/services/motion/DirectCallingService;)I

    move-result v17

    if-lez v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v18, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->VibratorStateCount:I
    invoke-static/range {v18 .. v18}, Lcom/vivo/services/motion/DirectCallingService;->access$200(Lcom/vivo/services/motion/DirectCallingService;)I

    move-result v18

    # setter for: Lcom/vivo/services/motion/DirectCallingService;->VibratorState:I
    invoke-static/range {v17 .. v18}, Lcom/vivo/services/motion/DirectCallingService;->access$302(Lcom/vivo/services/motion/DirectCallingService;I)I

    .line 206
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/vivo/services/motion/DirectCallingService;->VibratorStaticCount:I
    invoke-static/range {v17 .. v18}, Lcom/vivo/services/motion/DirectCallingService;->access$402(Lcom/vivo/services/motion/DirectCallingService;I)I

    .line 217
    :cond_b
    :goto_5
    sget-boolean v17, Lcom/vivo/services/motion/AllConfig;->mIsAKMVirtGryo:Z

    if-eqz v17, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->data_ab:I

    move/from16 v17, v0

    rem-int/lit8 v17, v17, 0x2

    if-eqz v17, :cond_1

    .line 222
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->MotionAccDevParaX:Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;
    invoke-static/range {v17 .. v17}, Lcom/vivo/services/motion/DirectCallingService;->access$500(Lcom/vivo/services/motion/DirectCallingService;)Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;

    move-result-object v17

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;->curr_device_Acc:F

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->MotionAccDevParaY:Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;
    invoke-static/range {v17 .. v17}, Lcom/vivo/services/motion/DirectCallingService;->access$600(Lcom/vivo/services/motion/DirectCallingService;)Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;

    move-result-object v17

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;->curr_device_Acc:F

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->MotionAccDevParaZ:Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;
    invoke-static/range {v17 .. v17}, Lcom/vivo/services/motion/DirectCallingService;->access$700(Lcom/vivo/services/motion/DirectCallingService;)Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;

    move-result-object v17

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v18, v0

    const/16 v19, 0x2

    aget v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;->curr_device_Acc:F

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->MotionAccDevParaX:Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;
    invoke-static/range {v17 .. v17}, Lcom/vivo/services/motion/DirectCallingService;->access$500(Lcom/vivo/services/motion/DirectCallingService;)Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;->curr_device_Acc:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v18, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->MotionAccDevParaX:Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;
    invoke-static/range {v18 .. v18}, Lcom/vivo/services/motion/DirectCallingService;->access$500(Lcom/vivo/services/motion/DirectCallingService;)Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;->tem_device_Acc:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 226
    .local v5, "diff_acc_x":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->MotionAccDevParaY:Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;
    invoke-static/range {v17 .. v17}, Lcom/vivo/services/motion/DirectCallingService;->access$600(Lcom/vivo/services/motion/DirectCallingService;)Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;->curr_device_Acc:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v18, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->MotionAccDevParaY:Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;
    invoke-static/range {v18 .. v18}, Lcom/vivo/services/motion/DirectCallingService;->access$600(Lcom/vivo/services/motion/DirectCallingService;)Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;->tem_device_Acc:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 227
    .local v6, "diff_acc_y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->MotionAccDevParaZ:Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;
    invoke-static/range {v17 .. v17}, Lcom/vivo/services/motion/DirectCallingService;->access$700(Lcom/vivo/services/motion/DirectCallingService;)Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;->curr_device_Acc:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v18, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->MotionAccDevParaZ:Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;
    invoke-static/range {v18 .. v18}, Lcom/vivo/services/motion/DirectCallingService;->access$700(Lcom/vivo/services/motion/DirectCallingService;)Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;->tem_device_Acc:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 228
    .local v7, "diff_acc_z":F
    const/high16 v17, 0x40000000    # 2.0f

    cmpl-float v17, v5, v17

    if-gtz v17, :cond_d

    float-to-double v0, v6

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    cmpl-double v17, v18, v20

    if-gtz v17, :cond_d

    float-to-double v0, v7

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    cmpl-double v17, v18, v20

    if-lez v17, :cond_11

    .line 230
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->MotionAccDevParaX:Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;
    invoke-static/range {v17 .. v17}, Lcom/vivo/services/motion/DirectCallingService;->access$500(Lcom/vivo/services/motion/DirectCallingService;)Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v18, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->MotionAccDevParaX:Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;
    invoke-static/range {v18 .. v18}, Lcom/vivo/services/motion/DirectCallingService;->access$500(Lcom/vivo/services/motion/DirectCallingService;)Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;->curr_device_Acc:F

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;->tem_device_Acc:F

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->MotionAccDevParaY:Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;
    invoke-static/range {v17 .. v17}, Lcom/vivo/services/motion/DirectCallingService;->access$600(Lcom/vivo/services/motion/DirectCallingService;)Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v18, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->MotionAccDevParaY:Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;
    invoke-static/range {v18 .. v18}, Lcom/vivo/services/motion/DirectCallingService;->access$600(Lcom/vivo/services/motion/DirectCallingService;)Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;->curr_device_Acc:F

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;->tem_device_Acc:F

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->MotionAccDevParaZ:Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;
    invoke-static/range {v17 .. v17}, Lcom/vivo/services/motion/DirectCallingService;->access$700(Lcom/vivo/services/motion/DirectCallingService;)Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v18, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->MotionAccDevParaZ:Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;
    invoke-static/range {v18 .. v18}, Lcom/vivo/services/motion/DirectCallingService;->access$700(Lcom/vivo/services/motion/DirectCallingService;)Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;->curr_device_Acc:F

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;->tem_device_Acc:F

    .line 233
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->stable_cnt:I

    .line 239
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->stable_cnt:I

    move/from16 v17, v0

    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_e

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->MotionAccDevParaX:Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;
    invoke-static/range {v17 .. v17}, Lcom/vivo/services/motion/DirectCallingService;->access$500(Lcom/vivo/services/motion/DirectCallingService;)Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v18, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->MotionAccDevParaX:Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;
    invoke-static/range {v18 .. v18}, Lcom/vivo/services/motion/DirectCallingService;->access$500(Lcom/vivo/services/motion/DirectCallingService;)Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;->curr_device_Acc:F

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;->old_device_Acc:F

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->MotionAccDevParaY:Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;
    invoke-static/range {v17 .. v17}, Lcom/vivo/services/motion/DirectCallingService;->access$600(Lcom/vivo/services/motion/DirectCallingService;)Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v18, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->MotionAccDevParaY:Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;
    invoke-static/range {v18 .. v18}, Lcom/vivo/services/motion/DirectCallingService;->access$600(Lcom/vivo/services/motion/DirectCallingService;)Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;->curr_device_Acc:F

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;->old_device_Acc:F

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->MotionAccDevParaZ:Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;
    invoke-static/range {v17 .. v17}, Lcom/vivo/services/motion/DirectCallingService;->access$700(Lcom/vivo/services/motion/DirectCallingService;)Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v18, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->MotionAccDevParaZ:Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;
    invoke-static/range {v18 .. v18}, Lcom/vivo/services/motion/DirectCallingService;->access$700(Lcom/vivo/services/motion/DirectCallingService;)Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;->curr_device_Acc:F

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;->old_device_Acc:F

    .line 244
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->stable_cnt:I

    .line 247
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    # setter for: Lcom/vivo/services/motion/DirectCallingService;->prox_close_acc_x:F
    invoke-static/range {v17 .. v18}, Lcom/vivo/services/motion/DirectCallingService;->access$802(Lcom/vivo/services/motion/DirectCallingService;F)F

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    # setter for: Lcom/vivo/services/motion/DirectCallingService;->prox_close_acc_y:F
    invoke-static/range {v17 .. v18}, Lcom/vivo/services/motion/DirectCallingService;->access$902(Lcom/vivo/services/motion/DirectCallingService;F)F

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v18, v0

    const/16 v19, 0x2

    aget v18, v18, v19

    # setter for: Lcom/vivo/services/motion/DirectCallingService;->prox_close_acc_z:F
    invoke-static/range {v17 .. v18}, Lcom/vivo/services/motion/DirectCallingService;->access$1002(Lcom/vivo/services/motion/DirectCallingService;F)F

    goto/16 :goto_1

    .line 194
    .end local v5    # "diff_acc_x":F
    .end local v6    # "diff_acc_y":F
    .end local v7    # "diff_acc_z":F
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/vivo/services/motion/DirectCallingService;->VibratorStateCount:I
    invoke-static/range {v17 .. v18}, Lcom/vivo/services/motion/DirectCallingService;->access$202(Lcom/vivo/services/motion/DirectCallingService;I)I

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    # operator++ for: Lcom/vivo/services/motion/DirectCallingService;->VibratorStaticCount:I
    invoke-static/range {v17 .. v17}, Lcom/vivo/services/motion/DirectCallingService;->access$408(Lcom/vivo/services/motion/DirectCallingService;)I

    .line 196
    const/16 v17, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v18, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->VibratorStaticCount:I
    invoke-static/range {v18 .. v18}, Lcom/vivo/services/motion/DirectCallingService;->access$400(Lcom/vivo/services/motion/DirectCallingService;)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/vivo/services/motion/DirectCallingService;->VibratorState:I
    invoke-static/range {v17 .. v18}, Lcom/vivo/services/motion/DirectCallingService;->access$302(Lcom/vivo/services/motion/DirectCallingService;I)I

    goto/16 :goto_4

    .line 211
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/vivo/services/motion/DirectCallingService;->VibratorStateCount:I
    invoke-static/range {v17 .. v18}, Lcom/vivo/services/motion/DirectCallingService;->access$202(Lcom/vivo/services/motion/DirectCallingService;I)I

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    # operator++ for: Lcom/vivo/services/motion/DirectCallingService;->VibratorStaticCount:I
    invoke-static/range {v17 .. v17}, Lcom/vivo/services/motion/DirectCallingService;->access$408(Lcom/vivo/services/motion/DirectCallingService;)I

    .line 213
    const/16 v17, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v18, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->VibratorStaticCount:I
    invoke-static/range {v18 .. v18}, Lcom/vivo/services/motion/DirectCallingService;->access$400(Lcom/vivo/services/motion/DirectCallingService;)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/vivo/services/motion/DirectCallingService;->VibratorState:I
    invoke-static/range {v17 .. v18}, Lcom/vivo/services/motion/DirectCallingService;->access$302(Lcom/vivo/services/motion/DirectCallingService;I)I

    goto/16 :goto_5

    .line 237
    .restart local v5    # "diff_acc_x":F
    .restart local v6    # "diff_acc_y":F
    .restart local v7    # "diff_acc_z":F
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->stable_cnt:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->stable_cnt:I

    goto/16 :goto_6

    .line 253
    .end local v5    # "diff_acc_x":F
    .end local v6    # "diff_acc_y":F
    .end local v7    # "diff_acc_z":F
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->MotionDetState:I
    invoke-static/range {v17 .. v17}, Lcom/vivo/services/motion/DirectCallingService;->access$000(Lcom/vivo/services/motion/DirectCallingService;)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->MotionDetState:I
    invoke-static/range {v17 .. v17}, Lcom/vivo/services/motion/DirectCallingService;->access$000(Lcom/vivo/services/motion/DirectCallingService;)I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->MotionAngDevParaX:Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;
    invoke-static/range {v17 .. v17}, Lcom/vivo/services/motion/DirectCallingService;->access$1100(Lcom/vivo/services/motion/DirectCallingService;)Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;

    move-result-object v17

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;->curr_device_Ang:F

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->MotionAngDevParaY:Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;
    invoke-static/range {v17 .. v17}, Lcom/vivo/services/motion/DirectCallingService;->access$1200(Lcom/vivo/services/motion/DirectCallingService;)Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;

    move-result-object v17

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;->curr_device_Ang:F

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->MotionAngDevParaZ:Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;
    invoke-static/range {v17 .. v17}, Lcom/vivo/services/motion/DirectCallingService;->access$1300(Lcom/vivo/services/motion/DirectCallingService;)Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;

    move-result-object v17

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v18, v0

    const/16 v19, 0x2

    aget v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;->curr_device_Ang:F

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->MotionAngDevParaX:Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;
    invoke-static/range {v17 .. v17}, Lcom/vivo/services/motion/DirectCallingService;->access$1100(Lcom/vivo/services/motion/DirectCallingService;)Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;->curr_device_Ang:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v18, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->MotionAngDevParaX:Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;
    invoke-static/range {v18 .. v18}, Lcom/vivo/services/motion/DirectCallingService;->access$1100(Lcom/vivo/services/motion/DirectCallingService;)Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;->tem_device_Ang:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 262
    .local v8, "diff_ang_x":F
    const/high16 v17, 0x3f800000    # 1.0f

    cmpg-float v17, v8, v17

    if-gtz v17, :cond_13

    .line 263
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->MotionAngDevParaY:Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;
    invoke-static/range {v17 .. v17}, Lcom/vivo/services/motion/DirectCallingService;->access$1200(Lcom/vivo/services/motion/DirectCallingService;)Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;->curr_device_Ang:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v18, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->MotionAngDevParaY:Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;
    invoke-static/range {v18 .. v18}, Lcom/vivo/services/motion/DirectCallingService;->access$1200(Lcom/vivo/services/motion/DirectCallingService;)Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;->tem_device_Ang:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 264
    .local v9, "diff_ang_y":F
    const/high16 v17, 0x3f800000    # 1.0f

    cmpg-float v17, v9, v17

    if-gtz v17, :cond_14

    .line 265
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->MotionAngDevParaZ:Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;
    invoke-static/range {v17 .. v17}, Lcom/vivo/services/motion/DirectCallingService;->access$1300(Lcom/vivo/services/motion/DirectCallingService;)Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;->curr_device_Ang:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v18, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->MotionAngDevParaZ:Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;
    invoke-static/range {v18 .. v18}, Lcom/vivo/services/motion/DirectCallingService;->access$1300(Lcom/vivo/services/motion/DirectCallingService;)Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;->tem_device_Ang:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v10

    .line 266
    .local v10, "diff_ang_z":F
    const/high16 v17, 0x3f800000    # 1.0f

    cmpg-float v17, v10, v17

    if-gtz v17, :cond_15

    .line 267
    :goto_9
    const v17, 0x3ca3d70a    # 0.02f

    cmpl-float v17, v8, v17

    if-gtz v17, :cond_12

    const v17, 0x3ca3d70a    # 0.02f

    cmpl-float v17, v9, v17

    if-gtz v17, :cond_12

    const v17, 0x3ca3d70a    # 0.02f

    cmpl-float v17, v10, v17

    if-lez v17, :cond_16

    .line 269
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->MotionAngDevParaX:Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;
    invoke-static/range {v17 .. v17}, Lcom/vivo/services/motion/DirectCallingService;->access$1100(Lcom/vivo/services/motion/DirectCallingService;)Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v18, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->MotionAngDevParaX:Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;
    invoke-static/range {v18 .. v18}, Lcom/vivo/services/motion/DirectCallingService;->access$1100(Lcom/vivo/services/motion/DirectCallingService;)Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;->curr_device_Ang:F

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;->tem_device_Ang:F

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->MotionAngDevParaY:Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;
    invoke-static/range {v17 .. v17}, Lcom/vivo/services/motion/DirectCallingService;->access$1200(Lcom/vivo/services/motion/DirectCallingService;)Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v18, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->MotionAngDevParaY:Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;
    invoke-static/range {v18 .. v18}, Lcom/vivo/services/motion/DirectCallingService;->access$1200(Lcom/vivo/services/motion/DirectCallingService;)Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;->curr_device_Ang:F

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;->tem_device_Ang:F

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->MotionAngDevParaZ:Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;
    invoke-static/range {v17 .. v17}, Lcom/vivo/services/motion/DirectCallingService;->access$1300(Lcom/vivo/services/motion/DirectCallingService;)Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v18, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->MotionAngDevParaZ:Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;
    invoke-static/range {v18 .. v18}, Lcom/vivo/services/motion/DirectCallingService;->access$1300(Lcom/vivo/services/motion/DirectCallingService;)Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;->curr_device_Ang:F

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;->tem_device_Ang:F

    .line 272
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->stable_cnt:I

    .line 278
    :goto_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->stable_cnt:I

    move/from16 v17, v0

    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_1

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->MotionAngDevParaX:Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;
    invoke-static/range {v17 .. v17}, Lcom/vivo/services/motion/DirectCallingService;->access$1100(Lcom/vivo/services/motion/DirectCallingService;)Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v18, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->MotionAngDevParaX:Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;
    invoke-static/range {v18 .. v18}, Lcom/vivo/services/motion/DirectCallingService;->access$1100(Lcom/vivo/services/motion/DirectCallingService;)Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;->curr_device_Ang:F

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;->old_device_Ang:F

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->MotionAngDevParaY:Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;
    invoke-static/range {v17 .. v17}, Lcom/vivo/services/motion/DirectCallingService;->access$1200(Lcom/vivo/services/motion/DirectCallingService;)Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v18, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->MotionAngDevParaY:Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;
    invoke-static/range {v18 .. v18}, Lcom/vivo/services/motion/DirectCallingService;->access$1200(Lcom/vivo/services/motion/DirectCallingService;)Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;->curr_device_Ang:F

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;->old_device_Ang:F

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->MotionAngDevParaZ:Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;
    invoke-static/range {v17 .. v17}, Lcom/vivo/services/motion/DirectCallingService;->access$1300(Lcom/vivo/services/motion/DirectCallingService;)Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v18, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->MotionAngDevParaZ:Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;
    invoke-static/range {v18 .. v18}, Lcom/vivo/services/motion/DirectCallingService;->access$1300(Lcom/vivo/services/motion/DirectCallingService;)Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;->curr_device_Ang:F

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;->old_device_Ang:F

    .line 283
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->stable_cnt:I

    goto/16 :goto_1

    .line 262
    .end local v9    # "diff_ang_y":F
    .end local v10    # "diff_ang_z":F
    :cond_13
    const/high16 v17, 0x40000000    # 2.0f

    sub-float v8, v17, v8

    goto/16 :goto_7

    .line 264
    .restart local v9    # "diff_ang_y":F
    :cond_14
    const/high16 v17, 0x40000000    # 2.0f

    sub-float v9, v17, v9

    goto/16 :goto_8

    .line 266
    .restart local v10    # "diff_ang_z":F
    :cond_15
    const/high16 v17, 0x40000000    # 2.0f

    sub-float v10, v17, v10

    goto/16 :goto_9

    .line 276
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->stable_cnt:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->stable_cnt:I

    goto/16 :goto_a

    .line 289
    .end local v8    # "diff_ang_x":F
    .end local v9    # "diff_ang_y":F
    .end local v10    # "diff_ang_z":F
    :sswitch_2
    const/16 v17, 0xa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v18, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->mag_ab:I
    invoke-static/range {v18 .. v18}, Lcom/vivo/services/motion/DirectCallingService;->access$1400(Lcom/vivo/services/motion/DirectCallingService;)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_17

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    # operator++ for: Lcom/vivo/services/motion/DirectCallingService;->mag_ab:I
    invoke-static/range {v17 .. v17}, Lcom/vivo/services/motion/DirectCallingService;->access$1408(Lcom/vivo/services/motion/DirectCallingService;)I

    .line 292
    const-string v17, "DirectCallingService"

    const-string v18, " TYPE_MAG test 1"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    # setter for: Lcom/vivo/services/motion/DirectCallingService;->mag_vibrator_state:Z
    invoke-static/range {v17 .. v18}, Lcom/vivo/services/motion/DirectCallingService;->access$1502(Lcom/vivo/services/motion/DirectCallingService;Z)Z

    .line 295
    :cond_17
    const/16 v17, 0xa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v18, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->mag_ab:I
    invoke-static/range {v18 .. v18}, Lcom/vivo/services/motion/DirectCallingService;->access$1400(Lcom/vivo/services/motion/DirectCallingService;)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_18

    .line 297
    # getter for: Lcom/vivo/services/motion/DirectCallingService;->last_mag_data:[F
    invoke-static {}, Lcom/vivo/services/motion/DirectCallingService;->access$1600()[F

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget v19, v19, v20

    aput v19, v17, v18

    .line 298
    # getter for: Lcom/vivo/services/motion/DirectCallingService;->last_mag_data:[F
    invoke-static {}, Lcom/vivo/services/motion/DirectCallingService;->access$1600()[F

    move-result-object v17

    const/16 v18, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget v19, v19, v20

    aput v19, v17, v18

    .line 299
    # getter for: Lcom/vivo/services/motion/DirectCallingService;->last_mag_data:[F
    invoke-static {}, Lcom/vivo/services/motion/DirectCallingService;->access$1600()[F

    move-result-object v17

    const/16 v18, 0x2

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v19, v0

    const/16 v20, 0x2

    aget v19, v19, v20

    aput v19, v17, v18

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    # operator++ for: Lcom/vivo/services/motion/DirectCallingService;->mag_ab:I
    invoke-static/range {v17 .. v17}, Lcom/vivo/services/motion/DirectCallingService;->access$1408(Lcom/vivo/services/motion/DirectCallingService;)I

    .line 301
    const-string v17, "DirectCallingService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " TYPE_MAG test 2 last_mag_data[0]:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->last_mag_data:[F
    invoke-static {}, Lcom/vivo/services/motion/DirectCallingService;->access$1600()[F

    move-result-object v19

    const/16 v20, 0x0

    aget v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ",last_mag_data[1]:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->last_mag_data:[F
    invoke-static {}, Lcom/vivo/services/motion/DirectCallingService;->access$1600()[F

    move-result-object v19

    const/16 v20, 0x1

    aget v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ",last_mag_data[2]:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->last_mag_data:[F
    invoke-static {}, Lcom/vivo/services/motion/DirectCallingService;->access$1600()[F

    move-result-object v19

    const/16 v20, 0x2

    aget v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_18
    const/16 v17, 0xa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v18, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->mag_ab:I
    invoke-static/range {v18 .. v18}, Lcom/vivo/services/motion/DirectCallingService;->access$1400(Lcom/vivo/services/motion/DirectCallingService;)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    .line 305
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v14, v0, [F

    .line 306
    .local v14, "mag_data_delta":[F
    const/16 v17, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->last_mag_data:[F
    invoke-static {}, Lcom/vivo/services/motion/DirectCallingService;->access$1600()[F

    move-result-object v19

    const/16 v20, 0x0

    aget v19, v19, v20

    sub-float v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v18

    aput v18, v14, v17

    .line 307
    const/16 v17, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->last_mag_data:[F
    invoke-static {}, Lcom/vivo/services/motion/DirectCallingService;->access$1600()[F

    move-result-object v19

    const/16 v20, 0x1

    aget v19, v19, v20

    sub-float v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v18

    aput v18, v14, v17

    .line 308
    const/16 v17, 0x2

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v18, v0

    const/16 v19, 0x2

    aget v18, v18, v19

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->last_mag_data:[F
    invoke-static {}, Lcom/vivo/services/motion/DirectCallingService;->access$1600()[F

    move-result-object v19

    const/16 v20, 0x2

    aget v19, v19, v20

    sub-float v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v18

    aput v18, v14, v17

    .line 311
    const/16 v17, 0x0

    aget v17, v14, v17

    const/high16 v18, 0x3fc00000    # 1.5f

    cmpg-float v17, v17, v18

    if-gez v17, :cond_19

    const/16 v17, 0x1

    aget v17, v14, v17

    const/high16 v18, 0x3fc00000    # 1.5f

    cmpg-float v17, v17, v18

    if-gez v17, :cond_19

    const/16 v17, 0x2

    aget v17, v14, v17

    const/high16 v18, 0x3f800000    # 1.0f

    cmpg-float v17, v17, v18

    if-gez v17, :cond_19

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    # operator++ for: Lcom/vivo/services/motion/DirectCallingService;->mag_vibrator_counter:I
    invoke-static/range {v17 .. v17}, Lcom/vivo/services/motion/DirectCallingService;->access$1708(Lcom/vivo/services/motion/DirectCallingService;)I

    .line 316
    const/16 v17, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v18, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->mag_vibrator_counter:I
    invoke-static/range {v18 .. v18}, Lcom/vivo/services/motion/DirectCallingService;->access$1700(Lcom/vivo/services/motion/DirectCallingService;)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    # setter for: Lcom/vivo/services/motion/DirectCallingService;->mag_vibrator_state:Z
    invoke-static/range {v17 .. v18}, Lcom/vivo/services/motion/DirectCallingService;->access$1502(Lcom/vivo/services/motion/DirectCallingService;Z)Z

    goto/16 :goto_1

    .line 321
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/vivo/services/motion/DirectCallingService;->mag_vibrator_state:Z
    invoke-static/range {v17 .. v18}, Lcom/vivo/services/motion/DirectCallingService;->access$1502(Lcom/vivo/services/motion/DirectCallingService;Z)Z

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/vivo/services/motion/DirectCallingService;->mag_vibrator_counter:I
    invoke-static/range {v17 .. v18}, Lcom/vivo/services/motion/DirectCallingService;->access$1702(Lcom/vivo/services/motion/DirectCallingService;I)I

    goto/16 :goto_1

    .line 328
    .end local v14    # "mag_data_delta":[F
    :sswitch_3
    const-string v17, "ro.product.model.bbk"

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 329
    .local v16, "prop":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->first_flag:Z
    invoke-static/range {v17 .. v17}, Lcom/vivo/services/motion/DirectCallingService;->access$100(Lcom/vivo/services/motion/DirectCallingService;)Z

    move-result v17

    if-eqz v17, :cond_1a

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    # operator++ for: Lcom/vivo/services/motion/DirectCallingService;->data_abandon:I
    invoke-static/range {v17 .. v17}, Lcom/vivo/services/motion/DirectCallingService;->access$1808(Lcom/vivo/services/motion/DirectCallingService;)I

    .line 332
    const/16 v17, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v18, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->data_abandon:I
    invoke-static/range {v18 .. v18}, Lcom/vivo/services/motion/DirectCallingService;->access$1800(Lcom/vivo/services/motion/DirectCallingService;)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/vivo/services/motion/DirectCallingService;->first_flag:Z
    invoke-static/range {v17 .. v18}, Lcom/vivo/services/motion/DirectCallingService;->access$102(Lcom/vivo/services/motion/DirectCallingService;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/vivo/services/motion/DirectCallingService;->data_abandon:I
    invoke-static/range {v17 .. v18}, Lcom/vivo/services/motion/DirectCallingService;->access$1802(Lcom/vivo/services/motion/DirectCallingService;I)I

    goto/16 :goto_1

    .line 336
    :cond_1a
    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/hardware/SensorEvent;->timestamp:J

    move-wide/from16 v18, v0

    const-wide/32 v20, 0xf4240

    div-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->current:J

    .line 338
    sget-boolean v17, Lcom/vivo/services/motion/AllConfig;->mIsYASVirtGryo:Z

    if-eqz v17, :cond_1b

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->current:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->last:J

    move-wide/from16 v20, v0

    sub-long v18, v18, v20

    const-wide/16 v20, 0xf

    cmp-long v17, v18, v20

    if-ltz v17, :cond_1

    .line 374
    :cond_1b
    sget-boolean v17, Lcom/vivo/services/motion/AllConfig;->mIsAKMVirtGryo:Z

    if-eqz v17, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->data_ab:I

    move/from16 v17, v0

    rem-int/lit8 v17, v17, 0x2

    if-eqz v17, :cond_1

    .line 378
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->mDataOperate:Z
    invoke-static/range {v17 .. v17}, Lcom/vivo/services/motion/DirectCallingService;->access$1900(Lcom/vivo/services/motion/DirectCallingService;)Z

    move-result v17

    if-nez v17, :cond_23

    .line 379
    # getter for: Lcom/vivo/services/motion/DirectCallingService;->mDataLock:Ljava/lang/Object;
    invoke-static {}, Lcom/vivo/services/motion/DirectCallingService;->access$2000()Ljava/lang/Object;

    move-result-object v18

    monitor-enter v18

    .line 380
    const/16 v12, 0x40

    .restart local v12    # "m":I
    :goto_b
    if-lez v12, :cond_1e

    .line 382
    const/4 v15, 0x0

    .restart local v15    # "n":I
    :goto_c
    const/16 v17, 0x3

    move/from16 v0, v17

    if-ge v15, v0, :cond_1d

    .line 384
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->gyro_data_buf:[[F
    invoke-static/range {v17 .. v17}, Lcom/vivo/services/motion/DirectCallingService;->access$2100(Lcom/vivo/services/motion/DirectCallingService;)[[F

    move-result-object v17

    aget-object v17, v17, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v19, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->gyro_data_buf:[[F
    invoke-static/range {v19 .. v19}, Lcom/vivo/services/motion/DirectCallingService;->access$2100(Lcom/vivo/services/motion/DirectCallingService;)[[F

    move-result-object v19

    add-int/lit8 v20, v12, -0x1

    aget-object v19, v19, v20

    aget v19, v19, v15

    aput v19, v17, v15

    .line 382
    add-int/lit8 v15, v15, 0x1

    goto :goto_c

    .line 386
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->time_buf:[J
    invoke-static/range {v17 .. v17}, Lcom/vivo/services/motion/DirectCallingService;->access$2200(Lcom/vivo/services/motion/DirectCallingService;)[J

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v19, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->time_buf:[J
    invoke-static/range {v19 .. v19}, Lcom/vivo/services/motion/DirectCallingService;->access$2200(Lcom/vivo/services/motion/DirectCallingService;)[J

    move-result-object v19

    add-int/lit8 v20, v12, -0x1

    aget-wide v20, v19, v20

    aput-wide v20, v17, v12

    .line 380
    add-int/lit8 v12, v12, -0x1

    goto :goto_b

    .line 388
    .end local v15    # "n":I
    :cond_1e
    sget-boolean v17, Lcom/vivo/services/motion/AllConfig;->mIsAKMVirtGryo:Z

    if-eqz v17, :cond_21

    .line 392
    const/4 v15, 0x0

    .restart local v15    # "n":I
    :goto_d
    const/16 v17, 0x3

    move/from16 v0, v17

    if-ge v15, v0, :cond_22

    .line 394
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v17, v0

    aget v17, v17, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v19, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->gyro_data_buf:[[F
    invoke-static/range {v19 .. v19}, Lcom/vivo/services/motion/DirectCallingService;->access$2100(Lcom/vivo/services/motion/DirectCallingService;)[[F

    move-result-object v19

    const/16 v20, 0x1

    aget-object v19, v19, v20

    aget v19, v19, v15

    sub-float v4, v17, v19

    .line 396
    .local v4, "data_temp":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->MOTION_AKM_MAX:F
    invoke-static/range {v17 .. v17}, Lcom/vivo/services/motion/DirectCallingService;->access$2300(Lcom/vivo/services/motion/DirectCallingService;)F

    move-result v17

    cmpg-float v17, v17, v4

    if-gtz v17, :cond_1f

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->gyro_data_buf:[[F
    invoke-static/range {v17 .. v17}, Lcom/vivo/services/motion/DirectCallingService;->access$2100(Lcom/vivo/services/motion/DirectCallingService;)[[F

    move-result-object v17

    const/16 v19, 0x0

    aget-object v17, v17, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v19, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->gyro_data_buf:[[F
    invoke-static/range {v19 .. v19}, Lcom/vivo/services/motion/DirectCallingService;->access$2100(Lcom/vivo/services/motion/DirectCallingService;)[[F

    move-result-object v19

    const/16 v20, 0x1

    aget-object v19, v19, v20

    aget v19, v19, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v20, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->MOTION_AKM_MAX:F
    invoke-static/range {v20 .. v20}, Lcom/vivo/services/motion/DirectCallingService;->access$2300(Lcom/vivo/services/motion/DirectCallingService;)F

    move-result v20

    add-float v19, v19, v20

    aput v19, v17, v15

    .line 392
    :goto_e
    add-int/lit8 v15, v15, 0x1

    goto :goto_d

    .line 401
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->MOTION_AKM_MAX:F
    invoke-static/range {v17 .. v17}, Lcom/vivo/services/motion/DirectCallingService;->access$2300(Lcom/vivo/services/motion/DirectCallingService;)F

    move-result v17

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v17, v0

    cmpl-float v17, v17, v4

    if-ltz v17, :cond_20

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->gyro_data_buf:[[F
    invoke-static/range {v17 .. v17}, Lcom/vivo/services/motion/DirectCallingService;->access$2100(Lcom/vivo/services/motion/DirectCallingService;)[[F

    move-result-object v17

    const/16 v19, 0x0

    aget-object v17, v17, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v19, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->gyro_data_buf:[[F
    invoke-static/range {v19 .. v19}, Lcom/vivo/services/motion/DirectCallingService;->access$2100(Lcom/vivo/services/motion/DirectCallingService;)[[F

    move-result-object v19

    const/16 v20, 0x1

    aget-object v19, v19, v20

    aget v19, v19, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v20, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->MOTION_AKM_MAX:F
    invoke-static/range {v20 .. v20}, Lcom/vivo/services/motion/DirectCallingService;->access$2300(Lcom/vivo/services/motion/DirectCallingService;)F

    move-result v20

    sub-float v19, v19, v20

    aput v19, v17, v15

    goto :goto_e

    .line 418
    .end local v4    # "data_temp":F
    .end local v15    # "n":I
    :catchall_0
    move-exception v17

    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v17

    .line 407
    .restart local v4    # "data_temp":F
    .restart local v15    # "n":I
    :cond_20
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->gyro_data_buf:[[F
    invoke-static/range {v17 .. v17}, Lcom/vivo/services/motion/DirectCallingService;->access$2100(Lcom/vivo/services/motion/DirectCallingService;)[[F

    move-result-object v17

    const/16 v19, 0x0

    aget-object v17, v17, v19

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v19, v0

    aget v19, v19, v15

    aput v19, v17, v15

    goto :goto_e

    .line 413
    .end local v4    # "data_temp":F
    .end local v15    # "n":I
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->gyro_data_buf:[[F
    invoke-static/range {v17 .. v17}, Lcom/vivo/services/motion/DirectCallingService;->access$2100(Lcom/vivo/services/motion/DirectCallingService;)[[F

    move-result-object v17

    const/16 v19, 0x0

    aget-object v17, v17, v19

    const/16 v19, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    aput v20, v17, v19

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->gyro_data_buf:[[F
    invoke-static/range {v17 .. v17}, Lcom/vivo/services/motion/DirectCallingService;->access$2100(Lcom/vivo/services/motion/DirectCallingService;)[[F

    move-result-object v17

    const/16 v19, 0x0

    aget-object v17, v17, v19

    const/16 v19, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget v20, v20, v21

    aput v20, v17, v19

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->gyro_data_buf:[[F
    invoke-static/range {v17 .. v17}, Lcom/vivo/services/motion/DirectCallingService;->access$2100(Lcom/vivo/services/motion/DirectCallingService;)[[F

    move-result-object v17

    const/16 v19, 0x0

    aget-object v17, v17, v19

    const/16 v19, 0x2

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v20, v0

    const/16 v21, 0x2

    aget v20, v20, v21

    aput v20, v17, v19

    .line 417
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->time_buf:[J
    invoke-static/range {v17 .. v17}, Lcom/vivo/services/motion/DirectCallingService;->access$2200(Lcom/vivo/services/motion/DirectCallingService;)[J

    move-result-object v17

    const/16 v19, 0x0

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/hardware/SensorEvent;->timestamp:J

    move-wide/from16 v20, v0

    const-wide/32 v22, 0xf4240

    div-long v20, v20, v22

    aput-wide v20, v17, v19

    .line 418
    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 424
    .end local v12    # "m":I
    :cond_23
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->current:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->last:J

    move-wide/from16 v20, v0

    sub-long v18, v18, v20

    const-wide/16 v20, 0x96

    cmp-long v17, v18, v20

    if-lez v17, :cond_24

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->current:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->last:J

    move-wide/from16 v20, v0

    sub-long v18, v18, v20

    const-wide/16 v20, 0xfa

    cmp-long v17, v18, v20

    if-gez v17, :cond_24

    .line 425
    const-string v17, "DirectCallingService"

    const-string v18, " PG need to regiseter  gyro again"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->MotionDetSensorManager:Landroid/hardware/SensorManager;
    invoke-static/range {v17 .. v17}, Lcom/vivo/services/motion/DirectCallingService;->access$2500(Lcom/vivo/services/motion/DirectCallingService;)Landroid/hardware/SensorManager;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v18, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->GproScopeListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;
    invoke-static/range {v18 .. v18}, Lcom/vivo/services/motion/DirectCallingService;->access$2400(Lcom/vivo/services/motion/DirectCallingService;)Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    # setter for: Lcom/vivo/services/motion/DirectCallingService;->first_flag:Z
    invoke-static/range {v17 .. v18}, Lcom/vivo/services/motion/DirectCallingService;->access$102(Lcom/vivo/services/motion/DirectCallingService;Z)Z

    .line 428
    sget-boolean v17, Lcom/vivo/services/motion/AllConfig;->mIsAKMVirtGryo:Z

    if-eqz v17, :cond_2d

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->MotionDetSensorManager:Landroid/hardware/SensorManager;
    invoke-static/range {v17 .. v17}, Lcom/vivo/services/motion/DirectCallingService;->access$2500(Lcom/vivo/services/motion/DirectCallingService;)Landroid/hardware/SensorManager;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v18, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->GproScopeListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;
    invoke-static/range {v18 .. v18}, Lcom/vivo/services/motion/DirectCallingService;->access$2400(Lcom/vivo/services/motion/DirectCallingService;)Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v19, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->MotionDetSensorManager:Landroid/hardware/SensorManager;
    invoke-static/range {v19 .. v19}, Lcom/vivo/services/motion/DirectCallingService;->access$2500(Lcom/vivo/services/motion/DirectCallingService;)Landroid/hardware/SensorManager;

    move-result-object v19

    const/16 v20, 0x4

    invoke-virtual/range {v19 .. v20}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v19

    const/16 v20, 0x2710

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v21, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->mCallBackHandler:Landroid/os/Handler;
    invoke-static/range {v21 .. v21}, Lcom/vivo/services/motion/DirectCallingService;->access$2600(Lcom/vivo/services/motion/DirectCallingService;)Landroid/os/Handler;

    move-result-object v21

    invoke-virtual/range {v17 .. v21}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 442
    :cond_24
    :goto_f
    sget-boolean v17, Lcom/vivo/services/motion/AllConfig;->mIsAKMVirtGryo:Z

    if-eqz v17, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService;->callVibrateSetting:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_25

    sget-boolean v17, Lcom/vivo/services/motion/AllConfig;->mIsDoubleloudspeaker:Z

    if-eqz v17, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService;->ringLevel:I

    move/from16 v17, v0

    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_2f

    .line 443
    :cond_25
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x3ff8000000000000L    # 1.5

    cmpl-double v17, v18, v20

    if-lez v17, :cond_26

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v17, v0

    const/16 v18, 0x2

    aget v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x3ff8000000000000L    # 1.5

    cmpl-double v17, v18, v20

    if-lez v17, :cond_26

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x3fd999999999999aL    # 0.4

    cmpl-double v17, v18, v20

    if-gtz v17, :cond_27

    :cond_26
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v18, v0

    const/16 v19, 0x2

    aget v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v18

    add-float v17, v17, v18

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v18

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4008000000000000L    # 3.0

    cmpl-double v17, v18, v20

    if-lez v17, :cond_2e

    .line 446
    :cond_27
    const-string v17, "DirectCallingService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[PG_Data]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ":"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v19, v0

    const/16 v20, 0x2

    aget v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ":"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ":pick_cnt"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->pick_up_cnt:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "callVibrateSetting "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService;->callVibrateSetting:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " VibratorState:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v19, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->VibratorState:I
    invoke-static/range {v19 .. v19}, Lcom/vivo/services/motion/DirectCallingService;->access$300(Lcom/vivo/services/motion/DirectCallingService;)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " mag_vibrator_state:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v19, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->mag_vibrator_state:Z
    invoke-static/range {v19 .. v19}, Lcom/vivo/services/motion/DirectCallingService;->access$1500(Lcom/vivo/services/motion/DirectCallingService;)Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    const/16 v17, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v18, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->VibratorState:I
    invoke-static/range {v18 .. v18}, Lcom/vivo/services/motion/DirectCallingService;->access$300(Lcom/vivo/services/motion/DirectCallingService;)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->mag_vibrator_state:Z
    invoke-static/range {v17 .. v17}, Lcom/vivo/services/motion/DirectCallingService;->access$1500(Lcom/vivo/services/motion/DirectCallingService;)Z

    move-result v17

    if-nez v17, :cond_28

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v18, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->ProximitState:I
    invoke-static/range {v18 .. v18}, Lcom/vivo/services/motion/DirectCallingService;->access$2700(Lcom/vivo/services/motion/DirectCallingService;)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->pick_up_cnt:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->pick_up_cnt:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->pick_up_cnt:I

    move/from16 v18, v0

    # setter for: Lcom/vivo/services/motion/DirectCallingService;->pick_up_cnt_motion:I
    invoke-static/range {v17 .. v18}, Lcom/vivo/services/motion/DirectCallingService;->access$2802(Lcom/vivo/services/motion/DirectCallingService;I)I

    .line 494
    :cond_28
    :goto_10
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4024000000000000L    # 10.0

    cmpl-double v17, v18, v20

    if-gtz v17, :cond_29

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4024000000000000L    # 10.0

    cmpl-double v17, v18, v20

    if-gtz v17, :cond_29

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v17, v0

    const/16 v18, 0x2

    aget v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4028000000000000L    # 12.0

    cmpl-double v17, v18, v20

    if-lez v17, :cond_2a

    .line 496
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->pick_up_cnt:I

    # setter for: Lcom/vivo/services/motion/DirectCallingService;->pick_up_cnt_motion:I
    invoke-static/range {v17 .. v18}, Lcom/vivo/services/motion/DirectCallingService;->access$2802(Lcom/vivo/services/motion/DirectCallingService;I)I

    .line 497
    const-string v17, "DirectCallingService"

    const-string v18, "GYROSCOPE DATA ERROR"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :cond_2a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->pick_up_cnt:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v18, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->pick_up_cnt_threshhold:I
    invoke-static/range {v18 .. v18}, Lcom/vivo/services/motion/DirectCallingService;->access$2900(Lcom/vivo/services/motion/DirectCallingService;)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->mServiceHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/vivo/services/motion/DirectCallingService;->access$3000(Lcom/vivo/services/motion/DirectCallingService;)Landroid/os/Handler;

    move-result-object v17

    if-eqz v17, :cond_2c

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v18, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->pick_up_count:J
    invoke-static/range {v18 .. v18}, Lcom/vivo/services/motion/DirectCallingService;->access$3100(Lcom/vivo/services/motion/DirectCallingService;)J

    move-result-wide v18

    const-wide/16 v20, 0x1

    add-long v18, v18, v20

    # setter for: Lcom/vivo/services/motion/DirectCallingService;->pick_up_count:J
    invoke-static/range {v17 .. v19}, Lcom/vivo/services/motion/DirectCallingService;->access$3102(Lcom/vivo/services/motion/DirectCallingService;J)J

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/hardware/SensorEvent;->timestamp:J

    move-wide/from16 v18, v0

    const-wide/32 v20, 0xf4240

    div-long v18, v18, v20

    # setter for: Lcom/vivo/services/motion/DirectCallingService;->pick_up_time:J
    invoke-static/range {v17 .. v19}, Lcom/vivo/services/motion/DirectCallingService;->access$3202(Lcom/vivo/services/motion/DirectCallingService;J)J

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/vivo/services/motion/DirectCallingService;->pickupDegreeAnalist()Z

    move-result v17

    if-eqz v17, :cond_2c

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->pick_up_cnt:I

    # setter for: Lcom/vivo/services/motion/DirectCallingService;->pick_up_cnt_motion:I
    invoke-static/range {v17 .. v18}, Lcom/vivo/services/motion/DirectCallingService;->access$2802(Lcom/vivo/services/motion/DirectCallingService;I)I

    .line 518
    # getter for: Lcom/vivo/services/motion/DirectCallingService;->mHandleLock:Ljava/lang/Object;
    invoke-static {}, Lcom/vivo/services/motion/DirectCallingService;->access$3300()Ljava/lang/Object;

    move-result-object v18

    monitor-enter v18

    .line 519
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->mServiceHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/vivo/services/motion/DirectCallingService;->access$3000(Lcom/vivo/services/motion/DirectCallingService;)Landroid/os/Handler;

    move-result-object v17

    if-eqz v17, :cond_2b

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->mServiceHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/vivo/services/motion/DirectCallingService;->access$3000(Lcom/vivo/services/motion/DirectCallingService;)Landroid/os/Handler;

    move-result-object v17

    const/16 v19, 0x4

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 521
    :cond_2b
    monitor-exit v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 529
    :cond_2c
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->current:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->last:J

    goto/16 :goto_1

    .line 432
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->MotionDetSensorManager:Landroid/hardware/SensorManager;
    invoke-static/range {v17 .. v17}, Lcom/vivo/services/motion/DirectCallingService;->access$2500(Lcom/vivo/services/motion/DirectCallingService;)Landroid/hardware/SensorManager;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v18, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->GproScopeListener:Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;
    invoke-static/range {v18 .. v18}, Lcom/vivo/services/motion/DirectCallingService;->access$2400(Lcom/vivo/services/motion/DirectCallingService;)Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v19, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->MotionDetSensorManager:Landroid/hardware/SensorManager;
    invoke-static/range {v19 .. v19}, Lcom/vivo/services/motion/DirectCallingService;->access$2500(Lcom/vivo/services/motion/DirectCallingService;)Landroid/hardware/SensorManager;

    move-result-object v19

    const/16 v20, 0x4

    invoke-virtual/range {v19 .. v20}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v19

    const/16 v20, 0x4e20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v21, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->mCallBackHandler:Landroid/os/Handler;
    invoke-static/range {v21 .. v21}, Lcom/vivo/services/motion/DirectCallingService;->access$2600(Lcom/vivo/services/motion/DirectCallingService;)Landroid/os/Handler;

    move-result-object v21

    invoke-virtual/range {v17 .. v21}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    goto/16 :goto_f

    .line 452
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->pick_up_cnt:I

    # setter for: Lcom/vivo/services/motion/DirectCallingService;->pick_up_cnt_motion:I
    invoke-static/range {v17 .. v18}, Lcom/vivo/services/motion/DirectCallingService;->access$2802(Lcom/vivo/services/motion/DirectCallingService;I)I

    goto/16 :goto_10

    .line 455
    :cond_2f
    sget-boolean v17, Lcom/vivo/services/motion/AllConfig;->mIsYASVirtGryo:Z

    if-nez v17, :cond_30

    sget-boolean v17, Lcom/vivo/services/motion/AllConfig;->mIsADSPAKMVirtGryo:Z

    if-eqz v17, :cond_32

    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService;->callVibrateSetting:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_32

    .line 456
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x3fe999999999999aL    # 0.8

    cmpl-double v17, v18, v20

    if-lez v17, :cond_31

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v17, v0

    const/16 v18, 0x2

    aget v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    cmpl-double v17, v18, v20

    if-lez v17, :cond_31

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x3fd999999999999aL    # 0.4

    cmpl-double v17, v18, v20

    if-lez v17, :cond_31

    .line 458
    const-string v17, "DirectCallingService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[PG_Data]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ":"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v19, v0

    const/16 v20, 0x2

    aget v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ":"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ":pick_cnt"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->pick_up_cnt:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "mag_vibrator_state: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v19, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->mag_vibrator_state:Z
    invoke-static/range {v19 .. v19}, Lcom/vivo/services/motion/DirectCallingService;->access$1500(Lcom/vivo/services/motion/DirectCallingService;)Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "VibratorState: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v19, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->VibratorState:I
    invoke-static/range {v19 .. v19}, Lcom/vivo/services/motion/DirectCallingService;->access$300(Lcom/vivo/services/motion/DirectCallingService;)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    const/16 v17, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v18, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->VibratorState:I
    invoke-static/range {v18 .. v18}, Lcom/vivo/services/motion/DirectCallingService;->access$300(Lcom/vivo/services/motion/DirectCallingService;)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->mag_vibrator_state:Z
    invoke-static/range {v17 .. v17}, Lcom/vivo/services/motion/DirectCallingService;->access$1500(Lcom/vivo/services/motion/DirectCallingService;)Z

    move-result v17

    if-nez v17, :cond_28

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v18, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->ProximitState:I
    invoke-static/range {v18 .. v18}, Lcom/vivo/services/motion/DirectCallingService;->access$2700(Lcom/vivo/services/motion/DirectCallingService;)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->pick_up_cnt:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->pick_up_cnt:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->pick_up_cnt:I

    move/from16 v18, v0

    # setter for: Lcom/vivo/services/motion/DirectCallingService;->pick_up_cnt_motion:I
    invoke-static/range {v17 .. v18}, Lcom/vivo/services/motion/DirectCallingService;->access$2802(Lcom/vivo/services/motion/DirectCallingService;I)I

    goto/16 :goto_10

    .line 463
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->pick_up_cnt:I

    # setter for: Lcom/vivo/services/motion/DirectCallingService;->pick_up_cnt_motion:I
    invoke-static/range {v17 .. v18}, Lcom/vivo/services/motion/DirectCallingService;->access$2802(Lcom/vivo/services/motion/DirectCallingService;I)I

    goto/16 :goto_10

    .line 466
    :cond_32
    sget-boolean v17, Lcom/vivo/services/motion/AllConfig;->mIsADSPAKMVirtGryo:Z

    if-eqz v17, :cond_34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService;->callVibrateSetting:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_34

    .line 467
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x3fe0000000000000L    # 0.5

    cmpl-double v17, v18, v20

    if-lez v17, :cond_33

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v17, v0

    const/16 v18, 0x2

    aget v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x3fe0000000000000L    # 0.5

    cmpl-double v17, v18, v20

    if-lez v17, :cond_33

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x3fd999999999999aL    # 0.4

    cmpl-double v17, v18, v20

    if-lez v17, :cond_33

    .line 469
    const-string v17, "DirectCallingService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[PG_Data]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ":"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v19, v0

    const/16 v20, 0x2

    aget v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ":"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ":pick_cnt"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->pick_up_cnt:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "mag_vibrator_state: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v19, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->mag_vibrator_state:Z
    invoke-static/range {v19 .. v19}, Lcom/vivo/services/motion/DirectCallingService;->access$1500(Lcom/vivo/services/motion/DirectCallingService;)Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "VibratorState: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v19, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->VibratorState:I
    invoke-static/range {v19 .. v19}, Lcom/vivo/services/motion/DirectCallingService;->access$300(Lcom/vivo/services/motion/DirectCallingService;)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    const/16 v17, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v18, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->VibratorState:I
    invoke-static/range {v18 .. v18}, Lcom/vivo/services/motion/DirectCallingService;->access$300(Lcom/vivo/services/motion/DirectCallingService;)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->mag_vibrator_state:Z
    invoke-static/range {v17 .. v17}, Lcom/vivo/services/motion/DirectCallingService;->access$1500(Lcom/vivo/services/motion/DirectCallingService;)Z

    move-result v17

    if-nez v17, :cond_28

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v18, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->ProximitState:I
    invoke-static/range {v18 .. v18}, Lcom/vivo/services/motion/DirectCallingService;->access$2700(Lcom/vivo/services/motion/DirectCallingService;)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->pick_up_cnt:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->pick_up_cnt:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->pick_up_cnt:I

    move/from16 v18, v0

    # setter for: Lcom/vivo/services/motion/DirectCallingService;->pick_up_cnt_motion:I
    invoke-static/range {v17 .. v18}, Lcom/vivo/services/motion/DirectCallingService;->access$2802(Lcom/vivo/services/motion/DirectCallingService;I)I

    goto/16 :goto_10

    .line 474
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->pick_up_cnt:I

    # setter for: Lcom/vivo/services/motion/DirectCallingService;->pick_up_cnt_motion:I
    invoke-static/range {v17 .. v18}, Lcom/vivo/services/motion/DirectCallingService;->access$2802(Lcom/vivo/services/motion/DirectCallingService;I)I

    goto/16 :goto_10

    .line 479
    :cond_34
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x3fe999999999999aL    # 0.8

    cmpl-double v17, v18, v20

    if-lez v17, :cond_36

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v17, v0

    const/16 v18, 0x2

    aget v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    cmpl-double v17, v18, v20

    if-lez v17, :cond_36

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x3fd999999999999aL    # 0.4

    cmpl-double v17, v18, v20

    if-lez v17, :cond_36

    .line 481
    const-string v17, "DirectCallingService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[PG_Data]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ":"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v19, v0

    const/16 v20, 0x2

    aget v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ":"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ":pick_cnt"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->pick_up_cnt:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->ProximitState:I
    invoke-static/range {v17 .. v17}, Lcom/vivo/services/motion/DirectCallingService;->access$2700(Lcom/vivo/services/motion/DirectCallingService;)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_35

    .line 483
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->pick_up_cnt:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->pick_up_cnt:I

    .line 484
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->pick_up_cnt:I

    move/from16 v18, v0

    # setter for: Lcom/vivo/services/motion/DirectCallingService;->pick_up_cnt_motion:I
    invoke-static/range {v17 .. v18}, Lcom/vivo/services/motion/DirectCallingService;->access$2802(Lcom/vivo/services/motion/DirectCallingService;I)I

    goto/16 :goto_10

    .line 488
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->pick_up_cnt:I

    # setter for: Lcom/vivo/services/motion/DirectCallingService;->pick_up_cnt_motion:I
    invoke-static/range {v17 .. v18}, Lcom/vivo/services/motion/DirectCallingService;->access$2802(Lcom/vivo/services/motion/DirectCallingService;I)I

    goto/16 :goto_10

    .line 521
    :catchall_1
    move-exception v17

    :try_start_3
    monitor-exit v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v17

    .line 534
    .end local v16    # "prop":Ljava/lang/String;
    :sswitch_4
    const/4 v13, 0x0

    .line 550
    .local v13, "mProximityThreshold":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->MotionDetSensorManager:Landroid/hardware/SensorManager;
    invoke-static/range {v17 .. v17}, Lcom/vivo/services/motion/DirectCallingService;->access$2500(Lcom/vivo/services/motion/DirectCallingService;)Landroid/hardware/SensorManager;

    move-result-object v17

    if-nez v17, :cond_37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Lcom/vivo/services/motion/DirectCallingService;->access$3400(Lcom/vivo/services/motion/DirectCallingService;)Landroid/content/Context;

    move-result-object v17

    if-eqz v17, :cond_37

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Lcom/vivo/services/motion/DirectCallingService;->access$3400(Lcom/vivo/services/motion/DirectCallingService;)Landroid/content/Context;

    move-result-object v17

    const-string v19, "sensor"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/hardware/SensorManager;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    # setter for: Lcom/vivo/services/motion/DirectCallingService;->MotionDetSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v0, v1}, Lcom/vivo/services/motion/DirectCallingService;->access$2502(Lcom/vivo/services/motion/DirectCallingService;Landroid/hardware/SensorManager;)Landroid/hardware/SensorManager;

    .line 554
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->MotionDetSensorManager:Landroid/hardware/SensorManager;
    invoke-static/range {v17 .. v17}, Lcom/vivo/services/motion/DirectCallingService;->access$2500(Lcom/vivo/services/motion/DirectCallingService;)Landroid/hardware/SensorManager;

    move-result-object v17

    if-eqz v17, :cond_38

    .line 556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v18, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->MotionDetSensorManager:Landroid/hardware/SensorManager;
    invoke-static/range {v18 .. v18}, Lcom/vivo/services/motion/DirectCallingService;->access$2500(Lcom/vivo/services/motion/DirectCallingService;)Landroid/hardware/SensorManager;

    move-result-object v18

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v18

    # setter for: Lcom/vivo/services/motion/DirectCallingService;->mProximitySensor:Landroid/hardware/Sensor;
    invoke-static/range {v17 .. v18}, Lcom/vivo/services/motion/DirectCallingService;->access$3502(Lcom/vivo/services/motion/DirectCallingService;Landroid/hardware/Sensor;)Landroid/hardware/Sensor;

    .line 558
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->mProximitySensor:Landroid/hardware/Sensor;
    invoke-static/range {v17 .. v17}, Lcom/vivo/services/motion/DirectCallingService;->access$3500(Lcom/vivo/services/motion/DirectCallingService;)Landroid/hardware/Sensor;

    move-result-object v17

    if-eqz v17, :cond_39

    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->mProximitySensor:Landroid/hardware/Sensor;
    invoke-static/range {v17 .. v17}, Lcom/vivo/services/motion/DirectCallingService;->access$3500(Lcom/vivo/services/motion/DirectCallingService;)Landroid/hardware/Sensor;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v17

    const/high16 v18, 0x40a00000    # 5.0f

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(FF)F

    move-result v13

    .line 562
    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    const/16 v19, 0x0

    cmpl-float v18, v18, v19

    if-ltz v18, :cond_3c

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    cmpg-float v18, v18, v13

    if-gez v18, :cond_3c

    const/4 v11, 0x0

    .local v11, "logic_value":I
    :goto_11
    move-object/from16 v0, v17

    # setter for: Lcom/vivo/services/motion/DirectCallingService;->ProximitState:I
    invoke-static {v0, v11}, Lcom/vivo/services/motion/DirectCallingService;->access$2702(Lcom/vivo/services/motion/DirectCallingService;I)I

    .line 564
    const-string v17, "DirectCallingService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "logic_value:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "last_prox:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->last_prox:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->last_prox:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v0, v11, :cond_2

    .line 569
    if-nez v11, :cond_3d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->last_prox:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3d

    .line 571
    # getter for: Lcom/vivo/services/motion/DirectCallingService;->mHandleLock:Ljava/lang/Object;
    invoke-static {}, Lcom/vivo/services/motion/DirectCallingService;->access$3300()Ljava/lang/Object;

    move-result-object v18

    monitor-enter v18

    .line 572
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->mServiceHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/vivo/services/motion/DirectCallingService;->access$3000(Lcom/vivo/services/motion/DirectCallingService;)Landroid/os/Handler;

    move-result-object v17

    if-eqz v17, :cond_3a

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->mServiceHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/vivo/services/motion/DirectCallingService;->access$3000(Lcom/vivo/services/motion/DirectCallingService;)Landroid/os/Handler;

    move-result-object v17

    const/16 v19, 0x1

    const-wide/16 v20, 0xc8

    move-object/from16 v0, v17

    move/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/hardware/SensorEvent;->timestamp:J

    move-wide/from16 v20, v0

    const-wide/32 v22, 0xf4240

    div-long v20, v20, v22

    move-object/from16 v0, v17

    move-wide/from16 v1, v20

    # setter for: Lcom/vivo/services/motion/DirectCallingService;->prox_away_time:J
    invoke-static {v0, v1, v2}, Lcom/vivo/services/motion/DirectCallingService;->access$3602(Lcom/vivo/services/motion/DirectCallingService;J)J

    .line 578
    :cond_3a
    monitor-exit v18
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 590
    :cond_3b
    :goto_12
    move-object/from16 v0, p0

    iput v11, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->last_prox:I

    goto/16 :goto_1

    .line 562
    .end local v11    # "logic_value":I
    :cond_3c
    const/4 v11, 0x1

    goto/16 :goto_11

    .line 578
    .restart local v11    # "logic_value":I
    :catchall_2
    move-exception v17

    :try_start_5
    monitor-exit v18
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v17

    .line 580
    :cond_3d
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v11, v0, :cond_3b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->last_prox:I

    move/from16 v17, v0

    if-nez v17, :cond_3b

    .line 582
    # getter for: Lcom/vivo/services/motion/DirectCallingService;->mHandleLock:Ljava/lang/Object;
    invoke-static {}, Lcom/vivo/services/motion/DirectCallingService;->access$3300()Ljava/lang/Object;

    move-result-object v18

    monitor-enter v18

    .line 583
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->mServiceHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/vivo/services/motion/DirectCallingService;->access$3000(Lcom/vivo/services/motion/DirectCallingService;)Landroid/os/Handler;

    move-result-object v17

    if-eqz v17, :cond_3e

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->mServiceHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/vivo/services/motion/DirectCallingService;->access$3000(Lcom/vivo/services/motion/DirectCallingService;)Landroid/os/Handler;

    move-result-object v17

    const/16 v19, 0x3

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    move-object/from16 v17, v0

    # getter for: Lcom/vivo/services/motion/DirectCallingService;->mServiceHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/vivo/services/motion/DirectCallingService;->access$3000(Lcom/vivo/services/motion/DirectCallingService;)Landroid/os/Handler;

    move-result-object v17

    const/16 v19, 0x3

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 588
    :cond_3e
    monitor-exit v18

    goto :goto_12

    :catchall_3
    move-exception v17

    monitor-exit v18
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v17

    .line 174
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x4 -> :sswitch_3
        0x8 -> :sswitch_4
        0xb -> :sswitch_1
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public resetDataBuf()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 602
    const/4 v0, 0x0

    .local v0, "tem_idx":I
    :goto_0
    const/16 v1, 0x40

    if-ge v0, v1, :cond_0

    .line 604
    iget-object v1, p0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->data_collect_buf:[[F

    aget-object v1, v1, v0

    aput v3, v1, v4

    .line 605
    iget-object v1, p0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->data_collect_buf:[[F

    aget-object v1, v1, v0

    const/4 v2, 0x1

    aput v3, v1, v2

    .line 606
    iget-object v1, p0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->data_collect_buf:[[F

    aget-object v1, v1, v0

    const/4 v2, 0x2

    aput v3, v1, v2

    .line 602
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 608
    :cond_0
    iput v4, p0, Lcom/vivo/services/motion/DirectCallingService$MotionSensorEventListener;->data_collect_idx:I

    .line 610
    const-string v1, "DirectCallingService"

    const-string v2, "resetDataBuf"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    return-void
.end method
