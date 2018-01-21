.class Lcom/vivo/content/NinePatchUtil$NinePatchChunk;
.super Ljava/lang/Object;
.source "NinePatchUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/content/NinePatchUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NinePatchChunk"
.end annotation


# static fields
.field public static final NO_COLOR:I = 0x1

.field public static final TRANSPARENT_COLOR:I


# instance fields
.field public mColor:[I

.field public mDivX:[I

.field public mDivY:[I

.field public final mPaddings:Landroid/graphics/Rect;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 364
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/vivo/content/NinePatchUtil$NinePatchChunk;->mPaddings:Landroid/graphics/Rect;

    return-void
.end method

.method private static checkDivCount(I)V
    .locals 3
    .param p0, "length"    # I

    .prologue
    .line 376
    if-eqz p0, :cond_0

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_1

    .line 377
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid nine-patch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 378
    :cond_1
    return-void
.end method

.method public static deserialize([B)Lcom/vivo/content/NinePatchUtil$NinePatchChunk;
    .locals 4
    .param p0, "data"    # [B

    .prologue
    .line 381
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 383
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    .line 409
    :goto_0
    return-object v1

    .line 385
    :cond_0
    new-instance v1, Lcom/vivo/content/NinePatchUtil$NinePatchChunk;

    invoke-direct {v1}, Lcom/vivo/content/NinePatchUtil$NinePatchChunk;-><init>()V

    .line 386
    .local v1, "chunk":Lcom/vivo/content/NinePatchUtil$NinePatchChunk;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    new-array v2, v2, [I

    iput-object v2, v1, Lcom/vivo/content/NinePatchUtil$NinePatchChunk;->mDivX:[I

    .line 387
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    new-array v2, v2, [I

    iput-object v2, v1, Lcom/vivo/content/NinePatchUtil$NinePatchChunk;->mDivY:[I

    .line 388
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, v1, Lcom/vivo/content/NinePatchUtil$NinePatchChunk;->mColor:[I

    .line 394
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    .line 395
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 397
    iget-object v2, v1, Lcom/vivo/content/NinePatchUtil$NinePatchChunk;->mPaddings:Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 398
    iget-object v2, v1, Lcom/vivo/content/NinePatchUtil$NinePatchChunk;->mPaddings:Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 399
    iget-object v2, v1, Lcom/vivo/content/NinePatchUtil$NinePatchChunk;->mPaddings:Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 400
    iget-object v2, v1, Lcom/vivo/content/NinePatchUtil$NinePatchChunk;->mPaddings:Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 403
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 405
    iget-object v2, v1, Lcom/vivo/content/NinePatchUtil$NinePatchChunk;->mDivX:[I

    invoke-static {v2, v0}, Lcom/vivo/content/NinePatchUtil$NinePatchChunk;->readIntArray([ILjava/nio/ByteBuffer;)V

    .line 406
    iget-object v2, v1, Lcom/vivo/content/NinePatchUtil$NinePatchChunk;->mDivY:[I

    invoke-static {v2, v0}, Lcom/vivo/content/NinePatchUtil$NinePatchChunk;->readIntArray([ILjava/nio/ByteBuffer;)V

    .line 407
    iget-object v2, v1, Lcom/vivo/content/NinePatchUtil$NinePatchChunk;->mColor:[I

    invoke-static {v2, v0}, Lcom/vivo/content/NinePatchUtil$NinePatchChunk;->readIntArray([ILjava/nio/ByteBuffer;)V

    goto :goto_0
.end method

.method private static readIntArray([ILjava/nio/ByteBuffer;)V
    .locals 3
    .param p0, "data"    # [I
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 371
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p0

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 372
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    aput v2, p0, v0

    .line 371
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 373
    :cond_0
    return-void
.end method
