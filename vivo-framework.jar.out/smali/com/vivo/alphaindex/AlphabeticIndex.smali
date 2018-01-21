.class public final Lcom/vivo/alphaindex/AlphabeticIndex;
.super Ljava/lang/Object;
.source "AlphabeticIndex.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/alphaindex/AlphabeticIndex$1;,
        Lcom/vivo/alphaindex/AlphabeticIndex$ImmutableIndex;
    }
.end annotation


# instance fields
.field private peer:J


# direct methods
.method public constructor <init>(Ljava/util/Locale;)V
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/alphaindex/AlphabeticIndex;->create(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vivo/alphaindex/AlphabeticIndex;->peer:J

    .line 83
    return-void
.end method

.method static synthetic access$000(J)V
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 25
    invoke-static {p0, p1}, Lcom/vivo/alphaindex/AlphabeticIndex;->destroy(J)V

    return-void
.end method

.method private static native addLabelRange(JII)V
.end method

.method private static native addLabels(JLjava/lang/String;)V
.end method

.method private static native buildImmutableIndex(J)J
.end method

.method private static native create(Ljava/lang/String;)J
.end method

.method private static native destroy(J)V
.end method

.method private static native getBucketCount(J)I
.end method

.method private static native getBucketIndex(JLjava/lang/String;)I
.end method

.method private static native getBucketLabel(JI)Ljava/lang/String;
.end method

.method private static native getMaxLabelCount(J)I
.end method

.method private static native setMaxLabelCount(JI)V
.end method


# virtual methods
.method public declared-synchronized addLabelRange(II)Lcom/vivo/alphaindex/AlphabeticIndex;
    .locals 2
    .param p1, "codePointStart"    # I
    .param p2, "codePointEnd"    # I

    .prologue
    .line 128
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/vivo/alphaindex/AlphabeticIndex;->peer:J

    invoke-static {v0, v1, p1, p2}, Lcom/vivo/alphaindex/AlphabeticIndex;->addLabelRange(JII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    monitor-exit p0

    return-object p0

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addLabels(Ljava/util/Locale;)Lcom/vivo/alphaindex/AlphabeticIndex;
    .locals 3
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 119
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/vivo/alphaindex/AlphabeticIndex;->peer:J

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/vivo/alphaindex/AlphabeticIndex;->addLabels(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    monitor-exit p0

    return-object p0

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/vivo/alphaindex/AlphabeticIndex;->peer:J

    invoke-static {v0, v1}, Lcom/vivo/alphaindex/AlphabeticIndex;->destroy(J)V

    .line 88
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vivo/alphaindex/AlphabeticIndex;->peer:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 92
    monitor-exit p0

    return-void

    .line 90
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 87
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBucketCount()I
    .locals 2

    .prologue
    .line 136
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/vivo/alphaindex/AlphabeticIndex;->peer:J

    invoke-static {v0, v1}, Lcom/vivo/alphaindex/AlphabeticIndex;->getBucketCount(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBucketIndex(Ljava/lang/String;)I
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 145
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/vivo/alphaindex/AlphabeticIndex;->peer:J

    invoke-static {v0, v1, p1}, Lcom/vivo/alphaindex/AlphabeticIndex;->getBucketIndex(JLjava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBucketLabel(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 152
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/vivo/alphaindex/AlphabeticIndex;->peer:J

    invoke-static {v0, v1, p1}, Lcom/vivo/alphaindex/AlphabeticIndex;->getBucketLabel(JI)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getImmutableIndex()Lcom/vivo/alphaindex/AlphabeticIndex$ImmutableIndex;
    .locals 4

    .prologue
    .line 159
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/vivo/alphaindex/AlphabeticIndex$ImmutableIndex;

    iget-wide v2, p0, Lcom/vivo/alphaindex/AlphabeticIndex;->peer:J

    invoke-static {v2, v3}, Lcom/vivo/alphaindex/AlphabeticIndex;->buildImmutableIndex(J)J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/vivo/alphaindex/AlphabeticIndex$ImmutableIndex;-><init>(JLcom/vivo/alphaindex/AlphabeticIndex$1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMaxLabelCount()I
    .locals 2

    .prologue
    .line 98
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/vivo/alphaindex/AlphabeticIndex;->peer:J

    invoke-static {v0, v1}, Lcom/vivo/alphaindex/AlphabeticIndex;->getMaxLabelCount(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMaxLabelCount(I)Lcom/vivo/alphaindex/AlphabeticIndex;
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 106
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/vivo/alphaindex/AlphabeticIndex;->peer:J

    invoke-static {v0, v1, p1}, Lcom/vivo/alphaindex/AlphabeticIndex;->setMaxLabelCount(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    monitor-exit p0

    return-object p0

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
