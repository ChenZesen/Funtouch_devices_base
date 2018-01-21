.class public Lcom/vivo/services/motion/GestureService;
.super Ljava/lang/Object;
.source "GestureService.java"

# interfaces
.implements Lcom/vivo/services/motion/IMotionRecognitionService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/services/motion/GestureService$1;,
        Lcom/vivo/services/motion/GestureService$GestureServiceHandler;,
        Lcom/vivo/services/motion/GestureService$MotionSensorEventListener;
    }
.end annotation


# static fields
.field private static final DETECT_TYPE_ANDROID:I = 0x2

.field private static final DETECT_TYPE_CUSTOM:I = 0x1

.field private static final MAX_AUTOSTOP_CNT:I = 0xa

.field private static final MAX_SAMPLE:I = 0x3e8

.field private static final MSG_GESTURE_ERROR_TRIGER:I = 0x0

.field private static final MSG_GESTURE_M_TRIGER:I = 0x1

.field private static final MSG_GESTURE_S_TRIGER:I = 0x2

.field private static final MSG_GESTURE_V_TRIGER:I = 0x3

.field private static final TAG:Ljava/lang/String; = "GestureService"

.field private static final TYPE_AIRWAKE_VECTOR:I = 0x15

.field private static final TYPE_AIRWAKE_VECTOR_END:F = 99.0f

.field private static final TYPE_AIRWAKE_VECTOR_ERROR:F = 88.0f

.field private static detectType:I

.field private static letterNum:I

.field private static mCallBackHandler:Landroid/os/Handler;

.field private static mDetect:Lcom/vivo/services/motion/gesture/MotionDetect;

.field private static mGestureDetectCustom:Lcom/vivo/services/motion/gesture/GestureDetectCustom;

.field private static mGestureDetector:Lcom/vivo/services/motion/gesture/GestureDetector;

.field private static mSingleGestureService:Lcom/vivo/services/motion/GestureService;

.field private static mTestView:Lcom/vivo/services/motion/gesture/MotionTestView;


# instance fields
.field private isGestureServiceWorking:Z

.field private mAirWakeVector:Lcom/vivo/services/motion/GestureService$MotionSensorEventListener;

.field private mAutoStopCnt:I

.field private mAutoStopOn:Z

.field private mCapturing:Z

.field private mContext:Landroid/content/Context;

.field private mLinearAcceleration:Lcom/vivo/services/motion/GestureService$MotionSensorEventListener;

.field private mRotationVector:Lcom/vivo/services/motion/GestureService$MotionSensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mServiceHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    new-instance v0, Lcom/vivo/services/motion/GestureService;

    invoke-direct {v0}, Lcom/vivo/services/motion/GestureService;-><init>()V

    sput-object v0, Lcom/vivo/services/motion/GestureService;->mSingleGestureService:Lcom/vivo/services/motion/GestureService;

    .line 52
    sput-object v1, Lcom/vivo/services/motion/GestureService;->mCallBackHandler:Landroid/os/Handler;

    .line 58
    const/4 v0, 0x0

    sput v0, Lcom/vivo/services/motion/GestureService;->letterNum:I

    .line 59
    sput-object v1, Lcom/vivo/services/motion/GestureService;->mTestView:Lcom/vivo/services/motion/gesture/MotionTestView;

    .line 60
    sput-object v1, Lcom/vivo/services/motion/GestureService;->mDetect:Lcom/vivo/services/motion/gesture/MotionDetect;

    .line 61
    sput-object v1, Lcom/vivo/services/motion/GestureService;->mGestureDetectCustom:Lcom/vivo/services/motion/gesture/GestureDetectCustom;

    .line 62
    sput-object v1, Lcom/vivo/services/motion/GestureService;->mGestureDetector:Lcom/vivo/services/motion/gesture/GestureDetector;

    .line 64
    const/4 v0, 0x2

    sput v0, Lcom/vivo/services/motion/GestureService;->detectType:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean v0, p0, Lcom/vivo/services/motion/GestureService;->mCapturing:Z

    .line 46
    iput-boolean v0, p0, Lcom/vivo/services/motion/GestureService;->isGestureServiceWorking:Z

    .line 47
    iput-boolean v0, p0, Lcom/vivo/services/motion/GestureService;->mAutoStopOn:Z

    .line 48
    iput v0, p0, Lcom/vivo/services/motion/GestureService;->mAutoStopCnt:I

    .line 50
    iput-object v1, p0, Lcom/vivo/services/motion/GestureService;->mContext:Landroid/content/Context;

    .line 51
    iput-object v1, p0, Lcom/vivo/services/motion/GestureService;->mServiceHandler:Landroid/os/Handler;

    .line 253
    new-instance v0, Lcom/vivo/services/motion/GestureService$MotionSensorEventListener;

    invoke-direct {v0, p0, v1}, Lcom/vivo/services/motion/GestureService$MotionSensorEventListener;-><init>(Lcom/vivo/services/motion/GestureService;Lcom/vivo/services/motion/GestureService$1;)V

    iput-object v0, p0, Lcom/vivo/services/motion/GestureService;->mAirWakeVector:Lcom/vivo/services/motion/GestureService$MotionSensorEventListener;

    .line 254
    return-void
