.class Lcom/android/server/LockSettingsService$DecryptUtils;
.super Ljava/lang/Object;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LockSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DecryptUtils"
.end annotation


# static fields
.field private static final DEFAULT_KEY:Ljava/lang/String; = "normal"


# instance fields
.field private decryptCipher:Ljavax/crypto/Cipher;

.field private encryptCipher:Ljavax/crypto/Cipher;

.field final synthetic this$0:Lcom/android/server/LockSettingsService;


# direct methods
.method public constructor <init>(Lcom/android/server/LockSettingsService;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1573
    const-string v0, "normal"

    invoke-direct {p0, p1, v0}, Lcom/android/server/LockSettingsService$DecryptUtils;-><init>(Lcom/android/server/LockSettingsService;Ljava/lang/String;)V

    .line 1574
    return-void
.end method

.method public constructor <init>(Lcom/android/server/LockSettingsService;Ljava/lang/String;)V
    .locals 4
    .param p2, "strKey"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1576
    iput-object p1, p0, Lcom/android/server/LockSettingsService$DecryptUtils;->this$0:Lcom/android/server/LockSettingsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1538
    iput-object v2, p0, Lcom/android/server/LockSettingsService$DecryptUtils;->encryptCipher:Ljavax/crypto/Cipher;

    .line 1539
    iput-object v2, p0, Lcom/android/server/LockSettingsService$DecryptUtils;->decryptCipher:Ljavax/crypto/Cipher;

    .line 1580
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/LockSettingsService$DecryptUtils;->getKey([B)Ljava/security/Key;

    move-result-object v1

    .line 1581
    .local v1, "key":Ljava/security/Key;
    const-string v2, "DES"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/LockSettingsService$DecryptUtils;->encryptCipher:Ljavax/crypto/Cipher;

    .line 1582
    iget-object v2, p0, Lcom/android/server/LockSettingsService$DecryptUtils;->encryptCipher:Ljavax/crypto/Cipher;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 1583
    const-string v2, "DES"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/LockSettingsService$DecryptUtils;->decryptCipher:Ljavax/crypto/Cipher;

    .line 1584
    iget-object v2, p0, Lcom/android/server/LockSettingsService$DecryptUtils;->decryptCipher:Ljavax/crypto/Cipher;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1589
    .end local v1    # "key":Ljava/security/Key;
    :goto_0
    return-void

    .line 1585
    :catch_0
    move-exception v0

    .line 1587
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getKey([B)Ljava/security/Key;
    .locals 4
    .param p1, "arrBTmp"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1609
    const/16 v3, 0x8

    new-array v0, v3, [B

    .line 1611
    .local v0, "arrB":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_0

    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 1612
    aget-byte v3, p1, v1

    aput-byte v3, v0, v1

    .line 1611
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1615
    :cond_0
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "DES"

    invoke-direct {v2, v0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 1616
    .local v2, "key":Ljava/security/Key;
    return-object v2
.end method


# virtual methods
.method public byteArr2HexStr([B)Ljava/lang/String;
    .locals 6
    .param p1, "arrB"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v5, 0x10

    .line 1542
    array-length v1, p1

    .line 1544
    .local v1, "iLen":I
    new-instance v3, Ljava/lang/StringBuffer;

    mul-int/lit8 v4, v1, 0x2

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1545
    .local v3, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 1546
    aget-byte v2, p1, v0

    .line 1548
    .local v2, "intTmp":I
    :goto_1
    if-gez v2, :cond_0

    .line 1549
    add-int/lit16 v2, v2, 0x100

    goto :goto_1

    .line 1552
    :cond_0
    if-ge v2, v5, :cond_1

    .line 1553
    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1555
    :cond_1
    invoke-static {v2, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1545
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1557
    .end local v2    # "intTmp":I
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "strIn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1604
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/LockSettingsService$DecryptUtils;->hexStr2ByteArr(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/LockSettingsService$DecryptUtils;->decrypt([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public decrypt([B)[B
    .locals 1
    .param p1, "arrB"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1600
    iget-object v0, p0, Lcom/android/server/LockSettingsService$DecryptUtils;->decryptCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method

.method public encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "strIn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1596
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/LockSettingsService$DecryptUtils;->encrypt([B)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/LockSettingsService$DecryptUtils;->byteArr2HexStr([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encrypt([B)[B
    .locals 1
    .param p1, "arrB"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1592
    iget-object v0, p0, Lcom/android/server/LockSettingsService$DecryptUtils;->encryptCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method

.method public hexStr2ByteArr(Ljava/lang/String;)[B
    .locals 7
    .param p1, "strIn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1561
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 1562
    .local v0, "arrB":[B
    array-length v3, v0

    .line 1564
    .local v3, "iLen":I
    div-int/lit8 v5, v3, 0x2

    new-array v1, v5, [B

    .line 1565
    .local v1, "arrOut":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 1566
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x2

    invoke-direct {v4, v0, v2, v5}, Ljava/lang/String;-><init>([BII)V

    .line 1567
    .local v4, "strTmp":Ljava/lang/String;
    div-int/lit8 v5, v2, 0x2

    const/16 v6, 0x10

    invoke-static {v4, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 1565
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 1569
    .end local v4    # "strTmp":Ljava/lang/String;
    :cond_0
    return-object v1
.end method
