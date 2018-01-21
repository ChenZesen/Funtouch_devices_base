.class public Lcom/android/server/policy/key/VivoPhonePosition;
.super Ljava/lang/Object;
.source "VivoPhonePosition.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/key/VivoPhonePosition$MyHandler;
    }
.end annotation


# static fields
.field private static final GET_POSITION_TIMEOUT:I = 0x2710

.field private static final MSG_GET_PHONE_POSITION:I = 0x1

.field private static final MSG_GET_POSITION_TIMEOUT:I = 0x2

.field private static final POSITION_HEADSTAND:I = 0x1

.field private static final POSITION_JUDGE_PLATFORM_LIST:[Ljava/lang/String;

.field private static final POSITION_JUDGE_PROJECTS_LIST:[Ljava/lang/String;

.field private static final POSITION_NORMAL:I = 0x0

.field private static final POSITION_Y_AXIS_THRESHOLD:I = -0x6

.field public static final TAG:Ljava/lang/String; = "VivoPhonePosition"


# instance fields
.field private isGettingPosition:Z

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/android/server/policy/key/VivoPhonePosition$MyHandler;

.field private mIsNeedPositionJudge:Z

.field private mLock:Ljava/lang/Object;

.field private mPosition:I

.field private mPowerManager:Landroid/os/PowerManager;

.field private mThread:Landroid/os/HandlerThread;

.field private mVivoSensorTest:Lcom/sensoroperate/VivoSensorTest;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 32
    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lcom/android/server/policy/key/VivoPhonePosition;->POSITION_JUDGE_PLATFORM_LIST:[Ljava/lang/String;

    .line 36
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "pd1522"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "pd1602"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/policy/key/VivoPhonePosition;->POSITION_JUDGE_PROJECTS_LIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput v1, p0, Lcom/android/server/policy/key/VivoPhonePosition;->mPosition:I

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/key/VivoPhonePosition;->mLock:Ljava/lang/Object;

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/key/VivoPhonePosition;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 49
    iput-boolean v1, p0, Lcom/android/server/policy/key/VivoPhonePosition;->mIsNeedPositionJudge:Z

    .line 50
    iput-boolean v1, p0, Lcom/android/server/policy/key/VivoPhonePosition;->isGettingPosition:Z

    .line 54
    iput-object p1, p0, Lcom/android/server/policy/key/VivoPhonePosition;->mContext:Landroid/content/Context;

    .line 55
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "VivoPhonePosition"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/policy/key/VivoPhonePosition;->mThread:Landroid/os/HandlerThread;

    .line 56
    iget-object v0, p0, Lcom/android/server/policy/key/VivoPhonePosition;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 57
    new-instance v0, Lcom/android/server/policy/key/VivoPhonePosition$MyHandler;

    iget-object v1, p0, Lcom/android/server/policy/key/VivoPhonePosition;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/key/VivoPhonePosition$MyHandler;-><init>(Lcom/android/server/policy/key/VivoPhonePosition;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/policy/key/VivoPhonePosition;->mHandler:Lcom/android/server/policy/key/VivoPhonePosition$MyHandler;

    .line 58
    iget-object v0, p0, Lcom/android/server/policy/key/VivoPhonePosition;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/policy/key/VivoPhonePosition;->mPowerManager:Landroid/os/PowerManager;

    .line 59
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoPhonePosition;->createWakeLock()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/key/VivoPhonePosition;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/key/VivoPhonePosition;->mIsNeedPositionJudge:Z

    .line 61
    invoke-static {}, Lcom/sensoroperate/VivoSensorTest;->getInstance()Lcom/sensoroperate/VivoSensorTest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/key/VivoPhonePosition;->mVivoSensorTest:Lcom/sensoroperate/VivoSensorTest;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/key/VivoPhonePosition;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/key/VivoPhonePosition;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/server/policy/key/VivoPhonePosition;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/policy/key/VivoPhonePosition;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/key/VivoPhonePosition;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoPhonePosition;->acquireWakeLock()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/policy/key/VivoPhonePosition;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/key/VivoPhonePosition;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoPhonePosition;->getPhonePositionInner()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/policy/key/VivoPhonePosition;)Lcom/android/server/policy/key/VivoPhonePosition$MyHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/key/VivoPhonePosition;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/server/policy/key/VivoPhonePosition;->mHandler:Lcom/android/server/policy/key/VivoPhonePosition$MyHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/policy/key/VivoPhonePosition;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/key/VivoPhonePosition;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoPhonePosition;->releaseWakeLock()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/policy/key/VivoPhonePosition;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/key/VivoPhonePosition;

    .prologue
    .line 24
    iget v0, p0, Lcom/android/server/policy/key/VivoPhonePosition;->mPosition:I

    return v0
.end method

.method static synthetic access$600(I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 24
    invoke-static {p0}, Lcom/android/server/policy/key/VivoPhonePosition;->positionToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/policy/key/VivoPhonePosition;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/key/VivoPhonePosition;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/android/server/policy/key/VivoPhonePosition;->isGettingPosition:Z

    return p1
.end method

.method private acquireWakeLock()V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/server/policy/key/VivoPhonePosition;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/key/VivoPhonePosition;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/server/policy/key/VivoPhonePosition;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 206
    :cond_0
    return-void
.end method

.method private createWakeLock()Landroid/os/PowerManager$WakeLock;
    .locals 3

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/server/policy/key/VivoPhonePosition;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/server/policy/key/VivoPhonePosition;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "VivoPhonePosition"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 198
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPhonePositionInner()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/high16 v12, 0x42c80000    # 100.0f

    const/4 v10, 0x3

    const/4 v13, 0x1

    .line 156
    new-array v3, v10, [F

    .line 157
    .local v3, "TestVal_digit":[F
    new-array v0, v10, [F

    .line 158
    .local v0, "DefBase_digit":[F
    new-array v2, v10, [F

    .line 159
    .local v2, "MinBase_digit":[F
    new-array v1, v10, [F

    .line 160
    .local v1, "MaxBase_digit":[F
    new-array v4, v13, [I

    .line 161
    .local v4, "arg":[I
    const/4 v7, 0x0

    .local v7, "x":F
    const/4 v8, 0x0

    .local v8, "y":F
    const/4 v9, 0x0

    .line 162
    .local v9, "z":F
    aput v13, v4, v14

    .line 163
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoPhonePosition;->acquireWakeLock()V

    .line 164
    new-instance v5, Lcom/sensoroperate/SensorTestResult;

    invoke-direct {v5}, Lcom/sensoroperate/SensorTestResult;-><init>()V

    .line 165
    .local v5, "result":Lcom/sensoroperate/SensorTestResult;
    iget-object v10, p0, Lcom/android/server/policy/key/VivoPhonePosition;->mVivoSensorTest:Lcom/sensoroperate/VivoSensorTest;

    if-nez v10, :cond_0

    .line 166
    const-string v10, "VivoPhonePosition"

    const-string v11, "getPhonePositionInner mVivoSensorTest is NULL!!!"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :goto_0
    iget-object v10, p0, Lcom/android/server/policy/key/VivoPhonePosition;->mVivoSensorTest:Lcom/sensoroperate/VivoSensorTest;

    const/16 v11, 0x31

    invoke-virtual {v10, v11, v5, v4, v13}, Lcom/sensoroperate/VivoSensorTest;->vivoSensorTest(ILcom/sensoroperate/SensorTestResult;[II)I

    .line 171
    invoke-virtual {v5, v3, v0, v2, v1}, Lcom/sensoroperate/SensorTestResult;->getAllTestResult([F[F[F[F)I

    move-result v6

    .line 172
    .local v6, "ret":I
    if-ne v13, v6, :cond_1

    .line 173
    aget v10, v3, v14

    div-float v7, v10, v12

    .line 174
    aget v10, v3, v13

    div-float v8, v10, v12

    .line 175
    const/4 v10, 0x2

    aget v10, v3, v10

    div-float v9, v10, v12

    .line 176
    const-string v10, "VivoPhonePosition"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "x:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " y:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " z:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :goto_1
    invoke-direct {p0}, Lcom/android/server/policy/key/VivoPhonePosition;->releaseWakeLock()V

    .line 181
    const/high16 v10, -0x3f400000    # -6.0f

    cmpg-float v10, v8, v10

    if-gez v10, :cond_2

    .line 183
    const-string v10, "VivoPhonePosition"

    const-string v11, "Phone position is headstand"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iput v13, p0, Lcom/android/server/policy/key/VivoPhonePosition;->mPosition:I

    .line 192
    :goto_2
    return-void

    .line 168
    .end local v6    # "ret":I
    :cond_0
    const-string v10, "VivoPhonePosition"

    const-string v11, "getPhonePositionInner call vivoSensorTest"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 178
    .restart local v6    # "ret":I
    :cond_1
    const-string v10, "VivoPhonePosition"

    const-string v11, "get gsensor data failed"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 188
    :cond_2
    iput v14, p0, Lcom/android/server/policy/key/VivoPhonePosition;->mPosition:I

    .line 189
    const-string v10, "VivoPhonePosition"

    const-string v11, "Phone position is normal"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private static isNeedPoistionJudgeInner()Z
    .locals 11

    .prologue
    const/4 v7, 0x1

    .line 105
    const-string v8, "ro.vivo.product.platform"

    const-string v9, "unkown"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 106
    .local v6, "platform":Ljava/lang/String;
    const-string v8, "ro.vivo.product.model"

    const-string v9, "unkown"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 108
    .local v4, "model":Ljava/lang/String;
    sget-object v0, Lcom/android/server/policy/key/VivoPhonePosition;->POSITION_JUDGE_PROJECTS_LIST:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 109
    .local v3, "m":Ljava/lang/String;
    const-string v8, "VivoPhonePosition"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isNeedPoistionJudgeInner m:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " model:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 111
    const-string v8, "VivoPhonePosition"

    const-string v9, ""

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .end local v3    # "m":Ljava/lang/String;
    :cond_0
    :goto_1
    return v7

    .line 108
    .restart local v3    # "m":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    .end local v3    # "m":Ljava/lang/String;
    :cond_2
    sget-object v0, Lcom/android/server/policy/key/VivoPhonePosition;->POSITION_JUDGE_PLATFORM_LIST:[Ljava/lang/String;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_3

    aget-object v5, v0, v1

    .line 117
    .local v5, "p":Ljava/lang/String;
    const-string v8, "VivoPhonePosition"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isNeedPoistionJudgeInner p:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " platform:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 116
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 123
    .end local v5    # "p":Ljava/lang/String;
    :cond_3
    const/4 v7, 0x0

    goto :goto_1
.end method

.method private static positionToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "position"    # I

    .prologue
    .line 94
    packed-switch p0, :pswitch_data_0

    .line 100
    const-string v0, "unkown"

    :goto_0
    return-object v0

    .line 96
    :pswitch_0
    const-string v0, "POSITION_NORMAL"

    goto :goto_0

    .line 98
    :pswitch_1
    const-string v0, "POSITION_HEADSTAND"

    goto :goto_0

    .line 94
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private releaseWakeLock()V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/server/policy/key/VivoPhonePosition;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/key/VivoPhonePosition;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/android/server/policy/key/VivoPhonePosition;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 212
    :cond_0
    return-void
.end method


# virtual methods
.method public getPositonResult()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 145
    iget-boolean v1, p0, Lcom/android/server/policy/key/VivoPhonePosition;->mIsNeedPositionJudge:Z

    if-nez v1, :cond_1

    .line 151
    :cond_0
    :goto_0
    return v0

    .line 148
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/policy/key/VivoPhonePosition;->isGettingPosition:Z

    if-nez v1, :cond_0

    .line 149
    iget v0, p0, Lcom/android/server/policy/key/VivoPhonePosition;->mPosition:I

    goto :goto_0
.end method

.method public startGetPosition()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    .line 127
    iget-boolean v0, p0, Lcom/android/server/policy/key/VivoPhonePosition;->mIsNeedPositionJudge:Z

    if-nez v0, :cond_0

    .line 128
    const-string v0, "VivoPhonePosition"

    const-string v1, "startGetPosition !isNeedPositionJudge return."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/key/VivoPhonePosition;->isGettingPosition:Z

    if-eqz v0, :cond_1

    .line 132
    const-string v0, "VivoPhonePosition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startGetPosition, return, as isGettingPosition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/policy/key/VivoPhonePosition;->isGettingPosition:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 135
    :cond_1
    const-string v0, "VivoPhonePosition"

    const-string v1, "startGetPosition, enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iput-boolean v2, p0, Lcom/android/server/policy/key/VivoPhonePosition;->isGettingPosition:Z

    .line 137
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/key/VivoPhonePosition;->mPosition:I

    .line 138
    iget-object v0, p0, Lcom/android/server/policy/key/VivoPhonePosition;->mHandler:Lcom/android/server/policy/key/VivoPhonePosition$MyHandler;

    invoke-virtual {v0, v2}, Lcom/android/server/policy/key/VivoPhonePosition$MyHandler;->removeMessages(I)V

    .line 139
    iget-object v0, p0, Lcom/android/server/policy/key/VivoPhonePosition;->mHandler:Lcom/android/server/policy/key/VivoPhonePosition$MyHandler;

    invoke-virtual {v0, v4}, Lcom/android/server/policy/key/VivoPhonePosition$MyHandler;->removeMessages(I)V

    .line 140
    iget-object v0, p0, Lcom/android/server/policy/key/VivoPhonePosition;->mHandler:Lcom/android/server/policy/key/VivoPhonePosition$MyHandler;

    invoke-virtual {v0, v2}, Lcom/android/server/policy/key/VivoPhonePosition$MyHandler;->sendEmptyMessage(I)Z

    .line 141
    iget-object v0, p0, Lcom/android/server/policy/key/VivoPhonePosition;->mHandler:Lcom/android/server/policy/key/VivoPhonePosition$MyHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/server/policy/key/VivoPhonePosition$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
