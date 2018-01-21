.class public Lcom/vivo/common/utils/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation


# static fields
.field private static CRCTable:[J = null

.field public static final FILENAME_ILLCHAR:[C

.field public static final FILE_CREATE_ERROR_DEST_EXIST:I = 0x1

.field public static final FILE_CREATE_ERROR_DEST_STRING_NULL:I = 0x2

.field public static final FILE_CREATE_ERROR_UNKNOWN:I = 0x3

.field public static final FILE_CREATE_MSG_SUCEEDED:I = 0x0

.field public static final FILE_RENAME_ERROR_DEST_EXIST:I = 0x3

.field public static final FILE_RENAME_ERROR_DEST_STRING_NULL:I = 0x4

.field public static final FILE_RENAME_ERROR_NAME_NOT_CHANGE:I = 0x2

.field public static final FILE_RENAME_ERROR_SRC_NULL:I = 0x1

.field public static final FILE_RENAME_ERROR_UNKNOWN:I = 0x5

.field public static final FILE_RENAME_MSG_SUCEEDED:I = 0x0

.field private static final INITIALCRC:J = -0x1L

.field private static final LOGTAG:Ljava/lang/String; = "FileUtils"

.field public static final LOW_STORAGE_THRESHOLD:J = 0x100000L

.field private static final POLY64REV:J = -0x6a536cd653b4364bL

.field private static final THUMBNAIL_FOLDER:Ljava/lang/String;

.field public static final VERY_LOW_STORAGE_THRESHOLD:J = 0x10000L

.field private static init:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 199
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vivo/common/utils/FileUtils;->init:Z

    .line 200
    const/16 v0, 0x100

    new-array v0, v0, [J

    sput-object v0, Lcom/vivo/common/utils/FileUtils;->CRCTable:[J

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.thumbnail/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vivo/common/utils/FileUtils;->THUMBNAIL_FOLDER:Ljava/lang/String;

    .line 1233
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/vivo/common/utils/FileUtils;->FILENAME_ILLCHAR:[C

    return-void

    :array_0
    .array-data 2
        0x5cs
        0x2fs
        0x3as
        0x2as
        0x3fs
        0x22s
        0x3cs
        0x3es
        0x7cs
        0xas
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final Crc64Long(Ljava/lang/String;)J
    .locals 14
    .param p0, "in"    # Ljava/lang/String;

    .prologue
    .line 209
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_2

    .line 210
    :cond_0
    const-wide/16 v2, 0x0

    .line 233
    :cond_1
    return-wide v2

    .line 213
    :cond_2
    const-wide/16 v2, -0x1

    .line 214
    .local v2, "crc":J
    sget-boolean v10, Lcom/vivo/common/utils/FileUtils;->init:Z

    if-nez v10, :cond_6

    .line 215
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v10, 0x100

    if-ge v1, v10, :cond_5

    .line 216
    int-to-long v8, v1

    .line 217
    .local v8, "part":J
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    const/16 v10, 0x8

    if-ge v4, v10, :cond_4

    .line 218
    long-to-int v10, v8

    and-int/lit8 v7, v10, 0x1

    .line 219
    .local v7, "value":I
    if-eqz v7, :cond_3

    .line 220
    const/4 v10, 0x1

    shr-long v10, v8, v10

    const-wide v12, -0x6a536cd653b4364bL    # -2.848111467964452E-204

    xor-long v8, v10, v12

    .line 217
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 222
    :cond_3
    const/4 v10, 0x1

    shr-long/2addr v8, v10

    goto :goto_2

    .line 224
    .end local v7    # "value":I
    :cond_4
    sget-object v10, Lcom/vivo/common/utils/FileUtils;->CRCTable:[J

    aput-wide v8, v10, v1

    .line 215
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 226
    .end local v4    # "j":I
    .end local v8    # "part":J
    :cond_5
    const/4 v10, 0x1

    sput-boolean v10, Lcom/vivo/common/utils/FileUtils;->init:Z

    .line 228
    .end local v1    # "i":I
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 229
    .local v6, "length":I
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_3
    if-ge v5, v6, :cond_1

    .line 230
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 231
    .local v0, "c":C
    sget-object v10, Lcom/vivo/common/utils/FileUtils;->CRCTable:[J

    long-to-int v11, v2

    xor-int/2addr v11, v0

    and-int/lit16 v11, v11, 0xff

    aget-wide v10, v10, v11

    const/16 v12, 0x8

    shr-long v12, v2, v12

    xor-long v2, v10, v12

    .line 229
    add-int/lit8 v5, v5, 0x1

    goto :goto_3
.end method

.method public static canCompress(Ljava/io/File;Ljava/lang/String;)Z
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .param p1, "extensionWithDot"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1218
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1227
    :cond_0
    :goto_0
    return v0

    .line 1221
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1224
    const-string v1, ".ar"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1227
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static canUncompress(Ljava/lang/String;)Z
    .locals 3
    .param p0, "srcFileName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1183
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 1191
    :cond_0
    :goto_0
    return v1

    .line 1186
    :cond_1
    invoke-static {p0}, Lcom/vivo/common/utils/FileUtils;->getExtensionWithoutDot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1187
    .local v0, "extension":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1188
    invoke-static {v0}, Lcom/vivo/common/utils/FileUtils;->isCompressedFile(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public static closeQuietly(Ljava/io/InputStream;)V
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;

    .prologue
    .line 1462
    if-eqz p0, :cond_0

    .line 1463
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1468
    :cond_0
    :goto_0
    return-void

    .line 1465
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static closeQuietly(Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "output"    # Ljava/io/OutputStream;

    .prologue
    .line 1481
    if-eqz p0, :cond_0

    .line 1482
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1487
    :cond_0
    :goto_0
    return-void

    .line 1484
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static closeQuietly(Ljava/io/Reader;)V
    .locals 1
    .param p0, "input"    # Ljava/io/Reader;

    .prologue
    .line 1405
    if-eqz p0, :cond_0

    .line 1406
    :try_start_0
    invoke-virtual {p0}, Ljava/io/Reader;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1411
    :cond_0
    :goto_0
    return-void

    .line 1408
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static closeQuietly(Ljava/io/Writer;)V
    .locals 1
    .param p0, "output"    # Ljava/io/Writer;

    .prologue
    .line 1443
    if-eqz p0, :cond_0

    .line 1444
    :try_start_0
    invoke-virtual {p0}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1449
    :cond_0
    :goto_0
    return-void

    .line 1446
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static closeQuietly(Ljava/nio/channels/Channel;)V
    .locals 1
    .param p0, "channel"    # Ljava/nio/channels/Channel;

    .prologue
    .line 1424
    if-eqz p0, :cond_0

    .line 1425
    :try_start_0
    invoke-interface {p0}, Ljava/nio/channels/Channel;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1430
    :cond_0
    :goto_0
    return-void

    .line 1427
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static compareCharByGetPinyin(Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .param p0, "s1"    # Ljava/lang/String;
    .param p1, "s2"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 1855
    invoke-static {}, Lcom/vivo/common/utils/HanziToPinyin;->getInstance()Lcom/vivo/common/utils/HanziToPinyin;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/vivo/common/utils/HanziToPinyin;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1856
    .local v2, "token1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vivo/common/utils/HanziToPinyin$Token;>;"
    invoke-static {}, Lcom/vivo/common/utils/HanziToPinyin;->getInstance()Lcom/vivo/common/utils/HanziToPinyin;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/vivo/common/utils/HanziToPinyin;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1857
    .local v3, "token2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vivo/common/utils/HanziToPinyin$Token;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    move v4, v5

    .line 1878
    :goto_0
    return v4

    .line 1859
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_1

    move v4, v6

    .line 1860
    goto :goto_0

    .line 1861
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_2

    move v4, v5

    .line 1862
    goto :goto_0

    .line 1864
    :cond_2
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vivo/common/utils/HanziToPinyin$Token;

    iget v4, v4, Lcom/vivo/common/utils/HanziToPinyin$Token;->type:I

    if-ne v4, v8, :cond_3

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vivo/common/utils/HanziToPinyin$Token;

    iget v4, v4, Lcom/vivo/common/utils/HanziToPinyin$Token;->type:I

    if-eq v4, v8, :cond_3

    move v4, v6

    .line 1865
    goto :goto_0

    .line 1866
    :cond_3
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vivo/common/utils/HanziToPinyin$Token;

    iget v4, v4, Lcom/vivo/common/utils/HanziToPinyin$Token;->type:I

    if-eq v4, v8, :cond_4

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vivo/common/utils/HanziToPinyin$Token;

    iget v4, v4, Lcom/vivo/common/utils/HanziToPinyin$Token;->type:I

    if-ne v4, v8, :cond_4

    move v4, v5

    .line 1867
    goto :goto_0

    .line 1869
    :cond_4
    const/4 v0, 0x0

    .line 1870
    .local v0, "target1":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1871
    .local v1, "target2":Ljava/lang/String;
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vivo/common/utils/HanziToPinyin$Token;

    iget v4, v4, Lcom/vivo/common/utils/HanziToPinyin$Token;->type:I

    if-eq v4, v8, :cond_5

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vivo/common/utils/HanziToPinyin$Token;

    iget v4, v4, Lcom/vivo/common/utils/HanziToPinyin$Token;->type:I

    if-eq v4, v8, :cond_5

    .line 1872
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vivo/common/utils/HanziToPinyin$Token;

    iget-object v0, v4, Lcom/vivo/common/utils/HanziToPinyin$Token;->target:Ljava/lang/String;

    .line 1873
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vivo/common/utils/HanziToPinyin$Token;

    iget-object v1, v4, Lcom/vivo/common/utils/HanziToPinyin$Token;->target:Ljava/lang/String;

    .line 1878
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    .line 1875
    :cond_5
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vivo/common/utils/HanziToPinyin$Token;

    iget-object v4, v4, Lcom/vivo/common/utils/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1876
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vivo/common/utils/HanziToPinyin$Token;

    iget-object v4, v4, Lcom/vivo/common/utils/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public static compareStringByGetPinyin(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 10
    .param p0, "s1"    # Ljava/lang/String;
    .param p1, "s2"    # Ljava/lang/String;
    .param p2, "ignoreCase"    # Z

    .prologue
    .line 1887
    const/4 v6, 0x0

    .line 1888
    .local v6, "s1Empty":Z
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-gtz v8, :cond_1

    .line 1889
    :cond_0
    const/4 v6, 0x1

    .line 1891
    :cond_1
    const/4 v7, 0x0

    .line 1892
    .local v7, "s2Empty":Z
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-gtz v8, :cond_3

    .line 1893
    :cond_2
    const/4 v7, 0x1

    .line 1895
    :cond_3
    if-eqz v6, :cond_4

    if-eqz v7, :cond_4

    .line 1896
    const/4 v8, 0x0

    .line 1922
    :goto_0
    return v8

    .line 1897
    :cond_4
    if-nez v6, :cond_5

    if-eqz v7, :cond_5

    .line 1898
    const/4 v8, -0x1

    goto :goto_0

    .line 1899
    :cond_5
    if-eqz v6, :cond_6

    if-nez v7, :cond_6

    .line 1900
    const/4 v8, 0x1

    goto :goto_0

    .line 1902
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 1903
    .local v4, "leng1":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 1904
    .local v5, "leng2":I
    if-ge v4, v5, :cond_8

    move v3, v4

    .line 1905
    .local v3, "leng":I
    :goto_1
    const/4 v2, 0x0

    .line 1906
    .local v2, "i":I
    const/4 v0, 0x0

    .local v0, "c1":C
    const/4 v1, 0x0

    .line 1907
    .local v1, "c2":C
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_7

    .line 1908
    if-eqz p2, :cond_9

    .line 1909
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    .line 1910
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    .line 1915
    :goto_3
    if-eq v0, v1, :cond_a

    .line 1919
    :cond_7
    if-lt v2, v3, :cond_b

    .line 1920
    sub-int v8, v4, v5

    goto :goto_0

    .end local v0    # "c1":C
    .end local v1    # "c2":C
    .end local v2    # "i":I
    .end local v3    # "leng":I
    :cond_8
    move v3, v5

    .line 1904
    goto :goto_1

    .line 1912
    .restart local v0    # "c1":C
    .restart local v1    # "c2":C
    .restart local v2    # "i":I
    .restart local v3    # "leng":I
    :cond_9
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1913
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_3

    .line 1907
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1922
    :cond_b
    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v8

    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/vivo/common/utils/FileUtils;->compareCharByGetPinyin(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    goto :goto_0
.end method

.method public static createDir(Ljava/lang/String;[I)Ljava/io/File;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "retCode"    # [I

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 729
    if-eqz p1, :cond_0

    array-length v3, p1

    if-gtz v3, :cond_1

    :cond_0
    move-object v1, v2

    .line 748
    :goto_0
    return-object v1

    .line 732
    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_3

    .line 733
    :cond_2
    const/4 v3, 0x2

    aput v3, p1, v4

    move-object v1, v2

    .line 734
    goto :goto_0

    .line 736
    :cond_3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 737
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 738
    const/4 v3, 0x1

    aput v3, p1, v4

    move-object v1, v2

    .line 739
    goto :goto_0

    .line 742
    :cond_4
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 747
    aput v4, p1, v4

    goto :goto_0

    .line 743
    :catch_0
    move-exception v0

    .line 744
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v3, 0x3

    aput v3, p1, v4

    move-object v1, v2

    .line 745
    goto :goto_0
.end method

.method public static createFile(Ljava/lang/String;[I)Ljava/io/File;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "retCode"    # [I

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 703
    if-eqz p1, :cond_0

    array-length v3, p1

    if-gtz v3, :cond_1

    :cond_0
    move-object v1, v2

    .line 722
    :goto_0
    return-object v1

    .line 706
    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_3

    .line 707
    :cond_2
    const/4 v3, 0x2

    aput v3, p1, v4

    move-object v1, v2

    .line 708
    goto :goto_0

    .line 710
    :cond_3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 711
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 712
    const/4 v3, 0x1

    aput v3, p1, v4

    move-object v1, v2

    .line 713
    goto :goto_0

    .line 716
    :cond_4
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 721
    aput v4, p1, v4

    goto :goto_0

    .line 717
    :catch_0
    move-exception v0

    .line 718
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v3, 0x3

    aput v3, p1, v4

    move-object v1, v2

    .line 719
    goto :goto_0
.end method

.method public static deleteVideoThumbnail(Landroid/content/Context;Ljava/io/File;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "f"    # Ljava/io/File;

    .prologue
    .line 386
    invoke-static {p0, p1}, Lcom/vivo/common/utils/FileUtils;->getMediaFileIdInDatabase(Landroid/content/Context;Ljava/io/File;)J

    move-result-wide v10

    .line 387
    .local v10, "origId":J
    const-wide/16 v4, 0x0

    cmp-long v3, v10, v4

    if-gez v3, :cond_1

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 390
    :cond_1
    const/4 v6, 0x0

    .line 391
    .local v6, "cursor":Landroid/database/Cursor;
    sget-object v1, Landroid/provider/MediaStore$Video$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 392
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 393
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "_data"

    aput-object v4, v2, v3

    .line 398
    .local v2, "cols":[Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "video_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 399
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_3

    .line 400
    const-wide/16 v8, 0x0

    .line 401
    .local v8, "id":J
    const/4 v12, 0x0

    .line 402
    .local v12, "p":Ljava/lang/String;
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 403
    const/4 v3, 0x0

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 404
    const/4 v3, 0x1

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 405
    if-eqz v12, :cond_2

    invoke-virtual {v12}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-lez v3, :cond_2

    .line 407
    :try_start_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 411
    :cond_2
    :goto_2
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 414
    .end local v8    # "id":J
    .end local v12    # "p":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 415
    .local v7, "e":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 418
    if-eqz v6, :cond_0

    .line 419
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 421
    :catch_1
    move-exception v3

    goto :goto_0

    .line 418
    .end local v7    # "e":Ljava/lang/Throwable;
    :cond_3
    if-eqz v6, :cond_0

    .line 419
    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 421
    :catch_2
    move-exception v3

    goto/16 :goto_0

    .line 417
    :catchall_0
    move-exception v3

    .line 418
    if-eqz v6, :cond_4

    .line 419
    :try_start_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    .line 422
    :cond_4
    :goto_3
    throw v3

    .line 421
    :catch_3
    move-exception v4

    goto :goto_3

    .line 408
    .restart local v8    # "id":J
    .restart local v12    # "p":Ljava/lang/String;
    :catch_4
    move-exception v3

    goto :goto_2
.end method

.method public static getAvailableStorageSize([J)Z
    .locals 12
    .param p0, "item"    # [J

    .prologue
    const/4 v6, 0x0

    .line 1351
    if-eqz p0, :cond_0

    array-length v9, p0

    const/4 v10, 0x1

    if-ge v9, v10, :cond_1

    .line 1378
    :cond_0
    :goto_0
    return v6

    .line 1355
    :cond_1
    const/4 v6, 0x1

    .line 1356
    .local v6, "ret":Z
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v8

    .line 1357
    .local v8, "status":Ljava/lang/String;
    const-string v9, "mounted_ro"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1358
    const-string v8, "mounted"

    .line 1361
    :cond_2
    const-string v9, "mounted"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1363
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    .line 1364
    .local v5, "path":Ljava/io/File;
    new-instance v7, Landroid/os/StatFs;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1365
    .local v7, "stat":Landroid/os/StatFs;
    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSize()I

    move-result v9

    int-to-long v2, v9

    .line 1366
    .local v2, "blockSize":J
    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v9

    int-to-long v0, v9

    .line 1368
    .local v0, "availableBlocks":J
    const/4 v9, 0x0

    mul-long v10, v0, v2

    aput-wide v10, p0, v9
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1369
    .end local v0    # "availableBlocks":J
    .end local v2    # "blockSize":J
    .end local v5    # "path":Ljava/io/File;
    .end local v7    # "stat":Landroid/os/StatFs;
    :catch_0
    move-exception v4

    .line 1372
    .local v4, "e":Ljava/lang/Throwable;
    const-string v8, "removed"

    .line 1373
    const/4 v6, 0x0

    .line 1374
    goto :goto_0

    .line 1376
    .end local v4    # "e":Ljava/lang/Throwable;
    :cond_3
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static getCopyFileNameWithExtension(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "currDir"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "extensionWithDot"    # Ljava/lang/String;

    .prologue
    .line 172
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_2

    .line 173
    :cond_0
    const/4 v3, 0x0

    .line 194
    :cond_1
    return-object v3

    .line 175
    :cond_2
    if-nez p2, :cond_3

    .line 176
    const-string p2, ""

    .line 178
    :cond_3
    const/4 v0, 0x0

    .line 179
    .local v0, "f":Ljava/io/File;
    const/4 v2, 0x0

    .line 180
    .local v2, "path":Ljava/lang/String;
    const/4 v3, 0x0

    .line 181
    .local v3, "tmpName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 182
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 183
    new-instance v0, Ljava/io/File;

    .end local v0    # "f":Ljava/io/File;
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 184
    .restart local v0    # "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 187
    const/4 v1, 0x0

    .line 188
    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 189
    add-int/lit8 v1, v1, 0x1

    .line 190
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 191
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 192
    new-instance v0, Ljava/io/File;

    .end local v0    # "f":Ljava/io/File;
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0    # "f":Ljava/io/File;
    goto :goto_0
.end method

.method public static getExtensionWithDot(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 57
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_2

    .line 58
    :cond_0
    const/4 v1, 0x0

    .line 78
    :cond_1
    :goto_0
    return-object v1

    .line 61
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 62
    const-string v3, "."

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 63
    .local v0, "dot":I
    const/4 v2, 0x0

    .line 64
    .local v2, "tmp":Ljava/lang/String;
    const/4 v1, 0x0

    .line 65
    .local v1, "ret":Ljava/lang/String;
    if-ltz v0, :cond_1

    .line 66
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 67
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 68
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 69
    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 70
    if-ltz v0, :cond_1

    .line 71
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 72
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    const-string v3, ".tar"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 73
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getExtensionWithoutDot(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 85
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_2

    .line 86
    :cond_0
    const/4 v1, 0x0

    .line 109
    :cond_1
    :goto_0
    return-object v1

    .line 89
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 90
    const-string v3, "."

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 91
    .local v0, "dot":I
    const/4 v2, 0x0

    .line 92
    .local v2, "tmp":Ljava/lang/String;
    const/4 v1, 0x0

    .line 93
    .local v1, "ret":Ljava/lang/String;
    if-ltz v0, :cond_3

    .line 94
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 95
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 96
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 97
    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 98
    if-ltz v0, :cond_3

    .line 99
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 100
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    const-string v3, ".tar"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 101
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 106
    :cond_3
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v4, :cond_1

    .line 107
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getFileIntentToOpen(Ljava/io/File;Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 12
    .param p0, "file"    # Ljava/io/File;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1626
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_0

    if-nez p1, :cond_1

    .line 1734
    :cond_0
    :goto_0
    return-object v10

    .line 1630
    :cond_1
    new-instance v10, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v10, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1631
    .local v10, "intent":Landroid/content/Intent;
    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    .line 1633
    .local v7, "data":Landroid/net/Uri;
    const/4 v0, 0x0

    .line 1634
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 1635
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-static {p0}, Lcom/vivo/common/utils/FileUtils;->isImageFile(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1636
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v4

    const-string v3, "bucket_id"

    aput-object v3, v2, v5

    .line 1640
    .local v2, "cols":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1641
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1643
    .local v1, "uri":Landroid/net/Uri;
    :try_start_0
    const-string v3, "_data=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 1651
    :goto_1
    if-eqz v6, :cond_3

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_3

    .line 1652
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1653
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .line 1659
    :goto_2
    if-eqz v6, :cond_2

    .line 1660
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1726
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "cols":[Ljava/lang/String;
    :cond_2
    :goto_3
    invoke-virtual {v10, v7, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 1647
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v2    # "cols":[Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 1648
    .local v8, "e":Ljava/lang/Throwable;
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 1656
    .end local v8    # "e":Ljava/lang/Throwable;
    :cond_3
    :try_start_2
    invoke-static {p1, p0}, Lcom/vivo/common/utils/FileUtils;->scanMediaFile(Landroid/content/Context;Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 1659
    :catchall_0
    move-exception v3

    if-eqz v6, :cond_4

    .line 1660
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v3

    .line 1663
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "cols":[Ljava/lang/String;
    :cond_5
    invoke-static {p0}, Lcom/vivo/common/utils/FileUtils;->isAudioFile(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1664
    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v4

    .line 1667
    .restart local v2    # "cols":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1668
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1670
    .restart local v1    # "uri":Landroid/net/Uri;
    :try_start_3
    const-string v3, "_data=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v6

    .line 1678
    :goto_4
    if-eqz v6, :cond_7

    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_7

    .line 1679
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1680
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v7

    .line 1686
    :goto_5
    if-eqz v6, :cond_6

    .line 1687
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1690
    :cond_6
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/vivo/common/utils/FileUtils;->getExtensionWithoutDot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1691
    .local v9, "extension":Ljava/lang/String;
    if-eqz v9, :cond_9

    const-string v3, "3gpp"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1692
    const-string v3, "com.android.bbksoundrecorder"

    const-string v4, "com.android.bbksoundrecorder.ReclistActivity"

    invoke-virtual {v10, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1696
    :goto_6
    const/high16 v3, 0x4000000

    invoke-virtual {v10, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_3

    .line 1674
    .end local v9    # "extension":Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 1675
    .restart local v8    # "e":Ljava/lang/Throwable;
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 1683
    .end local v8    # "e":Ljava/lang/Throwable;
    :cond_7
    :try_start_5
    invoke-static {p1, p0}, Lcom/vivo/common/utils/FileUtils;->scanMediaFile(Landroid/content/Context;Ljava/io/File;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_5

    .line 1686
    :catchall_1
    move-exception v3

    if-eqz v6, :cond_8

    .line 1687
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v3

    .line 1694
    .restart local v9    # "extension":Ljava/lang/String;
    :cond_9
    const-string v3, "com.android.bbkmusic"

    invoke-virtual {v10, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_6

    .line 1697
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "cols":[Ljava/lang/String;
    .end local v9    # "extension":Ljava/lang/String;
    :cond_a
    invoke-static {p0}, Lcom/vivo/common/utils/FileUtils;->isVideoFile(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1698
    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v4

    .line 1701
    .restart local v2    # "cols":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1702
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1704
    .restart local v1    # "uri":Landroid/net/Uri;
    :try_start_6
    const-string v3, "_data=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    move-result-object v6

    .line 1712
    :goto_7
    if-eqz v6, :cond_b

    :try_start_7
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_b

    .line 1713
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1714
    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result-object v7

    .line 1720
    :goto_8
    if-eqz v6, :cond_2

    .line 1721
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .line 1708
    :catch_2
    move-exception v8

    .line 1709
    .restart local v8    # "e":Ljava/lang/Throwable;
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7

    .line 1717
    .end local v8    # "e":Ljava/lang/Throwable;
    :cond_b
    :try_start_8
    invoke-static {p1, p0}, Lcom/vivo/common/utils/FileUtils;->scanMediaFile(Landroid/content/Context;Ljava/io/File;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_8

    .line 1720
    :catchall_2
    move-exception v3

    if-eqz v6, :cond_c

    .line 1721
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v3
.end method

.method public static getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 116
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_2

    .line 117
    :cond_0
    const/4 v1, 0x0

    .line 137
    :cond_1
    :goto_0
    return-object v1

    .line 121
    :cond_2
    const-string v3, "."

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 122
    .local v0, "dot":I
    const/4 v2, 0x0

    .line 123
    .local v2, "tmp":Ljava/lang/String;
    move-object v1, p0

    .line 124
    .local v1, "ret":Ljava/lang/String;
    if-ltz v0, :cond_1

    .line 125
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 126
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 127
    move-object v1, v2

    .line 128
    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 129
    if-ltz v0, :cond_1

    .line 130
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 131
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    const-string v3, ".tar"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 132
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getFileUri(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const-wide/16 v4, -0x1

    .line 551
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 552
    :cond_0
    const/4 v2, 0x0

    .line 581
    :cond_1
    :goto_0
    return-object v2

    .line 555
    :cond_2
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 556
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 557
    invoke-static {p1}, Lcom/vivo/common/utils/FileUtils;->isImageFile(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 558
    invoke-static {p0, p1}, Lcom/vivo/common/utils/FileUtils;->getMediaFileIdInDatabase(Landroid/content/Context;Ljava/io/File;)J

    move-result-wide v0

    .line 559
    .local v0, "id":J
    cmp-long v3, v0, v4

    if-eqz v3, :cond_3

    .line 560
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0

    .line 562
    :cond_3
    invoke-static {p0, p1}, Lcom/vivo/common/utils/FileUtils;->scanMediaFile(Landroid/content/Context;Ljava/io/File;)V

    goto :goto_0

    .line 564
    .end local v0    # "id":J
    :cond_4
    invoke-static {p1}, Lcom/vivo/common/utils/FileUtils;->isAudioFile(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 565
    invoke-static {p0, p1}, Lcom/vivo/common/utils/FileUtils;->getMediaFileIdInDatabase(Landroid/content/Context;Ljava/io/File;)J

    move-result-wide v0

    .line 566
    .restart local v0    # "id":J
    cmp-long v3, v0, v4

    if-eqz v3, :cond_5

    .line 567
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0

    .line 569
    :cond_5
    invoke-static {p0, p1}, Lcom/vivo/common/utils/FileUtils;->scanMediaFile(Landroid/content/Context;Ljava/io/File;)V

    goto :goto_0

    .line 571
    .end local v0    # "id":J
    :cond_6
    invoke-static {p1}, Lcom/vivo/common/utils/FileUtils;->isVideoFile(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 572
    invoke-static {p0, p1}, Lcom/vivo/common/utils/FileUtils;->getMediaFileIdInDatabase(Landroid/content/Context;Ljava/io/File;)J

    move-result-wide v0

    .line 573
    .restart local v0    # "id":J
    cmp-long v3, v0, v4

    if-eqz v3, :cond_7

    .line 574
    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0

    .line 576
    :cond_7
    invoke-static {p0, p1}, Lcom/vivo/common/utils/FileUtils;->scanMediaFile(Landroid/content/Context;Ljava/io/File;)V

    goto :goto_0
.end method

.method public static getFileUriWithFileScheme(Ljava/io/File;)Landroid/net/Uri;
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 588
    if-nez p0, :cond_0

    .line 589
    const/4 v0, 0x0

    .line 591
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public static getImageDimension(Ljava/io/File;)[I
    .locals 7
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 430
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move-object v2, v3

    .line 447
    :goto_0
    return-object v2

    .line 433
    :cond_1
    const/4 v4, 0x2

    new-array v2, v4, [I

    .line 434
    .local v2, "ret":[I
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 435
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v6, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 436
    iput v5, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 437
    iput v5, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 438
    iput v6, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 440
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 441
    const/4 v4, 0x0

    iget v5, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    aput v5, v2, v4

    .line 442
    const/4 v4, 0x1

    iget v5, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    aput v5, v2, v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 443
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Throwable;
    move-object v2, v3

    .line 444
    goto :goto_0
.end method

.method public static getMediaFileIdInDatabase(Landroid/content/Context;Ljava/io/File;)J
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const-wide/16 v8, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 504
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 542
    :cond_0
    :goto_0
    return-wide v8

    .line 508
    :cond_1
    const/4 v1, 0x0

    .line 509
    .local v1, "uri":Landroid/net/Uri;
    invoke-static {p1}, Lcom/vivo/common/utils/FileUtils;->isImageFile(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 510
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 518
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 519
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 520
    .local v6, "cursor":Landroid/database/Cursor;
    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v4

    .line 523
    .local v2, "cols":[Ljava/lang/String;
    const-wide/16 v8, -0x1

    .line 525
    .local v8, "ret":J
    :try_start_0
    const-string v3, "_data=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 532
    :goto_2
    if-eqz v6, :cond_2

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 533
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 534
    const/4 v3, 0x0

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v8

    .line 537
    :cond_2
    if-eqz v6, :cond_0

    .line 538
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 511
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v2    # "cols":[Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v8    # "ret":J
    :cond_3
    invoke-static {p1}, Lcom/vivo/common/utils/FileUtils;->isAudioFile(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 512
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_1

    .line 513
    :cond_4
    invoke-static {p1}, Lcom/vivo/common/utils/FileUtils;->isVideoFile(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 514
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_1

    .line 528
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local v2    # "cols":[Ljava/lang/String;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "ret":J
    :catch_0
    move-exception v7

    .line 529
    .local v7, "e":Ljava/lang/Throwable;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 537
    .end local v7    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    if-eqz v6, :cond_5

    .line 538
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v3
.end method

.method public static getNewFileNameWithoutExtension(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "currDir"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "extensionWithDot"    # Ljava/lang/String;

    .prologue
    .line 144
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_2

    .line 145
    :cond_0
    const/4 p1, 0x0

    .line 165
    .end local p1    # "name":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p1

    .line 147
    .restart local p1    # "name":Ljava/lang/String;
    :cond_2
    if-nez p2, :cond_3

    .line 148
    const-string p2, ""

    .line 150
    :cond_3
    const/4 v0, 0x0

    .line 151
    .local v0, "f":Ljava/io/File;
    const/4 v2, 0x0

    .line 152
    .local v2, "path":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 153
    new-instance v0, Ljava/io/File;

    .end local v0    # "f":Ljava/io/File;
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 154
    .restart local v0    # "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 157
    const/4 v1, 0x0

    .line 158
    .local v1, "i":I
    const/4 v3, 0x0

    .line 159
    .local v3, "tmpName":Ljava/lang/String;
    :goto_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 160
    add-int/lit8 v1, v1, 0x1

    .line 161
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 162
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 163
    new-instance v0, Ljava/io/File;

    .end local v0    # "f":Ljava/io/File;
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0    # "f":Ljava/io/File;
    goto :goto_1

    :cond_4
    move-object p1, v3

    .line 165
    goto :goto_0
.end method

.method public static getStorageSize([J)Z
    .locals 14
    .param p0, "item"    # [J

    .prologue
    const/4 v6, 0x0

    .line 1314
    if-eqz p0, :cond_0

    array-length v9, p0

    const/4 v12, 0x2

    if-ge v9, v12, :cond_1

    .line 1343
    :cond_0
    :goto_0
    return v6

    .line 1318
    :cond_1
    const/4 v6, 0x1

    .line 1319
    .local v6, "ret":Z
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v8

    .line 1320
    .local v8, "status":Ljava/lang/String;
    const-string v9, "mounted_ro"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1321
    const-string v8, "mounted"

    .line 1324
    :cond_2
    const-string v9, "mounted"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1326
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    .line 1327
    .local v5, "path":Ljava/io/File;
    new-instance v7, Landroid/os/StatFs;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1328
    .local v7, "stat":Landroid/os/StatFs;
    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSize()I

    move-result v9

    int-to-long v2, v9

    .line 1329
    .local v2, "blockSize":J
    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockCount()I

    move-result v9

    int-to-long v10, v9

    .line 1330
    .local v10, "totalBlocks":J
    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v9

    int-to-long v0, v9

    .line 1332
    .local v0, "availableBlocks":J
    const/4 v9, 0x0

    mul-long v12, v10, v2

    aput-wide v12, p0, v9

    .line 1333
    const/4 v9, 0x1

    mul-long v12, v0, v2

    aput-wide v12, p0, v9
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1334
    .end local v0    # "availableBlocks":J
    .end local v2    # "blockSize":J
    .end local v5    # "path":Ljava/io/File;
    .end local v7    # "stat":Landroid/os/StatFs;
    .end local v10    # "totalBlocks":J
    :catch_0
    move-exception v4

    .line 1337
    .local v4, "e":Ljava/lang/Throwable;
    const-string v8, "removed"

    .line 1338
    const/4 v6, 0x0

    .line 1339
    goto :goto_0

    .line 1341
    .end local v4    # "e":Ljava/lang/Throwable;
    :cond_3
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static getThumbnail(Landroid/content/Context;JIZLjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 31
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "origId"    # J
    .param p3, "kind"    # I
    .param p4, "isImage"    # Z
    .param p5, "origPath"    # Ljava/lang/String;

    .prologue
    .line 240
    if-eqz p0, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v5, p1, v6

    if-ltz v5, :cond_0

    if-eqz p5, :cond_0

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_2

    .line 241
    :cond_0
    const/4 v8, 0x0

    .line 382
    :cond_1
    :goto_0
    return-object v8

    .line 243
    :cond_2
    new-instance v16, Ljava/io/File;

    sget-object v5, Lcom/vivo/common/utils/FileUtils;->THUMBNAIL_FOLDER:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 244
    .local v16, "dir":Ljava/io/File;
    if-eqz v16, :cond_3

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_4

    .line 246
    :cond_3
    :try_start_0
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :cond_4
    :goto_1
    const/16 v18, 0x0

    .line 252
    .local v18, "file":Ljava/io/File;
    const/16 v26, 0x0

    .line 253
    .local v26, "path":Ljava/lang/String;
    const/4 v8, 0x0

    .line 254
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    const/4 v15, 0x0

    .line 255
    .local v15, "cursor":Landroid/database/Cursor;
    const-wide/16 v20, 0x0

    .line 256
    .local v20, "id":J
    const-string v11, "_id"

    .line 257
    .local v11, "columnId":Ljava/lang/String;
    const/4 v9, 0x0

    .line 258
    .local v9, "columnData":Ljava/lang/String;
    const/4 v13, 0x0

    .line 259
    .local v13, "columnOrigId":Ljava/lang/String;
    const/4 v12, 0x0

    .line 260
    .local v12, "columnKind":Ljava/lang/String;
    const/4 v14, 0x0

    .line 261
    .local v14, "columnWidth":Ljava/lang/String;
    const/4 v10, 0x0

    .line 262
    .local v10, "columnHeight":Ljava/lang/String;
    const/4 v3, 0x0

    .line 263
    .local v3, "uri":Landroid/net/Uri;
    if-eqz p4, :cond_c

    .line 264
    const-string v9, "_data"

    .line 265
    const-string v13, "image_id"

    .line 266
    const-string v12, "kind"

    .line 267
    const-string v14, "width"

    .line 268
    const-string v10, "height"

    .line 269
    sget-object v3, Landroid/provider/MediaStore$Images$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 278
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 279
    .local v2, "cr":Landroid/content/ContentResolver;
    const/4 v5, 0x2

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v11, v4, v5

    const/4 v5, 0x1

    aput-object v9, v4, v5

    .line 284
    .local v4, "cols":[Ljava/lang/String;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 285
    if-eqz v15, :cond_5

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_5

    .line 286
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 287
    const/4 v5, 0x0

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 288
    const/4 v5, 0x1

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v26

    .line 294
    :cond_5
    if-eqz v15, :cond_6

    .line 295
    :try_start_2
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5

    .line 300
    :cond_6
    :goto_3
    if-eqz v26, :cond_7

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_7

    .line 301
    new-instance v18, Ljava/io/File;

    .end local v18    # "file":Ljava/io/File;
    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 303
    .restart local v18    # "file":Ljava/io/File;
    :cond_7
    const/16 v27, 0x0

    .line 304
    .local v27, "recreateThumbnailFile":Z
    if-eqz v18, :cond_e

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 305
    const/16 v22, 0x0

    .line 307
    .local v22, "in":Ljava/io/FileInputStream;
    :try_start_3
    new-instance v23, Ljava/io/FileInputStream;

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 308
    .end local v22    # "in":Ljava/io/FileInputStream;
    .local v23, "in":Ljava/io/FileInputStream;
    :try_start_4
    invoke-static/range {v23 .. v23}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_a
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    move-result-object v8

    .line 313
    invoke-static/range {v23 .. v23}, Lcom/vivo/common/utils/FileUtils;->closeQuietly(Ljava/io/InputStream;)V

    move-object/from16 v22, v23

    .line 315
    .end local v23    # "in":Ljava/io/FileInputStream;
    .restart local v22    # "in":Ljava/io/FileInputStream;
    :goto_4
    if-nez v8, :cond_8

    .line 316
    const/16 v27, 0x1

    .line 321
    .end local v22    # "in":Ljava/io/FileInputStream;
    :cond_8
    :goto_5
    if-eqz v27, :cond_1

    .line 322
    if-eqz v18, :cond_9

    .line 324
    :try_start_5
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_7

    .line 327
    :goto_6
    const/16 v18, 0x0

    .line 329
    :cond_9
    const/16 v24, 0x0

    .line 331
    .local v24, "out":Ljava/io/FileOutputStream;
    if-eqz p4, :cond_f

    .line 334
    :try_start_6
    sget-object v3, Landroid/provider/MediaStore$Images$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 340
    :goto_7
    if-eqz v8, :cond_b

    .line 341
    const/16 v29, 0x0

    .line 342
    .local v29, "updateAction":Z
    if-eqz v26, :cond_a

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_a

    .line 343
    const/16 v29, 0x1

    .line 345
    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/vivo/common/utils/FileUtils;->THUMBNAIL_FOLDER:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p5 .. p5}, Lcom/vivo/common/utils/FileUtils;->Crc64Long(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 346
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 347
    .end local v18    # "file":Ljava/io/File;
    .local v19, "file":Ljava/io/File;
    :try_start_7
    new-instance v25, Ljava/io/FileOutputStream;

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_9
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 350
    .end local v24    # "out":Ljava/io/FileOutputStream;
    .local v25, "out":Ljava/io/FileOutputStream;
    :try_start_8
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x50

    move-object/from16 v0, v25

    invoke-virtual {v8, v5, v6, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 351
    new-instance v30, Landroid/content/ContentValues;

    invoke-direct/range {v30 .. v30}, Landroid/content/ContentValues;-><init>()V

    .line 352
    .local v30, "values":Landroid/content/ContentValues;
    const/16 v28, 0x0

    .line 353
    .local v28, "size":I
    const/4 v5, 0x3

    move/from16 v0, p3

    if-ne v0, v5, :cond_10

    .line 354
    const/16 v28, 0x60

    .line 358
    :goto_8
    if-eqz v29, :cond_11

    .line 359
    move-object/from16 v0, v30

    move-object/from16 v1, v26

    invoke-virtual {v0, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v0, v14, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 361
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v0, v10, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 369
    :goto_9
    if-eqz v29, :cond_12

    .line 370
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v20

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v2, v3, v0, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    move-object/from16 v24, v25

    .end local v25    # "out":Ljava/io/FileOutputStream;
    .restart local v24    # "out":Ljava/io/FileOutputStream;
    move-object/from16 v18, v19

    .line 378
    .end local v19    # "file":Ljava/io/File;
    .end local v28    # "size":I
    .end local v29    # "updateAction":Z
    .end local v30    # "values":Landroid/content/ContentValues;
    .restart local v18    # "file":Ljava/io/File;
    :cond_b
    :goto_a
    invoke-static/range {v24 .. v24}, Lcom/vivo/common/utils/FileUtils;->closeQuietly(Ljava/io/OutputStream;)V

    goto/16 :goto_0

    .line 247
    .end local v2    # "cr":Landroid/content/ContentResolver;
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v4    # "cols":[Ljava/lang/String;
    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    .end local v9    # "columnData":Ljava/lang/String;
    .end local v10    # "columnHeight":Ljava/lang/String;
    .end local v11    # "columnId":Ljava/lang/String;
    .end local v12    # "columnKind":Ljava/lang/String;
    .end local v13    # "columnOrigId":Ljava/lang/String;
    .end local v14    # "columnWidth":Ljava/lang/String;
    .end local v15    # "cursor":Landroid/database/Cursor;
    .end local v18    # "file":Ljava/io/File;
    .end local v20    # "id":J
    .end local v24    # "out":Ljava/io/FileOutputStream;
    .end local v26    # "path":Ljava/lang/String;
    .end local v27    # "recreateThumbnailFile":Z
    :catch_0
    move-exception v17

    .line 248
    .local v17, "e":Ljava/lang/Throwable;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    .line 271
    .end local v17    # "e":Ljava/lang/Throwable;
    .restart local v3    # "uri":Landroid/net/Uri;
    .restart local v8    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v9    # "columnData":Ljava/lang/String;
    .restart local v10    # "columnHeight":Ljava/lang/String;
    .restart local v11    # "columnId":Ljava/lang/String;
    .restart local v12    # "columnKind":Ljava/lang/String;
    .restart local v13    # "columnOrigId":Ljava/lang/String;
    .restart local v14    # "columnWidth":Ljava/lang/String;
    .restart local v15    # "cursor":Landroid/database/Cursor;
    .restart local v18    # "file":Ljava/io/File;
    .restart local v20    # "id":J
    .restart local v26    # "path":Ljava/lang/String;
    :cond_c
    const-string v9, "_data"

    .line 272
    const-string v13, "video_id"

    .line 273
    const-string v12, "kind"

    .line 274
    const-string v14, "width"

    .line 275
    const-string v10, "height"

    .line 276
    sget-object v3, Landroid/provider/MediaStore$Video$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_2

    .line 290
    .restart local v2    # "cr":Landroid/content/ContentResolver;
    .restart local v4    # "cols":[Ljava/lang/String;
    :catch_1
    move-exception v17

    .line 291
    .restart local v17    # "e":Ljava/lang/Throwable;
    :try_start_9
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 294
    if-eqz v15, :cond_6

    .line 295
    :try_start_a
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2

    goto/16 :goto_3

    .line 297
    :catch_2
    move-exception v5

    goto/16 :goto_3

    .line 293
    .end local v17    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v5

    .line 294
    if-eqz v15, :cond_d

    .line 295
    :try_start_b
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_6

    .line 298
    :cond_d
    :goto_b
    throw v5

    .line 309
    .restart local v22    # "in":Ljava/io/FileInputStream;
    .restart local v27    # "recreateThumbnailFile":Z
    :catch_3
    move-exception v17

    .line 310
    .restart local v17    # "e":Ljava/lang/Throwable;
    :goto_c
    :try_start_c
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 311
    const/4 v8, 0x0

    .line 313
    invoke-static/range {v22 .. v22}, Lcom/vivo/common/utils/FileUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto/16 :goto_4

    .end local v17    # "e":Ljava/lang/Throwable;
    :catchall_1
    move-exception v5

    :goto_d
    invoke-static/range {v22 .. v22}, Lcom/vivo/common/utils/FileUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v5

    .line 319
    .end local v22    # "in":Ljava/io/FileInputStream;
    :cond_e
    const/16 v27, 0x1

    goto/16 :goto_5

    .line 338
    .restart local v24    # "out":Ljava/io/FileOutputStream;
    :cond_f
    :try_start_d
    sget-object v3, Landroid/provider/MediaStore$Video$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_8
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto/16 :goto_7

    .line 356
    .end local v18    # "file":Ljava/io/File;
    .end local v24    # "out":Ljava/io/FileOutputStream;
    .restart local v19    # "file":Ljava/io/File;
    .restart local v25    # "out":Ljava/io/FileOutputStream;
    .restart local v28    # "size":I
    .restart local v29    # "updateAction":Z
    .restart local v30    # "values":Landroid/content/ContentValues;
    :cond_10
    const/16 v28, 0x140

    goto/16 :goto_8

    .line 363
    :cond_11
    :try_start_e
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v0, v13, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 364
    move-object/from16 v0, v30

    move-object/from16 v1, v26

    invoke-virtual {v0, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v0, v12, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 366
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v0, v14, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 367
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v0, v10, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    goto/16 :goto_9

    .line 375
    .end local v28    # "size":I
    .end local v30    # "values":Landroid/content/ContentValues;
    :catch_4
    move-exception v17

    move-object/from16 v24, v25

    .end local v25    # "out":Ljava/io/FileOutputStream;
    .restart local v24    # "out":Ljava/io/FileOutputStream;
    move-object/from16 v18, v19

    .line 376
    .end local v19    # "file":Ljava/io/File;
    .end local v29    # "updateAction":Z
    .restart local v17    # "e":Ljava/lang/Throwable;
    .restart local v18    # "file":Ljava/io/File;
    :goto_e
    :try_start_f
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 378
    invoke-static/range {v24 .. v24}, Lcom/vivo/common/utils/FileUtils;->closeQuietly(Ljava/io/OutputStream;)V

    goto/16 :goto_0

    .line 372
    .end local v17    # "e":Ljava/lang/Throwable;
    .end local v18    # "file":Ljava/io/File;
    .end local v24    # "out":Ljava/io/FileOutputStream;
    .restart local v19    # "file":Ljava/io/File;
    .restart local v25    # "out":Ljava/io/FileOutputStream;
    .restart local v28    # "size":I
    .restart local v29    # "updateAction":Z
    .restart local v30    # "values":Landroid/content/ContentValues;
    :cond_12
    :try_start_10
    move-object/from16 v0, v30

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    move-object/from16 v24, v25

    .end local v25    # "out":Ljava/io/FileOutputStream;
    .restart local v24    # "out":Ljava/io/FileOutputStream;
    move-object/from16 v18, v19

    .end local v19    # "file":Ljava/io/File;
    .restart local v18    # "file":Ljava/io/File;
    goto/16 :goto_a

    .line 378
    .end local v28    # "size":I
    .end local v29    # "updateAction":Z
    .end local v30    # "values":Landroid/content/ContentValues;
    :catchall_2
    move-exception v5

    :goto_f
    invoke-static/range {v24 .. v24}, Lcom/vivo/common/utils/FileUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v5

    .line 297
    .end local v24    # "out":Ljava/io/FileOutputStream;
    .end local v27    # "recreateThumbnailFile":Z
    :catch_5
    move-exception v5

    goto/16 :goto_3

    :catch_6
    move-exception v6

    goto :goto_b

    .line 325
    .restart local v27    # "recreateThumbnailFile":Z
    :catch_7
    move-exception v5

    goto/16 :goto_6

    .line 378
    .end local v18    # "file":Ljava/io/File;
    .restart local v19    # "file":Ljava/io/File;
    .restart local v24    # "out":Ljava/io/FileOutputStream;
    .restart local v29    # "updateAction":Z
    :catchall_3
    move-exception v5

    move-object/from16 v18, v19

    .end local v19    # "file":Ljava/io/File;
    .restart local v18    # "file":Ljava/io/File;
    goto :goto_f

    .end local v18    # "file":Ljava/io/File;
    .end local v24    # "out":Ljava/io/FileOutputStream;
    .restart local v19    # "file":Ljava/io/File;
    .restart local v25    # "out":Ljava/io/FileOutputStream;
    :catchall_4
    move-exception v5

    move-object/from16 v24, v25

    .end local v25    # "out":Ljava/io/FileOutputStream;
    .restart local v24    # "out":Ljava/io/FileOutputStream;
    move-object/from16 v18, v19

    .end local v19    # "file":Ljava/io/File;
    .restart local v18    # "file":Ljava/io/File;
    goto :goto_f

    .line 375
    .end local v29    # "updateAction":Z
    :catch_8
    move-exception v17

    goto :goto_e

    .end local v18    # "file":Ljava/io/File;
    .restart local v19    # "file":Ljava/io/File;
    .restart local v29    # "updateAction":Z
    :catch_9
    move-exception v17

    move-object/from16 v18, v19

    .end local v19    # "file":Ljava/io/File;
    .restart local v18    # "file":Ljava/io/File;
    goto :goto_e

    .line 313
    .end local v24    # "out":Ljava/io/FileOutputStream;
    .end local v29    # "updateAction":Z
    .restart local v23    # "in":Ljava/io/FileInputStream;
    :catchall_5
    move-exception v5

    move-object/from16 v22, v23

    .end local v23    # "in":Ljava/io/FileInputStream;
    .restart local v22    # "in":Ljava/io/FileInputStream;
    goto :goto_d

    .line 309
    .end local v22    # "in":Ljava/io/FileInputStream;
    .restart local v23    # "in":Ljava/io/FileInputStream;
    :catch_a
    move-exception v17

    move-object/from16 v22, v23

    .end local v23    # "in":Ljava/io/FileInputStream;
    .restart local v22    # "in":Ljava/io/FileInputStream;
    goto/16 :goto_c
.end method

.method public static getVideoDimension(Ljava/io/File;)[I
    .locals 8
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 454
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 455
    :cond_0
    const/4 v3, 0x0

    .line 497
    :cond_1
    :goto_0
    return-object v3

    .line 457
    :cond_2
    const/4 v6, 0x2

    new-array v0, v6, [I

    .line 458
    .local v0, "array":[I
    move-object v3, v0

    .line 460
    .local v3, "ret":[I
    const/4 v4, 0x0

    .line 462
    .local v4, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_0
    new-instance v5, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v5}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    .end local v4    # "retriever":Landroid/media/MediaMetadataRetriever;
    .local v5, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 465
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 466
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_4

    .line 467
    const/4 v6, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    aput v7, v0, v6

    .line 468
    const/4 v6, 0x1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    aput v7, v0, v6
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 489
    :goto_1
    if-eqz v5, :cond_3

    .line 490
    :try_start_2
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    move-object v4, v5

    .line 494
    .end local v5    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v4    # "retriever":Landroid/media/MediaMetadataRetriever;
    goto :goto_0

    .line 470
    .end local v4    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v5    # "retriever":Landroid/media/MediaMetadataRetriever;
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 492
    :catch_0
    move-exception v6

    move-object v4, v5

    .line 495
    .end local v5    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v4    # "retriever":Landroid/media/MediaMetadataRetriever;
    goto :goto_0

    .line 484
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v2

    .line 486
    .local v2, "ex":Ljava/lang/Throwable;
    :goto_2
    const/4 v3, 0x0

    .line 489
    if-eqz v4, :cond_1

    .line 490
    :try_start_3
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 492
    :catch_2
    move-exception v6

    goto :goto_0

    .line 488
    .end local v2    # "ex":Ljava/lang/Throwable;
    :catchall_0
    move-exception v6

    .line 489
    :goto_3
    if-eqz v4, :cond_5

    .line 490
    :try_start_4
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    .line 494
    :cond_5
    :goto_4
    throw v6

    .line 492
    :catch_3
    move-exception v7

    goto :goto_4

    .line 488
    .end local v4    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v5    # "retriever":Landroid/media/MediaMetadataRetriever;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v4    # "retriever":Landroid/media/MediaMetadataRetriever;
    goto :goto_3

    .line 484
    .end local v4    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v5    # "retriever":Landroid/media/MediaMetadataRetriever;
    :catch_4
    move-exception v2

    move-object v4, v5

    .end local v5    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v4    # "retriever":Landroid/media/MediaMetadataRetriever;
    goto :goto_2
.end method

.method public static hasIllChar(Ljava/lang/String;)Z
    .locals 3
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 1241
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 1249
    :cond_0
    :goto_0
    return v1

    .line 1244
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v2, Lcom/vivo/common/utils/FileUtils;->FILENAME_ILLCHAR:[C

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 1245
    sget-object v2, Lcom/vivo/common/utils/FileUtils;->FILENAME_ILLCHAR:[C

    aget-char v2, v2, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_0

    .line 1244
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1249
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isApkFile(Ljava/io/File;)Z
    .locals 3
    .param p0, "f"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x0

    .line 982
    if-nez p0, :cond_1

    .line 990
    :cond_0
    :goto_0
    return v1

    .line 986
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vivo/common/utils/FileUtils;->getExtensionWithoutDot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 987
    .local v0, "extension":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 988
    invoke-static {v0}, Lcom/vivo/common/utils/FileUtils;->isApkFile(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isApkFile(Ljava/lang/String;)Z
    .locals 1
    .param p0, "extension"    # Ljava/lang/String;

    .prologue
    .line 997
    const-string v0, "apk"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 998
    const/4 v0, 0x1

    .line 1000
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAudioFile(Ljava/io/File;)Z
    .locals 2
    .param p0, "f"    # Ljava/io/File;

    .prologue
    .line 910
    if-nez p0, :cond_0

    .line 911
    const/4 v1, 0x0

    .line 914
    :goto_0
    return v1

    .line 913
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/common/utils/FileUtils;->getExtensionWithoutDot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 914
    .local v0, "extension":Ljava/lang/String;
    invoke-static {v0}, Lcom/vivo/common/utils/FileUtils;->isAudioFile(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isAudioFile(Ljava/lang/String;)Z
    .locals 3
    .param p0, "extension"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 922
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 929
    :cond_0
    :goto_0
    return v0

    .line 925
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "a."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/common/utils/VivoFileMimeType;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 927
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isCompressedFile(Ljava/lang/String;)Z
    .locals 2
    .param p0, "extension"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1198
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 1209
    :cond_0
    :goto_0
    return v0

    .line 1201
    :cond_1
    const-string v1, "ar"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "cpio"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "jar"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "tar"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "zip"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "tar.gz"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "tgz"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "gz"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "tar.bz2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "tbz2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "bz2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "rar"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1207
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isCsvFile(Ljava/io/File;)Z
    .locals 3
    .param p0, "f"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x0

    .line 1136
    if-nez p0, :cond_1

    .line 1144
    :cond_0
    :goto_0
    return v1

    .line 1140
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vivo/common/utils/FileUtils;->getExtensionWithoutDot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1141
    .local v0, "extension":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1142
    invoke-static {v0}, Lcom/vivo/common/utils/FileUtils;->isCsvFile(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isCsvFile(Ljava/lang/String;)Z
    .locals 1
    .param p0, "extension"    # Ljava/lang/String;

    .prologue
    .line 1151
    const-string v0, "csv"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1152
    const/4 v0, 0x1

    .line 1154
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDocFile(Ljava/io/File;)Z
    .locals 3
    .param p0, "f"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x0

    .line 1026
    if-nez p0, :cond_1

    .line 1034
    :cond_0
    :goto_0
    return v1

    .line 1030
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vivo/common/utils/FileUtils;->getExtensionWithoutDot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1031
    .local v0, "extension":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1032
    invoke-static {v0}, Lcom/vivo/common/utils/FileUtils;->isDocFile(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isDocFile(Ljava/lang/String;)Z
    .locals 1
    .param p0, "extension"    # Ljava/lang/String;

    .prologue
    .line 1041
    const-string v0, "doc"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1042
    const/4 v0, 0x1

    .line 1044
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isExeFile(Ljava/io/File;)Z
    .locals 3
    .param p0, "f"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x0

    .line 1092
    if-nez p0, :cond_1

    .line 1100
    :cond_0
    :goto_0
    return v1

    .line 1096
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vivo/common/utils/FileUtils;->getExtensionWithoutDot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1097
    .local v0, "extension":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1098
    invoke-static {v0}, Lcom/vivo/common/utils/FileUtils;->isExeFile(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isExeFile(Ljava/lang/String;)Z
    .locals 1
    .param p0, "extension"    # Ljava/lang/String;

    .prologue
    .line 1107
    const-string v0, "exe"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1108
    const/4 v0, 0x1

    .line 1110
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFileCanOpen(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 12
    .param p0, "extWithoutDot"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1536
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v8, v9

    .line 1569
    :cond_1
    :goto_0
    return v8

    .line 1539
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "a."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1540
    .local v2, "filename":Ljava/lang/String;
    invoke-static {v2}, Lcom/vivo/common/utils/FileUtils;->canUncompress(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 1543
    const/4 v7, 0x0

    .line 1544
    .local v7, "type":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1546
    .local v4, "intType":I
    invoke-static {v4}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v10

    if-nez v10, :cond_4

    invoke-static {v4}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v10

    if-nez v10, :cond_4

    invoke-static {v4}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v10

    if-nez v10, :cond_4

    .line 1548
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v10

    invoke-virtual {v10, p0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1549
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_4

    .line 1550
    const-string v10, "/"

    invoke-virtual {v7, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 1551
    .local v6, "preType":Ljava/lang/String;
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_4

    .line 1552
    const-string v10, "video"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string v10, "audio"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string v10, "image"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    :cond_3
    move v8, v9

    .line 1554
    goto :goto_0

    .line 1559
    .end local v6    # "preType":Ljava/lang/String;
    :cond_4
    new-instance v5, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1560
    .local v5, "intent":Landroid/content/Intent;
    new-instance v1, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1561
    .local v1, "f":Ljava/io/File;
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 1563
    .local v0, "data":Landroid/net/Uri;
    invoke-virtual {v5, v0, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1564
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const/high16 v11, 0x10000

    invoke-virtual {v10, v5, v11}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 1566
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    if-nez v3, :cond_1

    move v8, v9

    .line 1567
    goto/16 :goto_0
.end method

.method public static isHtmlFile(Ljava/io/File;)Z
    .locals 3
    .param p0, "f"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x0

    .line 1158
    if-nez p0, :cond_1

    .line 1166
    :cond_0
    :goto_0
    return v1

    .line 1162
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vivo/common/utils/FileUtils;->getExtensionWithoutDot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1163
    .local v0, "extension":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1164
    invoke-static {v0}, Lcom/vivo/common/utils/FileUtils;->isHtmlFile(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isHtmlFile(Ljava/lang/String;)Z
    .locals 1
    .param p0, "extension"    # Ljava/lang/String;

    .prologue
    .line 1173
    const-string v0, "html"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "htm"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1174
    :cond_0
    const/4 v0, 0x1

    .line 1176
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isImageFile(Ljava/io/File;)Z
    .locals 2
    .param p0, "f"    # Ljava/io/File;

    .prologue
    .line 937
    if-nez p0, :cond_0

    .line 938
    const/4 v1, 0x0

    .line 941
    :goto_0
    return v1

    .line 940
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/common/utils/FileUtils;->getExtensionWithoutDot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 941
    .local v0, "extension":Ljava/lang/String;
    invoke-static {v0}, Lcom/vivo/common/utils/FileUtils;->isImageFile(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isImageFile(Ljava/lang/String;)Z
    .locals 3
    .param p0, "extension"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 949
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 956
    :cond_0
    :goto_0
    return v0

    .line 952
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "a."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/common/utils/VivoFileMimeType;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 954
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isMediaFile(Ljava/io/File;)Z
    .locals 3
    .param p0, "f"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x0

    .line 853
    if-nez p0, :cond_1

    .line 860
    :cond_0
    :goto_0
    return v1

    .line 856
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vivo/common/utils/FileUtils;->getExtensionWithoutDot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 857
    .local v0, "extension":Ljava/lang/String;
    invoke-static {v0}, Lcom/vivo/common/utils/FileUtils;->isImageFile(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0}, Lcom/vivo/common/utils/FileUtils;->isAudioFile(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0}, Lcom/vivo/common/utils/FileUtils;->isVideoFile(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 858
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isMediaScannerScanning(Landroid/content/ContentResolver;)Z
    .locals 9
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v8, 0x0

    .line 821
    if-nez p0, :cond_1

    .line 845
    :cond_0
    :goto_0
    return v8

    .line 825
    :cond_1
    const/4 v8, 0x0

    .line 826
    .local v8, "result":Z
    const/4 v6, 0x0

    .line 828
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "volume"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 835
    :goto_1
    if-eqz v6, :cond_2

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 836
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 837
    const-string v0, "external"

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    .line 840
    :cond_2
    if-eqz v6, :cond_0

    .line 841
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 831
    :catch_0
    move-exception v7

    .line 832
    .local v7, "e":Ljava/lang/Throwable;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 840
    .end local v7    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 841
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static isPdfFile(Ljava/io/File;)Z
    .locals 3
    .param p0, "f"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x0

    .line 1004
    if-nez p0, :cond_1

    .line 1012
    :cond_0
    :goto_0
    return v1

    .line 1008
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vivo/common/utils/FileUtils;->getExtensionWithoutDot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1009
    .local v0, "extension":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1010
    invoke-static {v0}, Lcom/vivo/common/utils/FileUtils;->isPdfFile(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isPdfFile(Ljava/lang/String;)Z
    .locals 1
    .param p0, "extension"    # Ljava/lang/String;

    .prologue
    .line 1019
    const-string v0, "pdf"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1020
    const/4 v0, 0x1

    .line 1022
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPptFile(Ljava/io/File;)Z
    .locals 3
    .param p0, "f"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x0

    .line 1070
    if-nez p0, :cond_1

    .line 1078
    :cond_0
    :goto_0
    return v1

    .line 1074
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vivo/common/utils/FileUtils;->getExtensionWithoutDot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1075
    .local v0, "extension":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1076
    invoke-static {v0}, Lcom/vivo/common/utils/FileUtils;->isPptFile(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isPptFile(Ljava/lang/String;)Z
    .locals 1
    .param p0, "extension"    # Ljava/lang/String;

    .prologue
    .line 1085
    const-string v0, "ppt"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1086
    const/4 v0, 0x1

    .line 1088
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStringAllSpaces(Ljava/lang/String;)Z
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1275
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 1283
    :cond_0
    :goto_0
    return v1

    .line 1278
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1279
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    .line 1278
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1283
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isTxtFile(Ljava/io/File;)Z
    .locals 3
    .param p0, "f"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x0

    .line 960
    if-nez p0, :cond_1

    .line 968
    :cond_0
    :goto_0
    return v1

    .line 964
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vivo/common/utils/FileUtils;->getExtensionWithoutDot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 965
    .local v0, "extension":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 966
    invoke-static {v0}, Lcom/vivo/common/utils/FileUtils;->isTxtFile(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isTxtFile(Ljava/lang/String;)Z
    .locals 1
    .param p0, "extension"    # Ljava/lang/String;

    .prologue
    .line 975
    const-string v0, "txt"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 976
    const/4 v0, 0x1

    .line 978
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUTF8([B)Z
    .locals 12
    .param p0, "rawtext"    # [B

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v11, -0x41

    const/16 v10, -0x80

    .line 1578
    const/16 v0, 0x200

    .line 1579
    .local v0, "READ_MAX_LENG":I
    const/4 v5, 0x0

    .line 1580
    .local v5, "score":I
    const/4 v4, 0x0

    .line 1581
    .local v4, "rawtextlen":I
    const/4 v2, 0x0

    .local v2, "goodbytes":I
    const/4 v1, 0x0

    .line 1584
    .local v1, "asciibytes":I
    array-length v4, p0

    .line 1585
    const/16 v8, 0x200

    if-le v4, v8, :cond_0

    .line 1586
    const/16 v4, 0x200

    .line 1588
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_4

    .line 1589
    aget-byte v8, p0, v3

    and-int/lit8 v8, v8, 0x7f

    aget-byte v9, p0, v3

    if-ne v8, v9, :cond_2

    .line 1591
    add-int/lit8 v1, v1, 0x1

    .line 1588
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1593
    :cond_2
    const/16 v8, -0x40

    aget-byte v9, p0, v3

    if-gt v8, v9, :cond_3

    aget-byte v8, p0, v3

    const/16 v9, -0x21

    if-gt v8, v9, :cond_3

    add-int/lit8 v8, v3, 0x1

    if-ge v8, v4, :cond_3

    add-int/lit8 v8, v3, 0x1

    aget-byte v8, p0, v8

    if-gt v10, v8, :cond_3

    add-int/lit8 v8, v3, 0x1

    aget-byte v8, p0, v8

    if-gt v8, v11, :cond_3

    .line 1596
    add-int/lit8 v2, v2, 0x2

    .line 1597
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1598
    :cond_3
    const/16 v8, -0x20

    aget-byte v9, p0, v3

    if-gt v8, v9, :cond_1

    aget-byte v8, p0, v3

    const/16 v9, -0x11

    if-gt v8, v9, :cond_1

    add-int/lit8 v8, v3, 0x2

    if-ge v8, v4, :cond_1

    add-int/lit8 v8, v3, 0x1

    aget-byte v8, p0, v8

    if-gt v10, v8, :cond_1

    add-int/lit8 v8, v3, 0x1

    aget-byte v8, p0, v8

    if-gt v8, v11, :cond_1

    add-int/lit8 v8, v3, 0x2

    aget-byte v8, p0, v8

    if-gt v10, v8, :cond_1

    add-int/lit8 v8, v3, 0x2

    aget-byte v8, p0, v8

    if-gt v8, v11, :cond_1

    .line 1602
    add-int/lit8 v2, v2, 0x3

    .line 1603
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 1606
    :cond_4
    if-ne v1, v4, :cond_6

    .line 1618
    :cond_5
    :goto_2
    return v6

    .line 1610
    :cond_6
    mul-int/lit8 v8, v2, 0x64

    sub-int v9, v4, v1

    div-int v5, v8, v9

    .line 1613
    const/16 v8, 0x62

    if-le v5, v8, :cond_7

    move v6, v7

    .line 1614
    goto :goto_2

    .line 1615
    :cond_7
    const/16 v8, 0x5f

    if-le v5, v8, :cond_5

    const/16 v8, 0x1e

    if-le v2, v8, :cond_5

    move v6, v7

    .line 1616
    goto :goto_2
.end method

.method public static isVcfFile(Ljava/io/File;)Z
    .locals 3
    .param p0, "f"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x0

    .line 1114
    if-nez p0, :cond_1

    .line 1122
    :cond_0
    :goto_0
    return v1

    .line 1118
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vivo/common/utils/FileUtils;->getExtensionWithoutDot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1119
    .local v0, "extension":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1120
    invoke-static {v0}, Lcom/vivo/common/utils/FileUtils;->isVcfFile(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isVcfFile(Ljava/lang/String;)Z
    .locals 1
    .param p0, "extension"    # Ljava/lang/String;

    .prologue
    .line 1129
    const-string v0, "vcf"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1130
    const/4 v0, 0x1

    .line 1132
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVideoFile(Ljava/io/File;)Z
    .locals 2
    .param p0, "f"    # Ljava/io/File;

    .prologue
    .line 883
    if-nez p0, :cond_0

    .line 884
    const/4 v1, 0x0

    .line 887
    :goto_0
    return v1

    .line 886
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/common/utils/FileUtils;->getExtensionWithoutDot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 887
    .local v0, "extension":Ljava/lang/String;
    invoke-static {v0}, Lcom/vivo/common/utils/FileUtils;->isVideoFile(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isVideoFile(Ljava/lang/String;)Z
    .locals 3
    .param p0, "extension"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 895
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 902
    :cond_0
    :goto_0
    return v0

    .line 898
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "a."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/common/utils/VivoFileMimeType;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 900
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isVideoOrImage(Ljava/io/File;)Z
    .locals 3
    .param p0, "f"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x0

    .line 868
    if-nez p0, :cond_1

    .line 875
    :cond_0
    :goto_0
    return v1

    .line 871
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vivo/common/utils/FileUtils;->getExtensionWithoutDot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 872
    .local v0, "extension":Ljava/lang/String;
    invoke-static {v0}, Lcom/vivo/common/utils/FileUtils;->isVideoFile(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0}, Lcom/vivo/common/utils/FileUtils;->isImageFile(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 873
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isXlsFile(Ljava/io/File;)Z
    .locals 3
    .param p0, "f"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x0

    .line 1048
    if-nez p0, :cond_1

    .line 1056
    :cond_0
    :goto_0
    return v1

    .line 1052
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vivo/common/utils/FileUtils;->getExtensionWithoutDot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1053
    .local v0, "extension":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1054
    invoke-static {v0}, Lcom/vivo/common/utils/FileUtils;->isXlsFile(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isXlsFile(Ljava/lang/String;)Z
    .locals 1
    .param p0, "extension"    # Ljava/lang/String;

    .prologue
    .line 1063
    const-string v0, "xls"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1064
    const/4 v0, 0x1

    .line 1066
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static lowStorage(Z)Z
    .locals 8
    .param p0, "restricted"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1384
    new-array v0, v1, [J

    .line 1385
    .local v0, "item":[J
    if-eqz p0, :cond_0

    const-wide/32 v2, 0x10000

    .line 1386
    .local v2, "threshold":J
    :goto_0
    invoke-static {v0}, Lcom/vivo/common/utils/FileUtils;->getAvailableStorageSize([J)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1387
    aget-wide v6, v0, v4

    cmp-long v5, v6, v2

    if-gez v5, :cond_1

    .line 1391
    :goto_1
    return v1

    .line 1385
    .end local v2    # "threshold":J
    :cond_0
    const-wide/32 v2, 0x100000

    goto :goto_0

    .restart local v2    # "threshold":J
    :cond_1
    move v1, v4

    .line 1391
    goto :goto_1
.end method

.method public static readFile(Ljava/io/File;)Ljava/lang/String;
    .locals 11
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/16 v10, 0xa

    .line 1493
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    .line 1494
    :cond_0
    const/4 v7, 0x0

    .line 1528
    :goto_0
    return-object v7

    .line 1496
    :cond_1
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 1497
    .local v8, "sb":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .line 1498
    .local v3, "fis":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 1499
    .local v5, "isr":Ljava/io/InputStreamReader;
    const/4 v0, 0x0

    .line 1500
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v7, 0x0

    .line 1503
    .local v7, "ret":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1504
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .local v4, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v6, Ljava/io/InputStreamReader;

    const-string v9, "UTF8"

    invoke-direct {v6, v4, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1505
    .end local v5    # "isr":Ljava/io/InputStreamReader;
    .local v6, "isr":Ljava/io/InputStreamReader;
    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1507
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 1508
    :goto_1
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_2

    .line 1509
    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1510
    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1511
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 1513
    :cond_2
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    if-lez v9, :cond_3

    .line 1514
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v9

    if-ne v9, v10, :cond_3

    .line 1515
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 1518
    :cond_3
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v7

    .line 1523
    invoke-static {v4}, Lcom/vivo/common/utils/FileUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 1524
    invoke-static {v6}, Lcom/vivo/common/utils/FileUtils;->closeQuietly(Ljava/io/Reader;)V

    .line 1525
    invoke-static {v1}, Lcom/vivo/common/utils/FileUtils;->closeQuietly(Ljava/io/Reader;)V

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .restart local v5    # "isr":Ljava/io/InputStreamReader;
    move-object v3, v4

    .line 1526
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_0

    .line 1519
    :catch_0
    move-exception v2

    .line 1520
    .local v2, "e":Ljava/lang/Throwable;
    :goto_2
    const/4 v7, 0x0

    .line 1521
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1523
    invoke-static {v3}, Lcom/vivo/common/utils/FileUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 1524
    invoke-static {v5}, Lcom/vivo/common/utils/FileUtils;->closeQuietly(Ljava/io/Reader;)V

    .line 1525
    invoke-static {v0}, Lcom/vivo/common/utils/FileUtils;->closeQuietly(Ljava/io/Reader;)V

    goto :goto_0

    .line 1523
    .end local v2    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v9

    :goto_3
    invoke-static {v3}, Lcom/vivo/common/utils/FileUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 1524
    invoke-static {v5}, Lcom/vivo/common/utils/FileUtils;->closeQuietly(Ljava/io/Reader;)V

    .line 1525
    invoke-static {v0}, Lcom/vivo/common/utils/FileUtils;->closeQuietly(Ljava/io/Reader;)V

    throw v9

    .line 1523
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v9

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "isr":Ljava/io/InputStreamReader;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "isr":Ljava/io/InputStreamReader;
    :catchall_2
    move-exception v9

    move-object v5, v6

    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .restart local v5    # "isr":Ljava/io/InputStreamReader;
    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "isr":Ljava/io/InputStreamReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "isr":Ljava/io/InputStreamReader;
    :catchall_3
    move-exception v9

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .restart local v5    # "isr":Ljava/io/InputStreamReader;
    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .line 1519
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v2

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "isr":Ljava/io/InputStreamReader;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "isr":Ljava/io/InputStreamReader;
    :catch_2
    move-exception v2

    move-object v5, v6

    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .restart local v5    # "isr":Ljava/io/InputStreamReader;
    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "isr":Ljava/io/InputStreamReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "isr":Ljava/io/InputStreamReader;
    :catch_3
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .restart local v5    # "isr":Ljava/io/InputStreamReader;
    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public static removeIllChar(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1256
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_1

    .line 1271
    :cond_0
    :goto_0
    return-object v4

    .line 1259
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1260
    .local v3, "sb":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/String;

    sget-object v5, Lcom/vivo/common/utils/FileUtils;->FILENAME_ILLCHAR:[C

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>([C)V

    .line 1262
    .local v2, "illChars":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 1263
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1264
    .local v0, "c":C
    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-gez v5, :cond_2

    .line 1265
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1262
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1268
    .end local v0    # "c":C
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 1269
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static renameFile(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;)I
    .locals 12
    .param p0, "srcFile"    # Ljava/io/File;
    .param p1, "dest"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 762
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    .line 763
    :cond_0
    const/4 v9, 0x1

    .line 814
    :goto_0
    return v9

    .line 765
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-gtz v9, :cond_3

    .line 766
    :cond_2
    const/4 v9, 0x4

    goto :goto_0

    .line 768
    :cond_3
    const/4 v2, 0x0

    .line 769
    .local v2, "onlyCaseChanged":Z
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 770
    .local v5, "srcPath":Ljava/lang/String;
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 771
    const/4 v9, 0x2

    goto :goto_0

    .line 772
    :cond_4
    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 773
    const/4 v2, 0x1

    .line 775
    :cond_5
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 776
    .local v0, "destFile":Ljava/io/File;
    if-nez v2, :cond_6

    .line 777
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 778
    const/4 v9, 0x3

    goto :goto_0

    .line 781
    :cond_6
    const/4 v4, 0x0

    .line 783
    .local v4, "result":Z
    if-nez v2, :cond_9

    .line 784
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    .line 790
    :goto_1
    const/4 v7, 0x0

    .line 791
    .local v7, "uri":Landroid/net/Uri;
    invoke-static {v0}, Lcom/vivo/common/utils/FileUtils;->isImageFile(Ljava/io/File;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 792
    sget-object v7, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 798
    :cond_7
    :goto_2
    if-eqz v7, :cond_c

    .line 799
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 800
    .local v3, "resolver":Landroid/content/ContentResolver;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 801
    .local v8, "values":Landroid/content/ContentValues;
    const-string v9, "_display_name"

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    const-string v9, "_data"

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    const-string v9, "_data=?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v5, v10, v11

    invoke-virtual {v3, v7, v8, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 804
    invoke-static {p2, v0}, Lcom/vivo/common/utils/FileUtils;->scanMediaFile(Landroid/content/Context;Ljava/io/File;)V

    .line 811
    .end local v3    # "resolver":Landroid/content/ContentResolver;
    .end local v7    # "uri":Landroid/net/Uri;
    .end local v8    # "values":Landroid/content/ContentValues;
    :cond_8
    :goto_3
    if-nez v4, :cond_d

    .line 812
    const/4 v9, 0x5

    goto :goto_0

    .line 786
    :cond_9
    new-instance v6, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v5}, Lcom/vivo/common/utils/FileUtils;->Crc64Long(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 787
    .local v6, "tmpFile":Ljava/io/File;
    invoke-virtual {p0, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 788
    invoke-virtual {v6, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    goto :goto_1

    .line 793
    .end local v6    # "tmpFile":Ljava/io/File;
    .restart local v7    # "uri":Landroid/net/Uri;
    :cond_a
    invoke-static {v0}, Lcom/vivo/common/utils/FileUtils;->isAudioFile(Ljava/io/File;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 794
    sget-object v7, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_2

    .line 795
    :cond_b
    invoke-static {v0}, Lcom/vivo/common/utils/FileUtils;->isVideoFile(Ljava/io/File;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 796
    sget-object v7, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_2

    .line 805
    :cond_c
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 806
    invoke-static {p2}, Lcom/vivo/common/utils/FileUtils;->scanAllMediaFile(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 808
    .end local v7    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 809
    .local v1, "e":Ljava/lang/Throwable;
    const/4 v4, 0x0

    goto :goto_3

    .line 814
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_d
    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method public static scanAllMediaFile(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 598
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/vivo/common/utils/FileUtils;->scanMediaFile(Landroid/content/Context;Ljava/io/File;)V

    .line 600
    return-void
.end method

.method public static scanMediaFile(Landroid/content/Context;Ljava/io/File;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 603
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 616
    :cond_0
    :goto_0
    return-void

    .line 607
    :cond_1
    const/4 v1, 0x0

    .line 608
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {p1}, Lcom/vivo/common/utils/FileUtils;->getFileUriWithFileScheme(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 609
    .local v2, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 610
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 612
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 613
    :catch_0
    move-exception v0

    .line 614
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static separatorsToUnix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x5c

    .line 1303
    if-eqz p0, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gtz v0, :cond_1

    .line 1306
    .end local p0    # "path":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "path":Ljava/lang/String;
    :cond_1
    const/16 v0, 0x2f

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static splitString(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1287
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gtz v2, :cond_1

    .line 1288
    :cond_0
    const/4 v1, 0x0

    .line 1296
    :goto_0
    return-object v1

    .line 1290
    :cond_1
    const/4 v1, 0x0

    .line 1292
    .local v1, "ret":[Ljava/lang/String;
    :try_start_0
    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1293
    :catch_0
    move-exception v0

    .line 1294
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v1, 0x0

    goto :goto_0
.end method
