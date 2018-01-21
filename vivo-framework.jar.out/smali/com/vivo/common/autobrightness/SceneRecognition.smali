.class public Lcom/vivo/common/autobrightness/SceneRecognition;
.super Ljava/lang/Object;
.source "SceneRecognition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;
    }
.end annotation


# static fields
.field private static final DUSKY_LIGHT_TOP:I = 0x14

.field private static final GET_INFO_DELAY_TIME:I

.field private static final GET_INFO_DELAY_TIME_QUICK:I

.field public static final LIGHT_DEGREE_BRIGHT:I = 0x4

.field public static final LIGHT_DEGREE_DUSKY:I = 0x1

.field public static final LIGHT_DEGREE_FLOATING:I = 0x2

.field public static final LIGHT_DEGREE_MORNING:I = 0x3

.field public static final LIGHT_DEGREE_TOTAL_DARK:I = 0x0

.field private static final MSG_GET_AUTOBRIGHTINFO:I = 0x1

.field private static final MSG_GET_LIGHT_DEGREE:I = 0x3

.field private static final MSG_GET_LUMAINFO:I = 0x2

.field private static final MSG_UPDATE_SCENE_STATE:I = 0x0

.field public static final SCENE_DUSKY:I = 0x200

.field public static final SCENE_DUSKY_FALL_DOWN:I = 0x204

.field public static final SCENE_DUSKY_FLOATING:I = 0x202

.field public static final SCENE_DUSKY_STEADY:I = 0x201

.field public static final SCENE_FALL_DOWN:I = 0x4

.field public static final SCENE_FLOATING:I = 0x2

.field public static final SCENE_HIGH_LIGHT:I = 0x800

.field public static final SCENE_OFFICE:I = 0x400

.field public static final SCENE_RISE_UP:I = 0x8

.field public static final SCENE_STEADY:I = 0x1

.field public static final SCENE_TOTAL_DARK:I = 0x100

.field public static final SCENE_UNKOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SceneRecognition"

.field private static final UPATE_SCENE_DELAY_TIME:I = 0x80e8


# instance fields
.field private mAbInfoStatistics:Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;

.field private mAutoInfoBufferedCount:I

.field private mCameraLumaCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback;

.field private mContext:Landroid/content/Context;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIsSceneRecognizing:Z

.field private mLock:Ljava/lang/Object;

.field private mSceneRecognizeHandler:Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;

.field private mSceneState:I

