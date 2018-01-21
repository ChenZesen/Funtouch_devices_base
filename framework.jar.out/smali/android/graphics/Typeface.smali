.class public Landroid/graphics/Typeface;
.super Ljava/lang/Object;
.source "Typeface.java"


# static fields
.field public static final BOLD:I = 0x1

.field public static final BOLD_ITALIC:I = 0x3

.field public static final DEFAULT:Landroid/graphics/Typeface;

.field public static final DEFAULT_BOLD:Landroid/graphics/Typeface;

.field static final FONTS_CONFIG:Ljava/lang/String; = "fonts.xml"

.field public static final ITALIC:I = 0x2

.field public static final MONOSPACE:Landroid/graphics/Typeface;

.field public static final NORMAL:I = 0x0

.field public static final SANS_SERIF:Landroid/graphics/Typeface;

.field public static final SERIF:Landroid/graphics/Typeface;

.field private static TAG:Ljava/lang/String; = null

.field private static final VIVO_FONT_BLACK:Ljava/lang/String; = "vivo-font-black"

.field private static final VIVO_FONT_LIGHT:Ljava/lang/String; = "vivo-font-light"

.field private static final VIVO_FONT_MEDIUM:Ljava/lang/String; = "vivo-font-medium"

.field private static final VIVO_FONT_THIN:Ljava/lang/String; = "vivo-font-thin"

.field private static final defaultFont:Ljava/lang/String; = "/system/fonts/DroidSansFallbackBBK.ttf"

.field private static defaultFontPath:Ljava/lang/String; = null

.field private static final defaultLowFont:Ljava/lang/String; = "/system/fonts/hwbold.ttf"

.field private static final defaultOverseaFont:Ljava/lang/String; = "/system/fonts/Roboto-Regular.ttf"

.field private static final sAndroidTTF:Ljava/lang/String; = "/system/fonts/Roboto-Regular.ttf"

.field static sDefaultTypeface:Landroid/graphics/Typeface; = null

