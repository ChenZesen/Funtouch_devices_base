.class public Lcom/vivo/services/motion/gesture/GestureDetector;
.super Ljava/lang/Object;
.source "GestureDetector.java"


# static fields
.field private static final GESTURE_ERROR:I = 0x0

.field private static final GESTURE_M:I = 0x1

.field private static final GESTURE_S:I = 0x2

.field private static final GESTURE_V:I = 0x3

.field private static final GesturesFile:Ljava/io/File;

.field private static final PerfectOrientationChange:D = 2.5

.field private static final PerfectScore:D = 1.5

.field private static final Pi:D = 3.1415926

.field private static final TAG:Ljava/lang/String; = "GestureDetector"

.field private static mContext:Landroid/content/Context; = null

.field private static mDebug:Z = false

.field private static mDebugFile:Ljava/io/File; = null

.field private static final mDebugFlagFile:Ljava/io/File;

.field private static mDebugStore:Lcom/vivo/services/motion/gesture/gesture/GestureLibrary; = null

.field private static mStore:Lcom/vivo/services/motion/gesture/gesture/GestureLibrary; = null

.field private static mTime:Landroid/text/format/Time; = null

.field private static final quarterPi:D = 0.7853982

.field private static singleGestureDetect:Lcom/vivo/services/motion/gesture/GestureDetector;


# instance fields
.field private mCurrentGesture:Lcom/vivo/services/motion/gesture/gesture/Gesture;

.field private mCurrentMirrorGesture:Lcom/vivo/services/motion/gesture/gesture/Gesture;

.field private mStrokeBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vivo/services/motion/gesture/gesture/GesturePoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 63
    sput-object v3, Lcom/vivo/services/motion/gesture/GestureDetector;->mStore:Lcom/vivo/services/motion/gesture/gesture/GestureLibrary;

    .line 68
    sput-object v3, Lcom/vivo/services/motion/gesture/GestureDetector;->singleGestureDetect:Lcom/vivo/services/motion/gesture/GestureDetector;

    .line 70
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "AirWake/vivo_gestures"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/vivo/services/motion/gesture/GestureDetector;->GesturesFile:Ljava/io/File;

    .line 73
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vivo/services/motion/gesture/GestureDetector;->mDebug:Z

    .line 74
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "AirWake/debug_gestures"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/vivo/services/motion/gesture/GestureDetector;->mDebugFlagFile:Ljava/io/File;

    .line 76
    sput-object v3, Lcom/vivo/services/motion/gesture/GestureDetector;->mDebugStore:Lcom/vivo/services/motion/gesture/gesture/GestureLibrary;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object v0, p0, Lcom/vivo/services/motion/gesture/GestureDetector;->mCurrentGesture:Lcom/vivo/services/motion/gesture/gesture/Gesture;

    .line 65
    iput-object v0, p0, Lcom/vivo/services/motion/gesture/GestureDetector;->mCurrentMirrorGesture:Lcom/vivo/services/motion/gesture/gesture/Gesture;

    return-void
.end method

.method private getGestureNum(Ljava/lang/String;)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 143
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x6d

    if-eq v1, v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x4d

    if-ne v1, v2, :cond_2

    .line 144
    :cond_0
    const/4 v0, 0x1

    .line 150
    :cond_1
    :goto_0
    return v0

    .line 145
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x73

    if-eq v1, v2, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x53

    if-ne v1, v2, :cond_4

    .line 146
    :cond_3
    const/4 v0, 0x2

    goto :goto_0

    .line 147
    :cond_4
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x76

    if-eq v1, v2, :cond_5

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x56

    if-ne v1, v2, :cond_1

    .line 148
    :cond_5
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/vivo/services/motion/gesture/GestureDetector;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    const-string v0, "GestureDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/vivo/services/motion/gesture/GestureDetector;->mStore:Lcom/vivo/services/motion/gesture/gesture/GestureLibrary;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    sget-object v0, Lcom/vivo/services/motion/gesture/GestureDetector;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 84
    sput-object p0, Lcom/vivo/services/motion/gesture/GestureDetector;->mContext:Landroid/content/Context;

    .line 86
    :cond_0
    sget-object v0, Lcom/vivo/services/motion/gesture/GestureDetector;->mStore:Lcom/vivo/services/motion/gesture/gesture/GestureLibrary;

    if-nez v0, :cond_1

    .line 87
    invoke-static {}, Lcom/vivo/services/motion/gesture/GestureDetector;->loadGestureLib()V

    .line 90
    :cond_1
    sget-object v0, Lcom/vivo/services/motion/gesture/GestureDetector;->singleGestureDetect:Lcom/vivo/services/motion/gesture/GestureDetector;

    if-nez v0, :cond_2

    .line 91
    new-instance v0, Lcom/vivo/services/motion/gesture/GestureDetector;

    invoke-direct {v0}, Lcom/vivo/services/motion/gesture/GestureDetector;-><init>()V

    sput-object v0, Lcom/vivo/services/motion/gesture/GestureDetector;->singleGestureDetect:Lcom/vivo/services/motion/gesture/GestureDetector;

    .line 93
    :cond_2
    sget-object v0, Lcom/vivo/services/motion/gesture/GestureDetector;->singleGestureDetect:Lcom/vivo/services/motion/gesture/GestureDetector;

    return-object v0
