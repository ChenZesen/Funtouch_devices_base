.class public Lvivo/util/Spring;
.super Ljava/lang/Object;
.source "Spring.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvivo/util/Spring$1;,
        Lvivo/util/Spring$PhysicsState;
    }
.end annotation


# static fields
.field private static ID:I = 0x0

.field private static final MAX_DELTA_TIME_SEC:D = 0.064

.field private static final SOLVER_TIMESTEP_SEC:D = 0.001


# instance fields
.field private final mCurrentState:Lvivo/util/Spring$PhysicsState;

.field private mDisplacementFromRestThreshold:D

.field private mEndValue:D

.field private final mId:Ljava/lang/String;

.field private mOvershootClampingEnabled:Z

.field private final mPreviousState:Lvivo/util/Spring$PhysicsState;

.field private mRestSpeedThreshold:D

.field private mSpringConfig:Lvivo/util/SpringConfig;

.field private mStartValue:D

.field private final mTempState:Lvivo/util/Spring$PhysicsState;

.field private mTimeAccumulator:D

.field private mWasAtRest:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput v0, Lvivo/util/Spring;->ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide v2, 0x3f747ae147ae147bL    # 0.005

    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lvivo/util/Spring$PhysicsState;

    invoke-direct {v0, v1}, Lvivo/util/Spring$PhysicsState;-><init>(Lvivo/util/Spring$1;)V

    iput-object v0, p0, Lvivo/util/Spring;->mCurrentState:Lvivo/util/Spring$PhysicsState;

    .line 45
    new-instance v0, Lvivo/util/Spring$PhysicsState;

    invoke-direct {v0, v1}, Lvivo/util/Spring$PhysicsState;-><init>(Lvivo/util/Spring$1;)V

    iput-object v0, p0, Lvivo/util/Spring;->mPreviousState:Lvivo/util/Spring$PhysicsState;

    .line 46
    new-instance v0, Lvivo/util/Spring$PhysicsState;

    invoke-direct {v0, v1}, Lvivo/util/Spring$PhysicsState;-><init>(Lvivo/util/Spring$1;)V

    iput-object v0, p0, Lvivo/util/Spring;->mTempState:Lvivo/util/Spring$PhysicsState;

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lvivo/util/Spring;->mWasAtRest:Z

    .line 51
    iput-wide v2, p0, Lvivo/util/Spring;->mRestSpeedThreshold:D

    .line 52
    iput-wide v2, p0, Lvivo/util/Spring;->mDisplacementFromRestThreshold:D

    .line 53
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lvivo/util/Spring;->mTimeAccumulator:D

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "spring:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lvivo/util/Spring;->ID:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lvivo/util/Spring;->ID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvivo/util/Spring;->mId:Ljava/lang/String;

    .line 61
    sget-object v0, Lvivo/util/SpringConfig;->defaultConfig:Lvivo/util/SpringConfig;

    invoke-virtual {p0, v0}, Lvivo/util/Spring;->setSpringConfig(Lvivo/util/SpringConfig;)Lvivo/util/Spring;

    .line 62
    return-void
.end method

