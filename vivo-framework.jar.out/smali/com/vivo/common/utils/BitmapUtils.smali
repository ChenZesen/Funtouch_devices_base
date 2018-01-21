.class public Lcom/vivo/common/utils/BitmapUtils;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# static fields
.field private static final GRAY_THRESHOLD:I = 0xb4

.field private static final TAG:Ljava/lang/String; = "BitmapUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static alpha(I)I
    .locals 1
    .param p0, "color"    # I

    .prologue
    .line 73
    ushr-int/lit8 v0, p0, 0x18

    return v0
.end method

.method private static blue(I)I
    .locals 1
    .param p0, "color"    # I

    .prologue
    .line 97
    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method public static getGrayValue(Landroid/graphics/Bitmap;)I
    .locals 12
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 48
    const-wide/16 v4, 0x0

    .line 49
    .local v4, "gray":J
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 50
    .local v9, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 52
    .local v3, "height":I
    if-eqz p0, :cond_1

    .line 54
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v9, :cond_1

    .line 55
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    if-ge v7, v3, :cond_0

    .line 56
    invoke-virtual {p0, v6, v7}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v1

    .line 57
    .local v1, "color":I
    invoke-static {v1}, Lcom/vivo/common/utils/BitmapUtils;->red(I)I

    move-result v8

    .line 58
    .local v8, "r":I
    invoke-static {v1}, Lcom/vivo/common/utils/BitmapUtils;->green(I)I

    move-result v2

    .line 59
    .local v2, "g":I
    invoke-static {v1}, Lcom/vivo/common/utils/BitmapUtils;->blue(I)I

    move-result v0

    .line 61
    .local v0, "b":I
    mul-int/lit16 v10, v8, 0xe5

    mul-int/lit16 v11, v2, 0x24b

    add-int/2addr v10, v11

    mul-int/lit8 v11, v0, 0x72

    add-int/2addr v10, v11

    int-to-long v10, v10

    add-long/2addr v4, v10

    .line 55
    add-int/lit8 v7, v7, 0x2

    goto :goto_1

    .line 54
    .end local v0    # "b":I
    .end local v1    # "color":I
    .end local v2    # "g":I
    .end local v8    # "r":I
    :cond_0
    add-int/lit8 v6, v6, 0x2

    goto :goto_0

    .line 65
    .end local v6    # "i":I
    .end local v7    # "j":I
    :cond_1
    mul-int v10, v9, v3

    mul-int/lit16 v10, v10, 0xfa

    int-to-long v10, v10

    div-long v10, v4, v10

    long-to-int v10, v10

    return v10
.end method

.method private static green(I)I
    .locals 1
    .param p0, "color"    # I

    .prologue
    .line 89
    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static isBitmapWhiteStyle(Landroid/graphics/Bitmap;)Z
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 31
    const/4 v0, 0x0

    .line 33
    .local v0, "result":Z
    invoke-static {p0}, Lcom/vivo/common/utils/BitmapUtils;->getGrayValue(Landroid/graphics/Bitmap;)I

    move-result v1

    const/16 v2, 0xb4

    if-ge v1, v2, :cond_0

    .line 34
    const/4 v0, 0x0

    .line 38
    :goto_0
    return v0

    .line 36
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static red(I)I
    .locals 1
    .param p0, "color"    # I

    .prologue
    .line 81
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    return v0
.end method
