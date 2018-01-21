.class final Lcom/vivo/services/motion/gesture/gesture/Gesture$1;
.super Ljava/lang/Object;
.source "Gesture.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/motion/gesture/gesture/Gesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/vivo/services/motion/gesture/gesture/Gesture;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/vivo/services/motion/gesture/gesture/Gesture;
    .locals 7
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 284
    const/4 v1, 0x0

    .line 285
    .local v1, "gesture":Lcom/vivo/services/motion/gesture/gesture/Gesture;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 287
    .local v2, "gestureID":J
    new-instance v4, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 291
    .local v4, "inStream":Ljava/io/DataInputStream;
    :try_start_0
    invoke-static {v4}, Lcom/vivo/services/motion/gesture/gesture/Gesture;->deserialize(Ljava/io/DataInputStream;)Lcom/vivo/services/motion/gesture/gesture/Gesture;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 295
    invoke-static {v4}, Lcom/vivo/services/motion/gesture/gesture/GestureUtils;->closeStream(Ljava/io/Closeable;)V

    .line 298
    :goto_0
    if-eqz v1, :cond_0

    .line 299
    # setter for: Lcom/vivo/services/motion/gesture/gesture/Gesture;->mGestureID:J
    invoke-static {v1, v2, v3}, Lcom/vivo/services/motion/gesture/gesture/Gesture;->access$002(Lcom/vivo/services/motion/gesture/gesture/Gesture;J)J

    .line 302
    :cond_0
    return-object v1

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string v5, "Gestures"

    const-string v6, "Error reading Gesture from parcel:"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 295
    invoke-static {v4}, Lcom/vivo/services/motion/gesture/gesture/GestureUtils;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    invoke-static {v4}, Lcom/vivo/services/motion/gesture/gesture/GestureUtils;->closeStream(Ljava/io/Closeable;)V

    throw v5
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 282
    invoke-virtual {p0, p1}, Lcom/vivo/services/motion/gesture/gesture/Gesture$1;->createFromParcel(Landroid/os/Parcel;)Lcom/vivo/services/motion/gesture/gesture/Gesture;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/vivo/services/motion/gesture/gesture/Gesture;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 306
    new-array v0, p1, [Lcom/vivo/services/motion/gesture/gesture/Gesture;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 282
    invoke-virtual {p0, p1}, Lcom/vivo/services/motion/gesture/gesture/Gesture$1;->newArray(I)[Lcom/vivo/services/motion/gesture/gesture/Gesture;

    move-result-object v0

    return-object v0
.end method