.method private getDisplacementDistanceForState(Lvivo/util/Spring$PhysicsState;)D
    .locals 4
    .param p1, "state"    # Lvivo/util/Spring$PhysicsState;

    .prologue
    .line 191
    iget-wide v0, p0, Lvivo/util/Spring;->mEndValue:D

    iget-wide v2, p1, Lvivo/util/Spring$PhysicsState;->position:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private interpolate(D)V
    .locals 11
    .param p1, "alpha"    # D

    .prologue
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 566
    iget-object v0, p0, Lvivo/util/Spring;->mCurrentState:Lvivo/util/Spring$PhysicsState;

    iget-object v1, p0, Lvivo/util/Spring;->mCurrentState:Lvivo/util/Spring$PhysicsState;

    iget-wide v2, v1, Lvivo/util/Spring$PhysicsState;->position:D

    mul-double/2addr v2, p1

    iget-object v1, p0, Lvivo/util/Spring;->mPreviousState:Lvivo/util/Spring$PhysicsState;

    iget-wide v4, v1, Lvivo/util/Spring$PhysicsState;->position:D

    sub-double v6, v8, p1

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iput-wide v2, v0, Lvivo/util/Spring$PhysicsState;->position:D

    .line 567
    iget-object v0, p0, Lvivo/util/Spring;->mCurrentState:Lvivo/util/Spring$PhysicsState;

    iget-object v1, p0, Lvivo/util/Spring;->mCurrentState:Lvivo/util/Spring$PhysicsState;

    iget-wide v2, v1, Lvivo/util/Spring$PhysicsState;->velocity:D

    mul-double/2addr v2, p1

    iget-object v1, p0, Lvivo/util/Spring;->mPreviousState:Lvivo/util/Spring$PhysicsState;

    iget-wide v4, v1, Lvivo/util/Spring$PhysicsState;->velocity:D

    sub-double v6, v8, p1

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iput-wide v2, v0, Lvivo/util/Spring$PhysicsState;->velocity:D

    .line 568
    return-void
.end method


