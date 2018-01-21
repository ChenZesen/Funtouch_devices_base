.class final Lcom/android/server/AlarmManagerService$AlarmAlign;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AlarmAlign"
.end annotation


# instance fields
.field public DEBUG:Z

.field public MEX:J

.field public final MSG_SCREEN_OFF:I

.field public final MSG_SCREEN_ON:I

.field public RUN:Z

.field public SCREEN_ON:Z

.field public final START:I

.field public STEP:J

.field public final STOP:I

.field public final TAG:Ljava/lang/String;

.field public final TAG_ACTION:Ljava/lang/String;

.field public final TAG_A_DEBUG:Ljava/lang/String;

.field public final TAG_CMD:Ljava/lang/String;

.field public final TAG_PKG:Ljava/lang/String;

.field public final TAG_SCREEN:Ljava/lang/String;

.field public final TAG_SIZE:Ljava/lang/String;

.field public final TAG_TIME:Ljava/lang/String;

.field public final TAG_TIME_EX:Ljava/lang/String;

.field public mActionList:[[Ljava/lang/String;

.field public mAlign_NonWake_Set:J

.field public mAlign_Set:J

.field public mBatch:Lcom/android/server/AlarmManagerService$Batch;

.field public mNextNonWakeup_Set:J

.field public mNextTime:J

.field public mNextWakeup_Set:J

.field public mPkgList:[Ljava/lang/String;

.field public mWake_Set:Z

.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 3345
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$AlarmAlign;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3346
    const-string v0, "AlarmAlign"

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmAlign;->TAG:Ljava/lang/String;

    .line 3347
    const-string v0, "com.vivo.pem"

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmAlign;->TAG_CMD:Ljava/lang/String;

    .line 3348
    const-string v0, "time"

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmAlign;->TAG_TIME:Ljava/lang/String;

    .line 3349
    const-string v0, "ex_time"

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmAlign;->TAG_TIME_EX:Ljava/lang/String;

    .line 3350
    const-string v0, "adebug"

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmAlign;->TAG_A_DEBUG:Ljava/lang/String;

    .line 3351
    const-string v0, "screen"

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmAlign;->TAG_SCREEN:Ljava/lang/String;

    .line 3352
    const-string v0, "size"

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmAlign;->TAG_SIZE:Ljava/lang/String;

    .line 3353
    const-string v0, "pkg"

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmAlign;->TAG_PKG:Ljava/lang/String;

    .line 3354
    const-string v0, "action"

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmAlign;->TAG_ACTION:Ljava/lang/String;

    .line 3355
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/AlarmManagerService$AlarmAlign;->START:I

    .line 3356
    const/16 v0, -0x4e20

    iput v0, p0, Lcom/android/server/AlarmManagerService$AlarmAlign;->STOP:I

    .line 3357
    const/16 v0, -0x3011

    iput v0, p0, Lcom/android/server/AlarmManagerService$AlarmAlign;->MSG_SCREEN_ON:I

    .line 3358
    const/16 v0, -0x3012

    iput v0, p0, Lcom/android/server/AlarmManagerService$AlarmAlign;->MSG_SCREEN_OFF:I

    .line 3360
    iput-boolean v2, p0, Lcom/android/server/AlarmManagerService$AlarmAlign;->DEBUG:Z

    .line 3361
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$AlarmAlign;->STEP:J

    .line 3362
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$AlarmAlign;->MEX:J

    .line 3363
    iput-boolean v2, p0, Lcom/android/server/AlarmManagerService$AlarmAlign;->RUN:Z

    .line 3364
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/AlarmManagerService$AlarmAlign;->SCREEN_ON:Z

    .line 3365
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmAlign;->mPkgList:[Ljava/lang/String;

    .line 3368
    iput-wide v4, p0, Lcom/android/server/AlarmManagerService$AlarmAlign;->mAlign_Set:J

    .line 3369
    iput-wide v4, p0, Lcom/android/server/AlarmManagerService$AlarmAlign;->mAlign_NonWake_Set:J

    .line 3370
    iput-boolean v2, p0, Lcom/android/server/AlarmManagerService$AlarmAlign;->mWake_Set:Z

    .line 3371
    iput-wide v4, p0, Lcom/android/server/AlarmManagerService$AlarmAlign;->mNextWakeup_Set:J

    .line 3372
    iput-wide v4, p0, Lcom/android/server/AlarmManagerService$AlarmAlign;->mNextNonWakeup_Set:J

    .line 3374
    new-instance v0, Lcom/android/server/AlarmManagerService$Batch;

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$AlarmAlign;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/AlarmManagerService$Batch;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmAlign;->mBatch:Lcom/android/server/AlarmManagerService$Batch;

    return-void
.end method


# virtual methods
.method public addAlarm(IJJLandroid/app/PendingIntent;I)I
    .locals 20
    .param p1, "type"    # I
    .param p2, "when"    # J
    .param p4, "whenElapsed"    # J
    .param p6, "operation"    # Landroid/app/PendingIntent;
    .param p7, "flags"    # I

    .prologue
    .line 3414
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "AlarmAlign"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addAlarm pkg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p6 .. p6}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p6 .. p6}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", whenElapsed = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3415
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService$AlarmAlign;->isFilter(Landroid/app/PendingIntent;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3416
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "AlarmAlign"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addAlarm whenElapsed = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3417
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->mBatch:Lcom/android/server/AlarmManagerService$Batch;

    move-object/from16 v19, v0

    new-instance v2, Lcom/android/server/AlarmManagerService$Alarm;

    const-wide/16 v8, 0x0

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->MEX:J

    add-long v10, p4, v4

    const-wide/16 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-object/from16 v14, p6

    invoke-direct/range {v2 .. v18}, Lcom/android/server/AlarmManagerService$Alarm;-><init>(IJJJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;ILandroid/app/AlarmManager$AlarmClockInfo;I)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/server/AlarmManagerService$Batch;->add(Lcom/android/server/AlarmManagerService$Alarm;)Z

    .line 3418
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->DEBUG:Z

    if-eqz v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AlarmManagerService$AlarmAlign;->logMustBatch()V

    .line 3419
    :cond_2
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->mAlign_Set:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->mBatch:Lcom/android/server/AlarmManagerService$Batch;

    iget-wide v4, v4, Lcom/android/server/AlarmManagerService$Batch;->end:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->SCREEN_ON:Z

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mNextWakeup:J
    invoke-static {v4}, Lcom/android/server/AlarmManagerService;->access$1400(Lcom/android/server/AlarmManagerService;)J

    move-result-wide v4

    # invokes: Lcom/android/server/AlarmManagerService;->setLocked(IJ)V
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/AlarmManagerService;->access$1600(Lcom/android/server/AlarmManagerService;IJ)V

    .line 3420
    :cond_3
    or-int/lit8 p7, p7, 0x1

    .line 3422
    .end local p7    # "flags":I
    :cond_4
    return p7
.end method

.method public checkSet(IJ)J
    .locals 16
    .param p1, "type"    # I
    .param p2, "when"    # J

    .prologue
    .line 3457
    const/4 v5, 0x5

    move/from16 v0, p1

    if-ne v5, v0, :cond_1

    .line 3458
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "AlarmAlign"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkSet RTC_POWEROFF_WAKEUP, when = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p2

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-wide/from16 v8, p2

    .line 3488
    :goto_0
    return-wide v8

    .line 3462
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->SCREEN_ON:Z

    if-eqz v5, :cond_4

    .line 3463
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "AlarmAlign"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkSet SCREEN_ON, type = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", when = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p2

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3464
    :cond_2
    const-wide/16 v8, 0x0

    cmp-long v5, p2, v8

    if-gez v5, :cond_3

    const-wide/16 v8, 0x0

    goto :goto_0

    :cond_3
    move-wide/from16 v8, p2

    goto :goto_0

    .line 3467
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 3468
    .local v2, "curTime":J
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->mNextTime:J

    cmp-long v5, v2, v8

    if-ltz v5, :cond_5

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->mNextTime:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->STEP:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->mNextTime:J

    sub-long v12, v2, v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->STEP:J

    div-long/2addr v12, v14

    long-to-int v5, v12

    add-int/lit8 v5, v5, 0x1

    int-to-long v12, v5

    mul-long/2addr v10, v12

    add-long/2addr v8, v10

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->mNextTime:J

    .line 3470
    :cond_5
    and-int/lit8 v5, p1, 0x1

    if-eqz v5, :cond_a

    const/4 v4, 0x1

    .line 3471
    .local v4, "noWake":Z
    :goto_1
    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mNextWakeup:J
    invoke-static {v5}, Lcom/android/server/AlarmManagerService;->access$1400(Lcom/android/server/AlarmManagerService;)J

    move-result-wide p2

    .line 3473
    :cond_6
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->mNextTime:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->mNextTime:J

    cmp-long v5, p2, v8

    if-gez v5, :cond_b

    const-wide/16 v8, 0x0

    :goto_2
    add-long v6, v10, v8

    .line 3474
    .local v6, "setTime":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->mBatch:Lcom/android/server/AlarmManagerService$Batch;

    invoke-virtual {v5}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v5

    if-lez v5, :cond_8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->mBatch:Lcom/android/server/AlarmManagerService$Batch;

    iget-wide v8, v5, Lcom/android/server/AlarmManagerService$Batch;->end:J

    cmp-long v5, v8, v6

    if-gez v5, :cond_8

    .line 3475
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->DEBUG:Z

    if-eqz v5, :cond_7

    const-string v5, "AlarmAlign"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkSet OFF, hasMustWake = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->mBatch:Lcom/android/server/AlarmManagerService$Batch;

    iget-wide v10, v9, Lcom/android/server/AlarmManagerService$Batch;->end:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", setTime = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3476
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->mBatch:Lcom/android/server/AlarmManagerService$Batch;

    iget-wide v6, v5, Lcom/android/server/AlarmManagerService$Batch;->end:J

    .line 3479
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->DEBUG:Z

    if-eqz v5, :cond_9

    const-string v5, "AlarmAlign"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkSet OFF, type="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", when="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p2

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", set="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", now="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", next="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->mNextTime:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", align="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->mAlign_Set:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", nonAlign="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->mAlign_NonWake_Set:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mNextWakeup="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mNextWakeup:J
    invoke-static {v9}, Lcom/android/server/AlarmManagerService;->access$1400(Lcom/android/server/AlarmManagerService;)J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mNextNonWakeup="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J
    invoke-static {v9}, Lcom/android/server/AlarmManagerService;->access$1500(Lcom/android/server/AlarmManagerService;)J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3480
    :cond_9
    if-eqz v4, :cond_d

    .line 3481
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->mAlign_NonWake_Set:J

    cmp-long v5, v8, v6

    if-nez v5, :cond_c

    const-wide/16 v8, -0x1

    goto/16 :goto_0

    .line 3470
    .end local v4    # "noWake":Z
    .end local v6    # "setTime":J
    :cond_a
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 3473
    .restart local v4    # "noWake":Z
    :cond_b
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->mNextTime:J

    sub-long v8, p2, v8

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->STEP:J

    div-long/2addr v8, v12

    long-to-int v5, v8

    add-int/lit8 v5, v5, 0x1

    int-to-long v8, v5

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->STEP:J

    mul-long/2addr v8, v12

    goto/16 :goto_2

    .line 3482
    .restart local v6    # "setTime":J
    :cond_c
    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->mAlign_NonWake_Set:J

    :goto_3
    move-wide v8, v6

    .line 3488
    goto/16 :goto_0

    .line 3484
    :cond_d
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->mWake_Set:Z

    .line 3485
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->mAlign_Set:J

    cmp-long v5, v8, v6

    if-nez v5, :cond_e

    const-wide/16 v8, -0x1

    goto/16 :goto_0

    .line 3486
    :cond_e
    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->mAlign_Set:J

    goto :goto_3
.end method

.method public isFilter(Landroid/app/PendingIntent;)Z
    .locals 6
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v4, 0x1

    .line 3492
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v3

    .line 3493
    .local v3, "pkg":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/AlarmManagerService$AlarmAlign;->mPkgList:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_3

    .line 3494
    iget-object v5, p0, Lcom/android/server/AlarmManagerService$AlarmAlign;->mPkgList:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3495
    iget-object v5, p0, Lcom/android/server/AlarmManagerService$AlarmAlign;->mActionList:[[Ljava/lang/String;

    aget-object v5, v5, v1

    array-length v5, v5

    if-gtz v5, :cond_1

    .line 3504
    :cond_0
    :goto_1
    return v4

    .line 3496
    :cond_1
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3497
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 3498
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    iget-object v5, p0, Lcom/android/server/AlarmManagerService$AlarmAlign;->mActionList:[[Ljava/lang/String;

    aget-object v5, v5, v1

    array-length v5, v5

    if-ge v2, v5, :cond_2

    .line 3499
    iget-object v5, p0, Lcom/android/server/AlarmManagerService$AlarmAlign;->mActionList:[[Ljava/lang/String;

    aget-object v5, v5, v1

    aget-object v5, v5, v2

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3498
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3493
    .end local v0    # "action":Ljava/lang/String;
    .end local v2    # "j":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3504
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method logMustBatch()V
    .locals 6

    .prologue
    .line 3440
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmAlign;->mBatch:Lcom/android/server/AlarmManagerService$Batch;

    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3441
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmAlign;->mBatch:Lcom/android/server/AlarmManagerService$Batch;

    invoke-virtual {v2, v1}, Lcom/android/server/AlarmManagerService$Batch;->get(I)Lcom/android/server/AlarmManagerService$Alarm;

    move-result-object v0

    .line 3442
    .local v0, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget-boolean v2, p0, Lcom/android/server/AlarmManagerService$AlarmAlign;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "AlarmAlign"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "list mBatch["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] whenElapsed = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", maxWhenElapsed = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pkg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3440
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3444
    .end local v0    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_1
    return-void
.end method

.method public rebatch()V
    .locals 22

    .prologue
    .line 3402
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "AlarmAlign"

    const-string v3, "rebatch MustBatch"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3403
    :cond_0
    new-instance v20, Lcom/android/server/AlarmManagerService$Batch;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Lcom/android/server/AlarmManagerService$Batch;-><init>(Lcom/android/server/AlarmManagerService;)V

    .line 3404
    .local v20, "batch":Lcom/android/server/AlarmManagerService$Batch;
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->mBatch:Lcom/android/server/AlarmManagerService$Batch;

    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v2

    move/from16 v0, v21

    if-ge v0, v2, :cond_1

    .line 3405
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->mBatch:Lcom/android/server/AlarmManagerService$Batch;

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/android/server/AlarmManagerService$Batch;->get(I)Lcom/android/server/AlarmManagerService$Alarm;

    move-result-object v19

    .line 3406
    .local v19, "a":Lcom/android/server/AlarmManagerService$Alarm;
    move-object/from16 v0, v19

    iget-wide v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-object/from16 v0, v19

    iget v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-static {v2, v3, v4}, Lcom/android/server/AlarmManagerService;->convertToElapsed(JI)J

    move-result-wide v6

    .line 3407
    .local v6, "whenElapsed":J
    new-instance v2, Lcom/android/server/AlarmManagerService$Alarm;

    move-object/from16 v0, v19

    iget v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move-object/from16 v0, v19

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    const-wide/16 v8, 0x0

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->MEX:J

    add-long/2addr v10, v6

    const-wide/16 v12, 0x0

    move-object/from16 v0, v19

    iget-object v14, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v2 .. v18}, Lcom/android/server/AlarmManagerService$Alarm;-><init>(IJJJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;ILandroid/app/AlarmManager$AlarmClockInfo;I)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/android/server/AlarmManagerService$Batch;->add(Lcom/android/server/AlarmManagerService$Alarm;)Z

    .line 3404
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 3409
    .end local v6    # "whenElapsed":J
    .end local v19    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_1
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/AlarmManagerService$AlarmAlign;->mBatch:Lcom/android/server/AlarmManagerService$Batch;

    .line 3410
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->DEBUG:Z

    if-eqz v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AlarmManagerService$AlarmAlign;->logMustBatch()V

    .line 3411
    :cond_2
    return-void
.end method

.method remove(I)V
    .locals 4
    .param p1, "userHandle"    # I

    .prologue
    .line 3426
    iget-boolean v1, p0, Lcom/android/server/AlarmManagerService$AlarmAlign;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "AlarmAlign"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove userHandle = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3427
    :cond_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$AlarmAlign;->mBatch:Lcom/android/server/AlarmManagerService$Batch;

    invoke-virtual {v1, p1}, Lcom/android/server/AlarmManagerService$Batch;->remove(I)Z

    move-result v0

    .line 3428
    .local v0, "didRemove":Z
    iget-boolean v1, p0, Lcom/android/server/AlarmManagerService$AlarmAlign;->DEBUG:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$AlarmAlign;->logMustBatch()V

    .line 3429
    :cond_1
    return-void
.end method

.method remove(Landroid/app/PendingIntent;)V
    .locals 4
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 3432
    iget-boolean v1, p0, Lcom/android/server/AlarmManagerService$AlarmAlign;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "AlarmAlign"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove pkg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3433
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/AlarmManagerService$AlarmAlign;->isFilter(Landroid/app/PendingIntent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3434
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$AlarmAlign;->mBatch:Lcom/android/server/AlarmManagerService$Batch;

    invoke-virtual {v1, p1}, Lcom/android/server/AlarmManagerService$Batch;->remove(Landroid/app/PendingIntent;)Z

    move-result v0

    .line 3435
    .local v0, "didRemove":Z
    iget-boolean v1, p0, Lcom/android/server/AlarmManagerService$AlarmAlign;->DEBUG:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$AlarmAlign;->logMustBatch()V

    .line 3437
    .end local v0    # "didRemove":Z
    :cond_1
    return-void
.end method

.method remove(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3447
    iget-boolean v2, p0, Lcom/android/server/AlarmManagerService$AlarmAlign;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "AlarmAlign"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remove packageName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3448
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmAlign;->mPkgList:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 3449
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmAlign;->mPkgList:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3450
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmAlign;->mBatch:Lcom/android/server/AlarmManagerService$Batch;

    invoke-virtual {v2, p1}, Lcom/android/server/AlarmManagerService$Batch;->remove(Ljava/lang/String;)Z

    move-result v0

    .line 3451
    .local v0, "didRemove":Z
    iget-boolean v2, p0, Lcom/android/server/AlarmManagerService$AlarmAlign;->DEBUG:Z

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$AlarmAlign;->logMustBatch()V

    .line 3448
    .end local v0    # "didRemove":Z
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3454
    :cond_2
    return-void
.end method

.method public setConfig(ILandroid/app/PendingIntent;)Z
    .locals 23
    .param p1, "type"    # I
    .param p2, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 3508
    const-string v2, "com.vivo.pem"

    invoke-virtual/range {p2 .. p2}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 3509
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 3510
    .local v14, "curTime":J
    sparse-switch p1, :sswitch_data_0

    .line 3576
    const/4 v2, 0x0

    .line 3580
    .end local v14    # "curTime":J
    :goto_0
    return v2

    .line 3512
    .restart local v14    # "curTime":J
    :sswitch_0
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->SCREEN_ON:Z

    .line 3513
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "AlarmAlign"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "go to SCREEN_ON, curTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mAlign_Set = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->mAlign_Set:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mAlign_NonWake_Set = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->mAlign_NonWake_Set:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mNextWakeup = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mNextWakeup:J
    invoke-static {v4}, Lcom/android/server/AlarmManagerService;->access$1400(Lcom/android/server/AlarmManagerService;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mNextNonWakeup = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J
    invoke-static {v4}, Lcom/android/server/AlarmManagerService;->access$1500(Lcom/android/server/AlarmManagerService;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mNextTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->mNextTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3514
    :cond_0
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->mAlign_NonWake_Set:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J
    invoke-static {v4}, Lcom/android/server/AlarmManagerService;->access$1500(Lcom/android/server/AlarmManagerService;)J

    move-result-wide v4

    # invokes: Lcom/android/server/AlarmManagerService;->setLocked(IJ)V
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/AlarmManagerService;->access$1600(Lcom/android/server/AlarmManagerService;IJ)V

    .line 3515
    :cond_1
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->mAlign_Set:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mNextWakeup:J
    invoke-static {v4}, Lcom/android/server/AlarmManagerService;->access$1400(Lcom/android/server/AlarmManagerService;)J

    move-result-wide v4

    # invokes: Lcom/android/server/AlarmManagerService;->setLocked(IJ)V
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/AlarmManagerService;->access$1600(Lcom/android/server/AlarmManagerService;IJ)V

    .line 3578
    :cond_2
    :goto_1
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 3518
    :sswitch_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "AlarmAlign"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "go to SCREEN_OFF, curTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mNextTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->mNextTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mNextWakeup = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mNextWakeup:J
    invoke-static {v4}, Lcom/android/server/AlarmManagerService;->access$1400(Lcom/android/server/AlarmManagerService;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mNextNonWakeup = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J
    invoke-static {v4}, Lcom/android/server/AlarmManagerService;->access$1500(Lcom/android/server/AlarmManagerService;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mNextTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->mNextTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3519
    :cond_3
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->mAlign_Set:J

    .line 3520
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->mAlign_NonWake_Set:J

    .line 3521
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->SCREEN_ON:Z

    goto :goto_1

    .line 3524
    :sswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v19

    .line 3525
    .local v19, "intent":Landroid/content/Intent;
    const-string v2, "time"

    const-wide/32 v4, 0x493e0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->STEP:J

    .line 3526
    const-string v2, "ex_time"

    const-wide/16 v4, 0xbb8

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->MEX:J

    .line 3527
    const-string v2, "adebug"

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_6

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->DEBUG:Z

    .line 3528
    const-string v2, "screen"

    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->SCREEN_ON:Z

    .line 3529
    const-string v2, "size"

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    .line 3530
    .local v22, "size":I
    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    .line 3531
    .local v21, "pkglist":[Ljava/lang/String;
    move/from16 v0, v22

    new-array v11, v0, [[Ljava/lang/String;

    .line 3532
    .local v11, "actionList":[[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "AlarmAlign"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "START STEP = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->STEP:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", MEX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->MEX:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", SCREEN_ON = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->SCREEN_ON:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mPkgList size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3533
    :cond_4
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_3
    move/from16 v0, v18

    move/from16 v1, v22

    if-ge v0, v1, :cond_d

    .line 3534
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pkg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v21, v18

    .line 3535
    aget-object v2, v21, v18

    if-nez v2, :cond_7

    .line 3536
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->DEBUG:Z

    if-eqz v2, :cond_5

    const-string v2, "AlarmAlign"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error pkg list for index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3537
    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 3527
    .end local v11    # "actionList":[[Ljava/lang/String;
    .end local v18    # "i":I
    .end local v21    # "pkglist":[Ljava/lang/String;
    .end local v22    # "size":I
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 3539
    .restart local v11    # "actionList":[[Ljava/lang/String;
    .restart local v18    # "i":I
    .restart local v21    # "pkglist":[Ljava/lang/String;
    .restart local v22    # "size":I
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "size"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 3540
    .local v12, "actionSize":I
    new-array v2, v12, [Ljava/lang/String;

    aput-object v2, v11, v18

    .line 3541
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->DEBUG:Z

    if-eqz v2, :cond_8

    const-string v2, "AlarmAlign"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "START pkglist["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v21, v18

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", actionSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v11, v18

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3542
    :cond_8
    const/16 v20, 0x0

    .local v20, "k":I
    :goto_4
    move/from16 v0, v20

    if-ge v0, v12, :cond_c

    .line 3543
    aget-object v2, v11, v18

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "action"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v20

    .line 3544
    aget-object v2, v11, v18

    aget-object v2, v2, v20

    if-nez v2, :cond_a

    .line 3545
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->DEBUG:Z

    if-eqz v2, :cond_9

    const-string v2, "AlarmAlign"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error action list for pkg index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", action index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3546
    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 3548
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->DEBUG:Z

    if-eqz v2, :cond_b

    const-string v2, "AlarmAlign"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "START actionList["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v11, v18

    aget-object v4, v4, v20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3542
    :cond_b
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_4

    .line 3533
    :cond_c
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_3

    .line 3551
    .end local v12    # "actionSize":I
    .end local v20    # "k":I
    :cond_d
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->mActionList:[[Ljava/lang/String;

    .line 3552
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/AlarmManagerService$AlarmAlign;->mPkgList:[Ljava/lang/String;

    .line 3553
    const/16 v17, 0x0

    .local v17, "f":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_12

    .line 3554
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/AlarmManagerService$Batch;

    .line 3555
    .local v13, "b":Lcom/android/server/AlarmManagerService$Batch;
    const/16 v16, 0x0

    .local v16, "e":I
    :goto_6
    invoke-virtual {v13}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_11

    .line 3556
    move/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/android/server/AlarmManagerService$Batch;->get(I)Lcom/android/server/AlarmManagerService$Alarm;

    move-result-object v10

    .line 3557
    .local v10, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget v2, v10, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_e

    iget v3, v10, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    iget-wide v4, v10, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iget v2, v13, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_f

    const/4 v2, 0x0

    :goto_7
    int-to-long v6, v2

    add-long/2addr v4, v6

    iget-wide v6, v10, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget v2, v13, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_10

    const/4 v2, 0x0

    :goto_8
    int-to-long v8, v2

    add-long/2addr v6, v8

    iget-object v8, v10, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget v9, v13, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/AlarmManagerService$AlarmAlign;->addAlarm(IJJLandroid/app/PendingIntent;I)I

    .line 3555
    :cond_e
    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    .line 3557
    :cond_f
    const/16 v2, 0x2710

    goto :goto_7

    :cond_10
    const/16 v2, 0x2710

    goto :goto_8

    .line 3553
    .end local v10    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_11
    add-int/lit8 v17, v17, 0x1

    goto :goto_5

    .line 3560
    .end local v13    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .end local v16    # "e":I
    :cond_12
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->STEP:J

    add-long/2addr v2, v14

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->mNextTime:J

    .line 3561
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->RUN:Z

    .line 3563
    # getter for: Lcom/android/server/AlarmManagerService;->DEBUG_DUMP:Z
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$600()Z

    move-result v2

    if-eqz v2, :cond_13

    # getter for: Lcom/android/server/AlarmManagerService;->ALARM_ALIGN_DISABLED:Z
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$1700()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 3564
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->RUN:Z

    .line 3565
    const-string v2, "AlarmAlign"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " not enable alarm align run:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->RUN:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3567
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "AlarmAlign"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "go to start, mNextTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->mNextTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3570
    .end local v11    # "actionList":[[Ljava/lang/String;
    .end local v17    # "f":I
    .end local v18    # "i":I
    .end local v19    # "intent":Landroid/content/Intent;
    .end local v21    # "pkglist":[Ljava/lang/String;
    .end local v22    # "size":I
    :sswitch_3
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->RUN:Z

    .line 3571
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mNextWakeup:J
    invoke-static {v4}, Lcom/android/server/AlarmManagerService;->access$1400(Lcom/android/server/AlarmManagerService;)J

    move-result-wide v4

    # invokes: Lcom/android/server/AlarmManagerService;->setLocked(IJ)V
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/AlarmManagerService;->access$1600(Lcom/android/server/AlarmManagerService;IJ)V

    .line 3572
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J
    invoke-static {v4}, Lcom/android/server/AlarmManagerService;->access$1500(Lcom/android/server/AlarmManagerService;)J

    move-result-wide v4

    # invokes: Lcom/android/server/AlarmManagerService;->setLocked(IJ)V
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/AlarmManagerService;->access$1600(Lcom/android/server/AlarmManagerService;IJ)V

    .line 3573
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/AlarmManagerService$AlarmAlign;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "AlarmAlign"

    const-string v3, "go to stop!"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3580
    .end local v14    # "curTime":J
    :cond_14
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 3510
    nop

    :sswitch_data_0
    .sparse-switch
        -0x4e20 -> :sswitch_3
        -0x3012 -> :sswitch_1
        -0x3011 -> :sswitch_0
        -0x2710 -> :sswitch_2
    .end sparse-switch
.end method

.method public triggerAlarm(J)V
    .locals 9
    .param p1, "curTime"    # J

    .prologue
    .line 3378
    iget-boolean v4, p0, Lcom/android/server/AlarmManagerService$AlarmAlign;->SCREEN_ON:Z

    iput-boolean v4, p0, Lcom/android/server/AlarmManagerService$AlarmAlign;->mWake_Set:Z

    .line 3379
    iget-object v4, p0, Lcom/android/server/AlarmManagerService$AlarmAlign;->mBatch:Lcom/android/server/AlarmManagerService$Batch;

    iget-wide v4, v4, Lcom/android/server/AlarmManagerService$Batch;->end:J

    cmp-long v4, v4, p1

    if-gtz v4, :cond_4

    .line 3380
    const-wide v2, 0x7fffffffffffffffL

    .line 3381
    .local v2, "newEnd":J
    const/4 v1, 0x0

    .local v1, "i":I
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/server/AlarmManagerService$AlarmAlign;->mBatch:Lcom/android/server/AlarmManagerService$Batch;

    iget-object v4, v4, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 3382
    iget-object v4, p0, Lcom/android/server/AlarmManagerService$AlarmAlign;->mBatch:Lcom/android/server/AlarmManagerService$Batch;

    iget-object v4, v4, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3383
    .local v0, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    cmp-long v4, v4, p1

    if-gtz v4, :cond_1

    .line 3384
    iget-object v4, p0, Lcom/android/server/AlarmManagerService$AlarmAlign;->mBatch:Lcom/android/server/AlarmManagerService$Batch;

    iget-object v4, v4, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3385
    iget-boolean v4, p0, Lcom/android/server/AlarmManagerService$AlarmAlign;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "AlarmAlign"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "triggerAlarm v MustWakeAlarm whenElapsed = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", pkg = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v6}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", action = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v6}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", maxWhenElapsed = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3387
    :cond_1
    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    cmp-long v4, v4, v2

    if-gez v4, :cond_2

    iget-wide v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 3388
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3391
    .end local v0    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_3
    iget-object v4, p0, Lcom/android/server/AlarmManagerService$AlarmAlign;->mBatch:Lcom/android/server/AlarmManagerService$Batch;

    iput-wide v2, v4, Lcom/android/server/AlarmManagerService$Batch;->end:J

    .line 3393
    .end local v1    # "i":I
    .end local v2    # "newEnd":J
    :cond_4
    return-void
.end method

.method public triggerAlarmEnd(JZII)V
    .locals 5
    .param p1, "curTime"    # J
    .param p3, "hasWakeup"    # Z
    .param p4, "size"    # I
    .param p5, "why"    # I

    .prologue
    .line 3396
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService$AlarmAlign;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmAlign;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mAlarmAlign:Lcom/android/server/AlarmManagerService$AlarmAlign;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "AlarmAlign"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "triggerAlarm v at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", hasWakeup="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mWake_Set="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/AlarmManagerService$AlarmAlign;->mWake_Set:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mNextWakeup="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmAlign;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mNextWakeup:J
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$1400(Lcom/android/server/AlarmManagerService;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mNextNonWakeup="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmAlign;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$1500(Lcom/android/server/AlarmManagerService;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mBatch.end="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmAlign;->mBatch:Lcom/android/server/AlarmManagerService$Batch;

    iget-wide v2, v2, Lcom/android/server/AlarmManagerService$Batch;->end:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", why="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3397
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService$AlarmAlign;->mWake_Set:Z

    if-eqz v0, :cond_2

    .line 3399
    :cond_1
    :goto_0
    return-void

    .line 3398
    :cond_2
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmAlign;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mNextWakeup:J
    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$1400(Lcom/android/server/AlarmManagerService;)J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmAlign;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmAlign;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mNextWakeup:J
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$1400(Lcom/android/server/AlarmManagerService;)J

    move-result-wide v2

    # invokes: Lcom/android/server/AlarmManagerService;->setLocked(IJ)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/AlarmManagerService;->access$1600(Lcom/android/server/AlarmManagerService;IJ)V

    goto :goto_0
.end method