.field private mStatisticsCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$StatisticsCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    const-string v0, "persist.dbg.get_info_delay"

    const/16 v1, 0x1f4

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/vivo/common/autobrightness/SceneRecognition;->GET_INFO_DELAY_TIME_QUICK:I

    .line 59
    const-string v0, "persist.dbg.get_info_delay"

    const/16 v1, 0x5dc

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/vivo/common/autobrightness/SceneRecognition;->GET_INFO_DELAY_TIME:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/vivo/common/autobrightness/CameraLumaCallback$StatisticsCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/vivo/common/autobrightness/CameraLumaCallback$StatisticsCallback;

    .prologue
    const/4 v1, 0x0

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput v1, p0, Lcom/vivo/common/autobrightness/SceneRecognition;->mSceneState:I

    .line 64
    new-instance v0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;

    invoke-direct {v0}, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;-><init>()V

    iput-object v0, p0, Lcom/vivo/common/autobrightness/SceneRecognition;->mAbInfoStatistics:Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;

    .line 65
    new-instance v0, Lcom/vivo/common/autobrightness/CameraLumaCallback;

    invoke-direct {v0}, Lcom/vivo/common/autobrightness/CameraLumaCallback;-><init>()V

    iput-object v0, p0, Lcom/vivo/common/autobrightness/SceneRecognition;->mCameraLumaCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback;

    .line 68
    iput-boolean v1, p0, Lcom/vivo/common/autobrightness/SceneRecognition;->mIsSceneRecognizing:Z

    .line 69
    iput v1, p0, Lcom/vivo/common/autobrightness/SceneRecognition;->mAutoInfoBufferedCount:I

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/vivo/common/autobrightness/SceneRecognition;->mLock:Ljava/lang/Object;

    .line 267
    iput-object p1, p0, Lcom/vivo/common/autobrightness/SceneRecognition;->mContext:Landroid/content/Context;

    .line 268
    iput-object p2, p0, Lcom/vivo/common/autobrightness/SceneRecognition;->mStatisticsCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$StatisticsCallback;

    .line 269
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SceneRecognition"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vivo/common/autobrightness/SceneRecognition;->mHandlerThread:Landroid/os/HandlerThread;

    .line 270
    iget-object v0, p0, Lcom/vivo/common/autobrightness/SceneRecognition;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 271
    new-instance v0, Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;

    iget-object v1, p0, Lcom/vivo/common/autobrightness/SceneRecognition;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;-><init>(Lcom/vivo/common/autobrightness/SceneRecognition;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vivo/common/autobrightness/SceneRecognition;->mSceneRecognizeHandler:Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;

    .line 272
    return-void
.end method

.method static synthetic access$000(Lcom/vivo/common/autobrightness/SceneRecognition;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/SceneRecognition;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/vivo/common/autobrightness/SceneRecognition;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/vivo/common/autobrightness/SceneRecognition;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/SceneRecognition;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/vivo/common/autobrightness/SceneRecognition;->mIsSceneRecognizing:Z

    return v0
.end method

.method static synthetic access$102(Lcom/vivo/common/autobrightness/SceneRecognition;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/SceneRecognition;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/vivo/common/autobrightness/SceneRecognition;->mIsSceneRecognizing:Z

    return p1
.end method

.method static synthetic access$200(Lcom/vivo/common/autobrightness/SceneRecognition;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/SceneRecognition;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/vivo/common/autobrightness/SceneRecognition;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vivo/common/autobrightness/SceneRecognition;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/SceneRecognition;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/vivo/common/autobrightness/SceneRecognition;->recognizeSceneUnlocked()I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/vivo/common/autobrightness/SceneRecognition;)Lcom/vivo/common/autobrightness/CameraLumaCallback$StatisticsCallback;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/SceneRecognition;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/vivo/common/autobrightness/SceneRecognition;->mStatisticsCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$StatisticsCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vivo/common/autobrightness/SceneRecognition;)Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/SceneRecognition;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/vivo/common/autobrightness/SceneRecognition;->mSceneRecognizeHandler:Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/vivo/common/autobrightness/SceneRecognition;)Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/SceneRecognition;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/vivo/common/autobrightness/SceneRecognition;->mAbInfoStatistics:Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;

    return-object v0
.end method

.method static synthetic access$700()I
    .locals 1

    .prologue
    .line 18
    sget v0, Lcom/vivo/common/autobrightness/SceneRecognition;->GET_INFO_DELAY_TIME:I

    return v0
.end method

.method static synthetic access$800()I
    .locals 1

    .prologue
    .line 18
    sget v0, Lcom/vivo/common/autobrightness/SceneRecognition;->GET_INFO_DELAY_TIME_QUICK:I

    return v0
.end method

.method private isFallDownDusky()Z
    .locals 6

    .prologue
    const-wide/high16 v2, 0x402e000000000000L    # 15.0

    .line 169
    iget-object v0, p0, Lcom/vivo/common/autobrightness/SceneRecognition;->mAbInfoStatistics:Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;

    iget-wide v0, v0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mLightLuxAverage:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/common/autobrightness/SceneRecognition;->mAbInfoStatistics:Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;

    iget v0, v0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mLightLuxMedian:I

    int-to-double v0, v0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/common/autobrightness/SceneRecognition;->mAbInfoStatistics:Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;

    iget v0, v0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mLightLevelMin:I

    int-to-double v0, v0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/vivo/common/autobrightness/SceneRecognition;->mAbInfoStatistics:Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;

    iget v0, v0, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mLightLuxOverAverageCount:I

    int-to-double v0, v0

    iget-object v2, p0, Lcom/vivo/common/autobrightness/SceneRecognition;->mAbInfoStatistics:Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;

    invoke-virtual {v2}, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->getBufferLength()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3fe4cccccccccccdL    # 0.65

    mul-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 173
    const/4 v0, 0x1

    .line 175
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLightDusky(D)Z
    .locals 3
    .param p1, "lux"    # D

    .prologue
    .line 166
    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 255
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    const-string v0, "SceneRecognition"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_0
    return-void
.end method

.method private recognizeDusky()I
    .locals 12

    .prologue
    .line 182
    const/4 v5, 0x0

    .line 184
    .local v5, "ret":I
    iget-object v6, p0, Lcom/vivo/common/autobrightness/SceneRecognition;->mAbInfoStatistics:Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;

    iget-wide v8, v6, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mLightLuxStdDev:D

    iget-object v6, p0, Lcom/vivo/common/autobrightness/SceneRecognition;->mAbInfoStatistics:Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;

    iget v6, v6, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mLightLuxMedian:I

    if-lez v6, :cond_1

    iget-object v6, p0, Lcom/vivo/common/autobrightness/SceneRecognition;->mAbInfoStatistics:Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;

    iget v6, v6, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mLightLuxMedian:I

    int-to-double v6, v6

    :goto_0
    div-double v2, v8, v6

    .line 185
    .local v2, "devmedian":D
    iget-object v6, p0, Lcom/vivo/common/autobrightness/SceneRecognition;->mAbInfoStatistics:Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;

    iget-wide v8, v6, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mLightLuxStdDev:D

    iget-object v6, p0, Lcom/vivo/common/autobrightness/SceneRecognition;->mAbInfoStatistics:Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;

    iget-wide v6, v6, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mLightLuxAverage:D

    const-wide/16 v10, 0x0

    cmpl-double v6, v6, v10

    if-lez v6, :cond_2

    iget-object v6, p0, Lcom/vivo/common/autobrightness/SceneRecognition;->mAbInfoStatistics:Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;

    iget-wide v6, v6, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mLightLuxAverage:D

    :goto_1
    div-double v0, v8, v6

    .line 186
    .local v0, "devaverage":D
    iget-object v6, p0, Lcom/vivo/common/autobrightness/SceneRecognition;->mAbInfoStatistics:Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;

    iget v4, v6, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mLightLuxOverAverageCount:I

    .line 188
    .local v4, "overAverage":I
    iget-object v6, p0, Lcom/vivo/common/autobrightness/SceneRecognition;->mAbInfoStatistics:Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;

    iget v6, v6, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mLightLuxMin:I

    int-to-double v6, v6

    invoke-direct {p0, v6, v7}, Lcom/vivo/common/autobrightness/SceneRecognition;->isLightDusky(D)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/vivo/common/autobrightness/SceneRecognition;->mAbInfoStatistics:Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;

    iget v6, v6, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mLightLuxMedian:I

    int-to-float v6, v6

    const/high16 v7, 0x3fc00000    # 1.5f

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-direct {p0, v6, v7}, Lcom/vivo/common/autobrightness/SceneRecognition;->isLightDusky(D)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/vivo/common/autobrightness/SceneRecognition;->mAbInfoStatistics:Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;

    iget-wide v6, v6, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mLightLuxAverage:D

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    div-double/2addr v6, v8

    invoke-direct {p0, v6, v7}, Lcom/vivo/common/autobrightness/SceneRecognition;->isLightDusky(D)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 192
    invoke-direct {p0}, Lcom/vivo/common/autobrightness/SceneRecognition;->isFallDownDusky()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 193
    const/16 v5, 0x204

    .line 214
    :cond_0
    :goto_2
    const-string v6, "SceneRecognition"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "recognizeDusky "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/common/autobrightness/SceneRecognition;->mAbInfoStatistics:Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;

    invoke-virtual {v8}, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->luxInfoToString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " devMedian="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%.2f"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " devAverage="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%.2f"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v5}, Lcom/vivo/common/autobrightness/SceneRecognition;->sceneToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const-string v6, "SceneRecognition"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "recognizeDusky overAverage:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " lux array:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/common/autobrightness/SceneRecognition;->mAbInfoStatistics:Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;

    invoke-virtual {v8}, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->lightLuxArrayToString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    return v5

    .line 184
    .end local v0    # "devaverage":D
    .end local v2    # "devmedian":D
    .end local v4    # "overAverage":I
    :cond_1
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_0

    .line 185
    .restart local v2    # "devmedian":D
    :cond_2
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_1

    .line 194
    .restart local v0    # "devaverage":D
    .restart local v4    # "overAverage":I
    :cond_3
    iget-object v6, p0, Lcom/vivo/common/autobrightness/SceneRecognition;->mAbInfoStatistics:Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;

    iget-wide v6, v6, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mLightLuxStdDev:D

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v6, v8

    if-lez v6, :cond_7

    .line 198
    const-wide v6, 0x3fe999999999999aL    # 0.8

    cmpl-double v6, v2, v6

    if-lez v6, :cond_4

    const-wide v6, 0x3fe999999999999aL    # 0.8

    cmpl-double v6, v0, v6

    if-lez v6, :cond_4

    .line 199
    const/16 v5, 0x202

    goto/16 :goto_2

    .line 200
    :cond_4
    iget-object v6, p0, Lcom/vivo/common/autobrightness/SceneRecognition;->mAbInfoStatistics:Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;

    iget-wide v6, v6, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mLightLuxStdDev:D

    const-wide/high16 v8, 0x4004000000000000L    # 2.5

    cmpl-double v6, v6, v8

    if-lez v6, :cond_5

    const-wide v6, 0x3fe6666666666666L    # 0.7

    cmpl-double v6, v2, v6

    if-lez v6, :cond_5

    const-wide v6, 0x3fe6666666666666L    # 0.7

    cmpl-double v6, v0, v6

    if-lez v6, :cond_5

    .line 202
    const/16 v5, 0x202

    goto/16 :goto_2

    .line 203
    :cond_5
    iget-object v6, p0, Lcom/vivo/common/autobrightness/SceneRecognition;->mAbInfoStatistics:Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;

    iget-wide v6, v6, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mLightLuxStdDev:D

    const-wide/high16 v8, 0x4010000000000000L    # 4.0

    cmpl-double v6, v6, v8

    if-lez v6, :cond_6

    const-wide/high16 v6, 0x3fd0000000000000L    # 0.25

    cmpl-double v6, v2, v6

    if-lez v6, :cond_6

    const-wide/high16 v6, 0x3fd0000000000000L    # 0.25

    cmpl-double v6, v0, v6

    if-lez v6, :cond_6

    .line 205
    const/16 v5, 0x202

    goto/16 :goto_2

    .line 206
    :cond_6
    iget-object v6, p0, Lcom/vivo/common/autobrightness/SceneRecognition;->mAbInfoStatistics:Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;

    iget-wide v6, v6, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mLightLuxStdDev:D

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    cmpl-double v6, v6, v8

    if-lez v6, :cond_0

    iget-object v6, p0, Lcom/vivo/common/autobrightness/SceneRecognition;->mAbInfoStatistics:Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;

    iget-wide v6, v6, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->mLightLuxAverage:D

    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    cmpl-double v6, v6, v8

    if-lez v6, :cond_0

    const-wide v6, 0x3fc999999999999aL    # 0.2

    cmpl-double v6, v2, v6

    if-lez v6, :cond_0

    const-wide v6, 0x3fc999999999999aL    # 0.2

    cmpl-double v6, v0, v6

    if-lez v6, :cond_0

    .line 208
    const/16 v5, 0x202

    goto/16 :goto_2

    .line 211
    :cond_7
    const/16 v5, 0x201

    goto/16 :goto_2
