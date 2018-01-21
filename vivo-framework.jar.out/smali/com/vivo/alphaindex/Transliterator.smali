.class public final Lcom/vivo/alphaindex/Transliterator;
.super Ljava/lang/Object;
.source "Transliterator.java"


# instance fields
.field private peer:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {p1}, Lcom/vivo/alphaindex/Transliterator;->create(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vivo/alphaindex/Transliterator;->peer:J

    .line 31
    return-void
.end method

.method private static native create(Ljava/lang/String;)J
.end method

.method private static native destroy(J)V
.end method

.method public static native getAvailableIDs()[Ljava/lang/String;
.end method

.method private static native transliterate(JLjava/lang/String;)Ljava/lang/String;
.end method


# virtual methods
.method protected declared-synchronized finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 35
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/vivo/alphaindex/Transliterator;->peer:J

    invoke-static {v0, v1}, Lcom/vivo/alphaindex/Transliterator;->destroy(J)V

    .line 36
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vivo/alphaindex/Transliterator;->peer:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 40
    monitor-exit p0

    return-void

    .line 38
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 35
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public transliterate(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/vivo/alphaindex/Transliterator;->peer:J

    invoke-static {v0, v1, p1}, Lcom/vivo/alphaindex/Transliterator;->transliterate(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
