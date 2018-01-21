.class public Lcom/android/server/wifi/VivoWifiArpDetect;
.super Ljava/lang/Object;
.source "VivoWifiArpDetect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/VivoWifiArpDetect$ArpPeer;
    }
.end annotation


# static fields
.field private static final ARP_ETHER_BROADCAST:[B

.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "VivoWifiArpDetect"


# instance fields
.field private isDetected:Z

.field private mArpPeer:Lcom/android/server/wifi/VivoWifiArpDetect$ArpPeer;

.field private mContext:Landroid/content/Context;

.field private mVivoBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mVivoIntentFilter:Landroid/content/IntentFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/wifi/VivoWifiArpDetect;->ARP_ETHER_BROADCAST:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/VivoWifiArpDetect;->isDetected:Z

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/VivoWifiArpDetect;->mArpPeer:Lcom/android/server/wifi/VivoWifiArpDetect$ArpPeer;

    .line 89
    iput-object p1, p0, Lcom/android/server/wifi/VivoWifiArpDetect;->mContext:Landroid/content/Context;

    .line 90
    const-string v0, "VivoWifiArpDetect"

    const-string v1, "VivoWifiArpDetect init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-direct {p0}, Lcom/android/server/wifi/VivoWifiArpDetect;->setupVivoReceiver()V

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wifi/VivoWifiArpDetect;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiArpDetect;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/VivoWifiArpDetect;->startCheckArp(II)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wifi/VivoWifiArpDetect;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/VivoWifiArpDetect;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiArpDetect;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()[B
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/android/server/wifi/VivoWifiArpDetect;->ARP_ETHER_BROADCAST:[B

    return-object v0
.end method

.method private setupVivoReceiver()V
    .locals 3

    .prologue
    .line 95
    new-instance v0, Lcom/android/server/wifi/VivoWifiArpDetect$1;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/VivoWifiArpDetect$1;-><init>(Lcom/android/server/wifi/VivoWifiArpDetect;)V

    iput-object v0, p0, Lcom/android/server/wifi/VivoWifiArpDetect;->mVivoBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 114
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/VivoWifiArpDetect;->mVivoIntentFilter:Landroid/content/IntentFilter;

    .line 115
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiArpDetect;->mVivoIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_ARP_DETECT_START"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiArpDetect;->mVivoIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_ARP_DETECT_STOP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiArpDetect;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiArpDetect;->mVivoBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/server/wifi/VivoWifiArpDetect;->mVivoIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 118
    return-void
.end method

.method private startCheckArp(II)V
    .locals 3
    .param p1, "netID"    # I
    .param p2, "token"    # I

    .prologue
    .line 121
    const-string v0, "VivoWifiArpDetect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startCheckArp begin netID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", token:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    new-instance v0, Lcom/android/server/wifi/VivoWifiArpDetect$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/wifi/VivoWifiArpDetect$2;-><init>(Lcom/android/server/wifi/VivoWifiArpDetect;II)V

    invoke-virtual {v0}, Lcom/android/server/wifi/VivoWifiArpDetect$2;->start()V

    .line 134
    return-void
.end method


# virtual methods
.method public doArp(II)Z
    .locals 21
    .param p1, "timeoutMillis"    # I
    .param p2, "numArpPings"    # I

    .prologue
    .line 137
    const/16 v16, 0x0

    .line 140
    .local v16, "success":Z
    const/4 v10, 0x0

    .line 141
    .local v10, "linkAddress":Landroid/net/LinkAddress;
    const/4 v14, 0x0

    .line 142
    .local v14, "route":Landroid/net/RouteInfo;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/VivoWifiArpDetect;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "connectivity"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    .line 143
    .local v6, "connectivityManager":Landroid/net/ConnectivityManager;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v11

    .line 144
    .local v11, "linkProperties":Landroid/net/LinkProperties;
    invoke-virtual {v11}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/LinkAddress;

    .line 145
    .local v5, "address":Landroid/net/LinkAddress;
    invoke-virtual {v5}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v17

    move-object/from16 v0, v17

    instance-of v0, v0, Ljava/net/Inet4Address;

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 146
    move-object v10, v5

    goto :goto_0

    .line 149
    .end local v5    # "address":Landroid/net/LinkAddress;
    :cond_1
    invoke-virtual {v11}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/RouteInfo;

    .line 150
    .local v12, "r":Landroid/net/RouteInfo;
    move-object v14, v12

    .line 151
    goto :goto_1

    .line 152
    .end local v12    # "r":Landroid/net/RouteInfo;
    :cond_2
    const-string v17, "VivoWifiArpDetect"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "doArp srcIp:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v10}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", dstIp:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v14}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    new-instance v17, Lcom/android/server/wifi/VivoWifiArpDetect$ArpPeer;

    const-string v18, "wlan0"

    invoke-virtual {v10}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v19

    invoke-virtual {v14}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/VivoWifiArpDetect$ArpPeer;-><init>(Lcom/android/server/wifi/VivoWifiArpDetect;Ljava/lang/String;Ljava/net/InetAddress;Ljava/net/InetAddress;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/VivoWifiArpDetect;->mArpPeer:Lcom/android/server/wifi/VivoWifiArpDetect$ArpPeer;

    .line 154
    const/4 v13, 0x0

    .line 155
    .local v13, "responses":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    move/from16 v0, p2

    if-ge v8, v0, :cond_3

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/VivoWifiArpDetect;->mArpPeer:Lcom/android/server/wifi/VivoWifiArpDetect$ArpPeer;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wifi/VivoWifiArpDetect$ArpPeer;->doArp()[B

    .line 155
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 158
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/VivoWifiArpDetect;->mArpPeer:Lcom/android/server/wifi/VivoWifiArpDetect$ArpPeer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/VivoWifiArpDetect$ArpPeer;->waitForArpReply(I)[B

    move-result-object v17

    if-eqz v17, :cond_4

    .line 159
    const/16 v16, 0x1

    .line 161
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/VivoWifiArpDetect;->mArpPeer:Lcom/android/server/wifi/VivoWifiArpDetect$ArpPeer;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wifi/VivoWifiArpDetect$ArpPeer;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/VivoWifiArpDetect;->mArpPeer:Lcom/android/server/wifi/VivoWifiArpDetect$ArpPeer;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wifi/VivoWifiArpDetect$ArpPeer;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 175
    .end local v6    # "connectivityManager":Landroid/net/ConnectivityManager;
    .end local v8    # "i":I
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v11    # "linkProperties":Landroid/net/LinkProperties;
    .end local v13    # "responses":I
    :goto_3
    return v16

    .line 171
    .restart local v6    # "connectivityManager":Landroid/net/ConnectivityManager;
    .restart local v8    # "i":I
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v11    # "linkProperties":Landroid/net/LinkProperties;
    .restart local v13    # "responses":I
    :catch_0
    move-exception v7

    .line 172
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 162
    .end local v6    # "connectivityManager":Landroid/net/ConnectivityManager;
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v8    # "i":I
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v11    # "linkProperties":Landroid/net/LinkProperties;
    .end local v13    # "responses":I
    :catch_1
    move-exception v15

    .line 165
    .local v15, "se":Ljava/lang/Exception;
    :try_start_2
    const-string v17, "VivoWifiArpDetect"

    const-string v18, "doArp ARP test initiation failure"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 167
    const/16 v16, 0x0

    .line 170
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/VivoWifiArpDetect;->mArpPeer:Lcom/android/server/wifi/VivoWifiArpDetect$ArpPeer;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wifi/VivoWifiArpDetect$ArpPeer;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    .line 171
    :catch_2
    move-exception v7

    .line 172
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 169
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v15    # "se":Ljava/lang/Exception;
    :catchall_0
    move-exception v17

    .line 170
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/VivoWifiArpDetect;->mArpPeer:Lcom/android/server/wifi/VivoWifiArpDetect$ArpPeer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wifi/VivoWifiArpDetect$ArpPeer;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 173
    :goto_4
    throw v17

    .line 171
    :catch_3
    move-exception v7

    .line 172
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method public stopArp()V
    .locals 2

    .prologue
    .line 180
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiArpDetect;->mArpPeer:Lcom/android/server/wifi/VivoWifiArpDetect$ArpPeer;

    if-eqz v1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/android/server/wifi/VivoWifiArpDetect;->mArpPeer:Lcom/android/server/wifi/VivoWifiArpDetect$ArpPeer;

    invoke-virtual {v1}, Lcom/android/server/wifi/VivoWifiArpDetect$ArpPeer;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "se":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
