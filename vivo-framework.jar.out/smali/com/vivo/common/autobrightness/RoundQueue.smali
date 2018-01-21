.class public Lcom/vivo/common/autobrightness/RoundQueue;
.super Ljava/lang/Object;
.source "RoundQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_BUFFER_LEN:I = 0x14

.field private static final TAG:Ljava/lang/String; = "RoundQueue"


# instance fields
.field private buffer:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private cursor:I

.field private length:I

.field private module:Ljava/lang/String;

.field private usedLen:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .local p0, "this":Lcom/vivo/common/autobrightness/RoundQueue;, "Lcom/vivo/common/autobrightness/RoundQueue<TT;>;"
    const/16 v2, 0x14

    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput v2, p0, Lcom/vivo/common/autobrightness/RoundQueue;->length:I

    .line 24
    const-string v0, "RoundQueue"

    iput-object v0, p0, Lcom/vivo/common/autobrightness/RoundQueue;->module:Ljava/lang/String;

    .line 25
    iput v1, p0, Lcom/vivo/common/autobrightness/RoundQueue;->usedLen:I

    .line 26
    iput v1, p0, Lcom/vivo/common/autobrightness/RoundQueue;->cursor:I

    .line 27
    new-array v0, v2, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/vivo/common/autobrightness/RoundQueue;->buffer:[Ljava/lang/Object;

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "mo"    # Ljava/lang/String;
    .param p2, "len"    # I

    .prologue
    .local p0, "this":Lcom/vivo/common/autobrightness/RoundQueue;, "Lcom/vivo/common/autobrightness/RoundQueue<TT;>;"
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    if-lez p2, :cond_0

    .line 32
    iput p2, p0, Lcom/vivo/common/autobrightness/RoundQueue;->length:I

    .line 37
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    iput-object p1, p0, Lcom/vivo/common/autobrightness/RoundQueue;->module:Ljava/lang/String;

    .line 43
    :goto_1
    iput v1, p0, Lcom/vivo/common/autobrightness/RoundQueue;->usedLen:I

    .line 44
    iput v1, p0, Lcom/vivo/common/autobrightness/RoundQueue;->cursor:I

    .line 45
    iget v0, p0, Lcom/vivo/common/autobrightness/RoundQueue;->length:I

    new-array v0, v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/vivo/common/autobrightness/RoundQueue;->buffer:[Ljava/lang/Object;

    .line 46
    return-void

    .line 35
    :cond_0
    const/16 v0, 0x14

    iput v0, p0, Lcom/vivo/common/autobrightness/RoundQueue;->length:I

    goto :goto_0

    .line 41
    :cond_1
    const-string v0, "RoundQueue"

    iput-object v0, p0, Lcom/vivo/common/autobrightness/RoundQueue;->module:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public addToQueue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "this":Lcom/vivo/common/autobrightness/RoundQueue;, "Lcom/vivo/common/autobrightness/RoundQueue<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    iget v1, p0, Lcom/vivo/common/autobrightness/RoundQueue;->usedLen:I

    iget v2, p0, Lcom/vivo/common/autobrightness/RoundQueue;->length:I

    if-ge v1, v2, :cond_0

    .line 81
    iget v1, p0, Lcom/vivo/common/autobrightness/RoundQueue;->usedLen:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/vivo/common/autobrightness/RoundQueue;->usedLen:I

    .line 84
    :cond_0
    iget v1, p0, Lcom/vivo/common/autobrightness/RoundQueue;->cursor:I

    iget v2, p0, Lcom/vivo/common/autobrightness/RoundQueue;->length:I

    add-int/lit8 v2, v2, -0x1

    if-le v1, v2, :cond_1

    .line 85
    const/4 v1, 0x0

    iput v1, p0, Lcom/vivo/common/autobrightness/RoundQueue;->cursor:I

    .line 87
    :cond_1
    iget-object v1, p0, Lcom/vivo/common/autobrightness/RoundQueue;->buffer:[Ljava/lang/Object;

    iget v2, p0, Lcom/vivo/common/autobrightness/RoundQueue;->cursor:I

    aget-object v0, v1, v2

    .line 88
    .local v0, "ret":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/vivo/common/autobrightness/RoundQueue;->buffer:[Ljava/lang/Object;

    iget v2, p0, Lcom/vivo/common/autobrightness/RoundQueue;->cursor:I

    aput-object p1, v1, v2

    .line 89
    iget v1, p0, Lcom/vivo/common/autobrightness/RoundQueue;->cursor:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/vivo/common/autobrightness/RoundQueue;->length:I

    rem-int/2addr v1, v2

    iput v1, p0, Lcom/vivo/common/autobrightness/RoundQueue;->cursor:I

    .line 90
    return-object v0
.end method

.method public indexOf(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lcom/vivo/common/autobrightness/RoundQueue;, "Lcom/vivo/common/autobrightness/RoundQueue<TT;>;"
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/vivo/common/autobrightness/RoundQueue;->usedLen:I

    if-ge p1, v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/vivo/common/autobrightness/RoundQueue;->buffer:[Ljava/lang/Object;

    aget-object v0, v0, p1

    .line 62
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFull()Z
    .locals 2

    .prologue
    .line 55
    .local p0, "this":Lcom/vivo/common/autobrightness/RoundQueue;, "Lcom/vivo/common/autobrightness/RoundQueue<TT;>;"
    iget v0, p0, Lcom/vivo/common/autobrightness/RoundQueue;->usedLen:I

    iget v1, p0, Lcom/vivo/common/autobrightness/RoundQueue;->length:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 75
    .local p0, "this":Lcom/vivo/common/autobrightness/RoundQueue;, "Lcom/vivo/common/autobrightness/RoundQueue<TT;>;"
    iget v0, p0, Lcom/vivo/common/autobrightness/RoundQueue;->length:I

    return v0
.end method

.method public reset()V
    .locals 4

    .prologue
    .local p0, "this":Lcom/vivo/common/autobrightness/RoundQueue;, "Lcom/vivo/common/autobrightness/RoundQueue<TT;>;"
    const/4 v3, 0x0

    .line 48
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/vivo/common/autobrightness/RoundQueue;->usedLen:I

    if-ge v0, v1, :cond_0

    .line 49
    iget-object v1, p0, Lcom/vivo/common/autobrightness/RoundQueue;->buffer:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_0
    iput v3, p0, Lcom/vivo/common/autobrightness/RoundQueue;->usedLen:I

    .line 52
    iput v3, p0, Lcom/vivo/common/autobrightness/RoundQueue;->cursor:I

    .line 53
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 69
    .local p0, "this":Lcom/vivo/common/autobrightness/RoundQueue;, "Lcom/vivo/common/autobrightness/RoundQueue<TT;>;"
    iget v0, p0, Lcom/vivo/common/autobrightness/RoundQueue;->usedLen:I

    return v0
.end method