.end method

.method public static loadGestureLib()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 98
    const-string v2, "GestureDetector"

    const-string v3, "loadGestureLib"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    sget-object v2, Lcom/vivo/services/motion/gesture/GestureDetector;->mDebugFlagFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    sput-boolean v2, Lcom/vivo/services/motion/gesture/GestureDetector;->mDebug:Z

    .line 103
    sget-object v2, Lcom/vivo/services/motion/gesture/GestureDetector;->mStore:Lcom/vivo/services/motion/gesture/gesture/GestureLibrary;

    if-nez v2, :cond_2

    .line 105
    sget-boolean v2, Lcom/vivo/services/motion/gesture/GestureDetector;->mDebug:Z

    if-eqz v2, :cond_3

    .line 107
    sget-object v2, Lcom/vivo/services/motion/gesture/GestureDetector;->GesturesFile:Ljava/io/File;

    invoke-static {v2}, Lcom/vivo/services/motion/gesture/gesture/GestureLibraries;->fromFile(Ljava/io/File;)Lcom/vivo/services/motion/gesture/gesture/GestureLibrary;

    move-result-object v2

    sput-object v2, Lcom/vivo/services/motion/gesture/GestureDetector;->mStore:Lcom/vivo/services/motion/gesture/gesture/GestureLibrary;

    .line 109
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    sput-object v2, Lcom/vivo/services/motion/gesture/GestureDetector;->mTime:Landroid/text/format/Time;

    .line 110
    sget-object v2, Lcom/vivo/services/motion/gesture/GestureDetector;->mTime:Landroid/text/format/Time;

    invoke-virtual {v2}, Landroid/text/format/Time;->setToNow()V

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AirWake/gestures_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%02d"

    new-array v4, v7, [Ljava/lang/Object;

    sget-object v5, Lcom/vivo/services/motion/gesture/GestureDetector;->mTime:Landroid/text/format/Time;

    iget v5, v5, Landroid/text/format/Time;->month:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%02d"

    new-array v4, v7, [Ljava/lang/Object;

    sget-object v5, Lcom/vivo/services/motion/gesture/GestureDetector;->mTime:Landroid/text/format/Time;

    iget v5, v5, Landroid/text/format/Time;->monthDay:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%02d"

    new-array v4, v7, [Ljava/lang/Object;

    sget-object v5, Lcom/vivo/services/motion/gesture/GestureDetector;->mTime:Landroid/text/format/Time;

    iget v5, v5, Landroid/text/format/Time;->hour:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%02d"

    new-array v4, v7, [Ljava/lang/Object;

    sget-object v5, Lcom/vivo/services/motion/gesture/GestureDetector;->mTime:Landroid/text/format/Time;

    iget v5, v5, Landroid/text/format/Time;->minute:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "file":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v2, Lcom/vivo/services/motion/gesture/GestureDetector;->mDebugFile:Ljava/io/File;

    .line 115
    sget-object v2, Lcom/vivo/services/motion/gesture/GestureDetector;->mDebugFile:Ljava/io/File;

    invoke-static {v2}, Lcom/vivo/services/motion/gesture/gesture/GestureLibraries;->fromFile(Ljava/io/File;)Lcom/vivo/services/motion/gesture/gesture/GestureLibrary;

    move-result-object v2

    sput-object v2, Lcom/vivo/services/motion/gesture/GestureDetector;->mDebugStore:Lcom/vivo/services/motion/gesture/gesture/GestureLibrary;

    .line 122
    .end local v1    # "file":Ljava/lang/String;
    :goto_0
    sget-object v2, Lcom/vivo/services/motion/gesture/GestureDetector;->mStore:Lcom/vivo/services/motion/gesture/gesture/GestureLibrary;

    if-eqz v2, :cond_0

    .line 123
    sget-object v2, Lcom/vivo/services/motion/gesture/GestureDetector;->mStore:Lcom/vivo/services/motion/gesture/gesture/GestureLibrary;

    invoke-virtual {v2}, Lcom/vivo/services/motion/gesture/gesture/GestureLibrary;->load()Z

    .line 125
    :cond_0
    sget-boolean v2, Lcom/vivo/services/motion/gesture/GestureDetector;->mDebug:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/vivo/services/motion/gesture/GestureDetector;->mDebugStore:Lcom/vivo/services/motion/gesture/gesture/GestureLibrary;

    if-eqz v2, :cond_1

    .line 126
    sget-object v2, Lcom/vivo/services/motion/gesture/GestureDetector;->mDebugStore:Lcom/vivo/services/motion/gesture/gesture/GestureLibrary;

    invoke-virtual {v2}, Lcom/vivo/services/motion/gesture/gesture/GestureLibrary;->load()Z

    .line 128
    :cond_1
    sget-object v2, Lcom/vivo/services/motion/gesture/GestureDetector;->mStore:Lcom/vivo/services/motion/gesture/gesture/GestureLibrary;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/vivo/services/motion/gesture/gesture/GestureLibrary;->setOrientationStyle(I)V

    .line 129
    sget-object v2, Lcom/vivo/services/motion/gesture/GestureDetector;->mStore:Lcom/vivo/services/motion/gesture/gesture/GestureLibrary;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/vivo/services/motion/gesture/gesture/GestureLibrary;->setSequenceType(I)V

    .line 132
    sget-object v2, Lcom/vivo/services/motion/gesture/GestureDetector;->mStore:Lcom/vivo/services/motion/gesture/gesture/GestureLibrary;

    invoke-virtual {v2}, Lcom/vivo/services/motion/gesture/gesture/GestureLibrary;->getGestureEntries()Ljava/util/Set;

    move-result-object v0

    .line 134
    .local v0, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v2, "GestureDetector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadGestureLib Patterns "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 136
    const/4 v2, 0x0

    sput-object v2, Lcom/vivo/services/motion/gesture/GestureDetector;->mStore:Lcom/vivo/services/motion/gesture/gesture/GestureLibrary;

    .line 138
    :cond_2
    return-void

    .line 119
    .end local v0    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    sget-object v2, Lcom/vivo/services/motion/gesture/GestureDetector;->mContext:Landroid/content/Context;

    const v3, 0x3070005

    invoke-static {v2, v3}, Lcom/vivo/services/motion/gesture/gesture/GestureLibraries;->fromRawResource(Landroid/content/Context;I)Lcom/vivo/services/motion/gesture/gesture/GestureLibrary;

    move-result-object v2

    sput-object v2, Lcom/vivo/services/motion/gesture/GestureDetector;->mStore:Lcom/vivo/services/motion/gesture/gesture/GestureLibrary;

    goto :goto_0
.end method

.method private orientationFilter(Ljava/util/Vector;)Z
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/vivo/services/motion/gesture/util/Vector3D;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 190
    .local p1, "path":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vivo/services/motion/gesture/util/Vector3D;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    move-result v19

    .line 191
    .local v19, "size":I
    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v28, v0

    const-wide/high16 v30, 0x3fd0000000000000L    # 0.25

    mul-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v22, v0

    .line 192
    .local v22, "start":I
    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v28, v0

    const-wide v30, 0x3feccccccccccccdL    # 0.9

    mul-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v23, v0

    .line 194
    .local v23, "stop":I
    sub-int v28, v23, v22

    move/from16 v0, v28

    new-array v6, v0, [D

    .line 195
    .local v6, "Orientation":[D
    const-wide/16 v20, 0x0

    .line 196
    .local v20, "preOrientation":D
    const-wide/16 v14, 0x0

    .line 199
    .local v14, "maxChange":D
    move/from16 v7, v22

    .local v7, "i":I
    :goto_0
    add-int/lit8 v28, v23, -0x1

    move/from16 v0, v28

    if-ge v7, v0, :cond_1

    .line 201
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vivo/services/motion/gesture/util/Vector3D;

    .line 202
    .local v11, "path2D0":Lcom/vivo/services/motion/gesture/util/Vector3D;
    invoke-virtual {v11}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getX()F

    move-result v24

    .line 203
    .local v24, "x0":F
    invoke-virtual {v11}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getY()F

    move-result v26

    .line 205
    .local v26, "y0":F
    add-int/lit8 v28, v7, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/vivo/services/motion/gesture/util/Vector3D;

    .line 206
    .local v18, "path2D1":Lcom/vivo/services/motion/gesture/util/Vector3D;
    invoke-virtual/range {v18 .. v18}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getX()F

    move-result v25

    .line 207
    .local v25, "x1":F
    invoke-virtual/range {v18 .. v18}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getY()F

    move-result v27

    .line 209
    .local v27, "y1":F
    sub-float v28, v27, v26

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    sub-float v30, v25, v24

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    move-wide/from16 v3, v30

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vivo/services/motion/gesture/GestureDetector;->orientationFromPos(DD)D

    move-result-wide v16

    .line 211
    .local v16, "orientation":D
    const-wide/16 v28, 0x0

    cmpl-double v28, v20, v28

    if-nez v28, :cond_0

    .line 212
    move-wide/from16 v20, v16

    .line 214
    :cond_0
    sub-int v28, v7, v22

    const-wide v30, 0x3fc999999999999aL    # 0.2

    mul-double v30, v30, v16

    const-wide v32, 0x3fe999999999999aL    # 0.8

    mul-double v32, v32, v20

    add-double v30, v30, v32

    aput-wide v30, v6, v28

    .line 215
    sub-int v28, v7, v22

    aget-wide v20, v6, v28

    .line 199
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 218
    .end local v11    # "path2D0":Lcom/vivo/services/motion/gesture/util/Vector3D;
    .end local v16    # "orientation":D
    .end local v18    # "path2D1":Lcom/vivo/services/motion/gesture/util/Vector3D;
    .end local v24    # "x0":F
    .end local v25    # "x1":F
    .end local v26    # "y0":F
    .end local v27    # "y1":F
    :cond_1
    const/4 v7, 0x1

    :goto_1
    array-length v0, v6

    move/from16 v28, v0

    add-int/lit8 v28, v28, -0x1

    move/from16 v0, v28

    if-ge v7, v0, :cond_5

    .line 220
    aget-wide v12, v6, v7

    .line 222
    .local v12, "lastOrientation":D
    move v10, v7

    .local v10, "j":I
    :goto_2
    array-length v0, v6

    move/from16 v28, v0

    add-int/lit8 v28, v28, -0x1

    move/from16 v0, v28

    if-ge v10, v0, :cond_4

    .line 224
    aget-wide v16, v6, v10

    .line 225
    .restart local v16    # "orientation":D
    sub-double v28, v16, v12

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    .line 227
    .local v8, "change":D
    const-wide/high16 v28, 0x4010000000000000L    # 4.0

    cmpl-double v28, v8, v28

    if-lez v28, :cond_2

    .line 228
    const-wide/high16 v28, 0x4010000000000000L    # 4.0

    const-wide/high16 v30, 0x4010000000000000L    # 4.0

    sub-double v30, v8, v30

    sub-double v8, v28, v30

    .line 230
    :cond_2
    cmpl-double v28, v8, v14

    if-lez v28, :cond_3

    .line 231
    move-wide v14, v8

    .line 222
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 218
    .end local v8    # "change":D
    .end local v16    # "orientation":D
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 235
    .end local v10    # "j":I
    .end local v12    # "lastOrientation":D
    :cond_5
    const-string v28, "GestureDetector"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "maxChange "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "%.4f"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const-wide/high16 v28, 0x4004000000000000L    # 2.5

    cmpl-double v28, v14, v28

    if-lez v28, :cond_6

    .line 237
    const/16 v28, 0x1

    .line 239
    :goto_3
    return v28

    :cond_6
    const/16 v28, 0x0

    goto :goto_3
.end method

.method private orientationFromPos(DD)D
    .locals 9
    .param p1, "y"    # D
    .param p3, "x"    # D

    .prologue
    .line 156
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide v4, 0x400921fb4d12d84aL    # 3.1415926

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    const-wide v6, 0x3fe921fb67eacae5L    # 0.7853982

    div-double/2addr v4, v6

    add-double v0, v2, v4

    .line 157
    .local v0, "f":D
    const-wide/high16 v2, 0x4022000000000000L    # 9.0

    cmpl-double v2, v0, v2

    if-nez v2, :cond_0

    .line 158
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 160
    :cond_0
    return-wide v0
.end method


# virtual methods
.method public process(Ljava/util/Vector;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/vivo/services/motion/gesture/util/Vector3D;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 250
    .local p1, "path":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vivo/services/motion/gesture/util/Vector3D;>;"
    if-nez p1, :cond_0

    .line 252
    const-string v12, "GestureDetector"

    const-string v13, "process gesture null"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/vivo/services/motion/gesture/GestureDetector;->mCurrentGesture:Lcom/vivo/services/motion/gesture/gesture/Gesture;

    .line 312
    :goto_0
    return-void

    .line 258
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/vivo/services/motion/gesture/GestureDetector;->orientationFilter(Ljava/util/Vector;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 260
    const-string v12, "GestureDetector"

    const-string v13, "process gesture is a line"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/vivo/services/motion/gesture/GestureDetector;->mCurrentGesture:Lcom/vivo/services/motion/gesture/gesture/Gesture;

    goto :goto_0

    .line 265
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    move-result v5

    .line 266
    .local v5, "size":I
    const/4 v6, 0x0

    .line 267
    .local v6, "start":I
    move v7, v5

    .line 269
    .local v7, "stop":I
    const-string v12, "GestureDetector"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "process size:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const/4 v12, 0x5

    if-ge v5, v12, :cond_2

    .line 272
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/vivo/services/motion/gesture/GestureDetector;->mCurrentGesture:Lcom/vivo/services/motion/gesture/gesture/Gesture;

    goto :goto_0

    .line 277
    :cond_2
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v5}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/vivo/services/motion/gesture/GestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    .line 278
    move v2, v6

    .local v2, "i":I
    :goto_1
    if-ge v2, v7, :cond_3

    .line 280
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vivo/services/motion/gesture/util/Vector3D;

    .line 281
    .local v4, "path2D":Lcom/vivo/services/motion/gesture/util/Vector3D;
    invoke-virtual {v4}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getX()F

    move-result v10

    .line 282
    .local v10, "x":F
    invoke-virtual {v4}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getY()F

    move-result v11

    .line 283
    .local v11, "y":F
    const v12, 0x5f5e100

    mul-int/2addr v12, v2

    int-to-long v8, v12

    .line 284
    .local v8, "time":J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/services/motion/gesture/GestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    new-instance v13, Lcom/vivo/services/motion/gesture/gesture/GesturePoint;

    invoke-direct {v13, v10, v11, v8, v9}, Lcom/vivo/services/motion/gesture/gesture/GesturePoint;-><init>(FFJ)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 286
    .end local v4    # "path2D":Lcom/vivo/services/motion/gesture/util/Vector3D;
    .end local v8    # "time":J
    .end local v10    # "x":F
    .end local v11    # "y":F
    :cond_3
    new-instance v12, Lcom/vivo/services/motion/gesture/gesture/Gesture;

    invoke-direct {v12}, Lcom/vivo/services/motion/gesture/gesture/Gesture;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/vivo/services/motion/gesture/GestureDetector;->mCurrentGesture:Lcom/vivo/services/motion/gesture/gesture/Gesture;

    .line 287
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/services/motion/gesture/GestureDetector;->mCurrentGesture:Lcom/vivo/services/motion/gesture/gesture/Gesture;

    new-instance v13, Lcom/vivo/services/motion/gesture/gesture/GestureStroke;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vivo/services/motion/gesture/GestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-direct {v13, v14}, Lcom/vivo/services/motion/gesture/gesture/GestureStroke;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v12, v13}, Lcom/vivo/services/motion/gesture/gesture/Gesture;->addStroke(Lcom/vivo/services/motion/gesture/gesture/GestureStroke;)V

    .line 290
    sget-boolean v12, Lcom/vivo/services/motion/gesture/GestureDetector;->mDebug:Z

    if-eqz v12, :cond_4

    .line 292
    new-instance v12, Landroid/text/format/Time;

    invoke-direct {v12}, Landroid/text/format/Time;-><init>()V

    sput-object v12, Lcom/vivo/services/motion/gesture/GestureDetector;->mTime:Landroid/text/format/Time;

    .line 293
    sget-object v12, Lcom/vivo/services/motion/gesture/GestureDetector;->mTime:Landroid/text/format/Time;

    invoke-virtual {v12}, Landroid/text/format/Time;->setToNow()V

    .line 294
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "%02d"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    sget-object v16, Lcom/vivo/services/motion/gesture/GestureDetector;->mTime:Landroid/text/format/Time;

    move-object/from16 v0, v16

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "%02d"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    sget-object v16, Lcom/vivo/services/motion/gesture/GestureDetector;->mTime:Landroid/text/format/Time;

    move-object/from16 v0, v16

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "%02d"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    sget-object v16, Lcom/vivo/services/motion/gesture/GestureDetector;->mTime:Landroid/text/format/Time;

    move-object/from16 v0, v16

    iget v0, v0, Landroid/text/format/Time;->minute:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "%02d"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    sget-object v16, Lcom/vivo/services/motion/gesture/GestureDetector;->mTime:Landroid/text/format/Time;

    move-object/from16 v0, v16

    iget v0, v0, Landroid/text/format/Time;->second:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 296
    .local v3, "index":Ljava/lang/String;
    sget-object v12, Lcom/vivo/services/motion/gesture/GestureDetector;->mDebugStore:Lcom/vivo/services/motion/gesture/gesture/GestureLibrary;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vivo/services/motion/gesture/GestureDetector;->mCurrentGesture:Lcom/vivo/services/motion/gesture/gesture/Gesture;

    invoke-virtual {v12, v3, v13}, Lcom/vivo/services/motion/gesture/gesture/GestureLibrary;->addGesture(Ljava/lang/String;Lcom/vivo/services/motion/gesture/gesture/Gesture;)V

    .line 297
    sget-object v12, Lcom/vivo/services/motion/gesture/GestureDetector;->mDebugStore:Lcom/vivo/services/motion/gesture/gesture/GestureLibrary;

    invoke-virtual {v12}, Lcom/vivo/services/motion/gesture/gesture/GestureLibrary;->save()Z

    .line 301
    .end local v3    # "index":Ljava/lang/String;
    :cond_4
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v5}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/vivo/services/motion/gesture/GestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    .line 302
    move v2, v6

    :goto_2
    if-ge v2, v7, :cond_5

    .line 304
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vivo/services/motion/gesture/util/Vector3D;

    .line 305
    .restart local v4    # "path2D":Lcom/vivo/services/motion/gesture/util/Vector3D;
    invoke-virtual {v4}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getX()F

    move-result v12

    neg-float v10, v12

    .line 306
    .restart local v10    # "x":F
    invoke-virtual {v4}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getY()F

    move-result v11

    .line 307
    .restart local v11    # "y":F
    const v12, 0x5f5e100

    mul-int/2addr v12, v2

    int-to-long v8, v12

    .line 308
    .restart local v8    # "time":J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/services/motion/gesture/GestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    new-instance v13, Lcom/vivo/services/motion/gesture/gesture/GesturePoint;

    invoke-direct {v13, v10, v11, v8, v9}, Lcom/vivo/services/motion/gesture/gesture/GesturePoint;-><init>(FFJ)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 310
    .end local v4    # "path2D":Lcom/vivo/services/motion/gesture/util/Vector3D;
    .end local v8    # "time":J
    .end local v10    # "x":F
    .end local v11    # "y":F
    :cond_5
    new-instance v12, Lcom/vivo/services/motion/gesture/gesture/Gesture;

    invoke-direct {v12}, Lcom/vivo/services/motion/gesture/gesture/Gesture;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/vivo/services/motion/gesture/GestureDetector;->mCurrentMirrorGesture:Lcom/vivo/services/motion/gesture/gesture/Gesture;

    .line 311
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/services/motion/gesture/GestureDetector;->mCurrentMirrorGesture:Lcom/vivo/services/motion/gesture/gesture/Gesture;

    new-instance v13, Lcom/vivo/services/motion/gesture/gesture/GestureStroke;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vivo/services/motion/gesture/GestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-direct {v13, v14}, Lcom/vivo/services/motion/gesture/gesture/GestureStroke;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v12, v13}, Lcom/vivo/services/motion/gesture/gesture/Gesture;->addStroke(Lcom/vivo/services/motion/gesture/gesture/GestureStroke;)V

    goto/16 :goto_0
.end method

.method public recognition()I
    .locals 18

    .prologue
    .line 316
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vivo/services/motion/gesture/GestureDetector;->mCurrentGesture:Lcom/vivo/services/motion/gesture/gesture/Gesture;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vivo/services/motion/gesture/GestureDetector;->mCurrentGesture:Lcom/vivo/services/motion/gesture/gesture/Gesture;

    invoke-virtual {v13}, Lcom/vivo/services/motion/gesture/gesture/Gesture;->getStrokesCount()I

    move-result v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vivo/services/motion/gesture/GestureDetector;->mCurrentGesture:Lcom/vivo/services/motion/gesture/gesture/Gesture;

    invoke-virtual {v13}, Lcom/vivo/services/motion/gesture/gesture/Gesture;->getStrokes()Ljava/util/ArrayList;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vivo/services/motion/gesture/gesture/GestureStroke;

    iget v13, v13, Lcom/vivo/services/motion/gesture/gesture/GestureStroke;->length:F

    const/high16 v14, 0x40a00000    # 5.0f

    cmpg-float v13, v13, v14

    if-gez v13, :cond_1

    .line 318
    :cond_0
    const-string v13, "GestureDetector"

    const-string v14, "Gesture error"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const/4 v13, 0x0

    .line 376
    :goto_0
    return v13

    .line 322
    :cond_1
    sget-object v13, Lcom/vivo/services/motion/gesture/GestureDetector;->mStore:Lcom/vivo/services/motion/gesture/gesture/GestureLibrary;

    if-nez v13, :cond_2

    .line 324
    const-string v13, "GestureDetector"

    const-string v14, "Patterns error"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const/4 v13, 0x0

    goto :goto_0

    .line 328
    :cond_2
    const-wide/16 v6, 0x0

    .line 329
    .local v6, "maxScore":D
    const/4 v3, 0x0

    .line 330
    .local v3, "maxPredName":Ljava/lang/String;
    const/4 v10, 0x0

    .line 332
    .local v10, "prediction":Lcom/vivo/services/motion/gesture/gesture/Prediction;
    sget-object v13, Lcom/vivo/services/motion/gesture/GestureDetector;->mStore:Lcom/vivo/services/motion/gesture/gesture/GestureLibrary;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vivo/services/motion/gesture/GestureDetector;->mCurrentGesture:Lcom/vivo/services/motion/gesture/gesture/Gesture;

    invoke-virtual {v13, v14}, Lcom/vivo/services/motion/gesture/gesture/GestureLibrary;->recognize(Lcom/vivo/services/motion/gesture/gesture/Gesture;)Ljava/util/ArrayList;

    move-result-object v12

    .line 333
    .local v12, "predictions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vivo/services/motion/gesture/gesture/Prediction;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vivo/services/motion/gesture/gesture/Prediction;

    .line 335
    .local v5, "pred":Lcom/vivo/services/motion/gesture/gesture/Prediction;
    iget-wide v14, v5, Lcom/vivo/services/motion/gesture/gesture/Prediction;->score:D

    cmpl-double v13, v14, v6

    if-lez v13, :cond_3

    .line 337
    iget-wide v6, v5, Lcom/vivo/services/motion/gesture/gesture/Prediction;->score:D

    .line 338
    iget-object v3, v5, Lcom/vivo/services/motion/gesture/gesture/Prediction;->name:Ljava/lang/String;

    .line 339
    move-object v10, v5

    goto :goto_1

    .line 342
    .end local v5    # "pred":Lcom/vivo/services/motion/gesture/gesture/Prediction;
    :cond_4
    const-string v13, "GestureDetector"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "max score: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " pred:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const-wide/16 v8, 0x0

    .line 345
    .local v8, "maxScoreMirror":D
    const/4 v4, 0x0

    .line 346
    .local v4, "maxPredNameMirror":Ljava/lang/String;
    const/4 v11, 0x0

    .line 348
    .local v11, "predictionMirror":Lcom/vivo/services/motion/gesture/gesture/Prediction;
    sget-object v13, Lcom/vivo/services/motion/gesture/GestureDetector;->mStore:Lcom/vivo/services/motion/gesture/gesture/GestureLibrary;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vivo/services/motion/gesture/GestureDetector;->mCurrentMirrorGesture:Lcom/vivo/services/motion/gesture/gesture/Gesture;

    invoke-virtual {v13, v14}, Lcom/vivo/services/motion/gesture/gesture/GestureLibrary;->recognize(Lcom/vivo/services/motion/gesture/gesture/Gesture;)Ljava/util/ArrayList;

    move-result-object v12

    .line 349
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vivo/services/motion/gesture/gesture/Prediction;

    .line 351
    .restart local v5    # "pred":Lcom/vivo/services/motion/gesture/gesture/Prediction;
    iget-wide v14, v5, Lcom/vivo/services/motion/gesture/gesture/Prediction;->score:D

    cmpl-double v13, v14, v8

    if-lez v13, :cond_5

    .line 353
    iget-wide v8, v5, Lcom/vivo/services/motion/gesture/gesture/Prediction;->score:D

    .line 354
    iget-object v4, v5, Lcom/vivo/services/motion/gesture/gesture/Prediction;->name:Ljava/lang/String;

    .line 355
    move-object v11, v5

    goto :goto_2

    .line 359
    .end local v5    # "pred":Lcom/vivo/services/motion/gesture/gesture/Prediction;
    :cond_6
    const-string v13, "GestureDetector"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mirror score: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " pred:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    const-wide/high16 v14, 0x3ff8000000000000L    # 1.5

    cmpl-double v13, v8, v14

    if-lez v13, :cond_7

    const-wide/high16 v14, 0x3ff8000000000000L    # 1.5

    cmpl-double v13, v6, v14

    if-lez v13, :cond_7

    sub-double v14, v6, v8

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    cmpg-double v13, v14, v16

    if-gez v13, :cond_7

    .line 362
    iget-object v13, v10, Lcom/vivo/services/motion/gesture/gesture/Prediction;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/vivo/services/motion/gesture/GestureDetector;->getGestureNum(Ljava/lang/String;)I

    move-result v13

    goto/16 :goto_0

    .line 365
    :cond_7
    cmpl-double v13, v8, v6

    if-lez v13, :cond_8

    .line 367
    const-wide/high16 v14, 0x3ff8000000000000L    # 1.5

    cmpl-double v13, v8, v14

    if-lez v13, :cond_9

    .line 368
    iget-object v13, v11, Lcom/vivo/services/motion/gesture/gesture/Prediction;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/vivo/services/motion/gesture/GestureDetector;->getGestureNum(Ljava/lang/String;)I

    move-result v13

    goto/16 :goto_0

    .line 372
    :cond_8
    const-wide/high16 v14, 0x3ff8000000000000L    # 1.5

    cmpl-double v13, v6, v14

    if-lez v13, :cond_9

    .line 373
    iget-object v13, v10, Lcom/vivo/services/motion/gesture/gesture/Prediction;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/vivo/services/motion/gesture/GestureDetector;->getGestureNum(Ljava/lang/String;)I

    move-result v13

    goto/16 :goto_0

    .line 376
    :cond_9
    const/4 v13, 0x0

    goto/16 :goto_0
.end method
