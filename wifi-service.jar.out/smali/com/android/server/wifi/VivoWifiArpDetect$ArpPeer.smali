.class Lcom/android/server/wifi/VivoWifiArpDetect$ArpPeer;
.super Ljava/lang/Object;
.source "VivoWifiArpDetect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/VivoWifiArpDetect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ArpPeer"
.end annotation


# static fields
.field private static final ARP_LENGTH:I = 0x1f

.field private static final ETHERNET_TYPE:I = 0x1

.field private static final IPV4_LENGTH:I = 0x4

.field private static final MAC_ADDR_LENGTH:I = 0x6

.field private static final MAX_LENGTH:I = 0x5dc

.field private static final TAG:Ljava/lang/String; = "ArpPeer"


# instance fields
.field destinationIPAddr:Ljava/net/InetAddress;

.field private mHwAddr:[B

.field private mInterfaceName:Ljava/net/NetworkInterface;

.field private mSocket:Ljava/io/FileDescriptor;

.field sourceIPAddr:Ljava/net/InetAddress;

.field private stopped:Z

.field final synthetic this$0:Lcom/android/server/wifi/VivoWifiArpDetect;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/VivoWifiArpDetect;Ljava/lang/String;Ljava/net/InetAddress;Ljava/net/InetAddress;)V
    .locals 5
    .param p2, "interfaceName"    # Ljava/lang/String;
    .param p3, "src"    # Ljava/net/InetAddress;
    .param p4, "dst"    # Ljava/net/InetAddress;

    .prologue
    const/4 v3, 0x0

    .line 203
    iput-object p1, p0, Lcom/android/server/wifi/VivoWifiArpDetect$ArpPeer;->this$0:Lcom/android/server/wifi/VivoWifiArpDetect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wifi/VivoWifiArpDetect$ArpPeer;->stopped:Z

    .line 192
    iput-object v3, p0, Lcom/android/server/wifi/VivoWifiArpDetect$ArpPeer;->mHwAddr:[B

    .line 199
    iput-object v3, p0, Lcom/android/server/wifi/VivoWifiArpDetect$ArpPeer;->destinationIPAddr:Ljava/net/InetAddress;

    .line 201
    iput-object v3, p0, Lcom/android/server/wifi/VivoWifiArpDetect$ArpPeer;->sourceIPAddr:Ljava/net/InetAddress;

    .line 205
    :try_start_0
    iput-object p4, p0, Lcom/android/server/wifi/VivoWifiArpDetect$ArpPeer;->destinationIPAddr:Ljava/net/InetAddress;

    .line 206
    iput-object p3, p0, Lcom/android/server/wifi/VivoWifiArpDetect$ArpPeer;->sourceIPAddr:Ljava/net/InetAddress;

    .line 208
    invoke-static {p2}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/VivoWifiArpDetect$ArpPeer;->mInterfaceName:Ljava/net/NetworkInterface;

    .line 209
    iget-object v2, p0, Lcom/android/server/wifi/VivoWifiArpDetect$ArpPeer;->mInterfaceName:Ljava/net/NetworkInterface;

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/VivoWifiArpDetect$ArpPeer;->mHwAddr:[B

    .line 210
    sget v2, Landroid/system/OsConstants;->AF_PACKET:I

    sget v3, Landroid/system/OsConstants;->SOCK_RAW:I

    sget v4, Landroid/system/OsConstants;->ETH_P_ARP:I

    invoke-static {v2, v3, v4}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/VivoWifiArpDetect$ArpPeer;->mSocket:Ljava/io/FileDescriptor;

    .line 211
    new-instance v0, Landroid/system/PacketSocketAddress;

    sget v2, Landroid/system/OsConstants;->ETH_P_ARP:I

    int-to-short v2, v2

    iget-object v3, p0, Lcom/android/server/wifi/VivoWifiArpDetect$ArpPeer;->mInterfaceName:Ljava/net/NetworkInterface;

    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/system/PacketSocketAddress;-><init>(SI)V

    .line 212
    .local v0, "addr":Landroid/system/PacketSocketAddress;
    iget-object v2, p0, Lcom/android/server/wifi/VivoWifiArpDetect$ArpPeer;->mSocket:Ljava/io/FileDescriptor;

    invoke-static {v2, v0}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    .end local v0    # "addr":Landroid/system/PacketSocketAddress;
    :goto_0
    const-string v2, "ArpPeer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init mSocket:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/VivoWifiArpDetect$ArpPeer;->mSocket:Ljava/io/FileDescriptor;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    return-void

    .line 213
    :catch_0
    move-exception v1

    .line 214
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getMacBytes(Ljava/lang/String;)[B
    .locals 7
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 220
    const/4 v5, 0x6

    new-array v2, v5, [B

    .line 223
    .local v2, "macBytes":[B
    :try_start_0
    const-string v5, ":"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 224
    .local v3, "strArr":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v3

    if-ge v1, v5, :cond_0

    .line 225
    aget-object v5, v3, v1

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 226
    .local v4, "value":I
    int-to-byte v5, v4

    aput-byte v5, v2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 228
    .end local v1    # "i":I
    .end local v3    # "strArr":[Ljava/lang/String;
    .end local v4    # "value":I
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 231
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v2
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 274
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiArpDetect$ArpPeer;->mSocket:Ljava/io/FileDescriptor;

    invoke-static {v1}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wifi/VivoWifiArpDetect$ArpPeer;->stopped:Z

    .line 279
    return-void

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public doArp()[B
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 240
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiArpDetect$ArpPeer;->mSocket:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    const-string v0, "ArpPeer"

    const-string v1, "doArp  arp msocke is not valid"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :goto_0
    return-object v12

    .line 245
    :cond_0
    const/16 v0, 0x5dc

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 246
    .local v6, "buf":Ljava/nio/ByteBuffer;
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiArpDetect$ArpPeer;->destinationIPAddr:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v7

    .line 247
    .local v7, "desiredIp":[B
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiArpDetect$ArpPeer;->sourceIPAddr:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v9

    .line 250
    .local v9, "sendIp":[B
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 251
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 252
    # getter for: Lcom/android/server/wifi/VivoWifiArpDetect;->ARP_ETHER_BROADCAST:[B
    invoke-static {}, Lcom/android/server/wifi/VivoWifiArpDetect;->access$200()[B

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 253
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiArpDetect$ArpPeer;->mHwAddr:[B

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 254
    sget v0, Landroid/system/OsConstants;->ETH_P_ARP:I

    int-to-short v0, v0

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 255
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 256
    sget v0, Landroid/system/OsConstants;->ETH_P_IP:I

    int-to-short v0, v0

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 257
    const/4 v0, 0x6

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 258
    const/4 v0, 0x4

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 259
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 260
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiArpDetect$ArpPeer;->mHwAddr:[B

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 261
    invoke-virtual {v6, v9}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 262
    # getter for: Lcom/android/server/wifi/VivoWifiArpDetect;->ARP_ETHER_BROADCAST:[B
    invoke-static {}, Lcom/android/server/wifi/VivoWifiArpDetect;->access$200()[B

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 263
    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 264
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 265
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiArpDetect$ArpPeer;->mSocket:Ljava/io/FileDescriptor;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    const/4 v4, 0x0

    new-instance v5, Landroid/system/PacketSocketAddress;

    iget-object v10, p0, Lcom/android/server/wifi/VivoWifiArpDetect$ArpPeer;->mInterfaceName:Ljava/net/NetworkInterface;

    invoke-virtual {v10}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v10

    # getter for: Lcom/android/server/wifi/VivoWifiArpDetect;->ARP_ETHER_BROADCAST:[B
    invoke-static {}, Lcom/android/server/wifi/VivoWifiArpDetect;->access$200()[B

    move-result-object v11

    invoke-direct {v5, v10, v11}, Landroid/system/PacketSocketAddress;-><init>(I[B)V

    invoke-static/range {v0 .. v5}, Landroid/system/Os;->sendto(Ljava/io/FileDescriptor;[BIIILjava/net/SocketAddress;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 266
    .end local v6    # "buf":Ljava/nio/ByteBuffer;
    .end local v7    # "desiredIp":[B
    .end local v9    # "sendIp":[B
    :catch_0
    move-exception v8

    .line 267
    .local v8, "e":Ljava/lang/Exception;
    const-string v0, "ArpPeer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendto errormSocket "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public waitForArpReply(I)[B
    .locals 12
    .param p1, "timeoutMillis"    # I

    .prologue
    .line 283
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    int-to-long v10, p1

    add-long v6, v8, v10

    .line 284
    .local v6, "timeout":J
    const-string v5, "ArpPeer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "waitForArpReply timeout:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mSocket:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/VivoWifiArpDetect$ArpPeer;->mSocket:Ljava/io/FileDescriptor;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", timeout:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    new-instance v5, Ljava/lang/Thread;

    new-instance v8, Lcom/android/server/wifi/VivoWifiArpDetect$ArpPeer$1;

    invoke-direct {v8, p0, p1}, Lcom/android/server/wifi/VivoWifiArpDetect$ArpPeer$1;-><init>(Lcom/android/server/wifi/VivoWifiArpDetect$ArpPeer;I)V

    invoke-direct {v5, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 298
    :cond_0
    iget-boolean v5, p0, Lcom/android/server/wifi/VivoWifiArpDetect$ArpPeer;->stopped:Z

    if-nez v5, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    cmp-long v5, v8, v6

    if-gez v5, :cond_1

    .line 299
    const-string v5, "ArpPeer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "waitForArpReply 1 SystemClock.elapsedRealtime():"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v5, p0, Lcom/android/server/wifi/VivoWifiArpDetect$ArpPeer;->destinationIPAddr:Ljava/net/InetAddress;

    invoke-virtual {v5}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 301
    .local v0, "desiredIp":[B
    const/16 v5, 0x5dc

    new-array v3, v5, [B

    .line 302
    .local v3, "recvBuf":[B
    iget-object v5, p0, Lcom/android/server/wifi/VivoWifiArpDetect$ArpPeer;->mSocket:Ljava/io/FileDescriptor;

    const/4 v8, 0x0

    array-length v9, v3

    invoke-static {v5, v3, v8, v9}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v2

    .line 305
    .local v2, "readLen":I
    const-string v5, "ArpPeer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "waitForArpReply 2 SystemClock.elapsedRealtime():"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const/16 v5, 0x1f

    if-lt v2, v5, :cond_0

    const/16 v5, 0xe

    aget-byte v5, v3, v5

    if-nez v5, :cond_0

    const/16 v5, 0xf

    aget-byte v5, v3, v5

    const/4 v8, 0x1

    if-ne v5, v8, :cond_0

    const/16 v5, 0x10

    aget-byte v5, v3, v5

    const/16 v8, 0x8

    if-ne v5, v8, :cond_0

    const/16 v5, 0x11

    aget-byte v5, v3, v5

    if-nez v5, :cond_0

    const/16 v5, 0x12

    aget-byte v5, v3, v5

    const/4 v8, 0x6

    if-ne v5, v8, :cond_0

    const/16 v5, 0x13

    aget-byte v5, v3, v5

    const/4 v8, 0x4

    if-ne v5, v8, :cond_0

    const/16 v5, 0x14

    aget-byte v5, v3, v5

    if-nez v5, :cond_0

    const/16 v5, 0x15

    aget-byte v5, v3, v5

    const/4 v8, 0x2

    if-ne v5, v8, :cond_0

    const/16 v5, 0x1c

    aget-byte v5, v3, v5

    const/4 v8, 0x0

    aget-byte v8, v0, v8

    if-ne v5, v8, :cond_0

    const/16 v5, 0x1d

    aget-byte v5, v3, v5

    const/4 v8, 0x1

    aget-byte v8, v0, v8

    if-ne v5, v8, :cond_0

    const/16 v5, 0x1e

    aget-byte v5, v3, v5

    const/4 v8, 0x2

    aget-byte v8, v0, v8

    if-ne v5, v8, :cond_0

    const/16 v5, 0x1f

    aget-byte v5, v3, v5

    const/4 v8, 0x3

    aget-byte v8, v0, v8

    if-ne v5, v8, :cond_0

    .line 317
    const/4 v5, 0x6

    new-array v4, v5, [B

    .line 318
    .local v4, "result":[B
    const/16 v5, 0x16

    const/4 v8, 0x0

    const/4 v9, 0x6

    invoke-static {v3, v5, v4, v8, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 319
    const-string v5, "ArpPeer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "waitForArpReply receive arp response from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    aget-byte v9, v4, v9

    and-int/lit16 v9, v9, 0xff

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    aget-byte v9, v4, v9

    and-int/lit16 v9, v9, 0xff

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x2

    aget-byte v9, v4, v9

    and-int/lit16 v9, v9, 0xff

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x3

    aget-byte v9, v4, v9

    and-int/lit16 v9, v9, 0xff

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x4

    aget-byte v9, v4, v9

    and-int/lit16 v9, v9, 0xff

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x5

    aget-byte v9, v4, v9

    and-int/lit16 v9, v9, 0xff

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const-string v5, "ArpPeer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "waitForArpReply receive arp response ip "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x1c

    aget-byte v9, v3, v9

    and-int/lit16 v9, v9, 0xff

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x1d

    aget-byte v9, v3, v9

    and-int/lit16 v9, v9, 0xff

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x1e

    aget-byte v9, v3, v9

    and-int/lit16 v9, v9, 0xff

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x1f

    aget-byte v9, v3, v9

    and-int/lit16 v9, v9, 0xff

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    const-string v5, "ArpPeer"

    const-string v8, "doArp got the right arp response"

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    .end local v0    # "desiredIp":[B
    .end local v2    # "readLen":I
    .end local v3    # "recvBuf":[B
    .end local v4    # "result":[B
    .end local v6    # "timeout":J
    :goto_0
    return-object v4

    .line 327
    .restart local v6    # "timeout":J
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wifi/VivoWifiArpDetect$ArpPeer;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    .end local v6    # "timeout":J
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 328
    :catch_0
    move-exception v1

    .line 329
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
