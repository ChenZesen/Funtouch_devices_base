.class public Lcom/vivo/common/VivoCollectFile;
.super Ljava/lang/Object;
.source "VivoCollectFile.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS_PART:Landroid/annotation/VivoHook$VivoHookType;
.end annotation


# static fields
.field private static final CONFIG_FILE:Ljava/lang/String; = "/data/data/com.bbk.iqoo.logsystem/shared_prefs/event_id_info.xml"

.field private static final CONFIG_FILE_EXT:Ljava/lang/String; = "/data/bbkcore/event_id_info.xml"

.field private static final DBG:Z = false

.field private static final DIR:Ljava/lang/String;

.field private static final FILE_SUFFIX:Ljava/lang/String; = ".txt"

.field private static MAX_DIR_SIZE:I = 0x0

.field private static final MAX_FILE_NUM:I = 0x1

.field private static MAX_FILE_SIZE:I = 0x0

.field private static final NEW_LINE:Ljava/lang/String; = "\r\n"

.field private static final RESERVED_SPACE:I = 0x6400000

.field private static final ROOT_DIR:Ljava/lang/String; = "/data"

.field private static final TAG:Ljava/lang/String; = "VivoCollectFile"

.field private static TOTAL_DIR_SIZE:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "vlog"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vivo/common/VivoCollectFile;->DIR:Ljava/lang/String;

    .line 36
    const/high16 v0, 0x1900000

    sput v0, Lcom/vivo/common/VivoCollectFile;->TOTAL_DIR_SIZE:I

    .line 37
    const/high16 v0, 0x100000

    sput v0, Lcom/vivo/common/VivoCollectFile;->MAX_DIR_SIZE:I

    .line 39
    sget v0, Lcom/vivo/common/VivoCollectFile;->MAX_DIR_SIZE:I

    div-int/lit8 v0, v0, 0x1

    sput v0, Lcom/vivo/common/VivoCollectFile;->MAX_FILE_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkDir(Ljava/lang/String;)I
    .locals 8
    .param p0, "eventId"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 269
    const/4 v1, -0x1

    .line 271
    .local v1, "n":I
    :try_start_0
    const-string v3, "file_size"

    invoke-static {v3}, Lcom/vivo/common/VivoCollectFile;->parseXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 275
    :goto_0
    if-lez v1, :cond_0

    .line 276
    shl-int/lit8 v3, v1, 0x14

    sput v3, Lcom/vivo/common/VivoCollectFile;->MAX_DIR_SIZE:I

    .line 277
    sget v3, Lcom/vivo/common/VivoCollectFile;->MAX_DIR_SIZE:I

    div-int/lit8 v3, v3, 0x1

    sput v3, Lcom/vivo/common/VivoCollectFile;->MAX_FILE_SIZE:I

    .line 280
    :cond_0
    const/4 v1, -0x1

    .line 281
    :try_start_1
    const-string v3, "dir_size"

    invoke-static {v3}, Lcom/vivo/common/VivoCollectFile;->parseXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 285
    :goto_1
    if-lez v1, :cond_1

    .line 286
    shl-int/lit8 v3, v1, 0x14

    sput v3, Lcom/vivo/common/VivoCollectFile;->TOTAL_DIR_SIZE:I

    .line 288
    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v3, "/data"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 289
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v4

    const-wide/32 v6, 0x6400000

    cmp-long v3, v4, v6

    if-gtz v3, :cond_3

    .line 313
    :cond_2
    :goto_2
    return v2

    .line 292
    :cond_3
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    sget-object v3, Lcom/vivo/common/VivoCollectFile;->DIR:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 293
    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4

    .line 294
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 296
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 297
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 298
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 302
    :cond_5
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    sget-object v3, Lcom/vivo/common/VivoCollectFile;->DIR:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 303
    .restart local v0    # "file":Ljava/io/File;
    invoke-static {v0}, Lcom/vivo/common/VivoCollectFile;->deleteOldDir(Ljava/io/File;)V

    .line 305
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/vivo/common/VivoCollectFile;->DIR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 306
    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_6

    .line 307
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 309
    const/16 v3, 0x1ff

    invoke-static {v0, v3, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    .line 313
    :goto_3
    const/4 v2, 0x0

    goto :goto_2

    .line 311
    :cond_6
    sget v2, Lcom/vivo/common/VivoCollectFile;->MAX_DIR_SIZE:I

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Lcom/vivo/common/VivoCollectFile;->deleteOldFile(Ljava/io/File;J)V

    goto :goto_3

    .line 282
    .end local v0    # "file":Ljava/io/File;
    :catch_0
    move-exception v3

    goto :goto_1

    .line 272
    :catch_1
    move-exception v3

    goto/16 :goto_0
.end method

.method private static chooseFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 18
    .param p0, "outFile"    # Ljava/lang/String;

    .prologue
    .line 376
    sget-char v16, Ljava/io/File;->separatorChar:C

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    .line 377
    .local v9, "index":I
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 378
    .local v3, "dir":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 379
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 380
    .local v6, "files":[Ljava/io/File;
    const/4 v12, 0x0

    .line 381
    .local v12, "targetFile":Ljava/io/File;
    const-wide/16 v14, 0x0

    .line 382
    .local v14, "time":J
    add-int/lit8 v16, v9, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 383
    .local v11, "name":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 384
    move-object v2, v6

    .local v2, "arr$":[Ljava/io/File;
    array-length v10, v2

    .local v10, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_0
    if-ge v8, v10, :cond_2

    aget-object v4, v2, v8

    .line 386
    .local v4, "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    .line 387
    .local v13, "temp":Ljava/lang/String;
    invoke-virtual {v13, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_1

    .line 384
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 389
    :cond_1
    sget-char v16, Ljava/io/File;->separatorChar:C

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v16

    add-int/lit8 v16, v16, 0x1

    const-string v17, "_"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 391
    const/16 v16, 0x0

    const-string v17, "_"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 392
    invoke-virtual {v11, v13}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v16

    if-nez v16, :cond_0

    .line 393
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v16

    cmp-long v16, v16, v14

    if-lez v16, :cond_0

    .line 394
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v14

    .line 395
    move-object v12, v4

    goto :goto_1

    .line 399
    .end local v2    # "arr$":[Ljava/io/File;
    .end local v4    # "f":Ljava/io/File;
    .end local v8    # "i$":I
    .end local v10    # "len$":I
    .end local v13    # "temp":Ljava/lang/String;
    :cond_2
    if-eqz v12, :cond_3

    .line 400
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    .line 401
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v16, "yyyy-MM-dd"

    move-object/from16 v0, v16

    invoke-direct {v7, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 402
    .local v7, "format":Ljava/text/SimpleDateFormat;
    new-instance v16, Ljava/util/Date;

    invoke-direct/range {v16 .. v16}, Ljava/util/Date;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    .line 403
    .restart local v13    # "temp":Ljava/lang/String;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v17, v9, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "_"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 404
    invoke-virtual {v11, v13}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v16

    if-gez v16, :cond_3

    .line 405
    const/4 v12, 0x0

    .line 408
    .end local v7    # "format":Ljava/text/SimpleDateFormat;
    .end local v13    # "temp":Ljava/lang/String;
    :cond_3
    if-eqz v12, :cond_4

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v16

    :goto_2
    return-object v16

    :cond_4
    const/16 v16, 0x0

    goto :goto_2
.end method

.method private static createRecordHead(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "appVersion"    # Ljava/lang/String;

    .prologue
    .line 473
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 474
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 476
    .local v0, "format":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    const-string v2, "ro.vivo.product.version"

    const-string v3, "unknown"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    if-eqz p0, :cond_0

    const-string v2, ""

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 480
    const-string v2, "versionName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static deleteOldDir(Ljava/io/File;)V
    .locals 20
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 317
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 318
    .local v5, "files":[Ljava/io/File;
    if-nez v5, :cond_1

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 320
    :cond_1
    const-wide/16 v14, 0x0

    .line 321
    .local v14, "size":J
    const-wide v10, 0x7fffffffffffffffL

    .line 322
    .local v10, "modifyTime":J
    const/4 v12, 0x0

    .line 323
    .local v12, "oldFile":Ljava/io/File;
    move-object v2, v5

    .local v2, "arr$":[Ljava/io/File;
    array-length v8, v2

    .local v8, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    move v7, v6

    .end local v2    # "arr$":[Ljava/io/File;
    .end local v6    # "i$":I
    .end local v8    # "len$":I
    .local v7, "i$":I
    :goto_1
    if-ge v7, v8, :cond_6

    aget-object v4, v2, v7

    .line 324
    .local v4, "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v17

    if-nez v17, :cond_3

    .line 325
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 323
    .end local v7    # "i$":I
    :cond_2
    add-int/lit8 v6, v7, 0x1

    .restart local v6    # "i$":I
    move v7, v6

    .end local v6    # "i$":I
    .restart local v7    # "i$":I
    goto :goto_1

    .line 328
    :cond_3
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v18

    cmp-long v17, v18, v10

    if-gez v17, :cond_4

    .line 329
    move-object v12, v4

    .line 330
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    .line 332
    :cond_4
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v16

    .line 333
    .local v16, "tmpFiles":[Ljava/io/File;
    if-eqz v16, :cond_0

    .line 335
    move-object/from16 v3, v16

    .local v3, "arr$":[Ljava/io/File;
    array-length v9, v3

    .local v9, "len$":I
    const/4 v6, 0x0

    .end local v7    # "i$":I
    .restart local v6    # "i$":I
    :goto_2
    if-ge v6, v9, :cond_2

    aget-object v13, v3, v6

    .line 336
    .local v13, "t":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->isFile()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 337
    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v18

    add-long v14, v14, v18

    .line 335
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 339
    :cond_5
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_3

    .line 341
    .end local v3    # "arr$":[Ljava/io/File;
    .end local v4    # "f":Ljava/io/File;
    .end local v6    # "i$":I
    .end local v9    # "len$":I
    .end local v13    # "t":Ljava/io/File;
    .end local v16    # "tmpFiles":[Ljava/io/File;
    .restart local v7    # "i$":I
    :cond_6
    sget v17, Lcom/vivo/common/VivoCollectFile;->TOTAL_DIR_SIZE:I

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    cmp-long v17, v14, v18

    if-ltz v17, :cond_9

    if-eqz v12, :cond_9

    .line 342
    invoke-virtual {v12}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 343
    if-eqz v5, :cond_7

    .line 344
    move-object v2, v5

    .restart local v2    # "arr$":[Ljava/io/File;
    array-length v8, v2

    .restart local v8    # "len$":I
    const/4 v6, 0x0

    .end local v7    # "i$":I
    .restart local v6    # "i$":I
    :goto_4
    if-ge v6, v8, :cond_8

    aget-object v4, v2, v6

    .line 345
    .restart local v4    # "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 344
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .end local v2    # "arr$":[Ljava/io/File;
    .end local v4    # "f":Ljava/io/File;
    .end local v6    # "i$":I
    .end local v8    # "len$":I
    .restart local v7    # "i$":I
    :cond_7
    move v6, v7

    .line 346
    .end local v7    # "i$":I
    .restart local v6    # "i$":I
    :cond_8
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    goto :goto_0

    .end local v6    # "i$":I
    .restart local v7    # "i$":I
    :cond_9
    move v6, v7

    .end local v7    # "i$":I
    .restart local v6    # "i$":I
    goto :goto_0
.end method

.method private static deleteOldFile(Ljava/io/File;J)V
    .locals 13
    .param p0, "file"    # Ljava/io/File;
    .param p1, "MaxSize"    # J

    .prologue
    .line 351
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 352
    .local v2, "files":[Ljava/io/File;
    if-nez v2, :cond_1

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    const-wide/16 v8, 0x0

    .line 355
    .local v8, "size":J
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v1, v0, v3

    .line 356
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 357
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v10

    add-long/2addr v8, v10

    .line 355
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 359
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 361
    .end local v1    # "f":Ljava/io/File;
    :cond_3
    cmp-long v10, v8, p1

    if-ltz v10, :cond_0

    .line 362
    const/4 v5, 0x0

    .line 363
    .local v5, "oldFile":Ljava/io/File;
    const-wide v6, 0x7fffffffffffffffL

    .line 364
    .local v6, "modifyTime":J
    move-object v0, v2

    array-length v4, v0

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v4, :cond_5

    aget-object v1, v0, v3

    .line 365
    .restart local v1    # "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    cmp-long v10, v10, v6

    if-gez v10, :cond_4

    .line 366
    move-object v5, v1

    .line 367
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    .line 364
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 370
    .end local v1    # "f":Ljava/io/File;
    :cond_5
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method private static declared-synchronized doWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)I
    .locals 20
    .param p0, "eventId"    # Ljava/lang/String;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "eventInfo"    # Ljava/lang/String;
    .param p3, "isAppend"    # Z
    .param p4, "needRecordHead"    # Z
    .param p5, "appVersion"    # Ljava/lang/String;

    .prologue
    .line 194
    const-class v15, Lcom/vivo/common/VivoCollectFile;

    monitor-enter v15

    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/vivo/common/VivoCollectFile;->checkDir(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v14

    if-gez v14, :cond_1

    .line 195
    const/4 v7, -0x1

    .line 265
    :cond_0
    :goto_0
    monitor-exit v15

    return v7

    .line 197
    :cond_1
    const/4 v8, 0x1

    .line 198
    .local v8, "needSuffix":Z
    :try_start_1
    new-instance v5, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v16, Lcom/vivo/common/VivoCollectFile;->DIR:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v16, Ljava/io/File;->separator:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v5, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 199
    .local v5, "file":Ljava/io/File;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v16, Ljava/io/File;->separator:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 200
    .local v9, "outFile":Ljava/lang/String;
    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_2

    .line 201
    if-nez p3, :cond_7

    .line 202
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, "_"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 219
    :cond_2
    :goto_1
    if-eqz v8, :cond_3

    .line 220
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v14, "yyyy-MM-dd_HHmmss"

    invoke-direct {v6, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 221
    .local v6, "format":Ljava/text/SimpleDateFormat;
    new-instance v14, Ljava/util/Date;

    invoke-direct {v14}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 222
    .local v3, "date":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 223
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, ".txt"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 226
    .end local v3    # "date":Ljava/lang/String;
    .end local v6    # "format":Ljava/text/SimpleDateFormat;
    :cond_3
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v7

    .line 227
    .local v7, "len":I
    move-object/from16 v2, p2

    .line 228
    .local v2, "data":Ljava/lang/String;
    sget v14, Lcom/vivo/common/VivoCollectFile;->MAX_FILE_SIZE:I

    if-le v7, v14, :cond_4

    .line 229
    sget v7, Lcom/vivo/common/VivoCollectFile;->MAX_FILE_SIZE:I

    .line 230
    const/4 v14, 0x0

    sget v16, Lcom/vivo/common/VivoCollectFile;->MAX_FILE_SIZE:I

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v14, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 233
    :cond_4
    const/4 v12, 0x0

    .line 235
    .local v12, "writer":Ljava/io/FileWriter;
    :try_start_2
    new-instance v13, Ljava/io/FileWriter;

    const/4 v14, 0x1

    invoke-direct {v13, v9, v14}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 236
    .end local v12    # "writer":Ljava/io/FileWriter;
    .local v13, "writer":Ljava/io/FileWriter;
    :try_start_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    .local v11, "sb":Ljava/lang/StringBuilder;
    if-eqz p4, :cond_5

    .line 238
    invoke-static/range {p5 .. p5}, Lcom/vivo/common/VivoCollectFile;->createRecordHead(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    :cond_5
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 247
    invoke-virtual {v13, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 248
    const-string v14, "\r\n"

    invoke-virtual {v13, v14}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v13}, Ljava/io/FileWriter;->flush()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 254
    if-eqz v13, :cond_6

    .line 256
    :try_start_4
    invoke-virtual {v13}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 263
    :cond_6
    :goto_2
    const/16 v14, 0x1ff

    const/16 v16, -0x1

    const/16 v17, -0x1

    :try_start_5
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v9, v14, v0, v1}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 194
    .end local v2    # "data":Ljava/lang/String;
    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "len":I
    .end local v8    # "needSuffix":Z
    .end local v9    # "outFile":Ljava/lang/String;
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    .end local v13    # "writer":Ljava/io/FileWriter;
    :catchall_0
    move-exception v14

    monitor-exit v15

    throw v14

    .line 204
    .restart local v5    # "file":Ljava/io/File;
    .restart local v8    # "needSuffix":Z
    .restart local v9    # "outFile":Ljava/lang/String;
    :cond_7
    :try_start_6
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/vivo/common/VivoCollectFile;->chooseFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 205
    .local v10, "s":Ljava/lang/String;
    if-eqz v10, :cond_9

    .line 206
    new-instance v5, Ljava/io/File;

    .end local v5    # "file":Ljava/io/File;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v5, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 207
    .restart local v5    # "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v16

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v14

    int-to-long v0, v14

    move-wide/from16 v18, v0

    add-long v16, v16, v18

    sget v14, Lcom/vivo/common/VivoCollectFile;->MAX_FILE_SIZE:I

    int-to-long v0, v14

    move-wide/from16 v18, v0

    cmp-long v14, v16, v18

    if-lez v14, :cond_8

    .line 208
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, "_"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 210
    :cond_8
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 211
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 214
    :cond_9
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, "_"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 257
    .end local v10    # "s":Ljava/lang/String;
    .restart local v2    # "data":Ljava/lang/String;
    .restart local v7    # "len":I
    .restart local v11    # "sb":Ljava/lang/StringBuilder;
    .restart local v13    # "writer":Ljava/io/FileWriter;
    :catch_0
    move-exception v4

    .line 259
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2

    .line 250
    .end local v4    # "e":Ljava/io/IOException;
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    .end local v13    # "writer":Ljava/io/FileWriter;
    .restart local v12    # "writer":Ljava/io/FileWriter;
    :catch_1
    move-exception v4

    .line 252
    .restart local v4    # "e":Ljava/io/IOException;
    :goto_3
    const/4 v7, -0x1

    .line 254
    .end local v7    # "len":I
    if-eqz v12, :cond_0

    .line 256
    :try_start_7
    invoke-virtual {v12}, Ljava/io/FileWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 257
    :catch_2
    move-exception v4

    .line 259
    :try_start_8
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 254
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v7    # "len":I
    :catchall_1
    move-exception v14

    :goto_4
    if-eqz v12, :cond_a

    .line 256
    :try_start_9
    invoke-virtual {v12}, Ljava/io/FileWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 260
    :cond_a
    :goto_5
    :try_start_a
    throw v14

    .line 257
    :catch_3
    move-exception v4

    .line 259
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_5

    .line 254
    .end local v4    # "e":Ljava/io/IOException;
    .end local v12    # "writer":Ljava/io/FileWriter;
    .restart local v13    # "writer":Ljava/io/FileWriter;
    :catchall_2
    move-exception v14

    move-object v12, v13

    .end local v13    # "writer":Ljava/io/FileWriter;
    .restart local v12    # "writer":Ljava/io/FileWriter;
    goto :goto_4

    .line 250
    .end local v12    # "writer":Ljava/io/FileWriter;
    .restart local v13    # "writer":Ljava/io/FileWriter;
    :catch_4
    move-exception v4

    move-object v12, v13

    .end local v13    # "writer":Ljava/io/FileWriter;
    .restart local v12    # "writer":Ljava/io/FileWriter;
    goto :goto_3
.end method

.method public static needCollection(Ljava/lang/String;)Z
    .locals 2
    .param p0, "id"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    .line 413
    const-string v0, "1"

    invoke-static {p0}, Lcom/vivo/common/VivoCollectFile;->parseXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    const/4 v0, 0x1

    .line 416
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static parseXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 420
    const-string v10, ""

    .line 421
    .local v10, "ret":Ljava/lang/String;
    if-eqz p0, :cond_0

    const-string v12, ""

    invoke-virtual {v12, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    :cond_0
    move-object v11, v10

    .line 469
    .end local v10    # "ret":Ljava/lang/String;
    .local v11, "ret":Ljava/lang/String;
    :goto_0
    return-object v11

    .line 424
    .end local v11    # "ret":Ljava/lang/String;
    .restart local v10    # "ret":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    .line 426
    .local v4, "isFound":Z
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 427
    .local v6, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v8, 0x0

    .line 429
    .local v8, "reader":Ljava/io/FileReader;
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v12, "/data/bbkcore/event_id_info.xml"

    invoke-direct {v2, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 430
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_3

    const-string v7, "/data/bbkcore/event_id_info.xml"

    .line 432
    .local v7, "path":Ljava/lang/String;
    :goto_1
    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    .end local v8    # "reader":Ljava/io/FileReader;
    .local v9, "reader":Ljava/io/FileReader;
    :try_start_1
    invoke-interface {v6, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 434
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 435
    .local v1, "eventType":I
    :goto_2
    const/4 v12, 0x1

    if-eq v1, v12, :cond_4

    if-nez v4, :cond_4

    .line 436
    packed-switch v1, :pswitch_data_0

    .line 456
    :cond_2
    :goto_3
    :pswitch_0
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    goto :goto_2

    .line 430
    .end local v1    # "eventType":I
    .end local v7    # "path":Ljava/lang/String;
    .end local v9    # "reader":Ljava/io/FileReader;
    .restart local v8    # "reader":Ljava/io/FileReader;
    :cond_3
    :try_start_2
    const-string v7, "/data/data/com.bbk.iqoo.logsystem/shared_prefs/event_id_info.xml"
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 441
    .end local v8    # "reader":Ljava/io/FileReader;
    .restart local v1    # "eventType":I
    .restart local v7    # "path":Ljava/lang/String;
    .restart local v9    # "reader":Ljava/io/FileReader;
    :pswitch_1
    :try_start_3
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 442
    .local v5, "name":Ljava/lang/String;
    const-string v12, "string"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 443
    const/4 v12, 0x0

    const-string v13, "name"

    invoke-interface {v6, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 444
    .local v3, "id":Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 445
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v10

    .line 446
    const/4 v4, 0x1

    .line 447
    goto :goto_3

    .line 461
    .end local v3    # "id":Ljava/lang/String;
    .end local v5    # "name":Ljava/lang/String;
    :cond_4
    if-eqz v9, :cond_7

    .line 463
    :try_start_4
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-object v8, v9

    .end local v1    # "eventType":I
    .end local v2    # "file":Ljava/io/File;
    .end local v7    # "path":Ljava/lang/String;
    .end local v9    # "reader":Ljava/io/FileReader;
    .restart local v8    # "reader":Ljava/io/FileReader;
    :cond_5
    :goto_4
    move-object v11, v10

    .line 469
    .end local v10    # "ret":Ljava/lang/String;
    .restart local v11    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 464
    .end local v8    # "reader":Ljava/io/FileReader;
    .end local v11    # "ret":Ljava/lang/String;
    .restart local v1    # "eventType":I
    .restart local v2    # "file":Ljava/io/File;
    .restart local v7    # "path":Ljava/lang/String;
    .restart local v9    # "reader":Ljava/io/FileReader;
    .restart local v10    # "ret":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 466
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v8, v9

    .line 467
    .end local v9    # "reader":Ljava/io/FileReader;
    .restart local v8    # "reader":Ljava/io/FileReader;
    goto :goto_4

    .line 458
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "eventType":I
    .end local v2    # "file":Ljava/io/File;
    .end local v7    # "path":Ljava/lang/String;
    :catch_1
    move-exception v12

    .line 461
    :goto_5
    if-eqz v8, :cond_5

    .line 463
    :try_start_5
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    .line 464
    :catch_2
    move-exception v0

    .line 466
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 461
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v12

    :goto_6
    if-eqz v8, :cond_6

    .line 463
    :try_start_6
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 467
    :cond_6
    :goto_7
    throw v12

    .line 464
    :catch_3
    move-exception v0

    .line 466
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 461
    .end local v0    # "e":Ljava/io/IOException;
    .end local v8    # "reader":Ljava/io/FileReader;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v7    # "path":Ljava/lang/String;
    .restart local v9    # "reader":Ljava/io/FileReader;
    :catchall_1
    move-exception v12

    move-object v8, v9

    .end local v9    # "reader":Ljava/io/FileReader;
    .restart local v8    # "reader":Ljava/io/FileReader;
    goto :goto_6

    .line 458
    .end local v8    # "reader":Ljava/io/FileReader;
    .restart local v9    # "reader":Ljava/io/FileReader;
    :catch_4
    move-exception v12

    move-object v8, v9

    .end local v9    # "reader":Ljava/io/FileReader;
    .restart local v8    # "reader":Ljava/io/FileReader;
    goto :goto_5

    .end local v2    # "file":Ljava/io/File;
    .end local v7    # "path":Ljava/lang/String;
    :catch_5
    move-exception v12

    goto :goto_5

    .end local v8    # "reader":Ljava/io/FileReader;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v7    # "path":Ljava/lang/String;
    .restart local v9    # "reader":Ljava/io/FileReader;
    :catch_6
    move-exception v12

    move-object v8, v9

    .end local v9    # "reader":Ljava/io/FileReader;
    .restart local v8    # "reader":Ljava/io/FileReader;
    goto :goto_5

    .end local v8    # "reader":Ljava/io/FileReader;
    .restart local v1    # "eventType":I
    .restart local v9    # "reader":Ljava/io/FileReader;
    :cond_7
    move-object v8, v9

    .end local v9    # "reader":Ljava/io/FileReader;
    .restart local v8    # "reader":Ljava/io/FileReader;
    goto :goto_4

    .line 436
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static write(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "eventId"    # Ljava/lang/String;
    .param p1, "eventInfo"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 167
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lcom/vivo/common/VivoCollectFile;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public static write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 6
    .param p0, "eventId"    # Ljava/lang/String;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "eventInfo"    # Ljava/lang/String;
    .param p3, "isAppend"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 184
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    :cond_0
    const/4 v0, -0x1

    .line 188
    :goto_0
    return v0

    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/vivo/common/VivoCollectFile;->doWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static writeCmd(Ljava/lang/String;Ljava/lang/String;[[Ljava/lang/String;ZLjava/lang/String;)I
    .locals 18
    .param p0, "eventId"    # Ljava/lang/String;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "cmds"    # [[Ljava/lang/String;
    .param p3, "needRecordHead"    # Z
    .param p4, "appVersion"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    .line 91
    if-eqz p0, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-gtz v15, :cond_1

    .line 93
    :cond_0
    const/4 v15, -0x1

    .line 152
    :goto_0
    return v15

    .line 94
    :cond_1
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "_"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 95
    const/4 v15, -0x1

    goto :goto_0

    .line 103
    :cond_2
    const/4 v9, 0x0

    .line 104
    .local v9, "input":Ljava/io/InputStreamReader;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .local v14, "sb":Ljava/lang/StringBuilder;
    move-object/from16 v4, p2

    .local v4, "arr$":[[Ljava/lang/String;
    array-length v11, v4

    .local v11, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    move-object v10, v9

    .end local v9    # "input":Ljava/io/InputStreamReader;
    .local v10, "input":Ljava/io/InputStreamReader;
    :goto_1
    if-ge v8, v11, :cond_d

    aget-object v6, v4, v8

    .line 106
    .local v6, "cmd":[Ljava/lang/String;
    const/4 v15, 0x0

    aget-object v15, v6, v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-gtz v15, :cond_4

    move-object v9, v10

    .line 105
    .end local v10    # "input":Ljava/io/InputStreamReader;
    .restart local v9    # "input":Ljava/io/InputStreamReader;
    :cond_3
    :goto_2
    add-int/lit8 v8, v8, 0x1

    move-object v10, v9

    .end local v9    # "input":Ljava/io/InputStreamReader;
    .restart local v10    # "input":Ljava/io/InputStreamReader;
    goto :goto_1

    .line 108
    :cond_4
    const/4 v15, 0x1

    aget-object v15, v6, v15

    if-nez v15, :cond_5

    .line 109
    const/4 v15, 0x1

    const-string v16, " "

    aput-object v16, v6, v15

    .line 110
    :cond_5
    const/4 v13, 0x0

    .line 112
    .local v13, "p":Ljava/lang/Process;
    :try_start_0
    const-string v15, "logcat"

    const/16 v16, 0x0

    aget-object v16, v6, v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 113
    const/4 v15, 0x1

    const-string v16, "-v time -b events -b system -b main -t 500"

    aput-object v16, v6, v15

    .line 117
    :cond_6
    :goto_3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v17, 0x0

    aget-object v17, v6, v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x1

    aget-object v17, v6, v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v13

    .line 119
    :try_start_1
    invoke-virtual {v13}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 123
    :goto_4
    :try_start_2
    invoke-virtual {v13}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 126
    :goto_5
    :try_start_3
    new-instance v9, Ljava/io/InputStreamReader;

    invoke-virtual {v13}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v15

    invoke-direct {v9, v15}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 128
    .end local v10    # "input":Ljava/io/InputStreamReader;
    .restart local v9    # "input":Ljava/io/InputStreamReader;
    :try_start_4
    const-string v15, "\r\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    const-string v15, "cmd: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    aget-object v16, v6, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x1

    aget-object v16, v6, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\r\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    const/16 v15, 0x2000

    new-array v5, v15, [C

    .line 133
    .local v5, "buf":[C
    :goto_6
    invoke-virtual {v9, v5}, Ljava/io/InputStreamReader;->read([C)I

    move-result v12

    .local v12, "num":I
    if-lez v12, :cond_9

    .line 134
    const/4 v15, 0x0

    invoke-virtual {v14, v5, v15, v12}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_6

    .line 141
    .end local v5    # "buf":[C
    .end local v12    # "num":I
    :catch_0
    move-exception v15

    .line 143
    :goto_7
    if-eqz v9, :cond_7

    .line 145
    :try_start_5
    invoke-virtual {v9}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 148
    :cond_7
    :goto_8
    if-eqz v13, :cond_3

    .line 149
    invoke-virtual {v13}, Ljava/lang/Process;->destroy()V

    goto/16 :goto_2

    .line 114
    .end local v9    # "input":Ljava/io/InputStreamReader;
    .restart local v10    # "input":Ljava/io/InputStreamReader;
    :cond_8
    :try_start_6
    const-string v15, "top"

    const/16 v16, 0x0

    aget-object v16, v6, v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 115
    const/4 v15, 0x1

    const-string v16, "-m 10 -t -n 3"

    aput-object v16, v6, v15
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_3

    .line 141
    :catch_1
    move-exception v15

    move-object v9, v10

    .end local v10    # "input":Ljava/io/InputStreamReader;
    .restart local v9    # "input":Ljava/io/InputStreamReader;
    goto :goto_7

    .line 136
    .restart local v5    # "buf":[C
    .restart local v12    # "num":I
    :cond_9
    :try_start_7
    invoke-virtual {v13}, Ljava/lang/Process;->waitFor()I
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 143
    :goto_9
    if-eqz v9, :cond_a

    .line 145
    :try_start_8
    invoke-virtual {v9}, Ljava/io/InputStreamReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 148
    :cond_a
    :goto_a
    if-eqz v13, :cond_3

    .line 149
    invoke-virtual {v13}, Ljava/lang/Process;->destroy()V

    goto/16 :goto_2

    .line 137
    :catch_2
    move-exception v7

    .line 139
    .local v7, "e":Ljava/lang/InterruptedException;
    :try_start_9
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_9

    .line 143
    .end local v5    # "buf":[C
    .end local v7    # "e":Ljava/lang/InterruptedException;
    .end local v12    # "num":I
    :catchall_0
    move-exception v15

    :goto_b
    if-eqz v9, :cond_b

    .line 145
    :try_start_a
    invoke-virtual {v9}, Ljava/io/InputStreamReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 148
    :cond_b
    :goto_c
    if-eqz v13, :cond_c

    .line 149
    invoke-virtual {v13}, Ljava/lang/Process;->destroy()V

    :cond_c
    throw v15

    .line 152
    .end local v6    # "cmd":[Ljava/lang/String;
    .end local v9    # "input":Ljava/io/InputStreamReader;
    .end local v13    # "p":Ljava/lang/Process;
    .restart local v10    # "input":Ljava/io/InputStreamReader;
    :cond_d
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p4

    invoke-static {v0, v1, v15, v2, v3}, Lcom/vivo/common/VivoCollectFile;->writeData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)I

    move-result v15

    goto/16 :goto_0

    .line 146
    .end local v10    # "input":Ljava/io/InputStreamReader;
    .restart local v5    # "buf":[C
    .restart local v6    # "cmd":[Ljava/lang/String;
    .restart local v9    # "input":Ljava/io/InputStreamReader;
    .restart local v12    # "num":I
    .restart local v13    # "p":Ljava/lang/Process;
    :catch_3
    move-exception v15

    goto :goto_a

    .end local v5    # "buf":[C
    .end local v12    # "num":I
    :catch_4
    move-exception v15

    goto :goto_8

    :catch_5
    move-exception v16

    goto :goto_c

    .line 143
    .end local v9    # "input":Ljava/io/InputStreamReader;
    .restart local v10    # "input":Ljava/io/InputStreamReader;
    :catchall_1
    move-exception v15

    move-object v9, v10

    .end local v10    # "input":Ljava/io/InputStreamReader;
    .restart local v9    # "input":Ljava/io/InputStreamReader;
    goto :goto_b

    .line 124
    .end local v9    # "input":Ljava/io/InputStreamReader;
    .restart local v10    # "input":Ljava/io/InputStreamReader;
    :catch_6
    move-exception v15

    goto/16 :goto_5

    .line 120
    :catch_7
    move-exception v15

    goto/16 :goto_4
.end method

.method public static writeData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)I
    .locals 6
    .param p0, "eventId"    # Ljava/lang/String;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "eventInfo"    # Ljava/lang/String;
    .param p3, "needRecordHead"    # Z
    .param p4, "appVersion"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 65
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 70
    :cond_0
    :goto_0
    return v0

    .line 68
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/vivo/common/VivoCollectFile;->doWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
