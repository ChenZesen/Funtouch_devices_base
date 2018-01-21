.class public Lcom/vivo/content/NinePatchUtil;
.super Ljava/lang/Object;
.source "NinePatchUtil.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/content/NinePatchUtil$NinePatchChunk;
    }
.end annotation


# static fields
.field private static final NO_COLOR:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NinePatchUtil"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method private static dealPaddingInfo(Landroid/graphics/Bitmap;[B)V
    .locals 12
    .param p0, "bm"    # Landroid/graphics/Bitmap;
    .param p1, "data"    # [B

    .prologue
    .line 245
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    new-array v1, v0, [I

    .line 246
    .local v1, "bottomPixels":[I
    const/4 v2, 0x0

    array-length v3, v1

    const/4 v4, 0x1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    add-int/lit8 v5, v0, -0x1

    array-length v6, v1

    const/4 v7, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 248
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    array-length v0, v1

    if-ge v10, v0, :cond_0

    .line 249
    const/high16 v0, -0x1000000

    aget v2, v1, v10

    if-ne v0, v2, :cond_4

    .line 250
    const/16 v0, 0xc

    invoke-static {p1, v0, v10}, Lcom/vivo/content/NinePatchUtil;->writeInt([BII)V

    .line 254
    :cond_0
    array-length v0, v1

    add-int/lit8 v10, v0, -0x1

    const/4 v11, 0x0

    .local v11, "j":I
    :goto_1
    if-ltz v10, :cond_1

    .line 255
    const/high16 v0, -0x1000000

    aget v2, v1, v10

    if-ne v0, v2, :cond_5

    .line 256
    const/16 v0, 0x10

    invoke-static {p1, v0, v11}, Lcom/vivo/content/NinePatchUtil;->writeInt([BII)V

    .line 262
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    new-array v3, v0, [I

    .line 263
    .local v3, "rightPixels":[I
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    array-length v9, v3

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 265
    const/4 v10, 0x0

    :goto_2
    array-length v0, v3

    if-ge v10, v0, :cond_2

    .line 266
    const/high16 v0, -0x1000000

    aget v2, v3, v10

    if-ne v0, v2, :cond_6

    .line 267
    const/16 v0, 0x14

    invoke-static {p1, v0, v10}, Lcom/vivo/content/NinePatchUtil;->writeInt([BII)V

    .line 271
    :cond_2
    array-length v0, v3

    add-int/lit8 v10, v0, -0x1

    const/4 v11, 0x0

    :goto_3
    if-ltz v10, :cond_3

    .line 272
    const/high16 v0, -0x1000000

    aget v2, v3, v10

    if-ne v0, v2, :cond_7

    .line 273
    const/16 v0, 0x18

    invoke-static {p1, v0, v11}, Lcom/vivo/content/NinePatchUtil;->writeInt([BII)V

    .line 278
    :cond_3
    return-void

    .line 248
    .end local v3    # "rightPixels":[I
    .end local v11    # "j":I
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 254
    .restart local v11    # "j":I
    :cond_5
    add-int/lit8 v10, v10, -0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 265
    .restart local v3    # "rightPixels":[I
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 271
    :cond_7
    add-int/lit8 v10, v10, -0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_3
.end method

.method public static decodeBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "srcBm"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 117
    invoke-static {p0}, Lcom/vivo/content/NinePatchUtil;->readChunk(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 118
    .local v0, "chunk":[B
    invoke-static {v0}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v2

    .line 119
    .local v2, "isNinePatchChunk":Z
    if-eqz v2, :cond_0

    .line 120
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-static {p0, v6, v6, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 122
    .local v3, "tgtBm":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 123
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "mNinePatchChunk"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 124
    .local v1, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 125
    invoke-virtual {v1, v3, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 128
    .end local v1    # "f":Ljava/lang/reflect/Field;
    .end local v3    # "tgtBm":Landroid/graphics/Bitmap;
    :goto_0
    return-object v3

    :cond_0
    move-object v3, p0

    goto :goto_0
.end method

.method public static decodeDrawableFromAsset(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "assetPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 44
    invoke-static {p0, p1}, Lcom/vivo/content/NinePatchUtil;->decodeFromAsset(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 45
    .local v2, "bm":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v1

    if-nez v1, :cond_0

    .line 46
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 53
    :goto_0
    return-object v6

    .line 49
    :cond_0
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 50
    .local v4, "padding":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v1

    invoke-static {v1, v4}, Lcom/vivo/content/NinePatchUtil;->readPaddingFromChunk([BLandroid/graphics/Rect;)V

    .line 51
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    .local v0, "d":Landroid/graphics/drawable/NinePatchDrawable;
    move-object v6, v0

    .line 53
    goto :goto_0
.end method

.method public static decodeDrawableFromStream(Ljava/io/InputStream;Landroid/content/res/Resources;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 11
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "id"    # I
    .param p3, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v5, 0x0

    .line 77
    const-string v1, ".9.png"

    invoke-virtual {p3, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-object v5

    .line 81
    :cond_1
    invoke-static {p1, p2, p3}, Lcom/vivo/content/NinePatchUtil;->isNotNinePatchDrawable(Landroid/content/res/Resources;ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 86
    .local v9, "srcBm":Landroid/graphics/Bitmap;
    if-eqz v9, :cond_0

    .line 87
    invoke-static {v9}, Lcom/vivo/content/NinePatchUtil;->readChunk(Landroid/graphics/Bitmap;)[B

    move-result-object v3

    .line 88
    .local v3, "chunk":[B
    invoke-static {v3}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v7

    .line 89
    .local v7, "isNinePatchChunk":Z
    if-eqz v7, :cond_0

    const-string v1, ".9.png"

    invoke-virtual {p3, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-static {v9, v10, v10, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 92
    .local v2, "tgtBm":Landroid/graphics/Bitmap;
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 93
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v4, "mNinePatchChunk"

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 94
    .local v6, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v6, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 95
    invoke-virtual {v6, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 96
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 98
    .local v8, "padding":Landroid/graphics/Rect;
    invoke-static {v3, v8}, Lcom/vivo/content/NinePatchUtil;->readPaddingFromChunk([BLandroid/graphics/Rect;)V

    .line 99
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-static {v3}, Lcom/vivo/content/NinePatchUtil$NinePatchChunk;->deserialize([B)Lcom/vivo/content/NinePatchUtil$NinePatchChunk;

    move-result-object v1

    iget-object v4, v1, Lcom/vivo/content/NinePatchUtil$NinePatchChunk;->mPaddings:Landroid/graphics/Rect;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    .local v0, "d":Landroid/graphics/drawable/NinePatchDrawable;
    move-object v5, v0

    .line 101
    goto :goto_0
.end method

.method public static decodeFromAsset(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ninePatchPngPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 142
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 143
    .local v1, "is":Ljava/io/InputStream;
    invoke-static {v1}, Lcom/vivo/content/NinePatchUtil;->decodeFromStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 144
    .local v0, "bm":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 145
    return-object v0
.end method

.method public static decodeFromFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 134
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 135
    .local v1, "in":Ljava/io/InputStream;
    invoke-static {v1}, Lcom/vivo/content/NinePatchUtil;->decodeFromStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 136
    .local v0, "bm":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 137
    return-object v0
.end method

.method public static decodeFromStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 58
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 59
    .local v3, "srcBm":Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/vivo/content/NinePatchUtil;->readChunk(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 60
    .local v0, "chunk":[B
    invoke-static {v0}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v2

    .line 61
    .local v2, "isNinePatchChunk":Z
    if-eqz v2, :cond_0

    .line 62
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    invoke-static {v3, v7, v7, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 64
    .local v4, "tgtBm":Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 65
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "mNinePatchChunk"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 66
    .local v1, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 67
    invoke-virtual {v1, v4, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 70
    .end local v1    # "f":Ljava/lang/reflect/Field;
    .end local v4    # "tgtBm":Landroid/graphics/Bitmap;
    :goto_0
    return-object v4

    :cond_0
    move-object v4, v3

    goto :goto_0
.end method

.method private static getInt([BI)I
    .locals 7
    .param p0, "bs"    # [B
    .param p1, "from"    # I

    .prologue
    .line 295
    add-int/lit8 v5, p1, 0x0

    aget-byte v0, p0, v5

    .line 296
    .local v0, "b1":I
    add-int/lit8 v5, p1, 0x1

    aget-byte v1, p0, v5

    .line 297
    .local v1, "b2":I
    add-int/lit8 v5, p1, 0x2

    aget-byte v2, p0, v5

    .line 298
    .local v2, "b3":I
    add-int/lit8 v5, p1, 0x3

    aget-byte v3, p0, v5

    .line 299
    .local v3, "b4":I
    shl-int/lit8 v5, v1, 0x8

    or-int/2addr v5, v0

    shl-int/lit8 v6, v2, 0x10

    or-int/2addr v5, v6

    shl-int/lit8 v6, v3, 0x18

    or-int v4, v5, v6

    .line 300
    .local v4, "i":I
    return v4
.end method

.method private static isNotNinePatchDrawable(Landroid/content/res/Resources;ILjava/lang/String;)Z
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "id"    # I
    .param p2, "file"    # Ljava/lang/String;

    .prologue
    .line 350
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 351
    .local v0, "packageName":Ljava/lang/String;
    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "header_category_background.9.png"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 353
    const/4 v1, 0x1

    .line 355
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static printChunkInfo(Landroid/graphics/Bitmap;)V
    .locals 14
    .param p0, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 305
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v1

    .line 306
    .local v1, "chunk":[B
    if-nez v1, :cond_0

    .line 307
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "can\'t find chunk info from this bitmap("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 347
    :goto_0
    return-void

    .line 311
    :cond_0
    const/4 v11, 0x1

    aget-byte v9, v1, v11

    .line 312
    .local v9, "xLen":I
    const/4 v11, 0x2

    aget-byte v10, v1, v11

    .line 313
    .local v10, "yLen":I
    const/4 v11, 0x3

    aget-byte v0, v1, v11

    .line 315
    .local v0, "cLen":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 316
    .local v7, "sb":Ljava/lang/StringBuilder;
    const/16 v11, 0xc

    invoke-static {v1, v11}, Lcom/vivo/content/NinePatchUtil;->getInt([BI)I

    move-result v6

    .line 317
    .local v6, "peddingLeft":I
    const/16 v11, 0x10

    invoke-static {v1, v11}, Lcom/vivo/content/NinePatchUtil;->getInt([BI)I

    move-result v4

    .line 318
    .local v4, "paddingRight":I
    const/16 v11, 0x14

    invoke-static {v1, v11}, Lcom/vivo/content/NinePatchUtil;->getInt([BI)I

    move-result v5

    .line 319
    .local v5, "paddingTop":I
    const/16 v11, 0x18

    invoke-static {v1, v11}, Lcom/vivo/content/NinePatchUtil;->getInt([BI)I

    move-result v3

    .line 320
    .local v3, "paddingBottom":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "peddingLeft="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    const-string v11, "\r\n"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "paddingRight="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    const-string v11, "\r\n"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "paddingTop="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    const-string v11, "\r\n"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "paddingBottom="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    const-string v11, "\r\n"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    const-string v11, "x info="

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v9, :cond_1

    .line 331
    mul-int/lit8 v11, v2, 0x4

    add-int/lit8 v11, v11, 0x20

    invoke-static {v1, v11}, Lcom/vivo/content/NinePatchUtil;->getInt([BI)I

    move-result v8

    .line 332
    .local v8, "vv":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 334
    .end local v8    # "vv":I
    :cond_1
    const-string v11, "\r\n"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    const-string v11, "y info="

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v10, :cond_2

    .line 337
    mul-int/lit8 v11, v9, 0x4

    add-int/lit8 v11, v11, 0x20

    mul-int/lit8 v12, v2, 0x4

    add-int/2addr v11, v12

    invoke-static {v1, v11}, Lcom/vivo/content/NinePatchUtil;->getInt([BI)I

    move-result v8

    .line 338
    .restart local v8    # "vv":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 340
    .end local v8    # "vv":I
    :cond_2
    const-string v11, "\r\n"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    const-string v11, "color info="

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_3

    .line 343
    mul-int/lit8 v11, v9, 0x4

    mul-int/lit8 v12, v10, 0x4

    add-int/2addr v11, v12

    add-int/lit8 v11, v11, 0x20

    mul-int/lit8 v12, v2, 0x4

    add-int/2addr v11, v12

    invoke-static {v1, v11}, Lcom/vivo/content/NinePatchUtil;->getInt([BI)I

    move-result v8

    .line 344
    .restart local v8    # "vv":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 346
    .end local v8    # "vv":I
    :cond_3
    sget-object v11, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static readChunk(Landroid/graphics/Bitmap;)[B
    .locals 29
    .param p0, "yuantuBmp"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 157
    .local v5, "BM_W":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    .line 159
    .local v14, "BM_H":I
    const/16 v26, 0x0

    .line 160
    .local v26, "xPointCount":I
    const/16 v28, 0x0

    .line 162
    .local v28, "yPointCount":I
    const/16 v25, 0x0

    .line 163
    .local v25, "xBlockCount":I
    const/16 v27, 0x0

    .line 165
    .local v27, "yBlockCount":I
    new-instance v21, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v21 .. v21}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 166
    .local v21, "ooo":Ljava/io/ByteArrayOutputStream;
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    const/16 v2, 0x20

    move/from16 v0, v18

    if-ge v0, v2, :cond_0

    .line 167
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 166
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 171
    :cond_0
    add-int/lit8 v2, v5, -0x2

    new-array v3, v2, [I

    .line 172
    .local v3, "pixelsTop":[I
    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    add-int/lit8 v8, v5, -0x2

    const/4 v9, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 173
    const/4 v2, 0x0

    aget v2, v3, v2

    const/high16 v4, -0x1000000

    if-ne v2, v4, :cond_2

    const/16 v23, 0x1

    .line 174
    .local v23, "topFirstPixelIsBlack":Z
    :goto_1
    array-length v2, v3

    add-int/lit8 v2, v2, -0x1

    aget v2, v3, v2

    const/high16 v4, -0x1000000

    if-ne v2, v4, :cond_3

    const/16 v24, 0x1

    .line 175
    .local v24, "topLastPixelIsBlack":Z
    :goto_2
    const/16 v22, 0x0

    .line 176
    .local v22, "tmpLastColor":I
    const/16 v18, 0x0

    array-length v0, v3

    move/from16 v20, v0

    .local v20, "len":I
    :goto_3
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_4

    .line 177
    aget v2, v3, v18

    move/from16 v0, v22

    if-eq v0, v2, :cond_1

    .line 178
    add-int/lit8 v26, v26, 0x1

    .line 179
    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/vivo/content/NinePatchUtil;->writeInt(Ljava/io/OutputStream;I)V

    .line 180
    aget v22, v3, v18

    .line 176
    :cond_1
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 173
    .end local v20    # "len":I
    .end local v22    # "tmpLastColor":I
    .end local v23    # "topFirstPixelIsBlack":Z
    .end local v24    # "topLastPixelIsBlack":Z
    :cond_2
    const/16 v23, 0x0

    goto :goto_1

    .line 174
    .restart local v23    # "topFirstPixelIsBlack":Z
    :cond_3
    const/16 v24, 0x0

    goto :goto_2

    .line 183
    .restart local v20    # "len":I
    .restart local v22    # "tmpLastColor":I
    .restart local v24    # "topLastPixelIsBlack":Z
    :cond_4
    if-eqz v24, :cond_5

    .line 184
    add-int/lit8 v26, v26, 0x1

    .line 185
    array-length v2, v3

    move-object/from16 v0, v21

    invoke-static {v0, v2}, Lcom/vivo/content/NinePatchUtil;->writeInt(Ljava/io/OutputStream;I)V

    .line 187
    :cond_5
    add-int/lit8 v25, v26, 0x1

    .line 188
    if-eqz v23, :cond_6

    .line 189
    add-int/lit8 v25, v25, -0x1

    .line 191
    :cond_6
    if-eqz v24, :cond_7

    .line 192
    add-int/lit8 v25, v25, -0x1

    .line 197
    :cond_7
    add-int/lit8 v2, v14, -0x2

    new-array v7, v2, [I

    .line 198
    .local v7, "pixelsLeft":[I
    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    add-int/lit8 v13, v14, -0x2

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v13}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 199
    const/4 v2, 0x0

    aget v2, v7, v2

    const/high16 v4, -0x1000000

    if-ne v2, v4, :cond_9

    const/16 v17, 0x1

    .line 200
    .local v17, "firstPixelIsBlack":Z
    :goto_4
    array-length v2, v7

    add-int/lit8 v2, v2, -0x1

    aget v2, v7, v2

    const/high16 v4, -0x1000000

    if-ne v2, v4, :cond_a

    const/16 v19, 0x1

    .line 201
    .local v19, "lastPixelIsBlack":Z
    :goto_5
    const/16 v22, 0x0

    .line 202
    const/16 v18, 0x0

    array-length v0, v7

    move/from16 v20, v0

    :goto_6
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_b

    .line 203
    aget v2, v7, v18

    move/from16 v0, v22

    if-eq v0, v2, :cond_8

    .line 204
    add-int/lit8 v28, v28, 0x1

    .line 205
    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/vivo/content/NinePatchUtil;->writeInt(Ljava/io/OutputStream;I)V

    .line 206
    aget v22, v7, v18

    .line 202
    :cond_8
    add-int/lit8 v18, v18, 0x1

    goto :goto_6

    .line 199
    .end local v17    # "firstPixelIsBlack":Z
    .end local v19    # "lastPixelIsBlack":Z
    :cond_9
    const/16 v17, 0x0

    goto :goto_4

    .line 200
    .restart local v17    # "firstPixelIsBlack":Z
    :cond_a
    const/16 v19, 0x0

    goto :goto_5

    .line 209
    .restart local v19    # "lastPixelIsBlack":Z
    :cond_b
    if-eqz v19, :cond_c

    .line 210
    add-int/lit8 v28, v28, 0x1

    .line 211
    array-length v2, v7

    move-object/from16 v0, v21

    invoke-static {v0, v2}, Lcom/vivo/content/NinePatchUtil;->writeInt(Ljava/io/OutputStream;I)V

    .line 213
    :cond_c
    add-int/lit8 v27, v28, 0x1

    .line 214
    if-eqz v17, :cond_d

    .line 215
    add-int/lit8 v27, v27, -0x1

    .line 217
    :cond_d
    if-eqz v19, :cond_e

    .line 218
    add-int/lit8 v27, v27, -0x1

    .line 223
    :cond_e
    const/16 v18, 0x0

    :goto_7
    mul-int v2, v25, v27

    move/from16 v0, v18

    if-ge v0, v2, :cond_f

    .line 224
    const/4 v2, 0x1

    move-object/from16 v0, v21

    invoke-static {v0, v2}, Lcom/vivo/content/NinePatchUtil;->writeInt(Ljava/io/OutputStream;I)V

    .line 223
    add-int/lit8 v18, v18, 0x1

    goto :goto_7

    .line 228
    :cond_f
    invoke-virtual/range {v21 .. v21}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v16

    .line 229
    .local v16, "data":[B
    invoke-static/range {v16 .. v16}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 230
    .local v15, "buf":Ljava/nio/ByteBuffer;
    const/4 v2, 0x1

    invoke-virtual {v15, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 231
    move/from16 v0, v26

    int-to-byte v2, v0

    invoke-virtual {v15, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 232
    move/from16 v0, v28

    int-to-byte v2, v0

    invoke-virtual {v15, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 233
    mul-int v2, v25, v27

    invoke-virtual {v15, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 234
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v16

    .line 239
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/vivo/content/NinePatchUtil;->dealPaddingInfo(Landroid/graphics/Bitmap;[B)V

    .line 240
    return-object v16
.end method

.method public static readPaddingFromChunk([BLandroid/graphics/Rect;)V
    .locals 1
    .param p0, "chunk"    # [B
    .param p1, "paddingRect"    # Landroid/graphics/Rect;

    .prologue
    .line 149
    const/16 v0, 0xc

    invoke-static {p0, v0}, Lcom/vivo/content/NinePatchUtil;->getInt([BI)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 150
    const/16 v0, 0x10

    invoke-static {p0, v0}, Lcom/vivo/content/NinePatchUtil;->getInt([BI)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 151
    const/16 v0, 0x14

    invoke-static {p0, v0}, Lcom/vivo/content/NinePatchUtil;->getInt([BI)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 152
    const/16 v0, 0x18

    invoke-static {p0, v0}, Lcom/vivo/content/NinePatchUtil;->getInt([BI)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 153
    return-void
.end method

.method private static writeInt(Ljava/io/OutputStream;I)V
    .locals 1
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 281
    shr-int/lit8 v0, p1, 0x0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 282
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 283
    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 284
    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 285
    return-void
.end method

.method private static writeInt([BII)V
    .locals 2
    .param p0, "b"    # [B
    .param p1, "offset"    # I
    .param p2, "v"    # I

    .prologue
    .line 288
    add-int/lit8 v0, p1, 0x0

    shr-int/lit8 v1, p2, 0x0

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 289
    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 290
    add-int/lit8 v0, p1, 0x2

    shr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 291
    add-int/lit8 v0, p1, 0x3

    shr-int/lit8 v1, p2, 0x18

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 292
    return-void
.end method
