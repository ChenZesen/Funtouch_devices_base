.class public Lcom/vivo/common/autobrightness/StatisticsUtil;
.super Ljava/lang/Object;
.source "StatisticsUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StatisticsUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static average([I)D
    .locals 2
    .param p0, "array"    # [I

    .prologue
    .line 77
    if-nez p0, :cond_0

    .line 78
    const-string v0, "average: array is null"

    invoke-static {v0}, Lcom/vivo/common/autobrightness/StatisticsUtil;->log(Ljava/lang/String;)V

    .line 79
    const-wide/16 v0, 0x0

    .line 81
    :goto_0
    return-wide v0

    :cond_0
    array-length v0, p0

    invoke-static {p0, v0}, Lcom/vivo/common/autobrightness/StatisticsUtil;->average([II)D

    move-result-wide v0

    goto :goto_0
.end method

.method public static average([II)D
    .locals 10
    .param p0, "array"    # [I
    .param p1, "len"    # I

    .prologue
    .line 86
    const-wide/16 v4, 0x0

    .line 87
    .local v4, "ret":D
    const-wide/16 v6, 0x0

    .line 88
    .local v6, "sum":D
    int-to-double v0, p1

    .line 89
    .local v0, "count":D
    if-nez p0, :cond_0

    .line 90
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "average: array is null, len="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/vivo/common/autobrightness/StatisticsUtil;->log(Ljava/lang/String;)V

    .line 100
    .end local v4    # "ret":D
    :goto_0
    return-wide v4

    .line 93
    .restart local v4    # "ret":D
    :cond_0
    array-length v3, p0

    if-ge v3, p1, :cond_1

    .line 94
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "average: array.length="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v8, p0

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " len="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/vivo/common/autobrightness/StatisticsUtil;->log(Ljava/lang/String;)V

    .line 95
    array-length p1, p0

    .line 97
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, p1, :cond_2

    .line 98
    aget v3, p0, v2

    int-to-double v8, v3

    add-double/2addr v6, v8

    .line 97
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 100
    :cond_2
    div-double v4, v6, v0

    goto :goto_0
.end method

.method public static countBiggerEqualThen([ID)I
    .locals 9
    .param p0, "array"    # [I
    .param p1, "threshold"    # D

    .prologue
    .line 223
    const/4 v1, 0x0

    .line 224
    .local v1, "count":I
    move-object v0, p0

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget v4, v0, v2

    .line 225
    .local v4, "x":I
    int-to-double v6, v4

    cmpl-double v5, v6, p1

    if-ltz v5, :cond_0

    .line 226
    add-int/lit8 v1, v1, 0x1

    .line 224
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 229
    .end local v4    # "x":I
    :cond_1
    return v1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    const-string v0, "StatisticsUtil"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :cond_0
    return-void
.end method

.method public static max([I)I
    .locals 1
    .param p0, "array"    # [I

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const-string v0, "max: array is null"

    invoke-static {v0}, Lcom/vivo/common/autobrightness/StatisticsUtil;->log(Ljava/lang/String;)V

    .line 29
    const/4 v0, 0x0

    .line 31
    :goto_0
    return v0

    :cond_0
    array-length v0, p0

    invoke-static {p0, v0}, Lcom/vivo/common/autobrightness/StatisticsUtil;->max([II)I

    move-result v0

    goto :goto_0
.end method

.method public static max([II)I
    .locals 5
    .param p0, "array"    # [I
    .param p1, "len"    # I

    .prologue
    .line 35
    const/4 v1, 0x0

    .line 36
    .local v1, "ret":I
    if-nez p0, :cond_0

    .line 37
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "max: array is null,len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/vivo/common/autobrightness/StatisticsUtil;->log(Ljava/lang/String;)V

    move v2, v1

    .line 48
    .end local v1    # "ret":I
    .local v2, "ret":I
    :goto_0
    return v2

    .line 40
    .end local v2    # "ret":I
    .restart local v1    # "ret":I
    :cond_0
    array-length v3, p0

    if-lt v3, p1, :cond_1

    const/4 v3, 0x1

    if-ge p1, v3, :cond_2

    .line 41
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "max: array.length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/vivo/common/autobrightness/StatisticsUtil;->log(Ljava/lang/String;)V

    .line 42
    array-length p1, p0

    .line 44
    :cond_2
    const/4 v3, 0x0

    aget v1, p0, v3

    .line 45
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_3

    .line 46
    aget v3, p0, v0

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v2, v1

    .line 48
    .end local v1    # "ret":I
    .restart local v2    # "ret":I
    goto :goto_0
.end method

.method public static median([I)I
    .locals 1
    .param p0, "array"    # [I

    .prologue
    .line 104
    if-nez p0, :cond_0

    .line 105
    const-string v0, "median: array is null."

    invoke-static {v0}, Lcom/vivo/common/autobrightness/StatisticsUtil;->log(Ljava/lang/String;)V

    .line 106
    const/4 v0, 0x0

    .line 108
    :goto_0
    return v0

    :cond_0
    array-length v0, p0

    invoke-static {p0, v0}, Lcom/vivo/common/autobrightness/StatisticsUtil;->median([II)I

    move-result v0

    goto :goto_0
.end method

.method public static median([II)I
    .locals 14
    .param p0, "array"    # [I
    .param p1, "len"    # I

    .prologue
    .line 188
    const/4 v8, 0x0

    .line 189
    .local v8, "ret":I
    if-nez p0, :cond_0

    .line 190
    const-string v9, "median array is null"

    invoke-static {v9}, Lcom/vivo/common/autobrightness/StatisticsUtil;->log(Ljava/lang/String;)V

    .line 219
    .end local v8    # "ret":I
    :goto_0
    return v8

    .line 194
    .restart local v8    # "ret":I
    :cond_0
    array-length v9, p0

    const/4 v10, 0x1

    if-ge v9, v10, :cond_1

    .line 195
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "median array.length is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, p0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/vivo/common/autobrightness/StatisticsUtil;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 199
    :cond_1
    array-length v9, p0

    if-le p1, v9, :cond_2

    .line 200
    array-length p1, p0

    .line 203
    :cond_2
    new-array v0, p1, [I

    .line 204
    .local v0, "dest":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, p1, :cond_3

    .line 205
    aget v9, p0, v1

    aput v9, v0, v1

    .line 204
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 208
    :cond_3
    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 210
    const-wide/16 v2, 0x0

    .line 211
    .local v2, "median":D
    int-to-double v10, p1

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v10, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    .line 212
    .local v4, "pos1":D
    int-to-double v10, p1

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v10, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    .line 213
    .local v6, "pos2":D
    cmpl-double v9, v4, v6

    if-nez v9, :cond_4

    .line 214
    double-to-int v9, v4

    aget v9, v0, v9

    int-to-double v2, v9

    .line 219
    :goto_2
    double-to-int v8, v2

    goto :goto_0

    .line 216
    :cond_4
    double-to-int v9, v4

    aget v9, v0, v9

    double-to-int v10, v6

    aget v10, v0, v10

    add-int/2addr v9, v10

    int-to-double v10, v9

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double v2, v10, v12

    goto :goto_2
.end method

.method public static min([I)I
    .locals 1
    .param p0, "array"    # [I

    .prologue
    .line 52
    if-nez p0, :cond_0

    .line 53
    const-string v0, "min: array is null"

    invoke-static {v0}, Lcom/vivo/common/autobrightness/StatisticsUtil;->log(Ljava/lang/String;)V

    .line 54
    const/4 v0, 0x0

    .line 56
    :goto_0
    return v0

    :cond_0
    array-length v0, p0

    invoke-static {p0, v0}, Lcom/vivo/common/autobrightness/StatisticsUtil;->min([II)I

    move-result v0

    goto :goto_0
.end method

.method public static min([II)I
    .locals 5
    .param p0, "array"    # [I
    .param p1, "len"    # I

    .prologue
    .line 60
    const/4 v1, 0x0

    .line 61
    .local v1, "ret":I
    if-nez p0, :cond_0

    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "min: array is null,len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/vivo/common/autobrightness/StatisticsUtil;->log(Ljava/lang/String;)V

    move v2, v1

    .line 73
    .end local v1    # "ret":I
    .local v2, "ret":I
    :goto_0
    return v2

    .line 65
    .end local v2    # "ret":I
    .restart local v1    # "ret":I
    :cond_0
    array-length v3, p0

    if-lt v3, p1, :cond_1

    const/4 v3, 0x1

    if-ge p1, v3, :cond_2

    .line 66
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "min: array.length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/vivo/common/autobrightness/StatisticsUtil;->log(Ljava/lang/String;)V

    .line 67
    array-length p1, p0

    .line 69
    :cond_2
    const/4 v3, 0x0

    aget v1, p0, v3

    .line 70
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_3

    .line 71
    aget v3, p0, v0

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v2, v1

    .line 73
    .end local v1    # "ret":I
    .restart local v2    # "ret":I
    goto :goto_0
.end method

.method public static standardDeviation([I)D
    .locals 4
    .param p0, "array"    # [I

    .prologue
    .line 161
    const-wide/16 v0, 0x0

    .line 162
    .local v0, "ret":D
    if-nez p0, :cond_0

    .line 163
    const-string v2, "standardDeviation: array is null."

    invoke-static {v2}, Lcom/vivo/common/autobrightness/StatisticsUtil;->log(Ljava/lang/String;)V

    .line 166
    .end local v0    # "ret":D
    :goto_0
    return-wide v0

    .restart local v0    # "ret":D
    :cond_0
    invoke-static {p0}, Lcom/vivo/common/autobrightness/StatisticsUtil;->variance([I)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    goto :goto_0
.end method

.method public static standardDeviation([II)D
    .locals 4
    .param p0, "array"    # [I
    .param p1, "len"    # I

    .prologue
    .line 170
    const-wide/16 v0, 0x0

    .line 171
    .local v0, "ret":D
    if-nez p0, :cond_0

    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "standardDeviation: array is null. len="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vivo/common/autobrightness/StatisticsUtil;->log(Ljava/lang/String;)V

    .line 175
    .end local v0    # "ret":D
    :goto_0
    return-wide v0

    .restart local v0    # "ret":D
    :cond_0
    invoke-static {p0, p1}, Lcom/vivo/common/autobrightness/StatisticsUtil;->variance([II)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    goto :goto_0
.end method

.method public static standardDeviation([IID)D
    .locals 4
    .param p0, "array"    # [I
    .param p1, "len"    # I
    .param p2, "avg"    # D

    .prologue
    .line 179
    const-wide/16 v0, 0x0

    .line 180
    .local v0, "ret":D
    if-nez p0, :cond_0

    .line 181
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "standardDeviation: array is null. len="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " avg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vivo/common/autobrightness/StatisticsUtil;->log(Ljava/lang/String;)V

    .line 184
    .end local v0    # "ret":D
    :goto_0
    return-wide v0

    .restart local v0    # "ret":D
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/vivo/common/autobrightness/StatisticsUtil;->variance([IID)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    goto :goto_0
.end method

.method public static variance([I)D
    .locals 3
    .param p0, "array"    # [I

    .prologue
    .line 113
    const-wide/16 v0, 0x0

    .line 114
    .local v0, "ret":D
    if-nez p0, :cond_0

    .line 115
    const-string v2, "variance: array is null."

    invoke-static {v2}, Lcom/vivo/common/autobrightness/StatisticsUtil;->log(Ljava/lang/String;)V

    .line 118
    .end local v0    # "ret":D
    :goto_0
    return-wide v0

    .restart local v0    # "ret":D
    :cond_0
    array-length v2, p0

    invoke-static {p0, v2}, Lcom/vivo/common/autobrightness/StatisticsUtil;->variance([II)D

    move-result-wide v0

    goto :goto_0
.end method

.method public static variance([II)D
    .locals 6
    .param p0, "array"    # [I
    .param p1, "len"    # I

    .prologue
    .line 122
    const-wide/16 v2, 0x0

    .line 123
    .local v2, "ret":D
    if-nez p0, :cond_0

    .line 124
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "variance: array is null,len="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/vivo/common/autobrightness/StatisticsUtil;->log(Ljava/lang/String;)V

    .line 135
    .end local v2    # "ret":D
    :goto_0
    return-wide v2

    .line 127
    .restart local v2    # "ret":D
    :cond_0
    array-length v4, p0

    const/4 v5, 0x1

    if-ge v4, v5, :cond_1

    .line 128
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "variance: array.length="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " len="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/vivo/common/autobrightness/StatisticsUtil;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :cond_1
    array-length v4, p0

    if-le p1, v4, :cond_2

    .line 132
    array-length p1, p0

    .line 134
    :cond_2
    invoke-static {p0, p1}, Lcom/vivo/common/autobrightness/StatisticsUtil;->average([II)D

    move-result-wide v0

    .line 135
    .local v0, "avg":D
    invoke-static {p0, p1, v0, v1}, Lcom/vivo/common/autobrightness/StatisticsUtil;->variance([IID)D

    move-result-wide v2

    goto :goto_0
.end method

.method public static variance([IID)D
    .locals 12
    .param p0, "array"    # [I
    .param p1, "len"    # I
    .param p2, "average"    # D

    .prologue
    .line 139
    const-wide/16 v4, 0x0

    .line 140
    .local v4, "ret":D
    if-nez p0, :cond_0

    .line 141
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "variance: array is null, len="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " average="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/vivo/common/autobrightness/StatisticsUtil;->log(Ljava/lang/String;)V

    .line 157
    .end local v4    # "ret":D
    :goto_0
    return-wide v4

    .line 144
    .restart local v4    # "ret":D
    :cond_0
    array-length v3, p0

    const/4 v8, 0x1

    if-ge v3, v8, :cond_1

    .line 145
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "variance: array.length="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v8, p0

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " len="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " average="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/vivo/common/autobrightness/StatisticsUtil;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 148
    :cond_1
    array-length v3, p0

    if-le p1, v3, :cond_2

    .line 149
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "variance: array.length"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v8, p0

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " len="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " average="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/vivo/common/autobrightness/StatisticsUtil;->log(Ljava/lang/String;)V

    .line 150
    array-length p1, p0

    .line 152
    :cond_2
    const-wide/16 v6, 0x0

    .line 153
    .local v6, "var":D
    int-to-double v0, p1

    .line 154
    .local v0, "count":D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, p1, :cond_3

    .line 155
    aget v3, p0, v2

    int-to-double v8, v3

    sub-double/2addr v8, p2

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v6, v8

    .line 154
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 157
    :cond_3
    div-double v4, v6, v0

    goto :goto_0
.end method
