.class Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;
.super Ljava/lang/Object;
.source "PhoneScreenDownService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/motion/PhoneScreenDownService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhonePostureAnalyzer"
.end annotation


# static fields
.field private static final ANALYSIS_NUM:I = 0x5

.field private static final DISCARDED_NUM:I = 0x3

.field private static final SAMPLE_NUM:I = 0x14

.field private static final SAMPLE_TIME:I = 0x96


# instance fields
.field private cali_data_buf:[[F

.field private current_time:J

.field private last_time:J

.field private length_x_th:F

.field private length_z_th:F

.field private sample_count:I

.field private start_flag:Z

.field private start_time:J

.field private state_flag:Z

.field private static_flag:Z

.field final synthetic this$0:Lcom/vivo/services/motion/PhoneScreenDownService;

.field private triger_flag:Z

.field private width_y_th:F

.field private width_z_th:F

.field private z_th:F


# direct methods
.method public constructor <init>(Lcom/vivo/services/motion/PhoneScreenDownService;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 154
    iput-object p1, p0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->this$0:Lcom/vivo/services/motion/PhoneScreenDownService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    const/16 v0, 0x14

    const/4 v1, 0x3

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->cali_data_buf:[[F

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->start_flag:Z

    .line 140
    iput-boolean v3, p0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->state_flag:Z

    .line 141
    iput-boolean v3, p0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->static_flag:Z

    .line 142
    iput-boolean v3, p0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->triger_flag:Z

    .line 143
    iput v3, p0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->sample_count:I

    .line 144
    iput-wide v4, p0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->start_time:J

    .line 145
    iput-wide v4, p0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->last_time:J

    .line 146
    iput-wide v4, p0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->current_time:J

    .line 147
    iput v2, p0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->z_th:F

    .line 148
    iput v2, p0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->width_y_th:F

    .line 149
    iput v2, p0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->width_z_th:F

    .line 150
    iput v2, p0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->length_x_th:F

    .line 151
    iput v2, p0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->length_z_th:F

    .line 161
    return-void
.end method

.method static synthetic access$200(Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;Landroid/hardware/SensorEvent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;
    .param p1, "x1"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->judge(Landroid/hardware/SensorEvent;)Z

    move-result v0

    return v0
.end method

.method private judge(Landroid/hardware/SensorEvent;)Z
    .locals 18
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 185
    const/4 v14, 0x3

    new-array v4, v14, [F

    .line 186
    .local v4, "analysis_max":[F
    const/4 v14, 0x3

    new-array v5, v14, [F

    .line 187
    .local v5, "analysis_min":[F
    const/4 v14, 0x3

    new-array v8, v14, [F

    .line 188
    .local v8, "analysis_sum":[F
    const/4 v14, 0x3

    new-array v3, v14, [F

    .line 189
    .local v3, "analysis_abs_max":[F
    const/4 v14, 0x5

    new-array v6, v14, [F

    .line 190
    .local v6, "analysis_posture_x_angle":[F
    const/4 v14, 0x5

    new-array v7, v14, [F

    .line 192
    .local v7, "analysis_posture_y_angle":[F
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->triger_flag:Z

    if-eqz v14, :cond_0

    .line 194
    const/4 v14, 0x1

    .line 378
    :goto_0
    return v14

    .line 197
    :cond_0
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->state_flag:Z

    .line 198
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->static_flag:Z

    .line 200
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->start_flag:Z

    if-eqz v14, :cond_1

    .line 202
    move-object/from16 v0, p1

    iget-wide v14, v0, Landroid/hardware/SensorEvent;->timestamp:J

    const-wide/32 v16, 0xf4240

    div-long v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->start_time:J

    .line 203
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->start_flag:Z

    .line 206
    :cond_1
    move-object/from16 v0, p1

    iget-wide v14, v0, Landroid/hardware/SensorEvent;->timestamp:J

    const-wide/32 v16, 0xf4240

    div-long v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->current_time:J

    .line 207
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->current_time:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->last_time:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    const-wide/16 v16, 0x5

    cmp-long v14, v14, v16

    if-gez v14, :cond_3

    .line 209
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->last_time:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->current_time:J

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-lez v14, :cond_2

    .line 211
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->current_time:J

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->last_time:J

    .line 212
    const-string v14, "PhoneScreenDownService"

    const-string v15, "last_time is bigger than current_time."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_2
    const/4 v14, 0x1

    goto :goto_0

    .line 216
    :cond_3
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->current_time:J

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->last_time:J

    .line 218
    const/16 v12, 0x13

    .local v12, "m":I
    :goto_1
    if-lez v12, :cond_5

    .line 220
    const/4 v13, 0x0

    .local v13, "n":I
    :goto_2
    const/4 v14, 0x3

    if-ge v13, v14, :cond_4

    .line 222
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->cali_data_buf:[[F

    aget-object v14, v14, v12

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->cali_data_buf:[[F

    add-int/lit8 v16, v12, -0x1

    aget-object v15, v15, v16

    aget v15, v15, v13

    aput v15, v14, v13

    .line 220
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 218
    :cond_4
    add-int/lit8 v12, v12, -0x1

    goto :goto_1

    .line 225
    .end local v13    # "n":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->cali_data_buf:[[F

    const/4 v15, 0x0

    aget-object v14, v14, v15

    const/4 v15, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget v16, v16, v17

    aput v16, v14, v15

    .line 226
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->cali_data_buf:[[F

    const/4 v15, 0x0

    aget-object v14, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v16, v0

    const/16 v17, 0x1

    aget v16, v16, v17

    aput v16, v14, v15

    .line 227
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->cali_data_buf:[[F

    const/4 v15, 0x0

    aget-object v14, v14, v15

    const/4 v15, 0x2

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v16, v0

    const/16 v17, 0x2

    aget v16, v16, v17

    aput v16, v14, v15

    .line 229
    move-object/from16 v0, p0

    iget v14, v0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->sample_count:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->sample_count:I

    .line 231
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->current_time:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->start_time:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    const-wide/16 v16, 0x96

    cmp-long v14, v14, v16

    if-lez v14, :cond_6

    .line 233
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->this$0:Lcom/vivo/services/motion/PhoneScreenDownService;

    # getter for: Lcom/vivo/services/motion/PhoneScreenDownService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v14}, Lcom/vivo/services/motion/PhoneScreenDownService;->access$400(Lcom/vivo/services/motion/PhoneScreenDownService;)Landroid/os/Handler;

    move-result-object v14

    if-eqz v14, :cond_6

    .line 235
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->this$0:Lcom/vivo/services/motion/PhoneScreenDownService;

    # getter for: Lcom/vivo/services/motion/PhoneScreenDownService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v14}, Lcom/vivo/services/motion/PhoneScreenDownService;->access$400(Lcom/vivo/services/motion/PhoneScreenDownService;)Landroid/os/Handler;

    move-result-object v14

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 236
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->triger_flag:Z

    .line 237
    const-string v14, "PhoneScreenDownService"

    const-string v15, "time is out of threshold"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 242
    :cond_6
    move-object/from16 v0, p0

    iget v14, v0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->sample_count:I

    const/16 v15, 0x14

    if-le v14, v15, :cond_7

    .line 244
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->this$0:Lcom/vivo/services/motion/PhoneScreenDownService;

    # getter for: Lcom/vivo/services/motion/PhoneScreenDownService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v14}, Lcom/vivo/services/motion/PhoneScreenDownService;->access$400(Lcom/vivo/services/motion/PhoneScreenDownService;)Landroid/os/Handler;

    move-result-object v14

    if-eqz v14, :cond_8

    .line 246
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->this$0:Lcom/vivo/services/motion/PhoneScreenDownService;

    # getter for: Lcom/vivo/services/motion/PhoneScreenDownService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v14}, Lcom/vivo/services/motion/PhoneScreenDownService;->access$400(Lcom/vivo/services/motion/PhoneScreenDownService;)Landroid/os/Handler;

    move-result-object v14

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 247
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->triger_flag:Z

    .line 248
    const-string v14, "PhoneScreenDownService"

    const-string v15, "sample number is out of threshold"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 252
    :cond_7
    move-object/from16 v0, p0

    iget v14, v0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->sample_count:I

    const/16 v15, 0x8

    if-ge v14, v15, :cond_8

    .line 254
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 257
    :cond_8
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_3
    const/4 v14, 0x3

    if-ge v11, v14, :cond_c

    .line 259
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->cali_data_buf:[[F

    const/4 v15, 0x0

    aget-object v14, v14, v15

    aget v14, v14, v11

    aput v14, v4, v11

    .line 260
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->cali_data_buf:[[F

    const/4 v15, 0x0

    aget-object v14, v14, v15

    aget v14, v14, v11

    aput v14, v5, v11

    .line 261
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->cali_data_buf:[[F

    const/4 v15, 0x0

    aget-object v14, v14, v15

    aget v14, v14, v11

    aput v14, v8, v11

    .line 262
    const/4 v10, 0x1

    .local v10, "i":I
    :goto_4
    const/4 v14, 0x5

    if-ge v10, v14, :cond_b

    .line 264
    aget v14, v4, v11

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->cali_data_buf:[[F

    aget-object v15, v15, v10

    aget v15, v15, v11

    cmpg-float v14, v14, v15

    if-gez v14, :cond_9

    .line 266
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->cali_data_buf:[[F

    aget-object v14, v14, v10

    aget v14, v14, v11

    aput v14, v4, v11

    .line 269
    :cond_9
    aget v14, v5, v11

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->cali_data_buf:[[F

    aget-object v15, v15, v10

    aget v15, v15, v11

    cmpl-float v14, v14, v15

    if-lez v14, :cond_a

    .line 271
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->cali_data_buf:[[F

    aget-object v14, v14, v10

    aget v14, v14, v11

    aput v14, v5, v11

    .line 273
    :cond_a
    aget v14, v8, v11

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->cali_data_buf:[[F

    const/16 v16, 0x0

    aget-object v15, v15, v16

    aget v15, v15, v11

    add-float/2addr v14, v15

    aput v14, v8, v11

    .line 262
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 257
    :cond_b
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 277
    .end local v10    # "i":I
    :cond_c
    const/4 v14, 0x0

    aget v14, v4, v14

    const/4 v15, 0x0

    aget v15, v5, v15

    sub-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    float-to-double v14, v14

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    cmpg-double v14, v14, v16

    if-gez v14, :cond_d

    const/4 v14, 0x1

    aget v14, v4, v14

    const/4 v15, 0x1

    aget v15, v5, v15

    sub-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    float-to-double v14, v14

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    cmpg-double v14, v14, v16

    if-gez v14, :cond_d

    const/4 v14, 0x2

    aget v14, v4, v14

    const/4 v15, 0x2

    aget v15, v5, v15

    sub-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    const/high16 v15, 0x3f800000    # 1.0f

    cmpg-float v14, v14, v15

    if-gez v14, :cond_d

    .line 279
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->static_flag:Z

    .line 284
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->static_flag:Z

    if-eqz v14, :cond_11

    .line 286
    const/4 v14, 0x0

    aget v14, v8, v14

    const/high16 v15, 0x40a00000    # 5.0f

    div-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->length_x_th:F

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    cmpg-float v14, v14, v15

    if-gez v14, :cond_f

    const/4 v14, 0x1

    aget v14, v8, v14

    const/high16 v15, 0x40a00000    # 5.0f

    div-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->width_y_th:F

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    cmpg-float v14, v14, v15

    if-gez v14, :cond_f

    const/4 v14, 0x2

    aget v14, v8, v14

    const/high16 v15, 0x40a00000    # 5.0f

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->z_th:F

    cmpg-float v14, v14, v15

    if-gez v14, :cond_f

    .line 290
    const/4 v14, 0x0

    aget v14, v8, v14

    const/4 v15, 0x2

    aget v15, v8, v15

    div-float/2addr v14, v15

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->asin(D)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    const-wide v16, 0x4066800000000000L    # 180.0

    mul-double v14, v14, v16

    const-wide v16, 0x400921fb4d12d84aL    # 3.1415926

    div-double v14, v14, v16

    double-to-float v14, v14

    sput v14, Lcom/vivo/services/motion/AllConfig;->POSTURE_X_ANGLE:F

    .line 291
    const/4 v14, 0x1

    aget v14, v8, v14

    const/4 v15, 0x2

    aget v15, v8, v15

    div-float/2addr v14, v15

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->asin(D)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    const-wide v16, 0x4066800000000000L    # 180.0

    mul-double v14, v14, v16

    const-wide v16, 0x400921fb4d12d84aL    # 3.1415926

    div-double v14, v14, v16

    double-to-float v14, v14

    sput v14, Lcom/vivo/services/motion/AllConfig;->POSTURE_Y_ANGLE:F

    .line 292
    sget v14, Lcom/vivo/services/motion/AllConfig;->POSTURE_X_ANGLE:F

    sget v15, Lcom/vivo/services/motion/AllConfig;->REMIND_ANGLE:F

    cmpl-float v14, v14, v15

    if-gtz v14, :cond_e

    sget v14, Lcom/vivo/services/motion/AllConfig;->POSTURE_Y_ANGLE:F

    sget v15, Lcom/vivo/services/motion/AllConfig;->REMIND_ANGLE:F

    cmpl-float v14, v14, v15

    if-lez v14, :cond_10

    .line 294
    :cond_e
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->state_flag:Z

    .line 300
    :goto_5
    const-string v14, "PhoneScreenDownService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " AllConfig.POSTURE_X_ANGLE:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget v16, Lcom/vivo/services/motion/AllConfig;->POSTURE_X_ANGLE:F

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " AllConfig.POSTURE_Y_ANGLE:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget v16, Lcom/vivo/services/motion/AllConfig;->POSTURE_Y_ANGLE:F

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " state_flag:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->static_flag:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_f
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->state_flag:Z

    if-eqz v14, :cond_1b

    .line 370
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->this$0:Lcom/vivo/services/motion/PhoneScreenDownService;

    # getter for: Lcom/vivo/services/motion/PhoneScreenDownService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v14}, Lcom/vivo/services/motion/PhoneScreenDownService;->access$400(Lcom/vivo/services/motion/PhoneScreenDownService;)Landroid/os/Handler;

    move-result-object v14

    if-eqz v14, :cond_1b

    .line 372
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->this$0:Lcom/vivo/services/motion/PhoneScreenDownService;

    # getter for: Lcom/vivo/services/motion/PhoneScreenDownService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v14}, Lcom/vivo/services/motion/PhoneScreenDownService;->access$400(Lcom/vivo/services/motion/PhoneScreenDownService;)Landroid/os/Handler;

    move-result-object v14

    const/4 v15, 0x3

    invoke-virtual {v14, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 373
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->triger_flag:Z

    .line 374
    const-string v14, "PhoneScreenDownService"

    const-string v15, "phone posture analysis finish."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 298
    :cond_10
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->state_flag:Z

    goto :goto_5

    .line 305
    :cond_11
    const/4 v14, 0x0

    aget v14, v4, v14

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    const/4 v15, 0x0

    aget v15, v5, v15

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    cmpl-float v14, v14, v15

    if-lez v14, :cond_12

    .line 307
    const/4 v14, 0x0

    const/4 v15, 0x0

    aget v15, v4, v15

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    aput v15, v3, v14

    .line 314
    :goto_7
    const/4 v14, 0x1

    aget v14, v4, v14

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    const/4 v15, 0x1

    aget v15, v5, v15

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    cmpl-float v14, v14, v15

    if-lez v14, :cond_13

    .line 316
    const/4 v14, 0x1

    const/4 v15, 0x1

    aget v15, v4, v15

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    aput v15, v3, v14

    .line 323
    :goto_8
    const/4 v14, 0x2

    aget v14, v4, v14

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    const/4 v15, 0x2

    aget v15, v5, v15

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    cmpl-float v14, v14, v15

    if-lez v14, :cond_14

    .line 325
    const/4 v14, 0x2

    const/4 v15, 0x2

    aget v15, v4, v15

    aput v15, v3, v14

    .line 332
    :goto_9
    const/4 v14, 0x0

    aget v14, v3, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->length_x_th:F

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    cmpg-float v14, v14, v15

    if-gez v14, :cond_f

    const/4 v14, 0x1

    aget v14, v3, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->width_y_th:F

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    cmpg-float v14, v14, v15

    if-gez v14, :cond_f

    const/4 v14, 0x2

    aget v14, v3, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->z_th:F

    cmpg-float v14, v14, v15

    if-gez v14, :cond_f

    .line 336
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_a
    const/4 v14, 0x5

    if-ge v2, v14, :cond_15

    .line 338
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->cali_data_buf:[[F

    aget-object v14, v14, v2

    const/4 v15, 0x0

    aget v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->cali_data_buf:[[F

    aget-object v15, v15, v2

    const/16 v16, 0x2

    aget v15, v15, v16

    div-float/2addr v14, v15

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->asin(D)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    const-wide v16, 0x4066800000000000L    # 180.0

    mul-double v14, v14, v16

    const-wide v16, 0x400921fb4d12d84aL    # 3.1415926

    div-double v14, v14, v16

    double-to-float v14, v14

    aput v14, v6, v2

    .line 339
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->cali_data_buf:[[F

    aget-object v14, v14, v2

    const/4 v15, 0x1

    aget v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->cali_data_buf:[[F

    aget-object v15, v15, v2

    const/16 v16, 0x2

    aget v15, v15, v16

    div-float/2addr v14, v15

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->asin(D)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    const-wide v16, 0x4066800000000000L    # 180.0

    mul-double v14, v14, v16

    const-wide v16, 0x400921fb4d12d84aL    # 3.1415926

    div-double v14, v14, v16

    double-to-float v14, v14

    aput v14, v7, v2

    .line 336
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 311
    .end local v2    # "a":I
    :cond_12
    const/4 v14, 0x0

    const/4 v15, 0x0

    aget v15, v5, v15

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    aput v15, v3, v14

    goto/16 :goto_7

    .line 320
    :cond_13
    const/4 v14, 0x1

    const/4 v15, 0x1

    aget v15, v5, v15

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    aput v15, v3, v14

    goto/16 :goto_8

    .line 329
    :cond_14
    const/4 v14, 0x2

    const/4 v15, 0x2

    aget v15, v5, v15

    aput v15, v3, v14

    goto/16 :goto_9

    .line 342
    .restart local v2    # "a":I
    :cond_15
    const/4 v14, 0x0

    aget v14, v6, v14

    sput v14, Lcom/vivo/services/motion/AllConfig;->POSTURE_X_ANGLE:F

    .line 343
    const/4 v14, 0x0

    aget v14, v7, v14

    sput v14, Lcom/vivo/services/motion/AllConfig;->POSTURE_Y_ANGLE:F

    .line 344
    const/4 v9, 0x1

    .local v9, "b":I
    :goto_b
    const/4 v14, 0x5

    if-ge v9, v14, :cond_18

    .line 346
    sget v14, Lcom/vivo/services/motion/AllConfig;->POSTURE_X_ANGLE:F

    aget v15, v6, v9

    cmpg-float v14, v14, v15

    if-gez v14, :cond_16

    .line 348
    aget v14, v6, v9

    sput v14, Lcom/vivo/services/motion/AllConfig;->POSTURE_X_ANGLE:F

    .line 350
    :cond_16
    sget v14, Lcom/vivo/services/motion/AllConfig;->POSTURE_Y_ANGLE:F

    aget v15, v7, v9

    cmpg-float v14, v14, v15

    if-gez v14, :cond_17

    .line 352
    aget v14, v7, v9

    sput v14, Lcom/vivo/services/motion/AllConfig;->POSTURE_Y_ANGLE:F

    .line 344
    :cond_17
    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    .line 356
    :cond_18
    sget v14, Lcom/vivo/services/motion/AllConfig;->POSTURE_X_ANGLE:F

    sget v15, Lcom/vivo/services/motion/AllConfig;->REMIND_ANGLE:F

    cmpl-float v14, v14, v15

    if-gtz v14, :cond_19

    sget v14, Lcom/vivo/services/motion/AllConfig;->POSTURE_Y_ANGLE:F

    sget v15, Lcom/vivo/services/motion/AllConfig;->REMIND_ANGLE:F

    cmpl-float v14, v14, v15

    if-lez v14, :cond_1a

    .line 358
    :cond_19
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->state_flag:Z

    .line 364
    :goto_c
    const-string v14, "PhoneScreenDownService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "AllConfig.POSTURE_X_ANGLE: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget v16, Lcom/vivo/services/motion/AllConfig;->POSTURE_X_ANGLE:F

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "AllConfig.POSTURE_Y_ANGLE: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget v16, Lcom/vivo/services/motion/AllConfig;->POSTURE_Y_ANGLE:F

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " state_flag:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->static_flag:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 362
    :cond_1a
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->state_flag:Z

    goto :goto_c

    .line 378
    .end local v2    # "a":I
    .end local v9    # "b":I
    :cond_1b
    const/4 v14, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public reset()V
    .locals 10

    .prologue
    const/4 v3, 0x0

    const v4, -0x3ee32f1b    # -9.801f

    const-wide v8, 0x4066800000000000L    # 180.0

    const-wide v6, 0x400921fb4d12d84aL    # 3.1415926

    .line 165
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->start_flag:Z

    .line 166
    iput-boolean v3, p0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->triger_flag:Z

    .line 167
    iput v3, p0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->sample_count:I

    .line 168
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->last_time:J

    .line 170
    sget v2, Lcom/vivo/services/motion/AllConfig;->REMIND_ANGLE:F

    float-to-double v2, v2

    mul-double/2addr v2, v6

    div-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, v4

    iput v2, p0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->width_y_th:F

    .line 171
    sget v2, Lcom/vivo/services/motion/AllConfig;->REMIND_ANGLE:F

    float-to-double v2, v2

    mul-double/2addr v2, v6

    div-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, v4

    iput v2, p0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->length_x_th:F

    .line 172
    sget v2, Lcom/vivo/services/motion/AllConfig;->REMIND_ANGLE:F

    float-to-double v2, v2

    mul-double/2addr v2, v6

    div-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, v4

    sget v3, Lcom/vivo/services/motion/AllConfig;->REMIND_ANGLE:F

    float-to-double v4, v3

    mul-double/2addr v4, v6

    div-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v3, v4

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->z_th:F

    .line 174
    const/4 v0, 0x0

    .local v0, "m":I
    :goto_0
    const/16 v2, 0x14

    if-ge v0, v2, :cond_1

    .line 176
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_1
    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 178
    iget-object v2, p0, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->cali_data_buf:[[F

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aput v3, v2, v1

    .line 176
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 174
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 181
    .end local v1    # "n":I
    :cond_1
    return-void
.end method
