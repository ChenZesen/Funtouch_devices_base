.class public Lcom/vivo/common/autobrightness/LuxMedian;
.super Ljava/lang/Object;
.source "LuxMedian.java"


# static fields
.field private static final DEFAULT_BUFFER_LEN:I

.field private static final TAG:Ljava/lang/String; = "LuxMedian"


# instance fields
.field private average:F

.field private buffer:[I

.field private cursor:I

.field private length:I

.field private max:F

.field private module:Ljava/lang/String;

.field private usedLen:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->getLuxMedianBufferLen()I

    move-result v0

    sput v0, Lcom/vivo/common/autobrightness/LuxMedian;->DEFAULT_BUFFER_LEN:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    sget v0, Lcom/vivo/common/autobrightness/LuxMedian;->DEFAULT_BUFFER_LEN:I

    iput v0, p0, Lcom/vivo/common/autobrightness/LuxMedian;->length:I

    .line 28
    const-string v0, "LuxMedian"

    iput-object v0, p0, Lcom/vivo/common/autobrightness/LuxMedian;->module:Ljava/lang/String;

    .line 29
    iput v1, p0, Lcom/vivo/common/autobrightness/LuxMedian;->usedLen:I

    .line 30
    iput v1, p0, Lcom/vivo/common/autobrightness/LuxMedian;->cursor:I

    .line 31
    iget v0, p0, Lcom/vivo/common/autobrightness/LuxMedian;->length:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/vivo/common/autobrightness/LuxMedian;->buffer:[I

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/common/autobrightness/LuxMedian;->average:F

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "mo"    # Ljava/lang/String;
    .param p2, "len"    # I

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    if-lez p2, :cond_0

    .line 37
    iput p2, p0, Lcom/vivo/common/autobrightness/LuxMedian;->length:I

    .line 42
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    iput-object p1, p0, Lcom/vivo/common/autobrightness/LuxMedian;->module:Ljava/lang/String;

    .line 48
    :goto_1
    iput v1, p0, Lcom/vivo/common/autobrightness/LuxMedian;->usedLen:I

    .line 49
    iput v1, p0, Lcom/vivo/common/autobrightness/LuxMedian;->cursor:I

    .line 50
    iget v0, p0, Lcom/vivo/common/autobrightness/LuxMedian;->length:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/vivo/common/autobrightness/LuxMedian;->buffer:[I

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/common/autobrightness/LuxMedian;->average:F

    .line 52
    return-void

    .line 40
    :cond_0
    sget v0, Lcom/vivo/common/autobrightness/LuxMedian;->DEFAULT_BUFFER_LEN:I

    iput v0, p0, Lcom/vivo/common/autobrightness/LuxMedian;->length:I

    goto :goto_0

    .line 46
    :cond_1
    const-string v0, "LuxMedian"

    iput-object v0, p0, Lcom/vivo/common/autobrightness/LuxMedian;->module:Ljava/lang/String;

    goto :goto_1
.end method

.method private getLightMedian()I
    .locals 14

    .prologue
    .line 77
    const/4 v3, 0x0

    .line 78
    .local v3, "luxSum":F
    iget-object v10, p0, Lcom/vivo/common/autobrightness/LuxMedian;->buffer:[I

    if-eqz v10, :cond_0

    iget v10, p0, Lcom/vivo/common/autobrightness/LuxMedian;->usedLen:I

    const/4 v11, 0x1

    if-lt v10, v11, :cond_0

    iget-object v10, p0, Lcom/vivo/common/autobrightness/LuxMedian;->buffer:[I

    array-length v10, v10

    const/4 v11, 0x1

    if-ge v10, v11, :cond_1

    .line 79
    :cond_0
    const-string v10, "LuxMedian"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getLightMedian source is null or length less than 1 or usedLen="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/vivo/common/autobrightness/LuxMedian;->usedLen:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/4 v10, -0x1

    .line 109
    :goto_0
    return v10

    .line 83
    :cond_1
    iget v2, p0, Lcom/vivo/common/autobrightness/LuxMedian;->usedLen:I

    .line 84
    .local v2, "len":I
    iget-object v10, p0, Lcom/vivo/common/autobrightness/LuxMedian;->buffer:[I

    array-length v10, v10

    if-le v2, v10, :cond_2

    .line 85
    iget-object v10, p0, Lcom/vivo/common/autobrightness/LuxMedian;->buffer:[I

    array-length v2, v10

    .line 88
    :cond_2
    new-array v0, v2, [I

    .line 89
    .local v0, "dest":[I
    array-length v10, v0

    if-nez v10, :cond_3

    .line 90
    const-string v10, "LuxMedian"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/vivo/common/autobrightness/LuxMedian;->module:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " dest lenght is 0, return -1."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const/4 v10, -0x1

    goto :goto_0

    .line 93
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_4

    .line 94
    iget-object v10, p0, Lcom/vivo/common/autobrightness/LuxMedian;->buffer:[I

    aget v10, v10, v1

    aput v10, v0, v1

    .line 95
    iget-object v10, p0, Lcom/vivo/common/autobrightness/LuxMedian;->buffer:[I

    aget v10, v10, v1

    int-to-float v10, v10

    add-float/2addr v3, v10

    .line 93
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 97
    :cond_4
    int-to-float v10, v2

    div-float v10, v3, v10

    iput v10, p0, Lcom/vivo/common/autobrightness/LuxMedian;->average:F

    .line 99
    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 101
    const-wide/16 v4, 0x0

    .line 102
    .local v4, "median":D
    int-to-double v10, v2

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v10, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    .line 103
    .local v6, "pos1":D
    int-to-double v10, v2

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v10, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    .line 104
    .local v8, "pos2":D
    cmpl-double v10, v6, v8

    if-nez v10, :cond_5

    .line 105
    double-to-int v10, v6

    aget v10, v0, v10

    int-to-double v4, v10

    .line 109
    :goto_2
    double-to-int v10, v4

    goto :goto_0

    .line 107
    :cond_5
    double-to-int v10, v6

    aget v10, v0, v10

    double-to-int v11, v8

    aget v11, v0, v11

    add-int/2addr v10, v11

    int-to-double v10, v10

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double v4, v10, v12

    goto :goto_2
.end method

.method private putToMedianBuffer(I)V
    .locals 2
    .param p1, "lux"    # I

    .prologue
    .line 114
    iget v0, p0, Lcom/vivo/common/autobrightness/LuxMedian;->usedLen:I

    if-nez v0, :cond_3

    .line 115
    int-to-float v0, p1

    iput v0, p0, Lcom/vivo/common/autobrightness/LuxMedian;->max:F

    .line 122
    :cond_0
    :goto_0
    iget v0, p0, Lcom/vivo/common/autobrightness/LuxMedian;->usedLen:I

    iget v1, p0, Lcom/vivo/common/autobrightness/LuxMedian;->length:I

    if-ge v0, v1, :cond_1

    .line 123
    iget v0, p0, Lcom/vivo/common/autobrightness/LuxMedian;->usedLen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vivo/common/autobrightness/LuxMedian;->usedLen:I

    .line 126
    :cond_1
    iget v0, p0, Lcom/vivo/common/autobrightness/LuxMedian;->cursor:I

    iget v1, p0, Lcom/vivo/common/autobrightness/LuxMedian;->length:I

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_2

    .line 127
    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/common/autobrightness/LuxMedian;->cursor:I

    .line 129
    :cond_2
    iget-object v0, p0, Lcom/vivo/common/autobrightness/LuxMedian;->buffer:[I

    iget v1, p0, Lcom/vivo/common/autobrightness/LuxMedian;->cursor:I

    aput p1, v0, v1

    .line 130
    iget v0, p0, Lcom/vivo/common/autobrightness/LuxMedian;->cursor:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/vivo/common/autobrightness/LuxMedian;->length:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/vivo/common/autobrightness/LuxMedian;->cursor:I

    .line 131
    return-void

    .line 117
    :cond_3
    int-to-float v0, p1

    iget v1, p0, Lcom/vivo/common/autobrightness/LuxMedian;->max:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 118
    int-to-float v0, p1

    iput v0, p0, Lcom/vivo/common/autobrightness/LuxMedian;->max:F

    goto :goto_0
.end method


# virtual methods
.method public dump()V
    .locals 4

    .prologue
    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/vivo/common/autobrightness/LuxMedian;->module:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "allData":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/vivo/common/autobrightness/LuxMedian;->usedLen:I

    if-ge v1, v2, :cond_0

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/vivo/common/autobrightness/LuxMedian;->module:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/common/autobrightness/LuxMedian;->buffer:[I

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vivo/common/autobrightness/LuxMedian;->module:Ljava/lang/String;

    .line 60
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 63
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/vivo/common/autobrightness/LuxMedian;->module:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "average:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/vivo/common/autobrightness/LuxMedian;->average:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vivo/common/autobrightness/LuxMedian;->module:Ljava/lang/String;

    .line 64
    const-string v2, "LuxMedian"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void
.end method

.method public getAverage()F
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/vivo/common/autobrightness/LuxMedian;->average:F

    return v0
.end method

.method public getMax()F
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/vivo/common/autobrightness/LuxMedian;->max:F

    return v0
.end method

.method public getUsedLen()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/vivo/common/autobrightness/LuxMedian;->usedLen:I

    return v0
.end method

.method public putAndGetLightMedian(I)I
    .locals 4
    .param p1, "lux"    # I

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/vivo/common/autobrightness/LuxMedian;->putToMedianBuffer(I)V

    .line 134
    invoke-direct {p0}, Lcom/vivo/common/autobrightness/LuxMedian;->getLightMedian()I

    move-result v0

    .line 135
    .local v0, "median":I
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    const-string v1, "LuxMedian"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/vivo/common/autobrightness/LuxMedian;->module:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "lux = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " after median="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_0
    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/vivo/common/autobrightness/LuxMedian;->usedLen:I

    .line 55
    iput v0, p0, Lcom/vivo/common/autobrightness/LuxMedian;->cursor:I

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/common/autobrightness/LuxMedian;->average:F

    .line 57
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vivo/common/autobrightness/LuxMedian;->length:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";usedLen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vivo/common/autobrightness/LuxMedian;->usedLen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";average="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vivo/common/autobrightness/LuxMedian;->average:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
