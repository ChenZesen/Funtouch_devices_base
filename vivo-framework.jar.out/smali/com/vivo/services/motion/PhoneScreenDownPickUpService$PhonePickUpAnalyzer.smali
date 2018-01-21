.class Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;
.super Ljava/lang/Object;
.source "PhoneScreenDownPickUpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/motion/PhoneScreenDownPickUpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhonePickUpAnalyzer"
.end annotation


# static fields
.field private static final DISCARDED_NUM:I = 0x5

.field private static final PICK_UP_ANGLE:I = 0x1e

.field private static final SAME_TIME_NUM:I = 0xa

.field private static final SAMPLE_NUM:I = 0x258

.field private static final SAMPLE_TIME:I = 0xbb8


# instance fields
.field private analysis_num:I

.field private angle_sum:[F

.field private current_time:F

.field private gyro_data_buf:[[F

.field private gyro_data_time_buf:[F

.field private last_time:F

.field private log_count:I

.field private pick_up_flag:Z

.field private pick_up_x_left_angle:F

.field private pick_up_y_left_angle:F

.field private same_time_count:I

.field private sample_count:I

.field final synthetic this$0:Lcom/vivo/services/motion/PhoneScreenDownPickUpService;

.field private time_sum:F

.field private triger_flag:Z


# direct methods
.method public constructor <init>(Lcom/vivo/services/motion/PhoneScreenDownPickUpService;)V
    .locals 4

    .prologue
    const/16 v3, 0x258

    const/4 v2, 0x3

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 134
    iput-object p1, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->this$0:Lcom/vivo/services/motion/PhoneScreenDownPickUpService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput v1, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->last_time:F

    .line 119
    iput v1, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->current_time:F

    .line 120
    iput v1, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->time_sum:F

    .line 121
    iput v1, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->pick_up_x_left_angle:F

    .line 122
    iput v1, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->pick_up_y_left_angle:F

    .line 123
    iput v0, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->log_count:I

    .line 124
    iput v0, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->same_time_count:I

    .line 125
    iput v0, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->sample_count:I

    .line 126
    iput v0, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->analysis_num:I

    .line 127
    iput-boolean v0, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->triger_flag:Z

    .line 128
    iput-boolean v0, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->pick_up_flag:Z

    .line 129
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->gyro_data_time_buf:[F

    .line 130
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->angle_sum:[F

    .line 131
    filled-new-array {v3, v2}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->gyro_data_buf:[[F

    .line 137
    return-void
.end method

.method static synthetic access$200(Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;Landroid/hardware/SensorEvent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;
    .param p1, "x1"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->judge(Landroid/hardware/SensorEvent;)Z

    move-result v0

    return v0
.end method

.method private judge(Landroid/hardware/SensorEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 172
    iget-boolean v5, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->triger_flag:Z

    if-eqz v5, :cond_0

    .line 174
    const/4 v5, 0x1

    .line 303
    :goto_0
    return v5

    .line 176
    :cond_0
    iget-wide v6, p1, Landroid/hardware/SensorEvent;->timestamp:J

    const-wide/32 v8, 0xf4240

    div-long/2addr v6, v8

    long-to-float v5, v6

    iput v5, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->current_time:F

    .line 177
    iget v5, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->current_time:F

    iget v6, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->last_time:F

    sub-float/2addr v5, v6

    const/high16 v6, 0x40a00000    # 5.0f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_4

    .line 179
    iget v5, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->last_time:F

    iget v6, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->current_time:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_2

    .line 181
    iget v5, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->same_time_count:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->same_time_count:I

    .line 182
    const-string v5, "PhoneScreenDownPickUpService"

    const-string v6, "last_time is same as current_time."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :goto_1
    iget v5, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->last_time:F

    iget v6, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->current_time:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    .line 191
    iget v5, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->current_time:F

    iput v5, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->last_time:F

    .line 192
    const-string v5, "PhoneScreenDownPickUpService"

    const-string v6, "last_time is bigger than current_time."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_1
    iget v5, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->same_time_count:I

    const/16 v6, 0xa

    if-ge v5, v6, :cond_3

    .line 197
    const/4 v5, 0x1

    goto :goto_0

    .line 186
    :cond_2
    const/4 v5, 0x0

    iput v5, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->same_time_count:I

    goto :goto_1

    .line 201
    :cond_3
    const/16 v5, 0xb

    iput v5, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->same_time_count:I

    .line 204
    :cond_4
    iget v5, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->current_time:F

    iput v5, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->last_time:F

    .line 206
    const/16 v3, 0x257

    .local v3, "m":I
    :goto_2
    if-lez v3, :cond_6

    .line 208
    const/4 v4, 0x0

    .local v4, "n":I
    :goto_3
    const/4 v5, 0x3

    if-ge v4, v5, :cond_5

    .line 210
    iget-object v5, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->gyro_data_buf:[[F

    aget-object v5, v5, v3

    iget-object v6, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->gyro_data_buf:[[F

    add-int/lit8 v7, v3, -0x1

    aget-object v6, v6, v7

    aget v6, v6, v4

    aput v6, v5, v4

    .line 211
    iget-object v5, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->gyro_data_time_buf:[F

    iget-object v6, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->gyro_data_time_buf:[F

    add-int/lit8 v7, v3, -0x1

    aget v6, v6, v7

    aput v6, v5, v3

    .line 208
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 206
    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 214
    .end local v4    # "n":I
    :cond_6
    iget-object v5, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->gyro_data_buf:[[F

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x0

    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    const/high16 v8, 0x43340000    # 180.0f

    mul-float/2addr v7, v8

    const v8, 0x40490fda

    div-float/2addr v7, v8

    aput v7, v5, v6

    .line 215
    iget-object v5, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->gyro_data_buf:[[F

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x1

    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    const/high16 v8, 0x43340000    # 180.0f

    mul-float/2addr v7, v8

    const v8, 0x40490fda

    div-float/2addr v7, v8

    aput v7, v5, v6

    .line 216
    iget-object v5, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->gyro_data_buf:[[F

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x2

    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v8, 0x2

    aget v7, v7, v8

    const/high16 v8, 0x43340000    # 180.0f

    mul-float/2addr v7, v8

    const v8, 0x40490fda

    div-float/2addr v7, v8

    aput v7, v5, v6

    .line 217
    iget-object v5, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->gyro_data_time_buf:[F

    const/4 v6, 0x0

    iget v7, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->current_time:F

    aput v7, v5, v6

    .line 219
    iget v5, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->log_count:I

    if-eqz v5, :cond_7

    iget v5, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->log_count:I

    const/16 v6, 0xa

    if-le v5, v6, :cond_8

    .line 221
    :cond_7
    const/4 v5, 0x0

    iput v5, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->log_count:I

    .line 222
    const-string v5, "PhoneScreenDownPickUpService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " x:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->gyro_data_buf:[[F

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x0

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " y:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->gyro_data_buf:[[F

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x1

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " z:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->gyro_data_buf:[[F

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x2

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_8
    iget v5, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->log_count:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->log_count:I

    .line 228
    iget v5, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->sample_count:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->sample_count:I

    .line 230
    iget v5, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->sample_count:I

    const/16 v6, 0x258

    if-le v5, v6, :cond_9

    .line 232
    const/16 v5, 0x258

    iput v5, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->sample_count:I

    .line 235
    :cond_9
    iget v5, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->sample_count:I

    const/4 v6, 0x5

    if-le v5, v6, :cond_a

    .line 237
    iget v5, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->sample_count:I

    add-int/lit8 v5, v5, -0x5

    iput v5, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->analysis_num:I

    .line 244
    :goto_4
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_5
    const/4 v5, 0x3

    if-ge v2, v5, :cond_b

    .line 246
    iget-object v5, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->angle_sum:[F

    const/4 v6, 0x0

    aput v6, v5, v2

    .line 244
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 241
    .end local v2    # "k":I
    :cond_a
    const/4 v5, 0x0

    iput v5, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->analysis_num:I

    goto :goto_4

    .line 248
    .restart local v2    # "k":I
    :cond_b
    const/4 v5, 0x0

    iput v5, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->time_sum:F

    .line 250
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget v5, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->analysis_num:I

    if-ge v0, v5, :cond_e

    .line 252
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_7
    const/4 v5, 0x3

    if-ge v1, v5, :cond_d

    .line 254
    iget v5, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->same_time_count:I

    const/16 v6, 0xa

    if-ge v5, v6, :cond_c

    .line 256
    iget-object v5, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->angle_sum:[F

    iget-object v6, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->angle_sum:[F

    aget v6, v6, v1

    iget-object v7, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->gyro_data_buf:[[F

    aget-object v7, v7, v0

    aget v7, v7, v1

    iget-object v8, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->gyro_data_time_buf:[F

    aget v8, v8, v0

    iget-object v9, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->gyro_data_time_buf:[F

    add-int/lit8 v10, v0, 0x1

    aget v9, v9, v10

    sub-float/2addr v8, v9

    mul-float/2addr v7, v8

    const/high16 v8, 0x447a0000    # 1000.0f

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    aput v6, v5, v1

    .line 252
    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 260
    :cond_c
    iget-object v5, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->angle_sum:[F

    iget-object v6, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->angle_sum:[F

    aget v6, v6, v1

    iget-object v7, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->gyro_data_buf:[[F

    aget-object v7, v7, v0

    aget v7, v7, v1

    const/high16 v8, 0x41200000    # 10.0f

    mul-float/2addr v7, v8

    const/high16 v8, 0x447a0000    # 1000.0f

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    aput v6, v5, v1

    goto :goto_8

    .line 264
    :cond_d
    iget-object v5, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->angle_sum:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->pick_up_x_left_angle:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_f

    .line 266
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->pick_up_flag:Z

    .line 267
    const-string v5, "PhoneScreenDownPickUpService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "x_axis angle_sum[0]:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->angle_sum:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    .end local v1    # "j":I
    :cond_e
    :goto_9
    iget-boolean v5, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->pick_up_flag:Z

    if-eqz v5, :cond_12

    .line 294
    iget-object v5, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->this$0:Lcom/vivo/services/motion/PhoneScreenDownPickUpService;

    # getter for: Lcom/vivo/services/motion/PhoneScreenDownPickUpService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/vivo/services/motion/PhoneScreenDownPickUpService;->access$400(Lcom/vivo/services/motion/PhoneScreenDownPickUpService;)Landroid/os/Handler;

    move-result-object v5

    if-eqz v5, :cond_12

    .line 296
    iget-object v5, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->this$0:Lcom/vivo/services/motion/PhoneScreenDownPickUpService;

    # getter for: Lcom/vivo/services/motion/PhoneScreenDownPickUpService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/vivo/services/motion/PhoneScreenDownPickUpService;->access$400(Lcom/vivo/services/motion/PhoneScreenDownPickUpService;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 297
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->triger_flag:Z

    .line 298
    const-string v5, "PhoneScreenDownPickUpService"

    const-string v6, "phone screen down pick up analysis finish."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 271
    .restart local v1    # "j":I
    :cond_f
    iget-object v5, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->angle_sum:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->pick_up_y_left_angle:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_10

    .line 273
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->pick_up_flag:Z

    .line 274
    const-string v5, "PhoneScreenDownPickUpService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "y_axis angle_sum[1]:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->angle_sum:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 278
    :cond_10
    iget v5, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->same_time_count:I

    const/16 v6, 0xa

    if-ge v5, v6, :cond_11

    .line 280
    iget v5, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->time_sum:F

    iget-object v6, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->gyro_data_time_buf:[F

    aget v6, v6, v0

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->gyro_data_time_buf:[F

    add-int/lit8 v7, v0, 0x1

    aget v6, v6, v7

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->time_sum:F

    .line 287
    :goto_a
    iget v5, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->time_sum:F

    const v6, 0x453b8000    # 3000.0f

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_e

    .line 250
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_6

    .line 284
    :cond_11
    iget v5, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->time_sum:F

    const/high16 v6, 0x41200000    # 10.0f

    add-float/2addr v5, v6

    iput v5, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->time_sum:F

    goto :goto_a

    .line 303
    .end local v1    # "j":I
    :cond_12
    const/4 v5, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public reset()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/high16 v4, 0x40a00000    # 5.0f

    const/4 v2, 0x0

    .line 141
    iput v3, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->last_time:F

    .line 142
    iput v2, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->log_count:I

    .line 143
    iput v2, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->same_time_count:I

    .line 144
    iput v2, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->sample_count:I

    .line 145
    iput v2, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->analysis_num:I

    .line 146
    iput-boolean v2, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->triger_flag:Z

    .line 147
    iput-boolean v2, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->pick_up_flag:Z

    .line 149
    const/4 v0, 0x0

    .local v0, "m":I
    :goto_0
    const/16 v2, 0x258

    if-ge v0, v2, :cond_1

    .line 151
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_1
    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 153
    iget-object v2, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->gyro_data_buf:[[F

    aget-object v2, v2, v0

    aput v3, v2, v1

    .line 151
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 155
    :cond_0
    iget-object v2, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->gyro_data_time_buf:[F

    aput v3, v2, v0

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    .end local v1    # "n":I
    :cond_1
    sget v2, Lcom/vivo/services/motion/AllConfig;->SWITCH_ANGLE:F

    sget v3, Lcom/vivo/services/motion/AllConfig;->POSTURE_Y_ANGLE:F

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->pick_up_x_left_angle:F

    .line 159
    iget v2, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->pick_up_x_left_angle:F

    cmpg-float v2, v2, v4

    if-gez v2, :cond_2

    .line 161
    iget v2, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->pick_up_x_left_angle:F

    add-float/2addr v2, v4

    iput v2, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->pick_up_x_left_angle:F

    .line 163
    :cond_2
    sget v2, Lcom/vivo/services/motion/AllConfig;->SWITCH_ANGLE:F

    sget v3, Lcom/vivo/services/motion/AllConfig;->POSTURE_X_ANGLE:F

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->pick_up_y_left_angle:F

    .line 164
    iget v2, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->pick_up_y_left_angle:F

    cmpg-float v2, v2, v4

    if-gez v2, :cond_3

    .line 166
    iget v2, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->pick_up_y_left_angle:F

    add-float/2addr v2, v4

    iput v2, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->pick_up_y_left_angle:F

    .line 168
    :cond_3
    return-void
.end method
