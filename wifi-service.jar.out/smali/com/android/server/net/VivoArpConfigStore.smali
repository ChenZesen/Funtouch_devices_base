.class public Lcom/android/server/net/VivoArpConfigStore;
.super Ljava/lang/Object;
.source "VivoArpConfigStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/VivoArpConfigStore$2;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field protected static final DNS_KEY:Ljava/lang/String; = "dns"

.field protected static final EOS:Ljava/lang/String; = "eos"

.field protected static final GATEWAY_KEY:Ljava/lang/String; = "gateway"

.field protected static final ID_KEY:Ljava/lang/String; = "mac"

.field protected static final IPCONFIG_FILE_VERSION:I = 0x2

.field protected static final LEASE_TIME_KEY:Ljava/lang/String; = "leasetime"

.field protected static final LINK_ADDRESS_KEY:Ljava/lang/String; = "linkAddress"

.field protected static final SSID_KEY:Ljava/lang/String; = "ssid"

.field private static final TAG:Ljava/lang/String; = "VivoArpConfigStore"


# instance fields
.field protected final mWriter:Lcom/android/server/net/DelayedDiskWrite;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/android/server/net/DelayedDiskWrite;

    invoke-direct {v0}, Lcom/android/server/net/DelayedDiskWrite;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/VivoArpConfigStore;->mWriter:Lcom/android/server/net/DelayedDiskWrite;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/net/VivoArpConfigStore;Ljava/io/DataOutputStream;Ljava/lang/String;[BLandroid/net/IpConfiguration;J)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/VivoArpConfigStore;
    .param p1, "x1"    # Ljava/io/DataOutputStream;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # [B
    .param p4, "x4"    # Landroid/net/IpConfiguration;
    .param p5, "x5"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct/range {p0 .. p6}, Lcom/android/server/net/VivoArpConfigStore;->writeConfig(Ljava/io/DataOutputStream;Ljava/lang/String;[BLandroid/net/IpConfiguration;J)Z

    move-result v0

    return v0
.end method

.method private charToByte(C)B
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 251
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method private writeConfig(Ljava/io/DataOutputStream;Ljava/lang/String;[BLandroid/net/IpConfiguration;J)Z
    .locals 9
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .param p2, "currentSsid"    # Ljava/lang/String;
    .param p3, "mMyMac"    # [B
    .param p4, "config"    # Landroid/net/IpConfiguration;
    .param p5, "leasetime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    const/4 v5, 0x0

    .line 64
    .local v5, "written":Z
    :try_start_0
    sget-object v6, Lcom/android/server/net/VivoArpConfigStore$2;->$SwitchMap$android$net$IpConfiguration$IpAssignment:[I

    iget-object v7, p4, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v7}, Landroid/net/IpConfiguration$IpAssignment;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 94
    const-string v6, "Ignore invalid ip assignment while writing"

    invoke-virtual {p0, v6}, Lcom/android/server/net/VivoArpConfigStore;->loge(Ljava/lang/String;)V

    .line 97
    :goto_0
    :pswitch_0
    if-eqz v5, :cond_0

    .line 98
    const-string v6, "mac"

    invoke-virtual {p1, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 99
    const/4 v6, 0x0

    aget-byte v6, p3, v6

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 100
    const/4 v6, 0x1

    aget-byte v6, p3, v6

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 101
    const/4 v6, 0x2

    aget-byte v6, p3, v6

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 102
    const/4 v6, 0x3

    aget-byte v6, p3, v6

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 103
    const/4 v6, 0x4

    aget-byte v6, p3, v6

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 104
    const/4 v6, 0x5

    aget-byte v6, p3, v6

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 105
    const-string v6, "leasetime"

    invoke-virtual {p1, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p1, p5, p6}, Ljava/io/DataOutputStream;->writeLong(J)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :cond_0
    :goto_1
    const-string v6, "eos"

    invoke-virtual {p1, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 112
    return v5

    .line 67
    :pswitch_1
    :try_start_1
    const-string v6, "ssid"

    invoke-virtual {p1, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 69
    iget-object v4, p4, Landroid/net/IpConfiguration;->staticIpConfiguration:Landroid/net/StaticIpConfiguration;

    .line 70
    .local v4, "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    if-eqz v4, :cond_3

    .line 71
    iget-object v6, v4, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    if-eqz v6, :cond_1

    .line 72
    iget-object v3, v4, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    .line 73
    .local v3, "ipAddress":Landroid/net/LinkAddress;
    const-string v6, "linkAddress"

    invoke-virtual {p1, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v3}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v3}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v6

    invoke-virtual {p1, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 77
    .end local v3    # "ipAddress":Landroid/net/LinkAddress;
    :cond_1
    iget-object v6, v4, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    if-eqz v6, :cond_2

    .line 78
    const-string v6, "gateway"

    invoke-virtual {p1, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 79
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 80
    const/4 v6, 0x1

    invoke-virtual {p1, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 81
    iget-object v6, v4, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 83
    :cond_2
    iget-object v6, v4, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 84
    .local v2, "inetAddr":Ljava/net/InetAddress;
    const-string v6, "dns"

    invoke-virtual {p1, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 108
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "inetAddr":Ljava/net/InetAddress;
    .end local v4    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure in writing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/net/VivoArpConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 88
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .restart local v4    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    :cond_3
    const/4 v5, 0x1

    .line 89
    goto/16 :goto_0

    .line 64
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 258
    const-string v0, "VivoArpConfigStore"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 254
    const-string v0, "VivoArpConfigStore"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    return-void
.end method

.method public readArpConfigurations(Ljava/lang/String;)Landroid/util/SparseArray;
    .locals 31
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/net/VivoArpConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    new-instance v21, Landroid/util/SparseArray;

    invoke-direct/range {v21 .. v21}, Landroid/util/SparseArray;-><init>()V

    .line 131
    .local v21, "networks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/net/VivoArpConfiguration;>;"
    const/4 v12, 0x0

    .line 133
    .local v12, "in":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v13, Ljava/io/DataInputStream;

    new-instance v29, Ljava/io/BufferedInputStream;

    new-instance v30, Ljava/io/FileInputStream;

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v29 .. v30}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v29

    invoke-direct {v13, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 135
    .end local v12    # "in":Ljava/io/DataInputStream;
    .local v13, "in":Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readInt()I

    move-result v28

    .line 136
    .local v28, "version":I
    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_2

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_2

    .line 137
    const-string v29, "Bad version on IP configuration file, ignore read"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/server/net/VivoArpConfigStore;->loge(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    const/16 v21, 0x0

    .line 241
    .end local v21    # "networks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/net/VivoArpConfiguration;>;"
    if-eqz v13, :cond_0

    .line 243
    :try_start_2
    invoke-virtual {v13}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    :cond_0
    :goto_0
    move-object v12, v13

    .line 248
    .end local v13    # "in":Ljava/io/DataInputStream;
    .end local v28    # "version":I
    .restart local v12    # "in":Ljava/io/DataInputStream;
    :cond_1
    :goto_1
    return-object v21

    .line 140
    .end local v12    # "in":Ljava/io/DataInputStream;
    .restart local v13    # "in":Ljava/io/DataInputStream;
    .restart local v21    # "networks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/net/VivoArpConfiguration;>;"
    .restart local v28    # "version":I
    :cond_2
    const/4 v11, -0x1

    .line 142
    .local v11, "id":I
    :goto_2
    const/16 v29, 0x6

    :try_start_3
    move/from16 v0, v29

    new-array v0, v0, [B

    move-object/from16 v20, v0

    .line 144
    .local v20, "mac":[B
    sget-object v14, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    .line 145
    .local v14, "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    sget-object v25, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    .line 146
    .local v25, "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    new-instance v27, Landroid/net/StaticIpConfiguration;

    invoke-direct/range {v27 .. v27}, Landroid/net/StaticIpConfiguration;-><init>()V

    .line 147
    .local v27, "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    const/16 v23, 0x0

    .line 148
    .local v23, "proxyHost":Ljava/lang/String;
    const/16 v22, 0x0

    .line 149
    .local v22, "pacFileUrl":Ljava/lang/String;
    const/16 v24, -0x1

    .line 150
    .local v24, "proxyPort":I
    const/4 v8, 0x0

    .line 152
    .local v8, "exclusionList":Ljava/lang/String;
    const-wide/16 v16, 0x0

    .line 153
    .local v16, "leasetime":J
    new-instance v4, Landroid/net/VivoArpConfiguration;

    invoke-direct {v4}, Landroid/net/VivoArpConfiguration;-><init>()V

    .line 155
    .local v4, "arpconfig":Landroid/net/VivoArpConfiguration;
    :goto_3
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v15

    .line 157
    .local v15, "key":Ljava/lang/String;
    :try_start_4
    const-string v29, "mac"

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_5

    .line 158
    const/16 v18, 0x0

    .local v18, "len":I
    :goto_4
    const/16 v29, 0x6

    move/from16 v0, v18

    move/from16 v1, v29

    if-ge v0, v1, :cond_4

    .line 159
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->toCharArray()[C

    move-result-object v10

    .line 160
    .local v10, "hexChars":[C
    array-length v0, v10

    move/from16 v29, v0

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_3

    .line 161
    const/16 v29, 0x0

    aget-char v29, v10, v29

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/server/net/VivoArpConfigStore;->charToByte(C)B

    move-result v29

    shl-int/lit8 v29, v29, 0x4

    const/16 v30, 0x1

    aget-char v30, v10, v30

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/server/net/VivoArpConfigStore;->charToByte(C)B

    move-result v30

    or-int v29, v29, v30

    move/from16 v0, v29

    int-to-byte v0, v0

    move/from16 v29, v0

    aput-byte v29, v20, v18

    .line 158
    :goto_5
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 163
    :cond_3
    const/16 v29, 0x0

    aget-char v29, v10, v29

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/server/net/VivoArpConfigStore;->charToByte(C)B

    move-result v29

    aput-byte v29, v20, v18
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/EOFException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    .line 219
    .end local v10    # "hexChars":[C
    .end local v18    # "len":I
    :catch_0
    move-exception v7

    .line 220
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    :try_start_5
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Ignore invalid address while reading"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/server/net/VivoArpConfigStore;->loge(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_3

    .line 237
    .end local v4    # "arpconfig":Landroid/net/VivoArpConfiguration;
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    .end local v8    # "exclusionList":Ljava/lang/String;
    .end local v11    # "id":I
    .end local v14    # "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    .end local v15    # "key":Ljava/lang/String;
    .end local v16    # "leasetime":J
    .end local v20    # "mac":[B
    .end local v22    # "pacFileUrl":Ljava/lang/String;
    .end local v23    # "proxyHost":Ljava/lang/String;
    .end local v24    # "proxyPort":I
    .end local v25    # "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    .end local v27    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    .end local v28    # "version":I
    :catch_1
    move-exception v29

    move-object v12, v13

    .line 241
    .end local v13    # "in":Ljava/io/DataInputStream;
    .restart local v12    # "in":Ljava/io/DataInputStream;
    :goto_6
    if-eqz v12, :cond_1

    .line 243
    :try_start_6
    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_1

    .line 244
    :catch_2
    move-exception v29

    goto/16 :goto_1

    .line 166
    .end local v12    # "in":Ljava/io/DataInputStream;
    .restart local v4    # "arpconfig":Landroid/net/VivoArpConfiguration;
    .restart local v8    # "exclusionList":Ljava/lang/String;
    .restart local v11    # "id":I
    .restart local v13    # "in":Ljava/io/DataInputStream;
    .restart local v14    # "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    .restart local v15    # "key":Ljava/lang/String;
    .restart local v16    # "leasetime":J
    .restart local v18    # "len":I
    .restart local v20    # "mac":[B
    .restart local v22    # "pacFileUrl":Ljava/lang/String;
    .restart local v23    # "proxyHost":Ljava/lang/String;
    .restart local v24    # "proxyPort":I
    .restart local v25    # "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    .restart local v27    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    .restart local v28    # "version":I
    :cond_4
    :try_start_7
    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/net/VivoArpConfiguration;->setDefaultGwMacAddress([B)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/EOFException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_3

    .line 238
    .end local v4    # "arpconfig":Landroid/net/VivoArpConfiguration;
    .end local v8    # "exclusionList":Ljava/lang/String;
    .end local v11    # "id":I
    .end local v14    # "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    .end local v15    # "key":Ljava/lang/String;
    .end local v16    # "leasetime":J
    .end local v18    # "len":I
    .end local v20    # "mac":[B
    .end local v22    # "pacFileUrl":Ljava/lang/String;
    .end local v23    # "proxyHost":Ljava/lang/String;
    .end local v24    # "proxyPort":I
    .end local v25    # "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    .end local v27    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    .end local v28    # "version":I
    :catch_3
    move-exception v7

    move-object v12, v13

    .line 239
    .end local v13    # "in":Ljava/io/DataInputStream;
    .local v7, "e":Ljava/io/IOException;
    .restart local v12    # "in":Ljava/io/DataInputStream;
    :goto_7
    :try_start_8
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Error parsing configuration: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/server/net/VivoArpConfigStore;->loge(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 241
    if-eqz v12, :cond_1

    .line 243
    :try_start_9
    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_1

    .line 244
    :catch_4
    move-exception v29

    goto/16 :goto_1

    .line 167
    .end local v7    # "e":Ljava/io/IOException;
    .end local v12    # "in":Ljava/io/DataInputStream;
    .restart local v4    # "arpconfig":Landroid/net/VivoArpConfiguration;
    .restart local v8    # "exclusionList":Ljava/lang/String;
    .restart local v11    # "id":I
    .restart local v13    # "in":Ljava/io/DataInputStream;
    .restart local v14    # "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    .restart local v15    # "key":Ljava/lang/String;
    .restart local v16    # "leasetime":J
    .restart local v20    # "mac":[B
    .restart local v22    # "pacFileUrl":Ljava/lang/String;
    .restart local v23    # "proxyHost":Ljava/lang/String;
    .restart local v24    # "proxyPort":I
    .restart local v25    # "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    .restart local v27    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    .restart local v28    # "version":I
    :cond_5
    :try_start_a
    const-string v29, "leasetime"

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_7

    .line 168
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v16

    .line 169
    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Landroid/net/VivoArpConfiguration;->setVivoDhcpHistoryLeaseTime(J)V
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/EOFException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_3

    .line 241
    .end local v4    # "arpconfig":Landroid/net/VivoArpConfiguration;
    .end local v8    # "exclusionList":Ljava/lang/String;
    .end local v11    # "id":I
    .end local v14    # "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    .end local v15    # "key":Ljava/lang/String;
    .end local v16    # "leasetime":J
    .end local v20    # "mac":[B
    .end local v22    # "pacFileUrl":Ljava/lang/String;
    .end local v23    # "proxyHost":Ljava/lang/String;
    .end local v24    # "proxyPort":I
    .end local v25    # "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    .end local v27    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    .end local v28    # "version":I
    :catchall_0
    move-exception v29

    move-object v12, v13

    .end local v13    # "in":Ljava/io/DataInputStream;
    .restart local v12    # "in":Ljava/io/DataInputStream;
    :goto_8
    if-eqz v12, :cond_6

    .line 243
    :try_start_b
    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    .line 244
    :cond_6
    :goto_9
    throw v29

    .line 170
    .end local v12    # "in":Ljava/io/DataInputStream;
    .restart local v4    # "arpconfig":Landroid/net/VivoArpConfiguration;
    .restart local v8    # "exclusionList":Ljava/lang/String;
    .restart local v11    # "id":I
    .restart local v13    # "in":Ljava/io/DataInputStream;
    .restart local v14    # "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    .restart local v15    # "key":Ljava/lang/String;
    .restart local v16    # "leasetime":J
    .restart local v20    # "mac":[B
    .restart local v22    # "pacFileUrl":Ljava/lang/String;
    .restart local v23    # "proxyHost":Ljava/lang/String;
    .restart local v24    # "proxyPort":I
    .restart local v25    # "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    .restart local v27    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    .restart local v28    # "version":I
    :cond_7
    :try_start_c
    const-string v29, "ssid"

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_8

    .line 171
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Landroid/net/VivoArpConfiguration;->setCurrentSSID(Ljava/lang/String;)V

    .line 172
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3

    .line 173
    :cond_8
    const-string v29, "linkAddress"

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_a

    .line 174
    new-instance v19, Landroid/net/LinkAddress;

    invoke-virtual {v13}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v29

    invoke-virtual {v13}, Ljava/io/DataInputStream;->readInt()I

    move-result v30

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 176
    .local v19, "linkAddr":Landroid/net/LinkAddress;
    invoke-virtual/range {v19 .. v19}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v29

    move-object/from16 v0, v29

    instance-of v0, v0, Ljava/net/Inet4Address;

    move/from16 v29, v0

    if-eqz v29, :cond_9

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    move-object/from16 v29, v0

    if-nez v29, :cond_9

    .line 178
    move-object/from16 v0, v19

    move-object/from16 v1, v27

    iput-object v0, v1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    goto/16 :goto_3

    .line 180
    :cond_9
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Non-IPv4 or duplicate address: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/server/net/VivoArpConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 182
    .end local v19    # "linkAddr":Landroid/net/LinkAddress;
    :cond_a
    const-string v29, "gateway"

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_10

    .line 183
    const/4 v6, 0x0

    .line 184
    .local v6, "dest":Landroid/net/LinkAddress;
    const/4 v9, 0x0

    .line 185
    .local v9, "gateway":Ljava/net/InetAddress;
    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_c

    .line 187
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9

    .line 188
    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    move-object/from16 v29, v0

    if-nez v29, :cond_b

    .line 189
    move-object/from16 v0, v27

    iput-object v9, v0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    goto/16 :goto_3

    .line 191
    :cond_b
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Duplicate gateway: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v9}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/server/net/VivoArpConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 194
    :cond_c
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readInt()I

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_d

    .line 195
    new-instance v6, Landroid/net/LinkAddress;

    .end local v6    # "dest":Landroid/net/LinkAddress;
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v29

    invoke-virtual {v13}, Ljava/io/DataInputStream;->readInt()I

    move-result v30

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-direct {v6, v0, v1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 199
    .restart local v6    # "dest":Landroid/net/LinkAddress;
    :cond_d
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readInt()I

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_e

    .line 200
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9

    .line 202
    :cond_e
    new-instance v26, Landroid/net/RouteInfo;

    move-object/from16 v0, v26

    invoke-direct {v0, v6, v9}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;)V

    .line 203
    .local v26, "route":Landroid/net/RouteInfo;
    invoke-virtual/range {v26 .. v26}, Landroid/net/RouteInfo;->isIPv4Default()Z

    move-result v29

    if-eqz v29, :cond_f

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    move-object/from16 v29, v0

    if-nez v29, :cond_f

    .line 205
    move-object/from16 v0, v27

    iput-object v9, v0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    goto/16 :goto_3

    .line 207
    :cond_f
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Non-IPv4 default or duplicate route: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/server/net/VivoArpConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 210
    .end local v6    # "dest":Landroid/net/LinkAddress;
    .end local v9    # "gateway":Ljava/net/InetAddress;
    .end local v26    # "route":Landroid/net/RouteInfo;
    :cond_10
    const-string v29, "dns"

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_11

    .line 211
    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual {v13}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 213
    :cond_11
    const-string v29, "eos"

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/io/EOFException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result v29

    if-eqz v29, :cond_12

    .line 224
    const/16 v29, -0x1

    move/from16 v0, v29

    if-eq v11, v0, :cond_13

    .line 225
    :try_start_d
    new-instance v5, Landroid/net/IpConfiguration;

    invoke-direct {v5}, Landroid/net/IpConfiguration;-><init>()V

    .line 226
    .local v5, "config":Landroid/net/IpConfiguration;
    move-object/from16 v0, v27

    iput-object v0, v5, Landroid/net/IpConfiguration;->staticIpConfiguration:Landroid/net/StaticIpConfiguration;

    .line 227
    iput-object v14, v5, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 228
    invoke-virtual {v4, v5}, Landroid/net/VivoArpConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    .line 229
    move-object/from16 v0, v21

    invoke-virtual {v0, v11, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 230
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "readArpConfigurations----id="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/server/net/VivoArpConfigStore;->log(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/io/EOFException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_2

    .line 217
    .end local v5    # "config":Landroid/net/IpConfiguration;
    :cond_12
    :try_start_e
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Ignore unknown key "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "while reading"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/server/net/VivoArpConfigStore;->loge(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/io/EOFException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_3

    .line 232
    :cond_13
    :try_start_f
    const-string v29, "readArpConfigurations Missing id while parsing configuration"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/server/net/VivoArpConfigStore;->log(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/io/EOFException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_2

    .line 244
    .end local v4    # "arpconfig":Landroid/net/VivoArpConfiguration;
    .end local v8    # "exclusionList":Ljava/lang/String;
    .end local v11    # "id":I
    .end local v14    # "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    .end local v15    # "key":Ljava/lang/String;
    .end local v16    # "leasetime":J
    .end local v20    # "mac":[B
    .end local v21    # "networks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/net/VivoArpConfiguration;>;"
    .end local v22    # "pacFileUrl":Ljava/lang/String;
    .end local v23    # "proxyHost":Ljava/lang/String;
    .end local v24    # "proxyPort":I
    .end local v25    # "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    .end local v27    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    :catch_5
    move-exception v29

    goto/16 :goto_0

    .end local v13    # "in":Ljava/io/DataInputStream;
    .end local v28    # "version":I
    .restart local v12    # "in":Ljava/io/DataInputStream;
    .restart local v21    # "networks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/net/VivoArpConfiguration;>;"
    :catch_6
    move-exception v30

    goto/16 :goto_9

    .line 241
    :catchall_1
    move-exception v29

    goto/16 :goto_8

    .line 238
    :catch_7
    move-exception v7

    goto/16 :goto_7

    .line 237
    :catch_8
    move-exception v29

    goto/16 :goto_6
.end method

.method public writeArpConfigurations(Ljava/lang/String;Landroid/util/SparseArray;)V
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/net/VivoArpConfiguration;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 116
    .local p2, "networks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/net/VivoArpConfiguration;>;"
    const-string v0, "writeArpConfigurations--start"

    invoke-virtual {p0, v0}, Lcom/android/server/net/VivoArpConfigStore;->loge(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/android/server/net/VivoArpConfigStore;->mWriter:Lcom/android/server/net/DelayedDiskWrite;

    new-instance v1, Lcom/android/server/net/VivoArpConfigStore$1;

    invoke-direct {v1, p0, p2}, Lcom/android/server/net/VivoArpConfigStore$1;-><init>(Lcom/android/server/net/VivoArpConfigStore;Landroid/util/SparseArray;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/server/net/DelayedDiskWrite;->write(Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;)V

    .line 125
    const-string v0, "writeArpConfigurations--end"

    invoke-virtual {p0, v0}, Lcom/android/server/net/VivoArpConfigStore;->loge(Ljava/lang/String;)V

    .line 126
    return-void
.end method
