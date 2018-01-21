.class public Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;
.super Ljava/lang/Object;
.source "CameraParamLumaReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$ParamResult;
    }
.end annotation


# static fields
.field private static final CAMERA_CCT_COUNT:I = 0x8

.field private static final CAMERA_CCT_DEFAULT:I = 0x1388

.field private static final CAMERA_CCT_THRESHOLD:I = 0xc80

.field private static final CAMERA_ID_FACING_BACK:Ljava/lang/String;

.field private static final CAMERA_ID_FACING_FRONT:Ljava/lang/String;

.field private static final CAMERA_INDEX_DEFAULT:I = 0x1f4

.field private static final CAMERA_LUMA_COUNT:I

.field private static final DEBUG_LUMA_PARAMETER:Z

.field public static final DEFAULT_CAMERA_LEVEL:I = 0x3

.field private static final DEFAULT_CAMERA_LUMA_INVALID:I = -0x1

.field private static final DEFAULT_ENV_SCREEN_LEVEL:I = 0x7

.field private static final KEY_CAMERA_CCT:Ljava/lang/String; = "wb-current-cct"

.field private static final KEY_CAMERA_ID:Ljava/lang/String; = "current_camera_id"

.field private static final KEY_CAMERA_LUMA:Ljava/lang/String; = "estimate-current-luma"

.field private static final KEY_EXP_INDEX:Ljava/lang/String; = "exp_index"

.field private static final PROP_BACK_CCT_LIST:Ljava/lang/String; = "debug.backcct.list"

.field private static final PROP_BACK_INDEX_LIST:Ljava/lang/String; = "debug.backindex.list"

.field private static final PROP_BACK_LUMA_LIST:Ljava/lang/String; = "debug.backluma.list"

.field private static final PROP_CAM_BACK_CCT_AVG:Ljava/lang/String; = "debug.backcct.average"

.field private static final PROP_CAM_BACK_CCT_EXCETPION:Ljava/lang/String; = "debug.backcct.exception"

.field private static final PROP_CAM_BACK_INDEX_AVG:Ljava/lang/String; = "debug.backindex.average"

.field private static final PROP_CAM_BACK_INDEX_EXCEPTION:Ljava/lang/String; = "debug.backindex.exception"

.field private static final PROP_CAM_BACK_LUMA_AVG:Ljava/lang/String; = "debug.backluma.average"

.field private static final PROP_CAM_BACK_LUMA_EXCETPION:Ljava/lang/String; = "debug.backluma.exception"

.field private static final PROP_CAM_BOTH_CCT_AVG:Ljava/lang/String; = "debug.bothcct.average"

.field private static final PROP_CAM_BOTH_INDEX_AVG:Ljava/lang/String; = "debug.bothindex.average"

.field private static final PROP_CAM_BOTH_LUMA_AVG:Ljava/lang/String; = "debug.bothluma.average"

.field private static final PROP_CAM_CCT_AVG:Ljava/lang/String; = "debug.cct.average"

.field private static final PROP_CAM_CCT_EXCETPION:Ljava/lang/String; = "debug.cct.exception"

.field private static final PROP_CAM_INDEX_AVG:Ljava/lang/String; = "debug.index.average"

.field private static final PROP_CAM_INDEX_EXCETPION:Ljava/lang/String; = "debug.index.exception"

.field private static final PROP_CAM_LEVEL:Ljava/lang/String; = "debug.luma.cam_level"

.field private static final PROP_CAM_LUMA_AVG:Ljava/lang/String; = "debug.luma.average"

.field private static final PROP_CAM_LUMA_EXCETPION:Ljava/lang/String; = "debug.luma.exception"

.field private static final PROP_CCT_LIST:Ljava/lang/String; = "debug.cct.list"

.field private static final PROP_DEBUG_LUMA_PARAMETER:Ljava/lang/String; = "debug.luma.parameter"

.field private static final PROP_INDEX_LIST:Ljava/lang/String; = "debug.index.list"

.field private static final PROP_LIGHT_LEVEL:Ljava/lang/String; = "debug.luma.light_level"

.field private static final PROP_LUMA_LIST:Ljava/lang/String; = "debug.luma.list"

.field private static final PROP_RUN_CAM_SVC:Ljava/lang/String; = "debug.luma.run_cam"

.field private static final PROP_SCREEN_LEVEL:Ljava/lang/String; = "debug.luma.screen_level"

.field private static final PROP_USE_CAMERA_BACK:Ljava/lang/String; = "persist.use.backcamera"

.field private static final PROP_WAIT_CAM_SVC:Ljava/lang/String; = "debug.luma.wait_cam"

.field private static final TAG:Ljava/lang/String; = "CameraParamLumaReceiver"

.field private static final USE_CAMERA_FACING_BACK:Z

.field private static final USE_CAMERA_LUMA:Z


# instance fields
.field private mCameraBackCctAverage:I

.field private mCameraBackCctException:Z

.field private mCameraBackCctList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraBackCctValid:Z

