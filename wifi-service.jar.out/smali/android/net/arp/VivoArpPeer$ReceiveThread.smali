.class Landroid/net/arp/VivoArpPeer$ReceiveThread;
.super Ljava/lang/Thread;
.source "VivoArpPeer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/arp/VivoArpPeer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReceiveThread"
.end annotation


# instance fields
.field private stopped:Z

.field final synthetic this$0:Landroid/net/arp/VivoArpPeer;

.field timeout:J


# direct methods
.method constructor <init>(Landroid/net/arp/VivoArpPeer;)V
    .locals 2

    .prologue
    .line 265
    iput-object p1, p0, Landroid/net/arp/VivoArpPeer$ReceiveThread;->this$0:Landroid/net/arp/VivoArpPeer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 267
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/arp/VivoArpPeer$ReceiveThread;->stopped:Z

    .line 268
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/arp/VivoArpPeer$ReceiveThread;->timeout:J

    return-void
.end method


# virtual methods
.method public halt()V
    .locals 1

    .prologue
    .line 271
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/arp/VivoArpPeer$ReceiveThread;->stopped:Z

    .line 272
    return-void
.end method

.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x6

    .line 276
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v8, 0x7530

    add-long/2addr v6, v8

    iput-wide v6, p0, Landroid/net/arp/VivoArpPeer$ReceiveThread;->timeout:J

    .line 277
    const-string v5, "VivoArpPeer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Receive thread started timeout =="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Landroid/net/arp/VivoArpPeer$ReceiveThread;->timeout:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "mSocket="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    # getter for: Landroid/net/arp/VivoArpPeer;->mSocket:Ljava/io/FileDescriptor;
    invoke-static {}, Landroid/net/arp/VivoArpPeer;->access$200()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_0
    :goto_0
    iget-boolean v5, p0, Landroid/net/arp/VivoArpPeer$ReceiveThread;->stopped:Z

    if-nez v5, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, p0, Landroid/net/arp/VivoArpPeer$ReceiveThread;->timeout:J

    cmp-long v5, v6, v8

    if-gez v5, :cond_2

    .line 280
    const/16 v5, 0x5dc

    :try_start_0
    new-array v3, v5, [B

    .line 281
    .local v3, "recvBuf":[B
    # getter for: Landroid/net/arp/VivoArpPeer;->mSocket:Ljava/io/FileDescriptor;
    invoke-static {}, Landroid/net/arp/VivoArpPeer;->access$200()Ljava/io/FileDescriptor;

    move-result-object v5

    const/4 v6, 0x0

    array-length v7, v3

    invoke-static {v5, v3, v6, v7}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v2

    .line 284
    .local v2, "readLen":I
    const/16 v5, 0x1f

    if-lt v2, v5, :cond_0

    const/16 v5, 0xe

    aget-byte v5, v3, v5

    if-nez v5, :cond_0

    const/16 v5, 0xf

    aget-byte v5, v3, v5

    if-ne v5, v11, :cond_0

    const/16 v5, 0x10

    aget-byte v5, v3, v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_0

    const/16 v5, 0x11

    aget-byte v5, v3, v5

    if-nez v5, :cond_0

    const/16 v5, 0x12

    aget-byte v5, v3, v5

    if-ne v5, v10, :cond_0

    const/16 v5, 0x13

    aget-byte v5, v3, v5

    if-ne v5, v13, :cond_0

    const/16 v5, 0x14

    aget-byte v5, v3, v5

    if-nez v5, :cond_0

    const/16 v5, 0x15

    aget-byte v5, v3, v5

    if-ne v5, v12, :cond_0

    .line 292
    const/4 v5, 0x6

    new-array v4, v5, [B

    .line 293
    .local v4, "result":[B
    const/16 v5, 0x16

    const/4 v6, 0x0

    const/4 v7, 0x6

    invoke-static {v3, v5, v4, v6, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 294
    const-string v5, "VivoArpPeer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ArpPeer doArp read  copy out the MAC== "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    aget-byte v7, v4, v7

    and-int/lit16 v7, v7, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    aget-byte v7, v4, v7

    and-int/lit16 v7, v7, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x2

    aget-byte v7, v4, v7

    and-int/lit16 v7, v7, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x3

    aget-byte v7, v4, v7

    and-int/lit16 v7, v7, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x4

    aget-byte v7, v4, v7

    and-int/lit16 v7, v7, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x5

    aget-byte v7, v4, v7

    and-int/lit16 v7, v7, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const/4 v1, 0x0

    .local v1, "id":I
    :goto_1
    iget-object v5, p0, Landroid/net/arp/VivoArpPeer$ReceiveThread;->this$0:Landroid/net/arp/VivoArpPeer;

    # getter for: Landroid/net/arp/VivoArpPeer;->mNetworks:Landroid/util/SparseArray;
    invoke-static {v5}, Landroid/net/arp/VivoArpPeer;->access$300(Landroid/net/arp/VivoArpPeer;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 297
    iget-object v5, p0, Landroid/net/arp/VivoArpPeer$ReceiveThread;->this$0:Landroid/net/arp/VivoArpPeer;

    # getter for: Landroid/net/arp/VivoArpPeer;->mNetworks:Landroid/util/SparseArray;
    invoke-static {v5}, Landroid/net/arp/VivoArpPeer;->access$300(Landroid/net/arp/VivoArpPeer;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/VivoArpConfiguration;

    invoke-virtual {v5}, Landroid/net/VivoArpConfiguration;->getDefaultGwMacAddress()[B

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 299
    iget-object v6, p0, Landroid/net/arp/VivoArpPeer$ReceiveThread;->this$0:Landroid/net/arp/VivoArpPeer;

    iget-object v5, p0, Landroid/net/arp/VivoArpPeer$ReceiveThread;->this$0:Landroid/net/arp/VivoArpPeer;

    # getter for: Landroid/net/arp/VivoArpPeer;->mNetworks:Landroid/util/SparseArray;
    invoke-static {v5}, Landroid/net/arp/VivoArpPeer;->access$300(Landroid/net/arp/VivoArpPeer;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/VivoArpConfiguration;

    invoke-virtual {v5}, Landroid/net/VivoArpConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object v5

    # invokes: Landroid/net/arp/VivoArpPeer;->sendArpConnectionInfoBroadcast(Landroid/net/IpConfiguration;)V
    invoke-static {v6, v5}, Landroid/net/arp/VivoArpPeer;->access$400(Landroid/net/arp/VivoArpPeer;Landroid/net/IpConfiguration;)V

    .line 300
    iget-object v5, p0, Landroid/net/arp/VivoArpPeer$ReceiveThread;->this$0:Landroid/net/arp/VivoArpPeer;

    invoke-virtual {v5}, Landroid/net/arp/VivoArpPeer;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 305
    .end local v1    # "id":I
    .end local v2    # "readLen":I
    .end local v3    # "recvBuf":[B
    .end local v4    # "result":[B
    :catch_0
    move-exception v0

    .line 306
    .local v0, "e":Ljava/lang/Exception;
    iget-boolean v5, p0, Landroid/net/arp/VivoArpPeer$ReceiveThread;->stopped:Z

    if-nez v5, :cond_0

    goto/16 :goto_0

    .line 311
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const-string v5, "VivoArpPeer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Receive thread stopped time ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "stoppend="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Landroid/net/arp/VivoArpPeer$ReceiveThread;->stopped:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    return-void
.end method