.end method

.method static synthetic access$000(Lcom/vivo/services/motion/GestureService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/GestureService;

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/vivo/services/motion/GestureService;->mCapturing:Z

    return v0
.end method

.method static synthetic access$100(Lcom/vivo/services/motion/GestureService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/GestureService;

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/vivo/services/motion/GestureService;->mAutoStopOn:Z

    return v0
.end method

.method static synthetic access$200(Lcom/vivo/services/motion/GestureService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/GestureService;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/vivo/services/motion/GestureService;->stopMotionRecognitionServiceInternel()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/vivo/services/motion/GestureService;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/GestureService;

    .prologue
    .line 23
    iget v0, p0, Lcom/vivo/services/motion/GestureService;->mAutoStopCnt:I

    return v0
.end method

.method static synthetic access$308(Lcom/vivo/services/motion/GestureService;)I
    .locals 2
    .param p0, "x0"    # Lcom/vivo/services/motion/GestureService;

    .prologue
    .line 23
    iget v0, p0, Lcom/vivo/services/motion/GestureService;->mAutoStopCnt:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/vivo/services/motion/GestureService;->mAutoStopCnt:I

    return v0
.end method

.method static synthetic access$400()Lcom/vivo/services/motion/gesture/MotionDetect;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/vivo/services/motion/GestureService;->mDetect:Lcom/vivo/services/motion/gesture/MotionDetect;

    return-object v0
.end method

.method static synthetic access$500()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/vivo/services/motion/GestureService;->mCallBackHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private gestureResult()I
    .locals 4

    .prologue
    .line 209
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/vivo/services/motion/GestureService;->setCapturing(Z)V

    .line 211
    sget v1, Lcom/vivo/services/motion/GestureService;->detectType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 213
    sget-object v1, Lcom/vivo/services/motion/GestureService;->mGestureDetectCustom:Lcom/vivo/services/motion/gesture/GestureDetectCustom;

    invoke-virtual {v1}, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->reset()V

    .line 214
    sget-object v1, Lcom/vivo/services/motion/GestureService;->mTestView:Lcom/vivo/services/motion/gesture/MotionTestView;

    invoke-virtual {v1}, Lcom/vivo/services/motion/gesture/MotionTestView;->normalsize()V

    .line 215
    sget-object v1, Lcom/vivo/services/motion/GestureService;->mTestView:Lcom/vivo/services/motion/gesture/MotionTestView;

    iget-object v1, v1, Lcom/vivo/services/motion/gesture/MotionTestView;->mPath2dNomal:[Lcom/vivo/services/motion/gesture/util/Vector3D;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/vivo/services/motion/GestureService;->mTestView:Lcom/vivo/services/motion/gesture/MotionTestView;

    iget-object v1, v1, Lcom/vivo/services/motion/gesture/MotionTestView;->mPath2d:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_0

    .line 217
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/vivo/services/motion/GestureService;->mTestView:Lcom/vivo/services/motion/gesture/MotionTestView;

    iget-object v1, v1, Lcom/vivo/services/motion/gesture/MotionTestView;->mPath2dNomal:[Lcom/vivo/services/motion/gesture/util/Vector3D;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 219
    const-string v1, "GestureService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mTestView.mPath2dNomal[i].getX(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/vivo/services/motion/GestureService;->mTestView:Lcom/vivo/services/motion/gesture/MotionTestView;

    iget-object v3, v3, Lcom/vivo/services/motion/gesture/MotionTestView;->mPath2dNomal:[Lcom/vivo/services/motion/gesture/util/Vector3D;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getX()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mTestView.mPath2dNomal[i].getY(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/vivo/services/motion/GestureService;->mTestView:Lcom/vivo/services/motion/gesture/MotionTestView;

    iget-object v3, v3, Lcom/vivo/services/motion/gesture/MotionTestView;->mPath2dNomal:[Lcom/vivo/services/motion/gesture/util/Vector3D;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getY()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    sget-object v1, Lcom/vivo/services/motion/GestureService;->mGestureDetectCustom:Lcom/vivo/services/motion/gesture/GestureDetectCustom;

    sget-object v2, Lcom/vivo/services/motion/GestureService;->mTestView:Lcom/vivo/services/motion/gesture/MotionTestView;

    iget-object v2, v2, Lcom/vivo/services/motion/gesture/MotionTestView;->mPath2dNomal:[Lcom/vivo/services/motion/gesture/util/Vector3D;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getX()F

    move-result v2

    sget-object v3, Lcom/vivo/services/motion/GestureService;->mTestView:Lcom/vivo/services/motion/gesture/MotionTestView;

    iget-object v3, v3, Lcom/vivo/services/motion/gesture/MotionTestView;->mPath2dNomal:[Lcom/vivo/services/motion/gesture/util/Vector3D;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->path2dData(FFI)V

    .line 217
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 226
    .end local v0    # "i":I
    :cond_0
    const-string v1, "GestureService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+++++gesture trace too short,return+++++"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/vivo/services/motion/GestureService;->letterNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    sget v1, Lcom/vivo/services/motion/GestureService;->letterNum:I

    .line 236
    :goto_1
    return v1

    .line 229
    .restart local v0    # "i":I
    :cond_1
    sget-object v1, Lcom/vivo/services/motion/GestureService;->mGestureDetectCustom:Lcom/vivo/services/motion/gesture/GestureDetectCustom;

    invoke-virtual {v1}, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->recognition()I

    move-result v1

    sput v1, Lcom/vivo/services/motion/GestureService;->letterNum:I

    .line 236
    .end local v0    # "i":I
    :goto_2
    sget v1, Lcom/vivo/services/motion/GestureService;->letterNum:I

    goto :goto_1

    .line 233
    :cond_2
    sget-object v1, Lcom/vivo/services/motion/GestureService;->mGestureDetector:Lcom/vivo/services/motion/gesture/GestureDetector;

    sget-object v2, Lcom/vivo/services/motion/GestureService;->mDetect:Lcom/vivo/services/motion/gesture/MotionDetect;

    iget-object v2, v2, Lcom/vivo/services/motion/gesture/MotionDetect;->mPathBuffer2D:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Lcom/vivo/services/motion/gesture/GestureDetector;->process(Ljava/util/Vector;)V

    .line 234
    sget-object v1, Lcom/vivo/services/motion/GestureService;->mGestureDetector:Lcom/vivo/services/motion/gesture/GestureDetector;

    invoke-virtual {v1}, Lcom/vivo/services/motion/gesture/GestureDetector;->recognition()I

    move-result v1

    sput v1, Lcom/vivo/services/motion/GestureService;->letterNum:I

    goto :goto_2
.end method

.method public static getInstance()Lcom/vivo/services/motion/GestureService;
    .locals 1

    .prologue
    .line 246
    sget-object v0, Lcom/vivo/services/motion/GestureService;->mSingleGestureService:Lcom/vivo/services/motion/GestureService;

    return-object v0
.end method

.method public static loadGestureLib()V
    .locals 0

    .prologue
    .line 241
    invoke-static {}, Lcom/vivo/services/motion/gesture/GestureDetector;->loadGestureLib()V

    .line 242
    return-void
.end method

.method private setCapturing(Z)V
    .locals 3
    .param p1, "paramBoolean"    # Z

    .prologue
    .line 186
    const-string v0, "GestureService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCapturing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/vivo/services/motion/GestureService;->mCapturing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-boolean v0, p0, Lcom/vivo/services/motion/GestureService;->mCapturing:Z

    if-ne v0, p1, :cond_0

    .line 205
    :goto_0
    return-void

    .line 189
    :cond_0
    iput-boolean p1, p0, Lcom/vivo/services/motion/GestureService;->mCapturing:Z

    .line 191
    iget-boolean v0, p0, Lcom/vivo/services/motion/GestureService;->mCapturing:Z

    if-eqz v0, :cond_1

    .line 194
    sget-object v0, Lcom/vivo/services/motion/GestureService;->mDetect:Lcom/vivo/services/motion/gesture/MotionDetect;

    invoke-virtual {v0}, Lcom/vivo/services/motion/gesture/MotionDetect;->start()V

    goto :goto_0

    .line 198
    :cond_1
    sget-object v0, Lcom/vivo/services/motion/GestureService;->mDetect:Lcom/vivo/services/motion/gesture/MotionDetect;

    invoke-virtual {v0}, Lcom/vivo/services/motion/gesture/MotionDetect;->stop()V

    .line 199
    sget-object v0, Lcom/vivo/services/motion/GestureService;->mDetect:Lcom/vivo/services/motion/gesture/MotionDetect;

    invoke-virtual {v0}, Lcom/vivo/services/motion/gesture/MotionDetect;->result()V

    .line 200
    sget-object v0, Lcom/vivo/services/motion/GestureService;->mTestView:Lcom/vivo/services/motion/gesture/MotionTestView;

    sget-object v1, Lcom/vivo/services/motion/GestureService;->mDetect:Lcom/vivo/services/motion/gesture/MotionDetect;

    iget-object v1, v1, Lcom/vivo/services/motion/gesture/MotionDetect;->mPathBuffer2D:Ljava/util/Vector;

    iput-object v1, v0, Lcom/vivo/services/motion/gesture/MotionTestView;->mPath2d:Ljava/util/Vector;

    .line 201
    sget-object v0, Lcom/vivo/services/motion/GestureService;->mTestView:Lcom/vivo/services/motion/gesture/MotionTestView;

    sget-object v1, Lcom/vivo/services/motion/GestureService;->mDetect:Lcom/vivo/services/motion/gesture/MotionDetect;

    iget-object v1, v1, Lcom/vivo/services/motion/gesture/MotionDetect;->mPathBuffer3D:Ljava/util/Vector;

    iput-object v1, v0, Lcom/vivo/services/motion/gesture/MotionTestView;->mPath3d:Ljava/util/Vector;

    .line 202
    sget-object v0, Lcom/vivo/services/motion/GestureService;->mTestView:Lcom/vivo/services/motion/gesture/MotionTestView;

    sget-object v1, Lcom/vivo/services/motion/GestureService;->mDetect:Lcom/vivo/services/motion/gesture/MotionDetect;

    iget-object v1, v1, Lcom/vivo/services/motion/gesture/MotionDetect;->mNormalVectors:[Lcom/vivo/services/motion/gesture/util/Vector3D;

    iput-object v1, v0, Lcom/vivo/services/motion/gesture/MotionTestView;->mNormal:[Lcom/vivo/services/motion/gesture/util/Vector3D;

    goto :goto_0
.end method

.method private stopMotionRecognitionServiceInternel()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 302
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 303
    .local v0, "msg":Landroid/os/Message;
    const-string v1, "GestureService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopMotionRecognitionServiceInternel working:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/vivo/services/motion/GestureService;->isGestureServiceWorking:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " total num:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/vivo/services/motion/GestureService;->mDetect:Lcom/vivo/services/motion/gesture/MotionDetect;

    iget v3, v3, Lcom/vivo/services/motion/gesture/MotionDetect;->sample_num:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iput v5, p0, Lcom/vivo/services/motion/GestureService;->mAutoStopCnt:I

    .line 306
    iput-boolean v4, p0, Lcom/vivo/services/motion/GestureService;->mAutoStopOn:Z

    .line 308
    iget-boolean v1, p0, Lcom/vivo/services/motion/GestureService;->isGestureServiceWorking:Z

    if-ne v1, v4, :cond_3

    .line 310
    invoke-direct {p0}, Lcom/vivo/services/motion/GestureService;->gestureResult()I

    move-result v1

    sput v1, Lcom/vivo/services/motion/GestureService;->letterNum:I

    .line 311
    sget-object v1, Lcom/vivo/services/motion/GestureService;->mDetect:Lcom/vivo/services/motion/gesture/MotionDetect;

    iget v1, v1, Lcom/vivo/services/motion/gesture/MotionDetect;->sample_num:I

    const/16 v2, 0x3e8

    if-le v1, v2, :cond_0

    .line 312
    sput v5, Lcom/vivo/services/motion/GestureService;->letterNum:I

    .line 314
    :cond_0
    const-string v1, "GestureService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "letterNum: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/vivo/services/motion/GestureService;->letterNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    sget v1, Lcom/vivo/services/motion/GestureService;->letterNum:I

    if-ne v1, v4, :cond_4

    .line 324
    iput v4, v0, Landroid/os/Message;->what:I

    .line 333
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/vivo/services/motion/GestureService;->mServiceHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 334
    iget-object v1, p0, Lcom/vivo/services/motion/GestureService;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 336
    :cond_2
    iput-boolean v5, p0, Lcom/vivo/services/motion/GestureService;->isGestureServiceWorking:Z

    .line 337
    iget-object v1, p0, Lcom/vivo/services/motion/GestureService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v1, :cond_3

    .line 341
    iget-object v1, p0, Lcom/vivo/services/motion/GestureService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/vivo/services/motion/GestureService;->mAirWakeVector:Lcom/vivo/services/motion/GestureService$MotionSensorEventListener;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 342
    const-string v1, "GestureService"

    const-string v2, "sensor unregisterListener"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_3
    iput-object v8, p0, Lcom/vivo/services/motion/GestureService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 346
    iput-object v8, p0, Lcom/vivo/services/motion/GestureService;->mServiceHandler:Landroid/os/Handler;

    .line 348
    return v4

    .line 325
    :cond_4
    sget v1, Lcom/vivo/services/motion/GestureService;->letterNum:I

    if-ne v1, v6, :cond_5

    .line 326
    iput v6, v0, Landroid/os/Message;->what:I

    goto :goto_0

    .line 327
    :cond_5
    sget v1, Lcom/vivo/services/motion/GestureService;->letterNum:I

    if-ne v1, v7, :cond_6

    .line 328
    iput v7, v0, Landroid/os/Message;->what:I

    goto :goto_0

    .line 329
    :cond_6
    sget v1, Lcom/vivo/services/motion/GestureService;->letterNum:I

    if-nez v1, :cond_1

    .line 330
    iput v5, v0, Landroid/os/Message;->what:I

    goto :goto_0
.end method


# virtual methods
.method public startMotionRecognitionService(Landroid/content/Context;Landroid/os/Handler;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 259
    const-string v0, "GestureService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startMotionRecognitionService "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/vivo/services/motion/GestureService;->isGestureServiceWorking:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    sput v3, Lcom/vivo/services/motion/GestureService;->letterNum:I

    .line 263
    iput v3, p0, Lcom/vivo/services/motion/GestureService;->mAutoStopCnt:I

    .line 264
    iput-boolean v3, p0, Lcom/vivo/services/motion/GestureService;->mAutoStopOn:Z

    .line 266
    sget-object v0, Lcom/vivo/services/motion/GestureService;->mTestView:Lcom/vivo/services/motion/gesture/MotionTestView;

    if-nez v0, :cond_0

    .line 267
    invoke-static {p1}, Lcom/vivo/services/motion/gesture/MotionTestView;->getInstance(Landroid/content/Context;)Lcom/vivo/services/motion/gesture/MotionTestView;

    move-result-object v0

    sput-object v0, Lcom/vivo/services/motion/GestureService;->mTestView:Lcom/vivo/services/motion/gesture/MotionTestView;

    .line 269
    :cond_0
    sget-object v0, Lcom/vivo/services/motion/GestureService;->mDetect:Lcom/vivo/services/motion/gesture/MotionDetect;

    if-nez v0, :cond_1

    .line 270
    invoke-static {p1}, Lcom/vivo/services/motion/gesture/MotionDetect;->getInstance(Landroid/content/Context;)Lcom/vivo/services/motion/gesture/MotionDetect;

    move-result-object v0

    sput-object v0, Lcom/vivo/services/motion/GestureService;->mDetect:Lcom/vivo/services/motion/gesture/MotionDetect;

    .line 272
    :cond_1
    sget-object v0, Lcom/vivo/services/motion/GestureService;->mGestureDetectCustom:Lcom/vivo/services/motion/gesture/GestureDetectCustom;

    if-nez v0, :cond_2

    .line 273
    invoke-static {p1}, Lcom/vivo/services/motion/gesture/GestureDetectCustom;->getInstance(Landroid/content/Context;)Lcom/vivo/services/motion/gesture/GestureDetectCustom;

    move-result-object v0

    sput-object v0, Lcom/vivo/services/motion/GestureService;->mGestureDetectCustom:Lcom/vivo/services/motion/gesture/GestureDetectCustom;

    .line 275
    :cond_2
    sget-object v0, Lcom/vivo/services/motion/GestureService;->mGestureDetector:Lcom/vivo/services/motion/gesture/GestureDetector;

    if-nez v0, :cond_3

    .line 276
    invoke-static {p1}, Lcom/vivo/services/motion/gesture/GestureDetector;->getInstance(Landroid/content/Context;)Lcom/vivo/services/motion/gesture/GestureDetector;

    move-result-object v0

    sput-object v0, Lcom/vivo/services/motion/GestureService;->mGestureDetector:Lcom/vivo/services/motion/gesture/GestureDetector;

    .line 278
    :cond_3
    iget-object v0, p0, Lcom/vivo/services/motion/GestureService;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_4

    if-eqz p1, :cond_4

    .line 279
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/vivo/services/motion/GestureService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 281
    :cond_4
    iget-boolean v0, p0, Lcom/vivo/services/motion/GestureService;->isGestureServiceWorking:Z

    if-nez v0, :cond_6

    .line 283
    iput-object p1, p0, Lcom/vivo/services/motion/GestureService;->mContext:Landroid/content/Context;

    .line 284
    sput-object p2, Lcom/vivo/services/motion/GestureService;->mCallBackHandler:Landroid/os/Handler;

    .line 285
    new-instance v0, Lcom/vivo/services/motion/GestureService$GestureServiceHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vivo/services/motion/GestureService$GestureServiceHandler;-><init>(Lcom/vivo/services/motion/GestureService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vivo/services/motion/GestureService;->mServiceHandler:Landroid/os/Handler;

    .line 286
    iput-boolean v4, p0, Lcom/vivo/services/motion/GestureService;->isGestureServiceWorking:Z

    .line 288
    iget-object v0, p0, Lcom/vivo/services/motion/GestureService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_5

    .line 292
    iget-object v0, p0, Lcom/vivo/services/motion/GestureService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/vivo/services/motion/GestureService;->mAirWakeVector:Lcom/vivo/services/motion/GestureService$MotionSensorEventListener;

    iget-object v2, p0, Lcom/vivo/services/motion/GestureService;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v3, 0x15

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    const/16 v3, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 294
    :cond_5
    invoke-direct {p0, v4}, Lcom/vivo/services/motion/GestureService;->setCapturing(Z)V

    .line 297
    :cond_6
    return v4
.end method

.method public stopMotionRecognitionService()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 353
    const-string v0, "GestureService"

    const-string v1, "stopMotionRecognitionService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    sget-object v0, Lcom/vivo/services/motion/GestureService;->mDetect:Lcom/vivo/services/motion/gesture/MotionDetect;

    iget v0, v0, Lcom/vivo/services/motion/gesture/MotionDetect;->sample_num:I

    if-nez v0, :cond_0

    .line 356
    invoke-direct {p0}, Lcom/vivo/services/motion/GestureService;->stopMotionRecognitionServiceInternel()Z

    .line 362
    :goto_0
    return v2

    .line 360
    :cond_0
    iput-boolean v2, p0, Lcom/vivo/services/motion/GestureService;->mAutoStopOn:Z

    goto :goto_0
.end method