.field static sDefaults:[Landroid/graphics/Typeface; = null

.field static sFallbackFonts:[Landroid/graphics/FontFamily; = null

.field private static final sRom2_5:Z

.field static sSystemFontMap:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTypefaceCache:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Typeface;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sVivoFont:[Ljava/lang/String;

.field private static final sVivoFontLink:Ljava/lang/String; = "/system/fonts/VivoFont.ttf"

.field private static final sVivoFontTTF:Ljava/lang/String; = "/system/fonts/DroidSansFallbackBBK.ttf"

.field private static sVivoMyanmar:Landroid/graphics/FontFamily; = null

.field private static final sVivoMyanmarTTF:Ljava/lang/String; = "/system/fonts/Vivo-Myanmar.ttf"

.field private static sVivoNomral:Landroid/graphics/FontFamily;

.field private static final sWeight:[I


# instance fields
.field private mStyle:I

.field public native_instance:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 46
    const-string v0, "Typeface"

    sput-object v0, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    .line 64
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0, v5}, Landroid/util/LongSparseArray;-><init>(I)V

    sput-object v0, Landroid/graphics/Typeface;->sTypefaceCache:Landroid/util/LongSparseArray;

    .line 87
    const-string/jumbo v0, "rom_2.6"

    const-string/jumbo v2, "ro.vivo.rom.version"

    const-string/jumbo v3, "rom_3.0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/graphics/Typeface;->sRom2_5:Z

    .line 97
    sput-object v1, Landroid/graphics/Typeface;->defaultFontPath:Ljava/lang/String;

    .line 108
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/graphics/Typeface;->sWeight:[I

    .line 110
    new-array v0, v5, [Ljava/lang/String;

    const-string v2, "/system/fonts/DroidSansFallbackBBK.ttf"

    aput-object v2, v0, v4

    const-string v2, "/system/fonts/DroidSansMediumBBK.ttf"

    aput-object v2, v0, v6

    const-string v2, "/system/fonts/DroidSansBoldBBK.ttf"

    aput-object v2, v0, v7

    sput-object v0, Landroid/graphics/Typeface;->sVivoFont:[Ljava/lang/String;

    .line 565
    invoke-static {}, Landroid/graphics/Typeface;->init()V

    move-object v0, v1

    .line 567
    nop

    nop

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object v0, v1

    .line 568
    nop

    nop

    invoke-static {v0, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 569
    const-string/jumbo v0, "sans-serif"

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 570
    const-string/jumbo v0, "serif"

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 571
    const-string/jumbo v0, "monospace"

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 573
    const/4 v0, 0x4

    new-array v2, v0, [Landroid/graphics/Typeface;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    aput-object v0, v2, v4

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    aput-object v0, v2, v6

    move-object v0, v1

    nop

    nop

    invoke-static {v0, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    aput-object v0, v2, v7

    nop

    nop

    invoke-static {v1, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    aput-object v0, v2, v5

    sput-object v2, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    .line 580
    return-void

    .line 108
    nop

    :array_0
    .array-data 4
        0x190
        0x1f4
        0x2bc
    .end array-data
.end method

.method private constructor <init>(J)V
    .locals 3
    .param p1, "ni"    # J

    .prologue
    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/Typeface;->mStyle:I

    .line 422
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 423
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "native typeface cannot be made"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 426
    :cond_0
    iput-wide p1, p0, Landroid/graphics/Typeface;->native_instance:J

    .line 427
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->nativeGetStyle(J)I

    move-result v0

    iput v0, p0, Landroid/graphics/Typeface;->mStyle:I

    .line 428
    return-void
.end method

.method private static adjustFamilyNameForVivo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 182
    if-nez p0, :cond_1

    .line 195
    .end local p0    # "name":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 185
    .restart local p0    # "name":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, "vivo-font-thin"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 186
    const-string/jumbo p0, "sans-serif-thin"

    goto :goto_0

    .line 187
    :cond_2
    const-string/jumbo v0, "vivo-font-light"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 188
    const-string/jumbo p0, "sans-serif-light"

    goto :goto_0

    .line 189
    :cond_3
    const-string/jumbo v0, "vivo-font-medium"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 190
    const-string/jumbo p0, "sans-serif-medium"

    goto :goto_0

    .line 191
    :cond_4
    const-string/jumbo v0, "vivo-font-black"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    const-string/jumbo p0, "sans-serif-black"

    goto :goto_0
.end method

.method public static create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
    .locals 6
    .param p0, "family"    # Landroid/graphics/Typeface;
    .param p1, "style"    # I

    .prologue
    .line 302
    if-ltz p1, :cond_0

    const/4 v4, 0x3

    if-le p1, v4, :cond_1

    .line 303
    :cond_0
    const/4 p1, 0x0

    .line 305
    :cond_1
    const-wide/16 v0, 0x0

    .line 306
    .local v0, "ni":J
    if-eqz p0, :cond_4

    .line 308
    iget v4, p0, Landroid/graphics/Typeface;->mStyle:I

    if-ne v4, p1, :cond_3

    move-object v3, p0

    .line 332
    :cond_2
    :goto_0
    return-object v3

    .line 312
    :cond_3
    iget-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J

    .line 316
    :cond_4
    sget-object v4, Landroid/graphics/Typeface;->sTypefaceCache:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 318
    .local v2, "styles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    if-eqz v2, :cond_5

    .line 319
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Typeface;

    .line 320
    .local v3, "typeface":Landroid/graphics/Typeface;
    if-nez v3, :cond_2

    .line 325
    .end local v3    # "typeface":Landroid/graphics/Typeface;
    :cond_5
    new-instance v3, Landroid/graphics/Typeface;

    invoke-static {v0, v1, p1}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    .line 326
    .restart local v3    # "typeface":Landroid/graphics/Typeface;
    if-nez v2, :cond_6

    .line 327
    new-instance v2, Landroid/util/SparseArray;

    .end local v2    # "styles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    const/4 v4, 0x4

    invoke-direct {v2, v4}, Landroid/util/SparseArray;-><init>(I)V

    .line 328
    .restart local v2    # "styles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    sget-object v4, Landroid/graphics/Typeface;->sTypefaceCache:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v0, v1, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 330
    :cond_6
    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public static create(Ljava/lang/String;I)Landroid/graphics/Typeface;
    .locals 2
    .param p0, "familyName"    # Ljava/lang/String;
    .param p1, "style"    # I

    .prologue
    .line 281
    invoke-static {p0}, Landroid/graphics/Typeface;->adjustFamilyNameForVivo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, "fName":Ljava/lang/String;
    sget-object v1, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 284
    sget-object v1, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;

    invoke-static {v1, p1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    .line 286
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 5
    .param p0, "mgr"    # Landroid/content/res/AssetManager;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 351
    sget-object v2, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    if-eqz v2, :cond_0

    .line 352
    new-instance v1, Landroid/graphics/FontFamily;

    invoke-direct {v1}, Landroid/graphics/FontFamily;-><init>()V

    .line 353
    .local v1, "fontFamily":Landroid/graphics/FontFamily;
    invoke-virtual {v1, p0, p1}, Landroid/graphics/FontFamily;->addFontFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 354
    const/4 v2, 0x1

    new-array v0, v2, [Landroid/graphics/FontFamily;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 355
    .local v0, "families":[Landroid/graphics/FontFamily;
    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v2

    return-object v2

    .line 358
    .end local v0    # "families":[Landroid/graphics/FontFamily;
    .end local v1    # "fontFamily":Landroid/graphics/FontFamily;
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Font asset not found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static createFromFamilies([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;
    .locals 6
    .param p0, "families"    # [Landroid/graphics/FontFamily;

    .prologue
    .line 395
    array-length v2, p0

    new-array v1, v2, [J

    .line 396
    .local v1, "ptrArray":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 397
    aget-object v2, p0, v0

    iget-wide v2, v2, Landroid/graphics/FontFamily;->mNativePtr:J

    aput-wide v2, v1, v0

    .line 396
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 399
    :cond_0
    new-instance v2, Landroid/graphics/Typeface;

    invoke-static {v1}, Landroid/graphics/Typeface;->nativeCreateFromArray([J)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    return-object v2
.end method

.method public static createFromFamiliesWithDefault([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;
    .locals 6
    .param p0, "families"    # [Landroid/graphics/FontFamily;

    .prologue
    .line 410
    array-length v2, p0

    sget-object v3, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    array-length v3, v3

    add-int/2addr v2, v3

    new-array v1, v2, [J

    .line 411
    .local v1, "ptrArray":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 412
    aget-object v2, p0, v0

    iget-wide v2, v2, Landroid/graphics/FontFamily;->mNativePtr:J

    aput-wide v2, v1, v0

    .line 411
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 414
    :cond_0
    const/4 v0, 0x0

    :goto_1
    sget-object v2, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 415
    array-length v2, p0

    add-int/2addr v2, v0

    sget-object v3, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    aget-object v3, v3, v0

    iget-wide v4, v3, Landroid/graphics/FontFamily;->mNativePtr:J

    aput-wide v4, v1, v2

    .line 414
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 417
    :cond_1
    new-instance v2, Landroid/graphics/Typeface;

    invoke-static {v1}, Landroid/graphics/Typeface;->nativeCreateFromArray([J)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    return-object v2
.end method

.method public static createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "path"    # Ljava/io/File;

    .prologue
    .line 368
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 378
    sget-object v2, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    if-eqz v2, :cond_0

    .line 379
    new-instance v1, Landroid/graphics/FontFamily;

    invoke-direct {v1}, Landroid/graphics/FontFamily;-><init>()V

    .line 380
    .local v1, "fontFamily":Landroid/graphics/FontFamily;
    invoke-virtual {v1, p0}, Landroid/graphics/FontFamily;->addFont(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 381
    const/4 v2, 0x1

    new-array v0, v2, [Landroid/graphics/FontFamily;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 382
    .local v0, "families":[Landroid/graphics/FontFamily;
    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v2

    return-object v2

    .line 385
    .end local v0    # "families":[Landroid/graphics/FontFamily;
    .end local v1    # "fontFamily":Landroid/graphics/FontFamily;
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Font not found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static defaultFromStyle(I)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "style"    # I

    .prologue
    .line 341
    sget-object v0, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v0, v0, p0

    return-object v0
.end method

.method private static getDefaultFont()V
    .locals 5

    .prologue
    .line 162
    const-string/jumbo v2, "yes"

    const-string/jumbo v3, "ro.vivo.product.overseas"

    const-string/jumbo v4, "no"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 163
    .local v1, "oversea":Z
    const-string/jumbo v2, "low"

    const-string/jumbo v3, "ro.vivo.font.resolution"

    const-string v4, "high"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 164
    .local v0, "low":Z
    if-eqz v1, :cond_0

    .line 165
    const-string v2, "/system/fonts/Roboto-Regular.ttf"

    sput-object v2, Landroid/graphics/Typeface;->defaultFontPath:Ljava/lang/String;

    .line 173
    :goto_0
    sget-object v2, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDefaultFont lowRes = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,oversea = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " defaultFont = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/graphics/Typeface;->defaultFontPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return-void

    .line 167
    :cond_0
    if-eqz v0, :cond_1

    .line 168
    const-string v2, "/system/fonts/hwbold.ttf"

    sput-object v2, Landroid/graphics/Typeface;->defaultFontPath:Ljava/lang/String;

    goto :goto_0

    .line 170
    :cond_1
    const-string v2, "/system/fonts/DroidSansFallbackBBK.ttf"

    sput-object v2, Landroid/graphics/Typeface;->defaultFontPath:Ljava/lang/String;

    goto :goto_0
.end method

.method private static getSystemFontConfigLocation()Ljava/io/File;
    .locals 2

    .prologue
    .line 583
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static init()V
    .locals 24

    .prologue
    .line 497
    invoke-static {}, Landroid/graphics/Typeface;->getDefaultFont()V

    .line 501
    invoke-static {}, Landroid/graphics/Typeface;->getSystemFontConfigLocation()Ljava/io/File;

    move-result-object v17

    .line 502
    .local v17, "systemFontConfigLocation":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    const-string v21, "fonts.xml"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-direct {v6, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 504
    .local v6, "configFilename":Ljava/io/File;
    :try_start_0
    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 505
    .local v13, "fontsIn":Ljava/io/FileInputStream;
    invoke-static {v13}, Landroid/graphics/FontListParser;->parse(Ljava/io/InputStream;)Landroid/graphics/FontListParser$Config;

    move-result-object v11

    .line 507
    .local v11, "fontConfig":Landroid/graphics/FontListParser$Config;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 510
    .local v10, "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    iget-object v0, v11, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v14, v0, :cond_2

    .line 511
    iget-object v0, v11, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/FontListParser$Family;

    .line 512
    .local v8, "f":Landroid/graphics/FontListParser$Family;
    if-eqz v14, :cond_0

    iget-object v0, v8, Landroid/graphics/FontListParser$Family;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    if-nez v21, :cond_1

    .line 513
    :cond_0
    invoke-static {v8}, Landroid/graphics/Typeface;->makeFamilyFromParsed(Landroid/graphics/FontListParser$Family;)Landroid/graphics/FontFamily;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 510
    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 516
    .end local v8    # "f":Landroid/graphics/FontListParser$Family;
    :cond_2
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    new-array v0, v0, [Landroid/graphics/FontFamily;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v10, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Landroid/graphics/FontFamily;

    sput-object v21, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    .line 517
    sget-object v21, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    invoke-static/range {v21 .. v21}, Landroid/graphics/Typeface;->createFromFamilies([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/graphics/Typeface;->setDefault(Landroid/graphics/Typeface;)V

    .line 519
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 520
    .local v18, "systemFonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    const/4 v14, 0x0

    :goto_1
    iget-object v0, v11, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v14, v0, :cond_5

    .line 522
    iget-object v0, v11, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/FontListParser$Family;

    .line 523
    .restart local v8    # "f":Landroid/graphics/FontListParser$Family;
    iget-object v0, v8, Landroid/graphics/FontListParser$Family;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3

    .line 524
    if-nez v14, :cond_4

    .line 527
    sget-object v19, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    .line 533
    .local v19, "typeface":Landroid/graphics/Typeface;
    :goto_2
    iget-object v0, v8, Landroid/graphics/FontListParser$Family;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    .end local v19    # "typeface":Landroid/graphics/Typeface;
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 529
    :cond_4
    invoke-static {v8}, Landroid/graphics/Typeface;->makeFamilyFromParsed(Landroid/graphics/FontListParser$Family;)Landroid/graphics/FontFamily;

    move-result-object v12

    .line 530
    .local v12, "fontFamily":Landroid/graphics/FontFamily;
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v9, v0, [Landroid/graphics/FontFamily;

    const/16 v21, 0x0

    aput-object v12, v9, v21

    .line 531
    .local v9, "families":[Landroid/graphics/FontFamily;
    invoke-static {v9}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v19

    .restart local v19    # "typeface":Landroid/graphics/Typeface;
    goto :goto_2

    .line 536
    .end local v8    # "f":Landroid/graphics/FontListParser$Family;
    .end local v9    # "families":[Landroid/graphics/FontFamily;
    .end local v12    # "fontFamily":Landroid/graphics/FontFamily;
    .end local v19    # "typeface":Landroid/graphics/Typeface;
    :cond_5
    iget-object v0, v11, Landroid/graphics/FontListParser$Config;->aliases:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_8

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/FontListParser$Alias;

    .line 537
    .local v4, "alias":Landroid/graphics/FontListParser$Alias;
    iget-object v0, v4, Landroid/graphics/FontListParser$Alias;->toName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Typeface;

    .line 538
    .local v5, "base":Landroid/graphics/Typeface;
    move-object/from16 v16, v5

    .line 539
    .local v16, "newFace":Landroid/graphics/Typeface;
    iget v0, v4, Landroid/graphics/FontListParser$Alias;->weight:I

    move/from16 v20, v0

    .line 540
    .local v20, "weight":I
    const/16 v21, 0x190

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_6

    .line 541
    new-instance v16, Landroid/graphics/Typeface;

    .end local v16    # "newFace":Landroid/graphics/Typeface;
    iget-wide v0, v5, Landroid/graphics/Typeface;->native_instance:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/graphics/Typeface;->nativeCreateWeightAlias(JI)J

    move-result-wide v22

    move-object/from16 v0, v16

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Landroid/graphics/Typeface;-><init>(J)V

    .line 543
    .restart local v16    # "newFace":Landroid/graphics/Typeface;
    :cond_6
    iget-object v0, v4, Landroid/graphics/FontListParser$Alias;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_3

    .line 552
    .end local v4    # "alias":Landroid/graphics/FontListParser$Alias;
    .end local v5    # "base":Landroid/graphics/Typeface;
    .end local v10    # "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    .end local v11    # "fontConfig":Landroid/graphics/FontListParser$Config;
    .end local v13    # "fontsIn":Ljava/io/FileInputStream;
    .end local v14    # "i":I
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v16    # "newFace":Landroid/graphics/Typeface;
    .end local v18    # "systemFonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    .end local v20    # "weight":I
    :catch_0
    move-exception v7

    .line 553
    .local v7, "e":Ljava/lang/RuntimeException;
    sget-object v21, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    const-string v22, "Didn\'t create default family (most likely, non-Minikin build)"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 562
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :cond_7
    :goto_4
    return-void

    .line 545
    .restart local v10    # "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    .restart local v11    # "fontConfig":Landroid/graphics/FontListParser$Config;
    .restart local v13    # "fontsIn":Ljava/io/FileInputStream;
    .restart local v14    # "i":I
    .restart local v15    # "i$":Ljava/util/Iterator;
    .restart local v18    # "systemFonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    :cond_8
    :try_start_1
    sput-object v18, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    .line 548
    invoke-static {}, Landroid/graphics/Typeface;->isAndroidFont()Z

    move-result v21

    if-eqz v21, :cond_7

    sget-object v21, Landroid/graphics/Typeface;->sVivoNomral:Landroid/graphics/FontFamily;

    if-eqz v21, :cond_7

    .line 549
    sget-object v21, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    sget-object v22, Landroid/graphics/Typeface;->sVivoNomral:Landroid/graphics/FontFamily;

    const/16 v23, 0x1

    invoke-static/range {v21 .. v23}, Landroid/graphics/Typeface;->updateByTypefaceChange(Landroid/graphics/Typeface;Landroid/graphics/FontFamily;Z)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_4

    .line 555
    .end local v10    # "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    .end local v11    # "fontConfig":Landroid/graphics/FontListParser$Config;
    .end local v13    # "fontsIn":Ljava/io/FileInputStream;
    .end local v14    # "i":I
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v18    # "systemFonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    :catch_1
    move-exception v7

    .line 556
    .local v7, "e":Ljava/io/FileNotFoundException;
    sget-object v21, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Error opening "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 557
    .end local v7    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v7

    .line 558
    .local v7, "e":Ljava/io/IOException;
    sget-object v21, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Error reading "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 559
    .end local v7    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v7

    .line 560
    .local v7, "e":Lorg/xmlpull/v1/XmlPullParserException;
    sget-object v21, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "XML parse exception for "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public static isAndroidFont()Z
    .locals 6

    .prologue
    .line 142
    const/4 v2, 0x0

    .line 143
    .local v2, "isAndroidFont":Z
    new-instance v1, Ljava/io/File;

    const-string v4, "/system/fonts/VivoFont.ttf"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 145
    .local v1, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 146
    sget-object v4, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "link file not exit,return fault font!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const/4 v2, 0x0

    .line 158
    .end local v2    # "isAndroidFont":Z
    :cond_0
    :goto_0
    return v2

    .line 150
    .restart local v2    # "isAndroidFont":Z
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    .line 151
    .local v3, "str":Ljava/lang/String;
    const-string v4, "/system/fonts/Roboto-Regular.ttf"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 152
    const/4 v2, 0x1

    .line 153
    sget-object v4, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "switch to android orgin ttf"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 155
    .end local v3    # "str":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static isDefaultFont()Z
    .locals 6

    .prologue
    .line 117
    const/4 v2, 0x1

    .line 118
    .local v2, "isDefaultFont":Z
    new-instance v1, Ljava/io/File;

    const-string v4, "/system/fonts/VivoFont.ttf"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 120
    .local v1, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 121
    sget-object v4, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "link file not exit,return default font!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const/4 v2, 0x1

    .line 135
    .end local v2    # "isDefaultFont":Z
    :cond_0
    :goto_0
    return v2

    .line 125
    .restart local v2    # "isDefaultFont":Z
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    .line 126
    .local v3, "str":Ljava/lang/String;
    const-string v4, "/system/fonts/DroidSansFallbackBBK.ttf"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 127
    const/4 v2, 0x0

    .line 128
    sget-object v4, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "switch to default font!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 130
    .end local v3    # "str":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 132
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static isVivoFamily(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 178
    if-eqz p0, :cond_0

    const-string/jumbo v0, "sans-serif"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static makeFamilyFromParsed(Landroid/graphics/FontListParser$Family;)Landroid/graphics/FontFamily;
    .locals 11
    .param p0, "family"    # Landroid/graphics/FontListParser$Family;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 431
    new-instance v1, Landroid/graphics/FontFamily;

    iget-object v7, p0, Landroid/graphics/FontListParser$Family;->lang:Ljava/lang/String;

    iget-object v8, p0, Landroid/graphics/FontListParser$Family;->variant:Ljava/lang/String;

    invoke-direct {v1, v7, v8}, Landroid/graphics/FontFamily;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    .local v1, "fontFamily":Landroid/graphics/FontFamily;
    iget-object v7, p0, Landroid/graphics/FontListParser$Family;->name:Ljava/lang/String;

    invoke-static {v7}, Landroid/graphics/Typeface;->isVivoFamily(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string/jumbo v7, "persist.vivo.define.typeface"

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v9, :cond_7

    .line 436
    const-string/jumbo v7, "yes"

    const-string/jumbo v8, "ro.vivo.product.overseas"

    const-string/jumbo v9, "no"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 438
    .local v5, "overseas":Z
    sget-boolean v7, Landroid/graphics/Typeface;->sRom2_5:Z

    if-nez v7, :cond_0

    if-eqz v5, :cond_2

    .line 439
    :cond_0
    iget-object v7, p0, Landroid/graphics/FontListParser$Family;->fonts:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/FontListParser$Font;

    .line 440
    .local v0, "font":Landroid/graphics/FontListParser$Font;
    iget-object v7, v0, Landroid/graphics/FontListParser$Font;->fontName:Ljava/lang/String;

    iget v8, v0, Landroid/graphics/FontListParser$Font;->weight:I

    iget-boolean v9, v0, Landroid/graphics/FontListParser$Font;->isItalic:Z

    invoke-virtual {v1, v7, v8, v9}, Landroid/graphics/FontFamily;->addFontWeightStyle(Ljava/lang/String;IZ)Z

    move-result v6

    .line 441
    .local v6, "ret":Z
    if-nez v6, :cond_1

    .line 442
    sget-object v7, Landroid/graphics/Typeface;->defaultFontPath:Ljava/lang/String;

    iget v8, v0, Landroid/graphics/FontListParser$Font;->weight:I

    iget-boolean v9, v0, Landroid/graphics/FontListParser$Font;->isItalic:Z

    invoke-virtual {v1, v7, v8, v9}, Landroid/graphics/FontFamily;->addFontWeightStyle(Ljava/lang/String;IZ)Z

    move-result v6

    .line 443
    sget-object v7, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "repairVivoFont path with "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Landroid/graphics/Typeface;->defaultFontPath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ,result: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 447
    .end local v0    # "font":Landroid/graphics/FontListParser$Font;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v6    # "ret":Z
    :cond_2
    invoke-static {}, Landroid/graphics/Typeface;->isDefaultFont()Z

    move-result v4

    .line 448
    .local v4, "isDefault":Z
    sget-object v7, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fontFamily isDefault : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_1
    sget-object v7, Landroid/graphics/Typeface;->sVivoFont:[Ljava/lang/String;

    array-length v7, v7

    if-ge v3, v7, :cond_5

    sget-object v7, Landroid/graphics/Typeface;->sWeight:[I

    array-length v7, v7

    if-ge v3, v7, :cond_5

    .line 451
    if-eqz v4, :cond_4

    .line 452
    sget-object v7, Landroid/graphics/Typeface;->sVivoFont:[Ljava/lang/String;

    aget-object v7, v7, v3

    sget-object v8, Landroid/graphics/Typeface;->sWeight:[I

    aget v8, v8, v3

    invoke-virtual {v1, v7, v8, v10}, Landroid/graphics/FontFamily;->addFontWeightStyle(Ljava/lang/String;IZ)Z

    move-result v6

    .line 457
    .restart local v6    # "ret":Z
    :goto_2
    if-nez v6, :cond_3

    .line 458
    sget-object v7, Landroid/graphics/Typeface;->defaultFontPath:Ljava/lang/String;

    sget-object v8, Landroid/graphics/Typeface;->sWeight:[I

    aget v8, v8, v3

    invoke-virtual {v1, v7, v8, v10}, Landroid/graphics/FontFamily;->addFontWeightStyle(Ljava/lang/String;IZ)Z

    move-result v6

    .line 459
    sget-object v7, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "repairVivoFont path with "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Landroid/graphics/Typeface;->defaultFontPath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ,result: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 454
    .end local v6    # "ret":Z
    :cond_4
    const-string v7, "/system/fonts/VivoFont.ttf"

    sget-object v8, Landroid/graphics/Typeface;->sWeight:[I

    aget v8, v8, v3

    invoke-virtual {v1, v7, v8, v10}, Landroid/graphics/FontFamily;->addFontWeightStyle(Ljava/lang/String;IZ)Z

    move-result v6

    .restart local v6    # "ret":Z
    goto :goto_2

    .line 464
    .end local v3    # "index":I
    .end local v4    # "isDefault":Z
    .end local v6    # "ret":Z
    :cond_5
    sget-object v7, Landroid/graphics/Typeface;->sVivoNomral:Landroid/graphics/FontFamily;

    if-nez v7, :cond_6

    .line 465
    sput-object v1, Landroid/graphics/Typeface;->sVivoNomral:Landroid/graphics/FontFamily;

    .line 466
    sget-object v7, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "makeFamilyFromParsed init sVivoNomral"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    .end local v5    # "overseas":Z
    :cond_6
    return-object v1

    .line 473
    :cond_7
    iget-object v7, p0, Landroid/graphics/FontListParser$Family;->fonts:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_8
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/FontListParser$Font;

    .line 474
    .restart local v0    # "font":Landroid/graphics/FontListParser$Font;
    iget-object v7, v0, Landroid/graphics/FontListParser$Font;->fontName:Ljava/lang/String;

    iget v8, v0, Landroid/graphics/FontListParser$Font;->weight:I

    iget-boolean v9, v0, Landroid/graphics/FontListParser$Font;->isItalic:Z

    invoke-virtual {v1, v7, v8, v9}, Landroid/graphics/FontFamily;->addFontWeightStyle(Ljava/lang/String;IZ)Z

    .line 477
    sget-object v7, Landroid/graphics/Typeface;->sVivoMyanmar:Landroid/graphics/FontFamily;

    if-nez v7, :cond_8

    iget-object v7, v0, Landroid/graphics/FontListParser$Font;->fontName:Ljava/lang/String;

    const-string v8, "/system/fonts/Vivo-Myanmar.ttf"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 478
    const-string/jumbo v7, "yes"

    const-string/jumbo v8, "ro.vivo.product.overseas"

    const-string/jumbo v9, "no"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 479
    .restart local v5    # "overseas":Z
    if-eqz v5, :cond_8

    .line 480
    sput-object v1, Landroid/graphics/Typeface;->sVivoMyanmar:Landroid/graphics/FontFamily;

    .line 481
    sget-object v7, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "makeFamilyFromParsed init sVivoMyanmar"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private static native nativeCreateFromArray([J)J
.end method

.method private static native nativeCreateFromTypeface(JI)J
.end method

.method private static native nativeCreateWeightAlias(JI)J
.end method

.method private static native nativeGetStyle(J)I
.end method

.method private static native nativeSetDefault(J)V
.end method

.method private static native nativeUnref(J)V
.end method

.method private static native nativeUpdateByTypefaceChange(JJZ)V
.end method

.method public static reloadVivoFont()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 203
    sget-object v7, Landroid/graphics/Typeface;->sVivoMyanmar:Landroid/graphics/FontFamily;

    if-eqz v7, :cond_0

    .line 204
    sget-object v7, Landroid/graphics/Typeface;->sVivoMyanmar:Landroid/graphics/FontFamily;

    const-string v8, "/system/fonts/Vivo-Myanmar.ttf"

    invoke-virtual {v7, v10, v8}, Landroid/graphics/FontFamily;->resetFont(ILjava/lang/String;)Z

    .line 207
    :cond_0
    sget-object v7, Landroid/graphics/Typeface;->sVivoNomral:Landroid/graphics/FontFamily;

    if-eqz v7, :cond_4

    .line 208
    sget-object v6, Landroid/graphics/Typeface;->defaultFontPath:Ljava/lang/String;

    .line 209
    .local v6, "path":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    const-string v7, "/system/fonts/VivoFont.ttf"

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 211
    .local v2, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    .line 212
    sget-object v7, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "link file not exit,switch to default font!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    sget-object v6, Landroid/graphics/Typeface;->defaultFontPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :goto_0
    sget-object v7, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "reloadVivoFont rom2.5 = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Landroid/graphics/Typeface;->sRom2_5:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const-string/jumbo v7, "yes"

    const-string/jumbo v8, "ro.vivo.product.overseas"

    const-string/jumbo v9, "no"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 224
    .local v5, "overseas":Z
    sget-boolean v7, Landroid/graphics/Typeface;->sRom2_5:Z

    if-nez v7, :cond_1

    if-eqz v5, :cond_3

    .line 225
    :cond_1
    sget-object v7, Landroid/graphics/Typeface;->sVivoNomral:Landroid/graphics/FontFamily;

    invoke-virtual {v7, v10, v6}, Landroid/graphics/FontFamily;->resetFont(ILjava/lang/String;)Z

    .line 230
    :goto_1
    invoke-static {}, Landroid/graphics/Typeface;->isAndroidFont()Z

    move-result v0

    .line 231
    .local v0, "androidFont":Z
    sget-object v7, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v4

    .line 232
    .local v4, "list":[Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v7, v4

    if-ge v3, v7, :cond_5

    .line 233
    aget-object v7, v4, v3

    check-cast v7, Landroid/graphics/Typeface;

    sget-object v8, Landroid/graphics/Typeface;->sVivoNomral:Landroid/graphics/FontFamily;

    invoke-static {v7, v8, v0}, Landroid/graphics/Typeface;->updateByTypefaceChange(Landroid/graphics/Typeface;Landroid/graphics/FontFamily;Z)V

    .line 232
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 215
    .end local v0    # "androidFont":Z
    .end local v3    # "i":I
    .end local v4    # "list":[Ljava/lang/Object;
    .end local v5    # "overseas":Z
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    goto :goto_0

    .line 217
    :catch_0
    move-exception v1

    .line 218
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 219
    sget-object v6, Landroid/graphics/Typeface;->defaultFontPath:Ljava/lang/String;

    goto :goto_0

    .line 227
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v5    # "overseas":Z
    :cond_3
    sget-object v7, Landroid/graphics/Typeface;->sVivoNomral:Landroid/graphics/FontFamily;

    const/4 v8, 0x3

    invoke-virtual {v7, v8, v6}, Landroid/graphics/FontFamily;->resetFont(ILjava/lang/String;)Z

    goto :goto_1

    .line 236
    .end local v2    # "file":Ljava/io/File;
    .end local v5    # "overseas":Z
    .end local v6    # "path":Ljava/lang/String;
    :cond_4
    sget-object v7, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "reloadVivoFont sVivoNomral is null!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_5
    return-void
.end method

.method private static setDefault(Landroid/graphics/Typeface;)V
    .locals 2
    .param p0, "t"    # Landroid/graphics/Typeface;

    .prologue
    .line 249
    sput-object p0, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    .line 250
    iget-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->nativeSetDefault(J)V

    .line 251
    return-void
.end method

.method private static updateByTypefaceChange(Landroid/graphics/Typeface;Landroid/graphics/FontFamily;Z)V
    .locals 4
    .param p0, "typeface"    # Landroid/graphics/Typeface;
    .param p1, "family"    # Landroid/graphics/FontFamily;
    .param p2, "androidFont"    # Z

    .prologue
    .line 242
    iget-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J

    iget-wide v2, p1, Landroid/graphics/FontFamily;->mNativePtr:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/graphics/Typeface;->nativeUpdateByTypefaceChange(JJZ)V

    .line 243
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 597
    if-ne p0, p1, :cond_1

    .line 602
    :cond_0
    :goto_0
    return v1

    .line 598
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 600
    check-cast v0, Landroid/graphics/Typeface;

    .line 602
    .local v0, "typeface":Landroid/graphics/Typeface;
    iget v3, p0, Landroid/graphics/Typeface;->mStyle:I

    iget v4, v0, Landroid/graphics/Typeface;->mStyle:I

    if-ne v3, v4, :cond_4

    iget-wide v4, p0, Landroid/graphics/Typeface;->native_instance:J

    iget-wide v6, v0, Landroid/graphics/Typeface;->native_instance:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 589
    :try_start_0
    iget-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->nativeUnref(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 591
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 593
    return-void

    .line 591
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getStyle()I
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    return v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 611
    const/16 v0, 0x11

    .line 612
    .local v0, "result":I
    iget-wide v2, p0, Landroid/graphics/Typeface;->native_instance:J

    iget-wide v4, p0, Landroid/graphics/Typeface;->native_instance:J

    const/16 v1, 0x20

    ushr-long/2addr v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/lit16 v0, v1, 0x20f

    .line 613
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/graphics/Typeface;->mStyle:I

    add-int v0, v1, v2

    .line 614
    return v0
.end method

.method public final isBold()Z
    .locals 1

    .prologue
    .line 260
    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isItalic()Z
    .locals 1

    .prologue
    .line 265
    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
