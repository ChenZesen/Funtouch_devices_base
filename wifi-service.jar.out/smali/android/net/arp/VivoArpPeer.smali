.class public Landroid/net/arp/VivoArpPeer;
.super Ljava/lang/Object;
.source "VivoArpPeer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/arp/VivoArpPeer$ReceiveThread;
    }
.end annotation


# static fields
.field private static final ARP_LENGTH:I = 0x1f

.field private static final DBG:Z = false

.field private static final ETHERNET_TYPE:I = 0x1

.field private static final IPV4_LENGTH:I = 0x4

.field private static final MAC_ADDR_LENGTH:I = 0x6

.field private static final MAX_LENGTH:I = 0x5dc

.field private static final TAG:Ljava/lang/String; = "VivoArpPeer"

.field private static final arpConfigFile:Ljava/lang/String;

.field public static final arp_ETHER_BROADCAST:[B

.field private static mSocket:Ljava/io/FileDescriptor;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHwAddr:[B

.field private mInterfaceName:Ljava/net/NetworkInterface;

.field private mNetworks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/net/VivoArpConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiveThread:Landroid/net/arp/VivoArpPeer$ReceiveThread;

.field private mVivoArpConfigStore:Lcom/android/server/net/VivoArpConfigStore;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/misc/wifi/arpconfig.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/arp/VivoArpPeer;->arpConfigFile:Ljava/lang/String;

    .line 71
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroid/net/arp/VivoArpPeer;->arp_ETHER_BROADCAST:[B

    return-void

    :array_0
    .array-data 1
        -0x60t
        0x63t
        -0x6ft
        0x67t
        0x3at
        -0x6at
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 5
    .param p1, "interfaceName"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Landroid/net/arp/VivoArpPeer;->mNetworks:Landroid/util/SparseArray;

    .line 82
    iput-object p2, p0, Landroid/net/arp/VivoArpPeer;->mContext:Landroid/content/Context;

    .line 84
    :try_start_0
    invoke-static {p1}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v2

    iput-object v2, p0, Landroid/net/arp/VivoArpPeer;->mInterfaceName:Ljava/net/NetworkInterface;

    .line 85
    iget-object v2, p0, Landroid/net/arp/VivoArpPeer;->mInterfaceName:Ljava/net/NetworkInterface;

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v2

    iput-object v2, p0, Landroid/net/arp/VivoArpPeer;->mHwAddr:[B

    .line 86
    const-string v2, "VivoArpPeer"

    const-string v3, "ArpPeer init"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    sget v2, Landroid/system/OsConstants;->AF_PACKET:I

    sget v3, Landroid/system/OsConstants;->SOCK_RAW:I

    sget v4, Landroid/system/OsConstants;->ETH_P_ARP:I

    invoke-static {v2, v3, v4}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v2

    sput-object v2, Landroid/net/arp/VivoArpPeer;->mSocket:Ljava/io/FileDescriptor;

    .line 88
    new-instance v0, Landroid/system/PacketSocketAddress;

    sget v2, Landroid/system/OsConstants;->ETH_P_ARP:I

    int-to-short v2, v2

    iget-object v3, p0, Landroid/net/arp/VivoArpPeer;->mInterfaceName:Ljava/net/NetworkInterface;

    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/system/PacketSocketAddress;-><init>(SI)V

    .line 89
    .local v0, "addr":Landroid/system/PacketSocketAddress;
    sget-object v2, Landroid/net/arp/VivoArpPeer;->mSocket:Ljava/io/FileDescriptor;

    invoke-static {v2, v0}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    .line 90
    new-instance v2, Landroid/net/arp/VivoArpPeer$ReceiveThread;

    invoke-direct {v2, p0}, Landroid/net/arp/VivoArpPeer$ReceiveThread;-><init>(Landroid/net/arp/VivoArpPeer;)V

    iput-object v2, p0, Landroid/net/arp/VivoArpPeer;->mReceiveThread:Landroid/net/arp/VivoArpPeer$ReceiveThread;

    .line 91
    iget-object v2, p0, Landroid/net/arp/VivoArpPeer;->mReceiveThread:Landroid/net/arp/VivoArpPeer$ReceiveThread;

    invoke-virtual {v2}, Landroid/net/arp/VivoArpPeer$ReceiveThread;->start()V

    .line 92
    new-instance v2, Lcom/android/server/net/VivoArpConfigStore;

    invoke-direct {v2}, Lcom/android/server/net/VivoArpConfigStore;-><init>()V

    iput-object v2, p0, Landroid/net/arp/VivoArpPeer;->mVivoArpConfigStore:Lcom/android/server/net/VivoArpConfigStore;

    .line 93
    invoke-direct {p0}, Landroid/net/arp/VivoArpPeer;->readArpConfigurations()Landroid/util/SparseArray;

    move-result-object v2

    iput-object v2, p0, Landroid/net/arp/VivoArpPeer;->mNetworks:Landroid/util/SparseArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .end local v0    # "addr":Landroid/system/PacketSocketAddress;
    :goto_0
    const-string v2, "VivoArpPeer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ArpPeer init mSocket"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/net/arp/VivoArpPeer;->mSocket:Ljava/io/FileDescriptor;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-void

    .line 94
    :catch_0
    move-exception v1

    .line 95
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "VivoArpPeer"

    const-string v3, "ignore Error VivoArpPeer"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/4 v2, 0x6

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    iput-object v2, p0, Landroid/net/arp/VivoArpPeer;->mHwAddr:[B

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x11t
        0x11t
        0x11t
    .end array-data
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Landroid/net/arp/VivoArpPeer;->arpConfigFile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/net/arp/VivoArpPeer;)Lcom/android/server/net/VivoArpConfigStore;
    .locals 1
    .param p0, "x0"    # Landroid/net/arp/VivoArpPeer;

    .prologue
    .line 58
    iget-object v0, p0, Landroid/net/arp/VivoArpPeer;->mVivoArpConfigStore:Lcom/android/server/net/VivoArpConfigStore;

    return-object v0
.end method

.method static synthetic access$200()Ljava/io/FileDescriptor;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Landroid/net/arp/VivoArpPeer;->mSocket:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method static synthetic access$300(Landroid/net/arp/VivoArpPeer;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Landroid/net/arp/VivoArpPeer;

    .prologue
    .line 58
    iget-object v0, p0, Landroid/net/arp/VivoArpPeer;->mNetworks:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$400(Landroid/net/arp/VivoArpPeer;Landroid/net/IpConfiguration;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/arp/VivoArpPeer;
    .param p1, "x1"    # Landroid/net/IpConfiguration;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Landroid/net/arp/VivoArpPeer;->sendArpConnectionInfoBroadcast(Landroid/net/IpConfiguration;)V

    return-void
.end method

.method private closeQuietly(Ljava/io/FileDescriptor;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    .line 253
    :try_start_0
    iget-object v0, p0, Landroid/net/arp/VivoArpPeer;->mReceiveThread:Landroid/net/arp/VivoArpPeer$ReceiveThread;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Landroid/net/arp/VivoArpPeer;->mReceiveThread:Landroid/net/arp/VivoArpPeer$ReceiveThread;

    invoke-virtual {v0}, Landroid/net/arp/VivoArpPeer$ReceiveThread;->halt()V

    .line 255
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/arp/VivoArpPeer;->mReceiveThread:Landroid/net/arp/VivoArpPeer$ReceiveThread;

    .line 257
    :cond_0
    invoke-static {p1}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :goto_0
    return-void

    .line 258
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private readArpConfigurations()Landroid/util/SparseArray;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/net/VivoArpConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 187
    iget-object v5, p0, Landroid/net/arp/VivoArpPeer;->mVivoArpConfigStore:Lcom/android/server/net/VivoArpConfigStore;

    sget-object v8, Landroid/net/arp/VivoArpPeer;->arpConfigFile:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lcom/android/server/net/VivoArpConfigStore;->readArpConfigurations(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v1

    .line 188
    .local v1, "networks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/net/VivoArpConfiguration;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 190
    :cond_0
    const/4 v1, 0x0

    .line 205
    .end local v1    # "networks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/net/VivoArpConfiguration;>;"
    :goto_0
    return-object v1

    .line 192
    .restart local v1    # "networks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/net/VivoArpConfiguration;>;"
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 193
    .local v2, "now_ms":J
    const-wide/16 v6, 0x0

    .line 194
    .local v6, "vivoDhcpHistoryLeaseTime":J
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 196
    .local v4, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v4, :cond_2

    .line 197
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/VivoArpConfiguration;

    invoke-virtual {v5}, Landroid/net/VivoArpConfiguration;->getVivoDhcpHistoryLeaseTime()J

    move-result-wide v6

    .line 198
    cmp-long v5, v2, v6

    if-lez v5, :cond_3

    .line 199
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 204
    :cond_2
    invoke-direct {p0, v1}, Landroid/net/arp/VivoArpPeer;->writeArpConfigurations(Landroid/util/SparseArray;)V

    goto :goto_0

    .line 196
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private sendArpConnectionInfoBroadcast(Landroid/net/IpConfiguration;)V
    .locals 3
    .param p1, "ipCongfig"    # Landroid/net/IpConfiguration;

    .prologue
    .line 243
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.arp.NETWORK_CONNECTION_INFO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 244
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 245
    const-string v1, "successornot"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 246
    const-string v1, "ipCongfig"

    invoke-virtual {p1}, Landroid/net/IpConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 247
    iget-object v1, p0, Landroid/net/arp/VivoArpPeer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 248
    return-void
.end method

.method private writeArpConfigurations(Landroid/util/SparseArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/net/VivoArpConfiguration;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 142
    .local p1, "networks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/net/VivoArpConfiguration;>;"
    :try_start_0
    new-instance v1, Landroid/net/arp/VivoArpPeer$1;

    invoke-direct {v1, p0, p1}, Landroid/net/arp/VivoArpPeer$1;-><init>(Landroid/net/arp/VivoArpPeer;Landroid/util/SparseArray;)V

    .line 148
    .local v1, "writeNetworks":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .end local v1    # "writeNetworks":Ljava/lang/Thread;
    :goto_0
    return-void

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 262
    sget-object v0, Landroid/net/arp/VivoArpPeer;->mSocket:Ljava/io/FileDescriptor;

    invoke-direct {p0, v0}, Landroid/net/arp/VivoArpPeer;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 263
    return-void
.end method

.method public doArp(Ljava/net/InetAddress;[BLjava/net/InetAddress;)V
    .locals 11
    .param p1, "deserdIPAddr"    # Ljava/net/InetAddress;
    .param p2, "defaultGwMacAddress"    # [B
    .param p3, "sourceIPAddr"    # Ljava/net/InetAddress;

    .prologue
    .line 108
    sget-object v0, Landroid/net/arp/VivoArpPeer;->mSocket:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    const-string v0, "VivoArpPeer"

    const-string v1, "doArp  arp msocke is not valid"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :goto_0
    return-void

    .line 113
    :cond_0
    const/16 v0, 0x5dc

    :try_start_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 114
    .local v6, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v7

    .line 115
    .local v7, "desiredIp":[B
    invoke-virtual {p3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v9

    .line 118
    .local v9, "sendIp":[B
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 119
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 120
    invoke-virtual {v6, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 121
    iget-object v0, p0, Landroid/net/arp/VivoArpPeer;->mHwAddr:[B

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 122
    sget v0, Landroid/system/OsConstants;->ETH_P_ARP:I

    int-to-short v0, v0

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 123
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 124
    sget v0, Landroid/system/OsConstants;->ETH_P_IP:I

    int-to-short v0, v0

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 125
    const/4 v0, 0x6

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 126
    const/4 v0, 0x4

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 127
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 128
    iget-object v0, p0, Landroid/net/arp/VivoArpPeer;->mHwAddr:[B

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 129
    invoke-virtual {v6, v9}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 130
    invoke-virtual {v6, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 131
    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 132
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 133
    sget-object v0, Landroid/net/arp/VivoArpPeer;->mSocket:Ljava/io/FileDescriptor;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    const/4 v4, 0x0

    new-instance v5, Landroid/system/PacketSocketAddress;

    iget-object v10, p0, Landroid/net/arp/VivoArpPeer;->mInterfaceName:Ljava/net/NetworkInterface;

    invoke-virtual {v10}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v10

    invoke-direct {v5, v10, p2}, Landroid/system/PacketSocketAddress;-><init>(I[B)V

    invoke-static/range {v0 .. v5}, Landroid/system/Os;->sendto(Ljava/io/FileDescriptor;[BIIILjava/net/SocketAddress;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 134
    .end local v6    # "buf":Ljava/nio/ByteBuffer;
    .end local v7    # "desiredIp":[B
    .end local v9    # "sendIp":[B
    :catch_0
    move-exception v8

    .line 135
    .local v8, "e":Ljava/lang/Exception;
    const-string v0, "VivoArpPeer"

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

    goto :goto_0
.end method

.method public sendSavedArpConfigurations(Ljava/lang/String;)V
    .locals 10
    .param p1, "vivoSsid"    # Ljava/lang/String;

    .prologue
    .line 209
    iget-object v7, p0, Landroid/net/arp/VivoArpPeer;->mNetworks:Landroid/util/SparseArray;

    if-eqz v7, :cond_0

    iget-object v7, p0, Landroid/net/arp/VivoArpPeer;->mNetworks:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-nez v7, :cond_2

    .line 210
    :cond_0
    const-string v7, "VivoArpPeer"

    const-string v8, "sendSavedArpConfigurations no need "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-virtual {p0}, Landroid/net/arp/VivoArpPeer;->close()V

    .line 238
    :cond_1
    :goto_0
    return-void

    .line 215
    :cond_2
    const/4 v2, 0x0

    .line 219
    .local v2, "deserdIPAddr":Ljava/net/InetAddress;
    :try_start_0
    iget-object v7, p0, Landroid/net/arp/VivoArpPeer;->mNetworks:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 220
    .local v5, "size":I
    const-string v7, "VivoArpPeer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sendSavedArpConfigurations size"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v5, :cond_1

    .line 222
    iget-object v7, p0, Landroid/net/arp/VivoArpPeer;->mNetworks:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/VivoArpConfiguration;

    invoke-virtual {v7}, Landroid/net/VivoArpConfiguration;->getCurrentSSID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 221
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 223
    :cond_4
    iget-object v7, p0, Landroid/net/arp/VivoArpPeer;->mNetworks:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/VivoArpConfiguration;

    invoke-virtual {v7}, Landroid/net/VivoArpConfiguration;->getDefaultGwMacAddress()[B

    move-result-object v1

    .line 224
    .local v1, "defaultGwMacAddress":[B
    iget-object v7, p0, Landroid/net/arp/VivoArpPeer;->mNetworks:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/VivoArpConfiguration;

    invoke-virtual {v7}, Landroid/net/VivoArpConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object v7

    iget-object v6, v7, Landroid/net/IpConfiguration;->staticIpConfiguration:Landroid/net/StaticIpConfiguration;

    .line 225
    .local v6, "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    if-eqz v6, :cond_3

    .line 226
    iget-object v7, v6, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    if-eqz v7, :cond_5

    .line 227
    iget-object v2, v6, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    .line 230
    :cond_5
    const/4 v0, 0x0

    .local v0, "count":I
    :goto_2
    const/4 v7, 0x3

    if-ge v0, v7, :cond_3

    .line 231
    iget-object v7, v6, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v7}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {p0, v2, v1, v7}, Landroid/net/arp/VivoArpPeer;->doArp(Ljava/net/InetAddress;[BLjava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 235
    .end local v0    # "count":I
    .end local v1    # "defaultGwMacAddress":[B
    .end local v4    # "i":I
    .end local v5    # "size":I
    .end local v6    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    :catch_0
    move-exception v3

    .line 236
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public updateArpConfigurations(Landroid/net/VivoArpConfiguration;)V
    .locals 8
    .param p1, "arpConfig"    # Landroid/net/VivoArpConfiguration;

    .prologue
    .line 159
    const/4 v1, 0x0

    .line 160
    .local v1, "flagEqual":Z
    const/4 v2, 0x0

    .line 163
    .local v2, "id":I
    :try_start_0
    invoke-virtual {p1}, Landroid/net/VivoArpConfiguration;->getDefaultGwMacAddress()[B

    move-result-object v3

    .line 164
    .local v3, "newGatewayMac":[B
    iget-object v5, p0, Landroid/net/arp/VivoArpPeer;->mNetworks:Landroid/util/SparseArray;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/net/arp/VivoArpPeer;->mNetworks:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 165
    :cond_0
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    iput-object v5, p0, Landroid/net/arp/VivoArpPeer;->mNetworks:Landroid/util/SparseArray;

    .line 166
    const-string v5, "VivoArpPeer"

    const-string v6, "updateArpConfigurations new new "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_1
    :goto_0
    iget-object v5, p0, Landroid/net/arp/VivoArpPeer;->mNetworks:Landroid/util/SparseArray;

    invoke-virtual {v5, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 178
    iget-object v5, p0, Landroid/net/arp/VivoArpPeer;->mVivoArpConfigStore:Lcom/android/server/net/VivoArpConfigStore;

    sget-object v6, Landroid/net/arp/VivoArpPeer;->arpConfigFile:Ljava/lang/String;

    iget-object v7, p0, Landroid/net/arp/VivoArpPeer;->mNetworks:Landroid/util/SparseArray;

    invoke-virtual {v5, v6, v7}, Lcom/android/server/net/VivoArpConfigStore;->writeArpConfigurations(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 182
    .end local v3    # "newGatewayMac":[B
    :goto_1
    return-void

    .line 168
    .restart local v3    # "newGatewayMac":[B
    :cond_2
    const/4 v2, 0x0

    :goto_2
    iget-object v5, p0, Landroid/net/arp/VivoArpPeer;->mNetworks:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 169
    iget-object v5, p0, Landroid/net/arp/VivoArpPeer;->mNetworks:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/VivoArpConfiguration;

    invoke-virtual {v5}, Landroid/net/VivoArpConfiguration;->getDefaultGwMacAddress()[B

    move-result-object v4

    .line 170
    .local v4, "oldGatewayMac":[B
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_3

    .line 172
    const/4 v1, 0x1

    .line 173
    goto :goto_0

    .line 168
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 179
    .end local v3    # "newGatewayMac":[B
    .end local v4    # "oldGatewayMac":[B
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