.end method

.method private recognizeSceneUnlocked()I
    .locals 3

    .prologue
    .line 237
    iget-object v0, p0, Lcom/vivo/common/autobrightness/SceneRecognition;->mAbInfoStatistics:Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;

    invoke-virtual {v0}, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->statisticsInfo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    const-string v0, "debug.scene_info.result"

    const-string v1, "success"

    invoke-direct {p0, v0, v1}, Lcom/vivo/common/autobrightness/SceneRecognition;->setprop(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/vivo/common/autobrightness/SceneRecognition;->mAbInfoStatistics:Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;

    invoke-virtual {v0}, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->dump()V

    .line 240
    invoke-direct {p0}, Lcom/vivo/common/autobrightness/SceneRecognition;->recognizeDusky()I

    move-result v0

    iput v0, p0, Lcom/vivo/common/autobrightness/SceneRecognition;->mSceneState:I

    .line 241
    iget v0, p0, Lcom/vivo/common/autobrightness/SceneRecognition;->mSceneState:I

    if-nez v0, :cond_0

    .line 242
    const-string v0, "you may add some other scene recognize function after this."

    invoke-direct {p0, v0}, Lcom/vivo/common/autobrightness/SceneRecognition;->log(Ljava/lang/String;)V

    .line 248
    :cond_0
    :goto_0
    const-string v0, "debug.scene_info.lux"

    iget-object v1, p0, Lcom/vivo/common/autobrightness/SceneRecognition;->mAbInfoStatistics:Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;

    invoke-virtual {v1}, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->luxInfoToString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/vivo/common/autobrightness/SceneRecognition;->setprop(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string v0, "debug.scene_info.scene"

    iget v1, p0, Lcom/vivo/common/autobrightness/SceneRecognition;->mSceneState:I

    invoke-virtual {p0, v1}, Lcom/vivo/common/autobrightness/SceneRecognition;->sceneToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/vivo/common/autobrightness/SceneRecognition;->setprop(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/common/autobrightness/SceneRecognition;->mAutoInfoBufferedCount:I

    .line 251
    iget v0, p0, Lcom/vivo/common/autobrightness/SceneRecognition;->mSceneState:I

    return v0

    .line 245
    :cond_1
    const-string v0, "debug.scene_info.result"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FAILED:not full, size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/common/autobrightness/SceneRecognition;->mAbInfoStatistics:Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;

    invoke-virtual {v2}, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/common/autobrightness/SceneRecognition;->mAbInfoStatistics:Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;

    invoke-virtual {v2}, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/vivo/common/autobrightness/SceneRecognition;->setprop(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/vivo/common/autobrightness/SceneRecognition;->mAbInfoStatistics:Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;

    invoke-virtual {v0}, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->dump()V

    goto :goto_0
.end method

.method private setprop(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .prologue
    .line 261
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x5a

    if-ge v0, v1, :cond_0

    .line 262
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :cond_0
    return-void
.end method


# virtual methods
.method public recognizeScene()I
    .locals 2

    .prologue
    .line 160
    iget-object v1, p0, Lcom/vivo/common/autobrightness/SceneRecognition;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 161
    :try_start_0
    invoke-direct {p0}, Lcom/vivo/common/autobrightness/SceneRecognition;->recognizeSceneUnlocked()I

    move-result v0

    monitor-exit v1

    return v0

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 295
    iget-object v1, p0, Lcom/vivo/common/autobrightness/SceneRecognition;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 297
    :try_start_0
    iget-object v0, p0, Lcom/vivo/common/autobrightness/SceneRecognition;->mSceneRecognizeHandler:Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;->removeMessages(I)V

    .line 298
    iget-object v0, p0, Lcom/vivo/common/autobrightness/SceneRecognition;->mSceneRecognizeHandler:Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;->removeMessages(I)V

    .line 299
    iget-object v0, p0, Lcom/vivo/common/autobrightness/SceneRecognition;->mSceneRecognizeHandler:Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;->removeMessages(I)V

    .line 300
    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/common/autobrightness/SceneRecognition;->mSceneState:I

    .line 301
    iget-object v0, p0, Lcom/vivo/common/autobrightness/SceneRecognition;->mAbInfoStatistics:Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;

    invoke-virtual {v0}, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->reset()V

    .line 302
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/common/autobrightness/SceneRecognition;->mIsSceneRecognizing:Z

    .line 303
    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/common/autobrightness/SceneRecognition;->mAutoInfoBufferedCount:I

    .line 304
    monitor-exit v1

    .line 305
    return-void

    .line 304
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sceneToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "scene"    # I

    .prologue
    .line 221
    sparse-switch p1, :sswitch_data_0

    .line 231
    const-string v0, "un-surpported"

    :goto_0
    return-object v0

    .line 223
    :sswitch_0
    const-string v0, "SCENE_UNKOWN"

    goto :goto_0

    .line 225
    :sswitch_1
    const-string v0, "SCENE_DUSKY_STEADY"

    goto :goto_0

    .line 227
    :sswitch_2
    const-string v0, "SCENE_DUSKY_FLOATING"

    goto :goto_0

    .line 229
    :sswitch_3
    const-string v0, "SCENE_DUSKY_FALL_DOWN"

    goto :goto_0

    .line 221
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x201 -> :sswitch_1
        0x202 -> :sswitch_2
        0x204 -> :sswitch_3
    .end sparse-switch
.end method

.method public start()V
    .locals 6

    .prologue
    .line 308
    iget-object v1, p0, Lcom/vivo/common/autobrightness/SceneRecognition;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 310
    :try_start_0
    iget-object v0, p0, Lcom/vivo/common/autobrightness/SceneRecognition;->mSceneRecognizeHandler:Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;->removeMessages(I)V

    .line 311
    iget-object v0, p0, Lcom/vivo/common/autobrightness/SceneRecognition;->mSceneRecognizeHandler:Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;->removeMessages(I)V

    .line 312
    iget-object v0, p0, Lcom/vivo/common/autobrightness/SceneRecognition;->mSceneRecognizeHandler:Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;->removeMessages(I)V

    .line 314
    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/common/autobrightness/SceneRecognition;->mSceneState:I

    .line 315
    iget-object v0, p0, Lcom/vivo/common/autobrightness/SceneRecognition;->mAbInfoStatistics:Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;

    invoke-virtual {v0}, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->reset()V

    .line 316
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/common/autobrightness/SceneRecognition;->mIsSceneRecognizing:Z

    .line 317
    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/common/autobrightness/SceneRecognition;->mAutoInfoBufferedCount:I

    .line 319
    iget-object v0, p0, Lcom/vivo/common/autobrightness/SceneRecognition;->mSceneRecognizeHandler:Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;

    const/4 v2, 0x1

    sget v3, Lcom/vivo/common/autobrightness/SceneRecognition;->GET_INFO_DELAY_TIME_QUICK:I

    int-to-long v4, v3

    invoke-virtual {v0, v2, v4, v5}, Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 320
    iget-object v0, p0, Lcom/vivo/common/autobrightness/SceneRecognition;->mSceneRecognizeHandler:Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;

    const/4 v2, 0x3

    sget v3, Lcom/vivo/common/autobrightness/SceneRecognition;->GET_INFO_DELAY_TIME:I

    int-to-long v4, v3

    invoke-virtual {v0, v2, v4, v5}, Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 321
    iget-object v0, p0, Lcom/vivo/common/autobrightness/SceneRecognition;->mSceneRecognizeHandler:Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;

    const/4 v2, 0x2

    sget v3, Lcom/vivo/common/autobrightness/SceneRecognition;->GET_INFO_DELAY_TIME:I

    int-to-long v4, v3

    invoke-virtual {v0, v2, v4, v5}, Lcom/vivo/common/autobrightness/SceneRecognition$SceneRecognizeHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 323
    monitor-exit v1

    .line 324
    return-void

    .line 323
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateAutobrightInfo(Lcom/vivo/common/autobrightness/AutobrightInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/vivo/common/autobrightness/AutobrightInfo;

    .prologue
    .line 275
    iget-object v1, p0, Lcom/vivo/common/autobrightness/SceneRecognition;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 276
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/vivo/common/autobrightness/SceneRecognition;->updateAutobrightInfoUnlocked(Lcom/vivo/common/autobrightness/AutobrightInfo;)V

    .line 277
    monitor-exit v1

    .line 278
    return-void

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateAutobrightInfoUnlocked(Lcom/vivo/common/autobrightness/AutobrightInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/vivo/common/autobrightness/AutobrightInfo;

    .prologue
    .line 282
    if-nez p1, :cond_0

    .line 283
    const-string v0, "updateAutobrightInfoUnlocked info is null. "

    invoke-direct {p0, v0}, Lcom/vivo/common/autobrightness/SceneRecognition;->log(Ljava/lang/String;)V

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/vivo/common/autobrightness/SceneRecognition;->mAbInfoStatistics:Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;

    invoke-virtual {v0, p1}, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->addInfoToQueue(Lcom/vivo/common/autobrightness/AutobrightInfo;)V

    .line 286
    iget v0, p0, Lcom/vivo/common/autobrightness/SceneRecognition;->mAutoInfoBufferedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vivo/common/autobrightness/SceneRecognition;->mAutoInfoBufferedCount:I

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAutoInfoBufferedCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vivo/common/autobrightness/SceneRecognition;->mAutoInfoBufferedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/common/autobrightness/SceneRecognition;->mAbInfoStatistics:Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;

    invoke-virtual {v1}, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/common/autobrightness/SceneRecognition;->mAbInfoStatistics:Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;

    invoke-virtual {v1}, Lcom/vivo/common/autobrightness/AutobrightInfoStatistics;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vivo/common/autobrightness/SceneRecognition;->log(Ljava/lang/String;)V

    .line 292
    return-void
.end method