# virtual methods
.method public advance(D)V
    .locals 49
    .param p1, "realDeltaTime"    # D

    .prologue
    .line 345
    invoke-virtual/range {p0 .. p0}, Lvivo/util/Spring;->isAtRest()Z

    move-result v28

    .line 347
    .local v28, "isAtRest":Z
    if-eqz v28, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lvivo/util/Spring;->mWasAtRest:Z

    move/from16 v31, v0

    if-eqz v31, :cond_1

    .line 505
    :cond_0
    :goto_0
    return-void

    .line 359
    :cond_1
    move-wide/from16 v8, p1

    .line 360
    .local v8, "adjustedDeltaTime":D
    const-wide v42, 0x3fb0624dd2f1a9fcL    # 0.064

    cmpl-double v31, p1, v42

    if-lez v31, :cond_2

    .line 362
    const-wide v8, 0x3fb0624dd2f1a9fcL    # 0.064

    .line 370
    :cond_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Lvivo/util/Spring;->mTimeAccumulator:D

    move-wide/from16 v42, v0

    add-double v42, v42, v8

    move-wide/from16 v0, v42

    move-object/from16 v2, p0

    iput-wide v0, v2, Lvivo/util/Spring;->mTimeAccumulator:D

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lvivo/util/Spring;->mSpringConfig:Lvivo/util/SpringConfig;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-wide v0, v0, Lvivo/util/SpringConfig;->tension:D

    move-wide/from16 v38, v0

    .line 373
    .local v38, "tension":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lvivo/util/Spring;->mSpringConfig:Lvivo/util/SpringConfig;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-wide v0, v0, Lvivo/util/SpringConfig;->friction:D

    move-wide/from16 v26, v0

    .line 375
    .local v26, "friction":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lvivo/util/Spring;->mCurrentState:Lvivo/util/Spring$PhysicsState;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-wide v0, v0, Lvivo/util/Spring$PhysicsState;->position:D

    move-wide/from16 v32, v0

    .line 376
    .local v32, "position":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lvivo/util/Spring;->mCurrentState:Lvivo/util/Spring$PhysicsState;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-wide v0, v0, Lvivo/util/Spring$PhysicsState;->velocity:D

    move-wide/from16 v40, v0

    .line 377
    .local v40, "velocity":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lvivo/util/Spring;->mTempState:Lvivo/util/Spring$PhysicsState;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-wide v0, v0, Lvivo/util/Spring$PhysicsState;->position:D

    move-wide/from16 v34, v0

    .line 378
    .local v34, "tempPosition":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lvivo/util/Spring;->mTempState:Lvivo/util/Spring$PhysicsState;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-wide v0, v0, Lvivo/util/Spring$PhysicsState;->velocity:D

    move-wide/from16 v36, v0

    .line 388
    .local v36, "tempVelocity":D
    :goto_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lvivo/util/Spring;->mTimeAccumulator:D

    move-wide/from16 v42, v0

    const-wide v44, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v31, v42, v44

    if-ltz v31, :cond_4

    .line 393
    move-object/from16 v0, p0

    iget-wide v0, v0, Lvivo/util/Spring;->mTimeAccumulator:D

    move-wide/from16 v42, v0

    const-wide v44, 0x3f50624dd2f1a9fcL    # 0.001

    sub-double v42, v42, v44

    move-wide/from16 v0, v42

    move-object/from16 v2, p0

    iput-wide v0, v2, Lvivo/util/Spring;->mTimeAccumulator:D

    .line 395
    move-object/from16 v0, p0

    iget-wide v0, v0, Lvivo/util/Spring;->mTimeAccumulator:D

    move-wide/from16 v42, v0

    const-wide v44, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v31, v42, v44

    if-gez v31, :cond_3

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lvivo/util/Spring;->mPreviousState:Lvivo/util/Spring$PhysicsState;

    move-object/from16 v31, v0

    move-wide/from16 v0, v32

    move-object/from16 v2, v31

    iput-wide v0, v2, Lvivo/util/Spring$PhysicsState;->position:D

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lvivo/util/Spring;->mPreviousState:Lvivo/util/Spring$PhysicsState;

    move-object/from16 v31, v0

    move-wide/from16 v0, v40

    move-object/from16 v2, v31

    iput-wide v0, v2, Lvivo/util/Spring$PhysicsState;->velocity:D

    .line 417
    :cond_3
    move-wide/from16 v6, v40

    .line 418
    .local v6, "aVelocity":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lvivo/util/Spring;->mEndValue:D

    move-wide/from16 v42, v0

    sub-double v42, v42, v34

    mul-double v42, v42, v38

    mul-double v44, v26, v40

    sub-double v4, v42, v44

    .line 423
    .local v4, "aAcceleration":D
    const-wide v42, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double v42, v42, v6

    const-wide/high16 v44, 0x3fe0000000000000L    # 0.5

    mul-double v42, v42, v44

    add-double v34, v32, v42

    .line 424
    const-wide v42, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double v42, v42, v4

    const-wide/high16 v44, 0x3fe0000000000000L    # 0.5

    mul-double v42, v42, v44

    add-double v36, v40, v42

    .line 425
    move-wide/from16 v12, v36

    .line 426
    .local v12, "bVelocity":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lvivo/util/Spring;->mEndValue:D

    move-wide/from16 v42, v0

    sub-double v42, v42, v34

    mul-double v42, v42, v38

    mul-double v44, v26, v36

    sub-double v10, v42, v44

    .line 428
    .local v10, "bAcceleration":D
    const-wide v42, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double v42, v42, v12

    const-wide/high16 v44, 0x3fe0000000000000L    # 0.5

    mul-double v42, v42, v44

    add-double v34, v32, v42

    .line 429
    const-wide v42, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double v42, v42, v10

    const-wide/high16 v44, 0x3fe0000000000000L    # 0.5

    mul-double v42, v42, v44

    add-double v36, v40, v42

    .line 430
    move-wide/from16 v16, v36

    .line 431
    .local v16, "cVelocity":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lvivo/util/Spring;->mEndValue:D

    move-wide/from16 v42, v0

    sub-double v42, v42, v34

    mul-double v42, v42, v38

    mul-double v44, v26, v36

    sub-double v14, v42, v44

    .line 433
    .local v14, "cAcceleration":D
    const-wide v42, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double v42, v42, v16

    add-double v34, v32, v42

    .line 434
    const-wide v42, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double v42, v42, v14

    add-double v36, v40, v42

    .line 435
    move-wide/from16 v20, v36

    .line 436
    .local v20, "dVelocity":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lvivo/util/Spring;->mEndValue:D

    move-wide/from16 v42, v0

    sub-double v42, v42, v34

    mul-double v42, v42, v38

    mul-double v44, v26, v36

    sub-double v18, v42, v44

    .line 439
    .local v18, "dAcceleration":D
    const-wide v42, 0x3fc5555555555555L    # 0.16666666666666666

    const-wide/high16 v44, 0x4000000000000000L    # 2.0

    add-double v46, v12, v16

    mul-double v44, v44, v46

    add-double v44, v44, v6

    add-double v44, v44, v20

    mul-double v24, v42, v44

    .line 440
    .local v24, "dxdt":D
    const-wide v42, 0x3fc5555555555555L    # 0.16666666666666666

    const-wide/high16 v44, 0x4000000000000000L    # 2.0

    add-double v46, v10, v14

    mul-double v44, v44, v46

    add-double v44, v44, v4

    add-double v44, v44, v18

    mul-double v22, v42, v44

    .line 442
    .local v22, "dvdt":D
    const-wide v42, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double v42, v42, v24

    add-double v32, v32, v42

    .line 443
    const-wide v42, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double v42, v42, v22

    add-double v40, v40, v42

    goto/16 :goto_1

    .line 446
    .end local v4    # "aAcceleration":D
    .end local v6    # "aVelocity":D
    .end local v10    # "bAcceleration":D
    .end local v12    # "bVelocity":D
    .end local v14    # "cAcceleration":D
    .end local v16    # "cVelocity":D
    .end local v18    # "dAcceleration":D
    .end local v20    # "dVelocity":D
    .end local v22    # "dvdt":D
    .end local v24    # "dxdt":D
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lvivo/util/Spring;->mTempState:Lvivo/util/Spring$PhysicsState;

    move-object/from16 v31, v0

    move-wide/from16 v0, v34

    move-object/from16 v2, v31

    iput-wide v0, v2, Lvivo/util/Spring$PhysicsState;->position:D

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lvivo/util/Spring;->mTempState:Lvivo/util/Spring$PhysicsState;

    move-object/from16 v31, v0

    move-wide/from16 v0, v36

    move-object/from16 v2, v31

    iput-wide v0, v2, Lvivo/util/Spring$PhysicsState;->velocity:D

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lvivo/util/Spring;->mCurrentState:Lvivo/util/Spring$PhysicsState;

    move-object/from16 v31, v0

    move-wide/from16 v0, v32

    move-object/from16 v2, v31

    iput-wide v0, v2, Lvivo/util/Spring$PhysicsState;->position:D

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lvivo/util/Spring;->mCurrentState:Lvivo/util/Spring$PhysicsState;

    move-object/from16 v31, v0

    move-wide/from16 v0, v40

    move-object/from16 v2, v31

    iput-wide v0, v2, Lvivo/util/Spring$PhysicsState;->velocity:D

    .line 452
    move-object/from16 v0, p0

    iget-wide v0, v0, Lvivo/util/Spring;->mTimeAccumulator:D

    move-wide/from16 v42, v0

    const-wide/16 v44, 0x0

    cmpl-double v31, v42, v44

    if-lez v31, :cond_5

    .line 454
    move-object/from16 v0, p0

    iget-wide v0, v0, Lvivo/util/Spring;->mTimeAccumulator:D

    move-wide/from16 v42, v0

    const-wide v44, 0x3f50624dd2f1a9fcL    # 0.001

    div-double v42, v42, v44

    move-object/from16 v0, p0

    move-wide/from16 v1, v42

    invoke-direct {v0, v1, v2}, Lvivo/util/Spring;->interpolate(D)V

    .line 462
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lvivo/util/Spring;->isAtRest()Z

    move-result v31

    if-nez v31, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lvivo/util/Spring;->mOvershootClampingEnabled:Z

    move/from16 v31, v0

    if-eqz v31, :cond_7

    invoke-virtual/range {p0 .. p0}, Lvivo/util/Spring;->isOvershooting()Z

    move-result v31

    if-eqz v31, :cond_7

    .line 466
    :cond_6
    const-wide/16 v42, 0x0

    cmpl-double v31, v38, v42

    if-lez v31, :cond_9

    .line 468
    move-object/from16 v0, p0

    iget-wide v0, v0, Lvivo/util/Spring;->mEndValue:D

    move-wide/from16 v42, v0

    move-wide/from16 v0, v42

    move-object/from16 v2, p0

    iput-wide v0, v2, Lvivo/util/Spring;->mStartValue:D

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lvivo/util/Spring;->mCurrentState:Lvivo/util/Spring$PhysicsState;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lvivo/util/Spring;->mEndValue:D

    move-wide/from16 v42, v0

    move-wide/from16 v0, v42

    move-object/from16 v2, v31

    iput-wide v0, v2, Lvivo/util/Spring$PhysicsState;->position:D

    .line 476
    :goto_2
    const-wide/16 v42, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Lvivo/util/Spring;->setVelocity(D)Lvivo/util/Spring;

    .line 477
    const/16 v28, 0x1

    .line 493
    :cond_7
    const/16 v29, 0x0

    .line 494
    .local v29, "notifyActivate":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lvivo/util/Spring;->mWasAtRest:Z

    move/from16 v31, v0

    if-eqz v31, :cond_8

    .line 496
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lvivo/util/Spring;->mWasAtRest:Z

    .line 497
    const/16 v29, 0x1

    .line 499
    :cond_8
    const/16 v30, 0x0

    .line 500
    .local v30, "notifyAtRest":Z
    if-eqz v28, :cond_0

    .line 502
    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lvivo/util/Spring;->mWasAtRest:Z

    .line 503
    const/16 v30, 0x1

    goto/16 :goto_0

    .line 473
    .end local v29    # "notifyActivate":Z
    .end local v30    # "notifyAtRest":Z
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lvivo/util/Spring;->mCurrentState:Lvivo/util/Spring$PhysicsState;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-wide v0, v0, Lvivo/util/Spring$PhysicsState;->position:D

    move-wide/from16 v42, v0

    move-wide/from16 v0, v42

    move-object/from16 v2, p0

    iput-wide v0, v2, Lvivo/util/Spring;->mEndValue:D

    .line 474
    move-object/from16 v0, p0

    iget-wide v0, v0, Lvivo/util/Spring;->mEndValue:D

    move-wide/from16 v42, v0

    move-wide/from16 v0, v42

    move-object/from16 v2, p0

    iput-wide v0, v2, Lvivo/util/Spring;->mStartValue:D

    goto :goto_2
