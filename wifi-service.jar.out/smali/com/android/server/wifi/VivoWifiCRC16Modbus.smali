.class public Lcom/android/server/wifi/VivoWifiCRC16Modbus;
.super Ljava/lang/Object;
.source "VivoWifiCRC16Modbus.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VivoWifiCRC16Modbus"

.field static crc16_tab_h:[B

.field static crc16_tab_l:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x100

    .line 15
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/wifi/VivoWifiCRC16Modbus;->crc16_tab_h:[B

    .line 21
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/wifi/VivoWifiCRC16Modbus;->crc16_tab_l:[B

    return-void

    .line 15
    nop

    :array_0
    .array-data 1
        0x0t
        -0x3ft
        -0x7ft
        0x40t
        0x1t
        -0x40t
        -0x80t
        0x41t
        0x1t
        -0x40t
        -0x80t
        0x41t
        0x0t
        -0x3ft
        -0x7ft
        0x40t
        0x1t
        -0x40t
        -0x80t
        0x41t
        0x0t
        -0x3ft
        -0x7ft
        0x40t
        0x0t
        -0x3ft
        -0x7ft
        0x40t
        0x1t
        -0x40t
        -0x80t
        0x41t
        0x1t
        -0x40t
        -0x80t
        0x41t
        0x0t
        -0x3ft
        -0x7ft
        0x40t
        0x0t
        -0x3ft
        -0x7ft
        0x40t
        0x1t
        -0x40t
        -0x80t
        0x41t
        0x0t
        -0x3ft
        -0x7ft
        0x40t
        0x1t
        -0x40t
        -0x80t
        0x41t
        0x1t
        -0x40t
        -0x80t
        0x41t
        0x0t
        -0x3ft
        -0x7ft
        0x40t
        0x1t
        -0x40t
        -0x80t
        0x41t
        0x0t
        -0x3ft
        -0x7ft
        0x40t
        0x0t
        -0x3ft
        -0x7ft
        0x40t
        0x1t
        -0x40t
        -0x80t
        0x41t
        0x0t
        -0x3ft
        -0x7ft
        0x40t
        0x1t
        -0x40t
        -0x80t
        0x41t
        0x1t
        -0x40t
        -0x80t
        0x41t
        0x0t
        -0x3ft
        -0x7ft
        0x40t
        0x0t
        -0x3ft
        -0x7ft
        0x40t
        0x1t
        -0x40t
        -0x80t
        0x41t
        0x1t
        -0x40t
        -0x80t
        0x41t
        0x0t
        -0x3ft
        -0x7ft
        0x40t
        0x1t
        -0x40t
        -0x80t
        0x41t
        0x0t
        -0x3ft
        -0x7ft
        0x40t
        0x0t
        -0x3ft
        -0x7ft
        0x40t
        0x1t
        -0x40t
        -0x80t
        0x41t
        0x1t
        -0x40t
        -0x80t
        0x41t
        0x0t
        -0x3ft
        -0x7ft
        0x40t
        0x0t
        -0x3ft
        -0x7ft
        0x40t
        0x1t
        -0x40t
        -0x80t
        0x41t
        0x0t
        -0x3ft
        -0x7ft
        0x40t
        0x1t
        -0x40t
        -0x80t
        0x41t
        0x1t
        -0x40t
        -0x80t
        0x41t
        0x0t
        -0x3ft
        -0x7ft
        0x40t
        0x0t
        -0x3ft
        -0x7ft
        0x40t
        0x1t
        -0x40t
        -0x80t
        0x41t
        0x1t
        -0x40t
        -0x80t
        0x41t
        0x0t
        -0x3ft
        -0x7ft
        0x40t
        0x1t
        -0x40t
        -0x80t
        0x41t
        0x0t
        -0x3ft
        -0x7ft
        0x40t
        0x0t
        -0x3ft
        -0x7ft
        0x40t
        0x1t
        -0x40t
        -0x80t
        0x41t
        0x0t
        -0x3ft
        -0x7ft
        0x40t
        0x1t
        -0x40t
        -0x80t
        0x41t
        0x1t
        -0x40t
        -0x80t
        0x41t
        0x0t
        -0x3ft
        -0x7ft
        0x40t
        0x1t
        -0x40t
        -0x80t
        0x41t
        0x0t
        -0x3ft
        -0x7ft
        0x40t
        0x0t
        -0x3ft
        -0x7ft
        0x40t
        0x1t
        -0x40t
        -0x80t
        0x41t
        0x1t
        -0x40t
        -0x80t
        0x41t
        0x0t
        -0x3ft
        -0x7ft
        0x40t
        0x0t
        -0x3ft
        -0x7ft
        0x40t
        0x1t
        -0x40t
        -0x80t
        0x41t
        0x0t
        -0x3ft
        -0x7ft
        0x40t
        0x1t
        -0x40t
        -0x80t
        0x41t
        0x1t
        -0x40t
        -0x80t
        0x41t
        0x0t
        -0x3ft
        -0x7ft
        0x40t
    .end array-data

    .line 21
    :array_1
    .array-data 1
        0x0t
        -0x40t
        -0x3ft
        0x1t
        -0x3dt
        0x3t
        0x2t
        -0x3et
        -0x3at
        0x6t
        0x7t
        -0x39t
        0x5t
        -0x3bt
        -0x3ct
        0x4t
        -0x34t
        0xct
        0xdt
        -0x33t
        0xft
        -0x31t
        -0x32t
        0xet
        0xat
        -0x36t
        -0x35t
        0xbt
        -0x37t
        0x9t
        0x8t
        -0x38t
        -0x28t
        0x18t
        0x19t
        -0x27t
        0x1bt
        -0x25t
        -0x26t
        0x1at
        0x1et
        -0x22t
        -0x21t
        0x1ft
        -0x23t
        0x1dt
        0x1ct
        -0x24t
        0x14t
        -0x2ct
        -0x2bt
        0x15t
        -0x29t
        0x17t
        0x16t
        -0x2at
        -0x2et
        0x12t
        0x13t
        -0x2dt
        0x11t
        -0x2ft
        -0x30t
        0x10t
        -0x10t
        0x30t
        0x31t
        -0xft
        0x33t
        -0xdt
        -0xet
        0x32t
        0x36t
        -0xat
        -0x9t
        0x37t
        -0xbt
        0x35t
        0x34t
        -0xct
        0x3ct
        -0x4t
        -0x3t
        0x3dt
        -0x1t
        0x3ft
        0x3et
        -0x2t
        -0x6t
        0x3at
        0x3bt
        -0x5t
        0x39t
        -0x7t
        -0x8t
        0x38t
        0x28t
        -0x18t
        -0x17t
        0x29t
        -0x15t
        0x2bt
        0x2at
        -0x16t
        -0x12t
        0x2et
        0x2ft
        -0x11t
        0x2dt
        -0x13t
        -0x14t
        0x2ct
        -0x1ct
        0x24t
        0x25t
        -0x1bt
        0x27t
        -0x19t
        -0x1at
        0x26t
        0x22t
        -0x1et
        -0x1dt
        0x23t
        -0x1ft
        0x21t
        0x20t
        -0x20t
        -0x60t
        0x60t
        0x61t
        -0x5ft
        0x63t
        -0x5dt
        -0x5et
        0x62t
        0x66t
        -0x5at
        -0x59t
        0x67t
        -0x5bt
        0x65t
        0x64t
        -0x5ct
        0x6ct
        -0x54t
        -0x53t
        0x6dt
        -0x51t
        0x6ft
        0x6et
        -0x52t
        -0x56t
        0x6at
        0x6bt
        -0x55t
        0x69t
        -0x57t
        -0x58t
        0x68t
        0x78t
        -0x48t
        -0x47t
        0x79t
        -0x45t
        0x7bt
        0x7at
        -0x46t
        -0x42t
        0x7et
        0x7ft
        -0x41t
        0x7dt
        -0x43t
        -0x44t
        0x7ct
        -0x4ct
        0x74t
        0x75t
        -0x4bt
        0x77t
        -0x49t
        -0x4at
        0x76t
        0x72t
        -0x4et
        -0x4dt
        0x73t
        -0x4ft
        0x71t
        0x70t
        -0x50t
        0x50t
        -0x70t
        -0x6ft
        0x51t
        -0x6dt
        0x53t
        0x52t
        -0x6et
        -0x6at
        0x56t
        0x57t
        -0x69t
        0x55t
        -0x6bt
        -0x6ct
        0x54t
        -0x64t
        0x5ct
        0x5dt
        -0x63t
        0x5ft
        -0x61t
        -0x62t
        0x5et
        0x5at
        -0x66t
        -0x65t
        0x5bt
        -0x67t
        0x59t
        0x58t
        -0x68t
        -0x78t
        0x48t
        0x49t
        -0x77t
        0x4bt
        -0x75t
        -0x76t
        0x4at
        0x4et
        -0x72t
        -0x71t
        0x4ft
        -0x73t
        0x4dt
        0x4ct
        -0x74t
        0x44t
        -0x7ct
        -0x7bt
        0x45t
        -0x79t
        0x47t
        0x46t
        -0x7at
        -0x7et
        0x42t
        0x43t
        -0x7dt
        0x41t
        -0x7ft
        -0x80t
        0x40t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calcCrc16([B)I
    .locals 2
    .param p0, "data"    # [B

    .prologue
    .line 28
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/android/server/wifi/VivoWifiCRC16Modbus;->calcCrc16([BII)I

    move-result v0

    return v0
.end method

.method public static calcCrc16([BII)I
    .locals 1
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I

    .prologue
    .line 32
    const v0, 0xffff

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/wifi/VivoWifiCRC16Modbus;->calcCrc16([BIII)I

    move-result v0

    return v0
.end method

.method public static calcCrc16([BIII)I
    .locals 8
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .param p3, "preval"    # I

    .prologue
    .line 36
    const/4 v3, 0x0

    .line 37
    .local v3, "ucCRCHi":I
    const/4 v4, 0x0

    .line 41
    .local v4, "ucCRCLo":I
    const v5, 0xff00

    and-int/2addr v5, p3

    shr-int/lit8 v3, v5, 0x8

    .line 42
    and-int/lit16 v4, p3, 0xff

    .line 43
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 44
    add-int v5, p1, v1

    :try_start_0
    aget-byte v5, p0, v5

    xor-int/2addr v5, v4

    and-int/lit16 v2, v5, 0xff

    .line 45
    .local v2, "iIndex":I
    sget-object v5, Lcom/android/server/wifi/VivoWifiCRC16Modbus;->crc16_tab_h:[B

    aget-byte v5, v5, v2

    xor-int v4, v3, v5

    .line 46
    sget-object v5, Lcom/android/server/wifi/VivoWifiCRC16Modbus;->crc16_tab_l:[B

    aget-byte v3, v5, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 48
    .end local v2    # "iIndex":I
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 51
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    and-int/lit16 v5, v3, 0xff

    shl-int/lit8 v5, v5, 0x8

    and-int/lit16 v6, v4, 0xff

    const v7, 0xffff

    and-int/2addr v6, v7

    or-int/2addr v5, v6

    return v5
.end method

.method public static calcCrc16String([B)Ljava/lang/String;
    .locals 7
    .param p0, "data"    # [B

    .prologue
    .line 77
    const-string v2, ""

    .line 80
    .local v2, "string":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Lcom/android/server/wifi/VivoWifiCRC16Modbus;->calcCrc16([B)I

    move-result v1

    .line 81
    .local v1, "result":I
    const-string v3, "%04x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 85
    .end local v1    # "result":I
    :goto_0
    return-object v2

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getCrc16String(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 89
    const-string v2, ""

    .line 90
    .local v2, "result":Ljava/lang/String;
    const-string v3, ""

    .line 93
    .local v3, "tempString":Ljava/lang/String;
    :try_start_0
    const-string v4, " "

    const-string v5, ""

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 94
    const-string v4, "VivoWifiPacketFilterHelper"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-static {v3}, Lcom/android/server/wifi/VivoWifiCRC16Modbus;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 96
    .local v0, "bytes":[B
    invoke-static {v0}, Lcom/android/server/wifi/VivoWifiCRC16Modbus;->calcCrc16String([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 100
    .end local v0    # "bytes":[B
    :goto_0
    return-object v2

    .line 97
    :catch_0
    move-exception v1

    .line 98
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static hexStringToByteArray(Ljava/lang/String;)[B
    .locals 8
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 63
    .local v3, "len":I
    div-int/lit8 v4, v3, 0x2

    new-array v0, v4, [B

    .line 66
    .local v0, "data":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 67
    :try_start_0
    div-int/lit8 v4, v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    add-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 70
    :catch_0
    move-exception v1

    .line 71
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 73
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v0
.end method