.field private mCameraBackIndexAverage:I

.field private mCameraBackIndexException:Z

.field private mCameraBackIndexList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraBackIndexValid:Z

.field private mCameraBackLumaAverage:I

.field private mCameraBackLumaException:Z

.field private mCameraBackLumaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraBackLumaValid:Z

.field private mCameraBoundaries:[I

.field private mCameraCctAverage:I

.field private mCameraCctException:Z

.field private mCameraCctList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraCctValid:Z

.field private mCameraIndexAverage:I

.field private mCameraIndexException:Z

.field private mCameraIndexList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraIndexValid:Z

.field private mCameraLumaAverage:I

.field private mCameraLumaException:Z

.field private mCameraLumaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraLumaValid:Z

.field private mCameraServiceStatus:I

.field private mContext:Landroid/content/Context;

.field private mDegree:I

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mLock:Ljava/lang/Object;

.field private mLumaInfo:Lcom/vivo/common/autobrightness/LumaInfo;

.field private mLumaResultCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$LumaResultCallback;

.field private mLux:I

.field private mParamParser:Lcom/vivo/common/autobrightness/ParamParser;

.field private mWaitCameraService:Z

.field private mWaitHandler:Landroid/os/Handler;

.field private mWaitRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30
    const-string v0, "persist.use.backcamera"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->USE_CAMERA_FACING_BACK:Z

    .line 32
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isUseCameraLuma()Z

    move-result v0

    sput-boolean v0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->USE_CAMERA_LUMA:Z

    .line 75
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->CAMERA_ID_FACING_BACK:Ljava/lang/String;

    .line 77
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->CAMERA_ID_FACING_FRONT:Ljava/lang/String;

    .line 81
    const-string v0, "debug.luma.parameter"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->DEBUG_LUMA_PARAMETER:Z

    .line 83
    sget-boolean v0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->DEBUG_LUMA_PARAMETER:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    :goto_0
    sput v0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->CAMERA_LUMA_COUNT:I

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/vivo/common/autobrightness/CameraLumaCallback$LumaResultCallback;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/vivo/common/autobrightness/CameraLumaCallback$LumaResultCallback;

    .prologue
    const/4 v0, -0x1

    const/4 v2, 0x0

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraLumaAverage:I

    .line 98
    iput v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraCctAverage:I

    .line 99
    iput v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackLumaAverage:I

    .line 100
    iput v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackCctAverage:I

    .line 101
    iput v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraIndexAverage:I

    .line 102
    iput v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackIndexAverage:I

    .line 103
    new-instance v0, Lcom/vivo/common/autobrightness/ParamParser;

    invoke-direct {v0}, Lcom/vivo/common/autobrightness/ParamParser;-><init>()V

    iput-object v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mParamParser:Lcom/vivo/common/autobrightness/ParamParser;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    sget v1, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->CAMERA_LUMA_COUNT:I

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraLumaList:Ljava/util/List;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    sget v1, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->CAMERA_LUMA_COUNT:I

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraCctList:Ljava/util/List;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    sget v1, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->CAMERA_LUMA_COUNT:I

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackLumaList:Ljava/util/List;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    sget v1, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->CAMERA_LUMA_COUNT:I

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackCctList:Ljava/util/List;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    sget v1, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->CAMERA_LUMA_COUNT:I

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraIndexList:Ljava/util/List;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    sget v1, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->CAMERA_LUMA_COUNT:I

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackIndexList:Ljava/util/List;

    .line 127
    iput-boolean v2, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraLumaValid:Z

    .line 130
    iput-boolean v2, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraCctValid:Z

    .line 133
    iput-boolean v2, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackLumaValid:Z

    .line 136
    iput-boolean v2, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackCctValid:Z

    .line 139
    iput-boolean v2, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraIndexValid:Z

    .line 141
    iput-boolean v2, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackIndexValid:Z

    .line 143
    iput-boolean v2, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraIndexException:Z

    .line 145
    iput-boolean v2, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackIndexException:Z

    .line 147
    iput-boolean v2, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraLumaException:Z

    .line 150
    iput-boolean v2, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraCctException:Z

    .line 153
    iput-boolean v2, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackLumaException:Z

    .line 158
    iput-boolean v2, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackCctException:Z

    .line 164
    const/16 v0, 0x64

    iput v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mLux:I

    .line 165
    const/4 v0, 0x4

    iput v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mDegree:I

    .line 166
    iput-boolean v2, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mWaitCameraService:Z

    .line 168
    const/4 v0, 0x2

    iput v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraServiceStatus:I

    .line 174
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mLock:Ljava/lang/Object;

    .line 552
    new-instance v0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;

    invoke-direct {v0, p0}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver$1;-><init>(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)V

    iput-object v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mWaitRunnable:Ljava/lang/Runnable;

    .line 177
    iput-object p1, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mContext:Landroid/content/Context;

    .line 178
    invoke-direct {p0}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->initCameraBoundaries()V

    .line 179
    iput-object p2, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mLumaResultCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$LumaResultCallback;

    .line 180
    new-instance v0, Lcom/vivo/common/autobrightness/LumaInfo;

    invoke-direct {v0}, Lcom/vivo/common/autobrightness/LumaInfo;-><init>()V

    iput-object v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mLumaInfo:Lcom/vivo/common/autobrightness/LumaInfo;

    .line 181
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CameraParamLumaReceiver"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mHandlerThread:Landroid/os/HandlerThread;

    .line 182
    iget-object v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 183
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mWaitHandler:Landroid/os/Handler;

    .line 184
    return-void
.end method

.method static synthetic access$000(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->setprop(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraIndexList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraLumaValid:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraLumaValid:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    .prologue
    .line 25
    iget v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraLumaAverage:I

    return v0
.end method

.method static synthetic access$1202(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraLumaAverage:I

    return p1
.end method

.method static synthetic access$1300(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    .prologue
    .line 25
    iget v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraCctAverage:I

    return v0
.end method

.method static synthetic access$1302(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraCctAverage:I

    return p1
.end method

.method static synthetic access$1400(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraCctValid:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraCctValid:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraCctException:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    .prologue
    .line 25
    iget v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraIndexAverage:I

    return v0
.end method

.method static synthetic access$1602(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraIndexAverage:I

    return p1
.end method

.method static synthetic access$1700(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraIndexValid:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraIndexValid:Z

    return p1
.end method

.method static synthetic access$1802(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraIndexException:Z

    return p1
.end method

.method static synthetic access$1900()Z
    .locals 1

    .prologue
    .line 25
    sget-boolean v0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->USE_CAMERA_FACING_BACK:Z

    return v0
.end method

.method static synthetic access$200(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraLumaList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    .prologue
    .line 25
    iget v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackLumaAverage:I

    return v0
.end method

.method static synthetic access$2002(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackLumaAverage:I

    return p1
.end method

.method static synthetic access$2100(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackLumaValid:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackLumaValid:Z

    return p1
.end method

.method static synthetic access$2202(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackLumaException:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    .prologue
    .line 25
    iget v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackCctAverage:I

    return v0
.end method

.method static synthetic access$2302(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackCctAverage:I

    return p1
.end method

.method static synthetic access$2400(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackCctValid:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackCctValid:Z

    return p1
.end method

.method static synthetic access$2502(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackCctException:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    .prologue
    .line 25
    iget v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackIndexAverage:I

    return v0
.end method

.method static synthetic access$2602(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackIndexAverage:I

    return p1
.end method

.method static synthetic access$2700(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackIndexValid:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackIndexValid:Z

    return p1
.end method

.method static synthetic access$2802(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackIndexException:Z

    return p1
.end method

.method static synthetic access$2902(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraLumaException:Z

    return p1
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 25
    sget v0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->CAMERA_LUMA_COUNT:I

    return v0
.end method

.method static synthetic access$3000(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)Lcom/vivo/common/autobrightness/LumaInfo;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mLumaInfo:Lcom/vivo/common/autobrightness/LumaInfo;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->isLumaRetry()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Lcom/vivo/common/autobrightness/LumaInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;
    .param p1, "x1"    # Lcom/vivo/common/autobrightness/LumaInfo;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->calcCameraLevel(Lcom/vivo/common/autobrightness/LumaInfo;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)Lcom/vivo/common/autobrightness/CameraLumaCallback$LumaResultCallback;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mLumaResultCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$LumaResultCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mWaitCameraService:Z

    return v0
.end method

.method static synthetic access$402(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mWaitCameraService:Z

    return p1
.end method

.method static synthetic access$500(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraCctList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackLumaList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackCctList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$900(Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackIndexList:Ljava/util/List;

    return-object v0
.end method

.method private calcCameraLevel(Lcom/vivo/common/autobrightness/LumaInfo;)V
    .locals 14
    .param p1, "info"    # Lcom/vivo/common/autobrightness/LumaInfo;

    .prologue
    const/4 v13, 0x5

    const/16 v12, 0xc80

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 334
    invoke-virtual {p1}, Lcom/vivo/common/autobrightness/LumaInfo;->getLumaValue()I

    move-result v4

    .line 335
    .local v4, "luma":I
    invoke-virtual {p1}, Lcom/vivo/common/autobrightness/LumaInfo;->getCctValue()I

    move-result v1

    .line 336
    .local v1, "cct":I
    invoke-virtual {p1}, Lcom/vivo/common/autobrightness/LumaInfo;->getLumaValid()Z

    move-result v6

    .line 337
    .local v6, "valid":Z
    invoke-direct {p0}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->getLux()I

    move-result v5

    .line 338
    .local v5, "lux":I
    invoke-direct {p0}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->getDegree()I

    move-result v2

    .line 339
    .local v2, "degree":I
    const/4 v0, 0x1

    .line 344
    .local v0, "camLevel":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "calcCameraLevel lux="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " valid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->log(Ljava/lang/String;)V

    .line 345
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "calcCameraLevel degree="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2}, Lcom/vivo/common/autobrightness/LightController;->degreeToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " luma="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " cct="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->log(Ljava/lang/String;)V

    .line 348
    if-ne v2, v11, :cond_3

    .line 349
    if-nez v6, :cond_1

    .line 350
    const/4 v0, 0x7

    .line 454
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mLumaInfo:Lcom/vivo/common/autobrightness/LumaInfo;

    invoke-virtual {v7, v0}, Lcom/vivo/common/autobrightness/LumaInfo;->setLumaLevel(I)V

    .line 455
    return-void

    .line 352
    :cond_1
    iget-object v7, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBoundaries:[I

    aget v7, v7, v11

    if-gt v4, v7, :cond_2

    .line 353
    iget-object v7, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mLumaInfo:Lcom/vivo/common/autobrightness/LumaInfo;

    invoke-virtual {v7}, Lcom/vivo/common/autobrightness/LumaInfo;->getLumaLevel()I

    move-result v0

    goto :goto_0

    .line 355
    :cond_2
    const/4 v0, 0x7

    goto :goto_0

    .line 358
    :cond_3
    if-eq v2, v9, :cond_4

    if-eq v2, v10, :cond_4

    if-nez v2, :cond_0

    .line 361
    :cond_4
    if-eqz v6, :cond_19

    .line 362
    if-nez v5, :cond_b

    .line 363
    if-ge v1, v12, :cond_9

    .line 364
    iget-object v7, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBoundaries:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    if-gt v4, v7, :cond_5

    .line 365
    const/4 v0, 0x0

    goto :goto_0

    .line 366
    :cond_5
    iget-object v7, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBoundaries:[I

    aget v7, v7, v9

    if-gt v4, v7, :cond_6

    .line 367
    const/4 v0, 0x1

    goto :goto_0

    .line 368
    :cond_6
    iget-object v7, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBoundaries:[I

    aget v7, v7, v10

    if-gt v4, v7, :cond_7

    .line 369
    const/4 v0, 0x2

    goto :goto_0

    .line 370
    :cond_7
    iget-object v7, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBoundaries:[I

    aget v7, v7, v11

    if-gt v4, v7, :cond_8

    .line 371
    const/4 v0, 0x3

    goto :goto_0

    .line 373
    :cond_8
    const/4 v0, 0x5

    goto :goto_0

    .line 376
    :cond_9
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v13, :cond_0

    .line 377
    iget-object v7, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBoundaries:[I

    aget v7, v7, v3

    if-gt v4, v7, :cond_a

    .line 378
    move v0, v3

    .line 379
    goto :goto_0

    .line 381
    :cond_a
    add-int/lit8 v0, v3, 0x1

    .line 376
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 386
    .end local v3    # "i":I
    :cond_b
    if-ne v5, v9, :cond_12

    .line 387
    if-ge v1, v12, :cond_f

    .line 388
    iget-object v7, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBoundaries:[I

    aget v7, v7, v9

    if-gt v4, v7, :cond_c

    .line 389
    const/4 v0, 0x2

    goto :goto_0

    .line 390
    :cond_c
    iget-object v7, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBoundaries:[I

    aget v7, v7, v10

    if-gt v4, v7, :cond_d

    .line 391
    const/4 v0, 0x4

    goto :goto_0

    .line 392
    :cond_d
    iget-object v7, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBoundaries:[I

    aget v7, v7, v11

    if-gt v4, v7, :cond_e

    .line 393
    const/4 v0, 0x5

    goto :goto_0

    .line 395
    :cond_e
    const/4 v0, 0x6

    goto :goto_0

    .line 398
    :cond_f
    const/4 v3, 0x1

    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v13, :cond_10

    .line 399
    iget-object v7, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBoundaries:[I

    aget v7, v7, v3

    if-gt v4, v7, :cond_11

    .line 400
    move v0, v3

    .line 407
    :cond_10
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ddd got lumaExcep=false lux(<=1)="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " luma="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " camLevel="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 403
    :cond_11
    add-int/lit8 v0, v3, 0x1

    .line 398
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 413
    .end local v3    # "i":I
    :cond_12
    if-ge v1, v12, :cond_16

    .line 414
    iget-object v7, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBoundaries:[I

    aget v7, v7, v9

    if-gt v4, v7, :cond_13

    .line 415
    const/4 v0, 0x3

    goto/16 :goto_0

    .line 416
    :cond_13
    iget-object v7, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBoundaries:[I

    aget v7, v7, v10

    if-gt v4, v7, :cond_14

    .line 417
    const/4 v0, 0x5

    goto/16 :goto_0

    .line 418
    :cond_14
    iget-object v7, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBoundaries:[I

    aget v7, v7, v11

    if-gt v4, v7, :cond_15

    .line 419
    const/4 v0, 0x6

    goto/16 :goto_0

    .line 421
    :cond_15
    const/4 v0, 0x7

    goto/16 :goto_0

    .line 424
    :cond_16
    const/4 v3, 0x1

    .restart local v3    # "i":I
    :goto_3
    const/4 v7, 0x7

    if-ge v3, v7, :cond_17

    .line 425
    iget-object v7, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBoundaries:[I

    aget v7, v7, v3

    if-gt v4, v7, :cond_18

    .line 426
    move v0, v3

    .line 433
    :cond_17
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ddd got lumaExcep=false lux(>1)="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " luma="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " camLevel="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 429
    :cond_18
    add-int/lit8 v0, v3, 0x1

    .line 424
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 440
    .end local v3    # "i":I
    :cond_19
    if-lt v5, v10, :cond_1a

    .line 441
    iget-object v7, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mLumaInfo:Lcom/vivo/common/autobrightness/LumaInfo;

    invoke-virtual {v7}, Lcom/vivo/common/autobrightness/LumaInfo;->getLumaLevel()I

    move-result v0

    .line 442
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ddd got lumaExcep=true lux="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " useCurrent=true "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " camLevel=mLumaInfo.mCameraLevel="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 445
    :cond_1a
    if-lt v5, v9, :cond_1b

    if-ge v5, v10, :cond_1b

    .line 446
    const/4 v0, 0x2

    .line 447
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ddd got lumaExcep=true lux="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " camLevel=2"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 449
    :cond_1b
    const/4 v0, 0x0

    .line 450
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ddd got lumaExcep=true lux="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " camLevel=0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private getDegree()I
    .locals 1

    .prologue
    .line 470
    iget v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mDegree:I

    return v0
.end method

.method private getLux()I
    .locals 1

    .prologue
    .line 462
    iget v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mLux:I

    return v0
.end method

.method private initCameraBoundaries()V
    .locals 6

    .prologue
    const v4, 0x3090061

    .line 187
    iget-object v3, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 188
    .local v2, "resources":Landroid/content/res/Resources;
    const-string v3, "ro.product.model.bbk"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, "model":Ljava/lang/String;
    const-string v0, ""

    .line 190
    .local v0, "configBoundary":Ljava/lang/String;
    const-string v3, "pd1408bl"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 191
    const v3, 0x3090048

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBoundaries:[I

    .line 192
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "camera_boundary_pd1408bl"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 288
    :goto_0
    invoke-static {}, Lcom/vivo/common/autobrightness/CollectConfiguration;->getInstance()Lcom/vivo/common/autobrightness/CollectConfiguration;

    move-result-object v3

    const-string v4, "LumaBoundary"

    invoke-virtual {v3, v4, v0}, Lcom/vivo/common/autobrightness/CollectConfiguration;->addConfiguration(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    return-void

    .line 193
    :cond_0
    const-string v3, "pd1421v"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 194
    const v3, 0x309004a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBoundaries:[I

    .line 195
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "camera_boundary_pd1421v"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 196
    :cond_1
    const-string v3, "pd1421f_ex"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 197
    const v3, 0x309004b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBoundaries:[I

    .line 198
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "camera_boundary_pd1421f_ex"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 199
    :cond_2
    const-string v3, "pd1421"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 200
    const v3, 0x3090049

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBoundaries:[I

    .line 201
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "camera_boundary_pd1421"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 202
    :cond_3
    const-string v3, "pd1422"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 203
    const v3, 0x3090051

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBoundaries:[I

    .line 204
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "camera_boundary_pd1422l"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 205
    :cond_4
    const-string v3, "pd1401cl"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 206
    const v3, 0x3090044

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBoundaries:[I

    .line 207
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "camera_boundary_pd1410l"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 208
    :cond_5
    const-string v3, "pd1502f_ex"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 209
    const v3, 0x309004c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBoundaries:[I

    .line 210
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "camera_boundary_pd1502f_ex"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 211
    :cond_6
    const-string v3, "pd1502l"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 212
    const v3, 0x309004d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBoundaries:[I

    .line 213
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "camera_boundary_pd1502l"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 214
    :cond_7
    const-string v3, "pd1502a"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 215
    const v3, 0x309004e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBoundaries:[I

    .line 216
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "camera_boundary_pd1502a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 217
    :cond_8
    const-string v3, "pd1304dw_ex"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "pd1505w_ex"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "pd1505bw_ex"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 218
    :cond_9
    const v3, 0x3090053

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBoundaries:[I

    .line 219
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "camera_boundary_pd1304dw_ex"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 220
    :cond_a
    const-string v3, "pd1503f_ex"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 221
    const v3, 0x3090050

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBoundaries:[I

    .line 222
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "camera_boundary_pd1503f_ex"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 223
    :cond_b
    const-string v3, "pd1503"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "pd1621"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "td1605"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 224
    :cond_c
    const v3, 0x309004f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBoundaries:[I

    .line 225
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "camera_boundary_pd1503"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 226
    :cond_d
    const-string v3, "pd1405"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 227
    const v3, 0x3090054

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBoundaries:[I

    .line 228
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "camera_boundary_pd1405"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 229
    :cond_e
    const-string v3, "pd1419"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 230
    const v3, 0x3090055

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBoundaries:[I

    .line 231
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "camera_boundary_pd1419"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 232
    :cond_f
    const-string v3, "pd1415d"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "pd1612"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 233
    :cond_10
    const v3, 0x3090056

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBoundaries:[I

    .line 234
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "camera_boundary_pd1415l"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 235
    :cond_11
    const-string v3, "pd1515ba"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    const-string v3, "pd1501b"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 236
    :cond_12
    const v3, 0x309005c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBoundaries:[I

    .line 237
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "camera_boundary_pd1515ba"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 238
    :cond_13
    const-string v3, "pd1415a"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14

    const-string v3, "pd1515"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 239
    :cond_14
    const v3, 0x3090057

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBoundaries:[I

    .line 240
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "camera_boundary_pd1415a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 241
    :cond_15
    const-string v3, "pd1415b"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 242
    const v3, 0x3090058

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBoundaries:[I

    .line 243
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "camera_boundary_pd1415ba"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 244
    :cond_16
    const-string v3, "pd1501d"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 245
    const v3, 0x3090059

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBoundaries:[I

    .line 246
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "camera_boundary_pd1501d"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 247
    :cond_17
    const-string v3, "pd1510"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 248
    const v3, 0x309005a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBoundaries:[I

    .line 249
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "camera_boundary_pd1510"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 250
    :cond_18
    const-string v3, "pd1309cw_ex"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 251
    const v3, 0x309005d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBoundaries:[I

    .line 252
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "camera_boundary_pd1309cw_ex"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 253
    :cond_19
    const-string v3, "pd1505f_ex"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1a

    const-string v3, "pd1602"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1a

    const-string v3, "pd1613"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 254
    :cond_1a
    const v3, 0x3090060

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBoundaries:[I

    .line 255
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "camera_boundary_pd1505f_ex"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 256
    :cond_1b
    const-string v3, "pd1505"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 257
    const v3, 0x309005f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBoundaries:[I

    .line 258
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "camera_boundary_pd1505l"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 259
    :cond_1c
    const-string v3, "pd1516"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1d

    const-string v3, "pd1522"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1d

    const-string v3, "pd1603"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1d

    const-string v3, "td1603"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 260
    :cond_1d
    const v3, 0x309005b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBoundaries:[I

    .line 261
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "camera_boundary_pd1516a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 262
    :cond_1e
    const-string v3, "pd1309f_ex"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 263
    const v3, 0x309005e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBoundaries:[I

    .line 264
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "camera_boundary_pd1309f_ex"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 265
    :cond_1f
    const-string v3, "pd1524"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_20

    const-string v3, "pd1523"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_20

    const-string v3, "td1602"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 266
    :cond_20
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBoundaries:[I

    .line 267
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "camera_boundary_pd1524"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 268
    :cond_21
    const-string v3, "pd1610"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 269
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBoundaries:[I

    .line 270
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "camera_boundary_pd1524"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 271
    :cond_22
    const-string v3, "pd1616"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 272
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBoundaries:[I

    .line 273
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "camera_boundary_pd1524"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 274
    :cond_23
    const-string v3, "pd1617"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 275
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBoundaries:[I

    .line 276
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "camera_boundary_pd1524"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 277
    :cond_24
    const-string v3, "pd1619"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 278
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBoundaries:[I

    .line 279
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "camera_boundary_pd1524"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 280
    :cond_25
    const-string v3, "pd1624"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 281
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBoundaries:[I

    .line 282
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "camera_boundary_pd1524"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 284
    :cond_26
    const v3, 0x3090040

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBoundaries:[I

    .line 285
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "camera_boundary_default{WARNING-DEFAULT}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 286
    const-string v3, "CameraParamLumaReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AutoBrightnessWARNING:use defalt camera oundary: model="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; go provider specific parameter!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private isLumaRetry()Z
    .locals 2

    .prologue
    .line 330
    iget v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraServiceStatus:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

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
    .line 474
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    const-string v0, "CameraParamLumaReceiver"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :cond_0
    return-void
.end method

.method private onLumaServiceTimeout()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 764
    iget-object v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mLumaInfo:Lcom/vivo/common/autobrightness/LumaInfo;

    invoke-virtual {v0, v2}, Lcom/vivo/common/autobrightness/LumaInfo;->setLumaValid(Z)V

    .line 765
    iget-object v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mLumaInfo:Lcom/vivo/common/autobrightness/LumaInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vivo/common/autobrightness/LumaInfo;->setLumaTimeout(Z)V

    .line 766
    iget-object v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mLumaResultCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$LumaResultCallback;

    iget-object v1, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mLumaInfo:Lcom/vivo/common/autobrightness/LumaInfo;

    invoke-interface {v0, v1}, Lcom/vivo/common/autobrightness/CameraLumaCallback$LumaResultCallback;->onGetLumaResult(Lcom/vivo/common/autobrightness/LumaInfo;)V

    .line 767
    iget-object v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mLumaInfo:Lcom/vivo/common/autobrightness/LumaInfo;

    invoke-virtual {v0, v2}, Lcom/vivo/common/autobrightness/LumaInfo;->setLumaTimeout(Z)V

    .line 768
    return-void
.end method

.method private reset()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 292
    iput v1, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraLumaAverage:I

    .line 293
    iput v1, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraCctAverage:I

    .line 294
    iput v1, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackLumaAverage:I

    .line 295
    iput v1, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackCctAverage:I

    .line 296
    iput-boolean v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mWaitCameraService:Z

    .line 297
    iput-boolean v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraLumaValid:Z

    .line 299
    iput-boolean v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraCctValid:Z

    .line 301
    iput-boolean v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackLumaValid:Z

    .line 304
    iput-boolean v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackCctValid:Z

    .line 307
    iput-boolean v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraLumaException:Z

    .line 310
    iput-boolean v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraCctException:Z

    .line 313
    iput-boolean v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackLumaException:Z

    .line 316
    iput-boolean v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackCctException:Z

    .line 319
    iget-object v1, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 320
    :try_start_0
    iget-object v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraLumaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 321
    iget-object v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraCctList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 322
    iget-object v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackLumaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 323
    iget-object v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackCctList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 324
    iget-object v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraIndexList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 325
    iget-object v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackIndexList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 326
    monitor-exit v1

    .line 327
    return-void

    .line 326
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setprop(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .prologue
    .line 480
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x5a

    if-ge v0, v1, :cond_0

    .line 481
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    :cond_0
    return-void
.end method


# virtual methods
.method public notifyCameraParamLuma(Ljava/lang/String;)I
    .locals 12
    .param p1, "keyval"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 818
    :try_start_0
    iget-boolean v7, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mWaitCameraService:Z

    if-nez v7, :cond_0

    .line 819
    const-string v7, "notifyCameraParamLuma not mWaitCameraService,return."

    invoke-direct {p0, v7}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->log(Ljava/lang/String;)V

    .line 888
    :goto_0
    return v6

    .line 822
    :cond_0
    iget-object v7, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mParamParser:Lcom/vivo/common/autobrightness/ParamParser;

    invoke-virtual {v7, p1}, Lcom/vivo/common/autobrightness/ParamParser;->unflatten(Ljava/lang/String;)V

    .line 823
    iget-object v7, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mParamParser:Lcom/vivo/common/autobrightness/ParamParser;

    const-string v8, "estimate-current-luma"

    invoke-virtual {v7, v8}, Lcom/vivo/common/autobrightness/ParamParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 824
    .local v4, "luma":Ljava/lang/String;
    iget-object v7, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mParamParser:Lcom/vivo/common/autobrightness/ParamParser;

    const-string v8, "wb-current-cct"

    invoke-virtual {v7, v8}, Lcom/vivo/common/autobrightness/ParamParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 825
    .local v1, "cct":Ljava/lang/String;
    iget-object v7, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mParamParser:Lcom/vivo/common/autobrightness/ParamParser;

    const-string v8, "exp_index"

    invoke-virtual {v7, v8}, Lcom/vivo/common/autobrightness/ParamParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 826
    .local v3, "index":Ljava/lang/String;
    const-string v5, "(front:1,back:0) "

    .line 828
    .local v5, "tempStr":Ljava/lang/String;
    iget-object v7, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mParamParser:Lcom/vivo/common/autobrightness/ParamParser;

    const-string v8, "current_camera_id"

    invoke-virtual {v7, v8}, Lcom/vivo/common/autobrightness/ParamParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 829
    .local v0, "camId":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v7, ""

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 830
    if-eqz v0, :cond_4

    sget-object v7, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->CAMERA_ID_FACING_BACK:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 831
    iget-object v7, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackCctList:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 832
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cameraId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "mCameraCct="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mCameraBackCctList.size()="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackCctList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->log(Ljava/lang/String;)V

    .line 842
    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    const-string v7, ""

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 843
    if-eqz v0, :cond_5

    sget-object v7, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->CAMERA_ID_FACING_BACK:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 844
    iget-object v7, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackIndexList:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 845
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cameraId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "mCameraIndex="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "mCameraBackIndexList.size()="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackIndexList:Ljava/util/List;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->log(Ljava/lang/String;)V

    .line 854
    :cond_2
    :goto_2
    if-eqz v4, :cond_8

    const-string v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 855
    if-eqz v0, :cond_6

    sget-object v7, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->CAMERA_ID_FACING_BACK:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 856
    iget-object v7, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackLumaList:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 857
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cameraId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "mCameraLuma="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mCameraBackLumaList.size()="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackLumaList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->log(Ljava/lang/String;)V

    .line 867
    :goto_3
    sget-boolean v7, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->USE_CAMERA_FACING_BACK:Z

    if-eqz v7, :cond_7

    .line 868
    iget-object v7, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraBackLumaList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    sget v8, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->CAMERA_LUMA_COUNT:I

    if-ne v7, v8, :cond_3

    .line 870
    iget-object v7, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mWaitHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mWaitRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 871
    const-string v7, "notifyCameraParamLuma postDelayed(mWaitRunnable,1)"

    invoke-direct {p0, v7}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->log(Ljava/lang/String;)V

    .line 872
    iget-object v7, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mWaitHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mWaitRunnable:Ljava/lang/Runnable;

    const-wide/16 v10, 0x1

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 888
    :cond_3
    :goto_4
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 836
    :cond_4
    iget-object v7, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraCctList:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 837
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cameraId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "mCameraCct="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mCameraCctList.size()="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraCctList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 884
    .end local v0    # "camId":Ljava/lang/String;
    .end local v1    # "cct":Ljava/lang/String;
    .end local v3    # "index":Ljava/lang/String;
    .end local v4    # "luma":Ljava/lang/String;
    .end local v5    # "tempStr":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 885
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v7, "CameraParamLumaReceiver"

    const-string v8, "wrong luma format string"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 849
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .restart local v0    # "camId":Ljava/lang/String;
    .restart local v1    # "cct":Ljava/lang/String;
    .restart local v3    # "index":Ljava/lang/String;
    .restart local v4    # "luma":Ljava/lang/String;
    .restart local v5    # "tempStr":Ljava/lang/String;
    :cond_5
    :try_start_1
    iget-object v7, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraIndexList:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 850
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cameraId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "mCameraIndex="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mCameraIndexList.size()="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraIndexList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 861
    :cond_6
    iget-object v7, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraLumaList:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 862
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cameraId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "mCameraLuma="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mCameraLumaList.size()="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraLumaList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 875
    :cond_7
    iget-object v7, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraLumaList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    sget v8, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->CAMERA_LUMA_COUNT:I

    if-ne v7, v8, :cond_3

    .line 876
    iget-object v7, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mWaitHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mWaitRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 877
    const-string v7, "notifyCameraParamLuma postDelayed(mWaitRunnable,1)"

    invoke-direct {p0, v7}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->log(Ljava/lang/String;)V

    .line 878
    iget-object v7, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mWaitHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mWaitRunnable:Ljava/lang/Runnable;

    const-wide/16 v10, 0x1

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_4

    .line 882
    :cond_8
    const-string v7, "notifyCameraParamLuma luma is null or \"\""

    invoke-direct {p0, v7}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4
.end method

.method public setDegree(I)V
    .locals 0
    .param p1, "degree"    # I

    .prologue
    .line 466
    iput p1, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mDegree:I

    .line 467
    return-void
.end method

.method public setLumaServiceStatus(I)I
    .locals 5
    .param p1, "status"    # I

    .prologue
    const/4 v4, 0x0

    .line 778
    iget-boolean v0, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mWaitCameraService:Z

    .line 779
    .local v0, "temp":Z
    packed-switch p1, :pswitch_data_0

    .line 807
    const-string v1, "CameraParamLumaReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLumaServiceStatus unkownStatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    :goto_0
    const-string v1, "CameraParamLumaReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLumaServiceStatus status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " change mWaitCameraService from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mWaitCameraService:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    return v4

    .line 782
    :pswitch_0
    iget-boolean v1, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mWaitCameraService:Z

    if-eqz v1, :cond_0

    .line 783
    iget-object v1, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mWaitHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mWaitRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 785
    :cond_0
    invoke-direct {p0}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->reset()V

    .line 786
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mWaitCameraService:Z

    .line 787
    iput p1, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraServiceStatus:I

    goto :goto_0

    .line 791
    :pswitch_1
    iget-boolean v1, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mWaitCameraService:Z

    if-eqz v1, :cond_1

    .line 792
    iget-object v1, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mWaitHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mWaitRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 793
    iget-object v1, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mLumaInfo:Lcom/vivo/common/autobrightness/LumaInfo;

    invoke-virtual {v1, v4}, Lcom/vivo/common/autobrightness/LumaInfo;->setLumaValid(Z)V

    .line 795
    :cond_1
    invoke-direct {p0}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->reset()V

    .line 796
    iput p1, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraServiceStatus:I

    goto :goto_0

    .line 799
    :pswitch_2
    iget-boolean v1, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mWaitCameraService:Z

    if-eqz v1, :cond_2

    .line 800
    iget-object v1, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mWaitHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mWaitRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 801
    invoke-direct {p0}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->onLumaServiceTimeout()V

    .line 803
    :cond_2
    invoke-direct {p0}, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->reset()V

    .line 804
    iput p1, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mCameraServiceStatus:I

    goto :goto_0

    .line 779
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public setLux(I)V
    .locals 0
    .param p1, "lux"    # I

    .prologue
    .line 458
    iput p1, p0, Lcom/vivo/common/autobrightness/CameraParamLumaReceiver;->mLux:I

    .line 459
    return-void
.end method