.end method

.method public currentValueIsApproximately(D)Z
    .locals 5
    .param p1, "value"    # D

    .prologue
    .line 582
    invoke-virtual {p0}, Lvivo/util/Spring;->getCurrentValue()D

    move-result-wide v0

    sub-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-virtual {p0}, Lvivo/util/Spring;->getRestDisplacementThreshold()D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method public getCurrentDisplacementDistance()D
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lvivo/util/Spring;->mCurrentState:Lvivo/util/Spring$PhysicsState;

    invoke-direct {p0, v0}, Lvivo/util/Spring;->getDisplacementDistanceForState(Lvivo/util/Spring$PhysicsState;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentValue()D
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lvivo/util/Spring;->mCurrentState:Lvivo/util/Spring$PhysicsState;

    iget-wide v0, v0, Lvivo/util/Spring$PhysicsState;->position:D

    return-wide v0
.end method

.method public getEndValue()D
    .locals 2

    .prologue
    .line 219
    iget-wide v0, p0, Lvivo/util/Spring;->mEndValue:D

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lvivo/util/Spring;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getRestDisplacementThreshold()D
    .locals 2

    .prologue
    .line 295
    iget-wide v0, p0, Lvivo/util/Spring;->mDisplacementFromRestThreshold:D

    return-wide v0
.end method

.method public getRestSpeedThreshold()D
    .locals 2

    .prologue
    .line 270
    iget-wide v0, p0, Lvivo/util/Spring;->mRestSpeedThreshold:D

    return-wide v0
.end method

.method public getSpringConfig()Lvivo/util/SpringConfig;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lvivo/util/Spring;->mSpringConfig:Lvivo/util/SpringConfig;

    return-object v0
.end method

.method public getStartValue()D
    .locals 2

    .prologue
    .line 159
    iget-wide v0, p0, Lvivo/util/Spring;->mStartValue:D

    return-wide v0
.end method

.method public getVelocity()D
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lvivo/util/Spring;->mCurrentState:Lvivo/util/Spring$PhysicsState;

    iget-wide v0, v0, Lvivo/util/Spring$PhysicsState;->velocity:D

    return-wide v0
.end method

.method public isAtRest()Z
    .locals 4

    .prologue
    .line 537
    iget-object v0, p0, Lvivo/util/Spring;->mCurrentState:Lvivo/util/Spring$PhysicsState;

    iget-wide v0, v0, Lvivo/util/Spring$PhysicsState;->velocity:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget-wide v2, p0, Lvivo/util/Spring;->mRestSpeedThreshold:D

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_1

    iget-object v0, p0, Lvivo/util/Spring;->mCurrentState:Lvivo/util/Spring$PhysicsState;

    invoke-direct {p0, v0}, Lvivo/util/Spring;->getDisplacementDistanceForState(Lvivo/util/Spring$PhysicsState;)D

    move-result-wide v0

    iget-wide v2, p0, Lvivo/util/Spring;->mDisplacementFromRestThreshold:D

    cmpg-double v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lvivo/util/Spring;->mSpringConfig:Lvivo/util/SpringConfig;

    iget-wide v0, v0, Lvivo/util/SpringConfig;->tension:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOvershootClampingEnabled()Z
    .locals 1

    .prologue
    .line 319
    iget-boolean v0, p0, Lvivo/util/Spring;->mOvershootClampingEnabled:Z

    return v0
.end method

.method public isOvershooting()Z
    .locals 4

    .prologue
    .line 329
    iget-object v0, p0, Lvivo/util/Spring;->mSpringConfig:Lvivo/util/SpringConfig;

    iget-wide v0, v0, Lvivo/util/SpringConfig;->tension:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    iget-wide v0, p0, Lvivo/util/Spring;->mStartValue:D

    iget-wide v2, p0, Lvivo/util/Spring;->mEndValue:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lvivo/util/Spring;->getCurrentValue()D

    move-result-wide v0

    iget-wide v2, p0, Lvivo/util/Spring;->mEndValue:D

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_1

    :cond_0
    iget-wide v0, p0, Lvivo/util/Spring;->mStartValue:D

    iget-wide v2, p0, Lvivo/util/Spring;->mEndValue:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lvivo/util/Spring;->getCurrentValue()D

    move-result-wide v0

    iget-wide v2, p0, Lvivo/util/Spring;->mEndValue:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAtRest()Lvivo/util/Spring;
    .locals 4

    .prologue
    .line 549
    iget-object v0, p0, Lvivo/util/Spring;->mCurrentState:Lvivo/util/Spring$PhysicsState;

    iget-wide v0, v0, Lvivo/util/Spring$PhysicsState;->position:D

    iput-wide v0, p0, Lvivo/util/Spring;->mEndValue:D

    .line 550
    iget-object v0, p0, Lvivo/util/Spring;->mTempState:Lvivo/util/Spring$PhysicsState;

    iget-object v1, p0, Lvivo/util/Spring;->mCurrentState:Lvivo/util/Spring$PhysicsState;

    iget-wide v2, v1, Lvivo/util/Spring$PhysicsState;->position:D

    iput-wide v2, v0, Lvivo/util/Spring$PhysicsState;->position:D

    .line 551
    iget-object v0, p0, Lvivo/util/Spring;->mCurrentState:Lvivo/util/Spring$PhysicsState;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lvivo/util/Spring$PhysicsState;->velocity:D

    .line 552
    return-object p0
.end method

.method public setCurrentValue(D)Lvivo/util/Spring;
    .locals 1
    .param p1, "currentValue"    # D

    .prologue
    .line 123
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lvivo/util/Spring;->setCurrentValue(DZ)Lvivo/util/Spring;

    move-result-object v0

    return-object v0
.end method

.method public setCurrentValue(DZ)Lvivo/util/Spring;
    .locals 1
    .param p1, "currentValue"    # D
    .param p3, "setAtRest"    # Z

    .prologue
    .line 143
    iput-wide p1, p0, Lvivo/util/Spring;->mStartValue:D

    .line 144
    iget-object v0, p0, Lvivo/util/Spring;->mCurrentState:Lvivo/util/Spring$PhysicsState;

    iput-wide p1, v0, Lvivo/util/Spring$PhysicsState;->position:D

    .line 145
    if-eqz p3, :cond_0

    .line 147
    invoke-virtual {p0}, Lvivo/util/Spring;->setAtRest()Lvivo/util/Spring;

    .line 149
    :cond_0
    return-object p0
.end method

.method public setEndValue(D)Lvivo/util/Spring;
    .locals 3
    .param p1, "endValue"    # D

    .prologue
    .line 203
    iget-wide v0, p0, Lvivo/util/Spring;->mEndValue:D

    cmpl-double v0, v0, p1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lvivo/util/Spring;->isAtRest()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    :goto_0
    return-object p0

    .line 207
    :cond_0
    invoke-virtual {p0}, Lvivo/util/Spring;->getCurrentValue()D

    move-result-wide v0

    iput-wide v0, p0, Lvivo/util/Spring;->mStartValue:D

    .line 208
    iput-wide p1, p0, Lvivo/util/Spring;->mEndValue:D

    goto :goto_0
.end method

.method public setOvershootClampingEnabled(Z)Lvivo/util/Spring;
    .locals 0
    .param p1, "overshootClampingEnabled"    # Z

    .prologue
    .line 308
    iput-boolean p1, p0, Lvivo/util/Spring;->mOvershootClampingEnabled:Z

    .line 309
    return-object p0
.end method

.method public setRestDisplacementThreshold(D)Lvivo/util/Spring;
    .locals 1
    .param p1, "displacementFromRestThreshold"    # D

    .prologue
    .line 283
    iput-wide p1, p0, Lvivo/util/Spring;->mDisplacementFromRestThreshold:D

    .line 284
    return-object p0
.end method

.method public setRestSpeedThreshold(D)Lvivo/util/Spring;
    .locals 1
    .param p1, "restSpeedThreshold"    # D

    .prologue
    .line 258
    iput-wide p1, p0, Lvivo/util/Spring;->mRestSpeedThreshold:D

    .line 259
    return-object p0
.end method

.method public setSpringConfig(Lvivo/util/SpringConfig;)Lvivo/util/Spring;
    .locals 2
    .param p1, "springConfig"    # Lvivo/util/SpringConfig;

    .prologue
    .line 93
    if-nez p1, :cond_0

    .line 95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "springConfig is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_0
    iput-object p1, p0, Lvivo/util/Spring;->mSpringConfig:Lvivo/util/SpringConfig;

    .line 98
    return-object p0
.end method

.method public setVelocity(D)Lvivo/util/Spring;
    .locals 3
    .param p1, "velocity"    # D

    .prologue
    .line 231
    iget-object v0, p0, Lvivo/util/Spring;->mCurrentState:Lvivo/util/Spring$PhysicsState;

    iget-wide v0, v0, Lvivo/util/Spring$PhysicsState;->velocity:D

    cmpl-double v0, p1, v0

    if-nez v0, :cond_0

    .line 236
    :goto_0
    return-object p0

    .line 235
    :cond_0
    iget-object v0, p0, Lvivo/util/Spring;->mCurrentState:Lvivo/util/Spring$PhysicsState;

    iput-wide p1, v0, Lvivo/util/Spring$PhysicsState;->velocity:D

    goto :goto_0
.end method

.method public systemShouldAdvance()Z
    .locals 1

    .prologue
    .line 516
    invoke-virtual {p0}, Lvivo/util/Spring;->isAtRest()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lvivo/util/Spring;->wasAtRest()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public wasAtRest()Z
    .locals 1

    .prologue
    .line 527
    iget-boolean v0, p0, Lvivo/util/Spring;->mWasAtRest:Z

    return v0
.end method
