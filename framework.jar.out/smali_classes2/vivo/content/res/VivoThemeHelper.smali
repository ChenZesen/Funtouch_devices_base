.class public Lvivo/content/res/VivoThemeHelper;
.super Ljava/lang/Object;
.source "VivoThemeHelper.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VivoThemeHelper"

.field private static final sFloatPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "(-?[0-9]+(?:\\.[0-9]+)?)(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lvivo/content/res/VivoThemeHelper;->sFloatPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method private static computeTypedValue(F)I
    .locals 12
    .param p0, "value"    # F

    .prologue
    const-wide/16 v10, 0x0

    .line 84
    const/4 v7, 0x0

    cmpg-float v7, p0, v7

    if-gez v7, :cond_2

    const/4 v3, 0x1

    .line 85
    .local v3, "neg":Z
    :goto_0
    if-eqz v3, :cond_0

    .line 86
    neg-float p0, p0

    .line 88
    :cond_0
    const/high16 v7, 0x4b000000    # 8388608.0f

    mul-float/2addr v7, p0

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    float-to-long v0, v7

    .line 91
    .local v0, "bits":J
    const-wide/32 v8, 0x7fffff

    and-long/2addr v8, v0

    cmp-long v7, v8, v10

    if-nez v7, :cond_3

    .line 92
    const/4 v5, 0x0

    .line 93
    .local v5, "radix":I
    const/16 v6, 0x17

    .line 107
    .local v6, "shift":I
    :goto_1
    shr-long v8, v0, v6

    const-wide/32 v10, 0xffffff

    and-long/2addr v8, v10

    long-to-int v2, v8

    .line 109
    .local v2, "mantissa":I
    if-eqz v3, :cond_1

    .line 110
    neg-int v7, v2

    const v8, 0xffffff

    and-int v2, v7, v8

    .line 112
    :cond_1
    shl-int/lit8 v7, v5, 0x4

    shl-int/lit8 v8, v2, 0x8

    or-int v4, v7, v8

    .line 115
    .local v4, "rData":I
    return v4

    .line 84
    .end local v0    # "bits":J
    .end local v2    # "mantissa":I
    .end local v3    # "neg":Z
    .end local v4    # "rData":I
    .end local v5    # "radix":I
    .end local v6    # "shift":I
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 94
    .restart local v0    # "bits":J
    .restart local v3    # "neg":Z
    :cond_3
    const-wide/32 v8, -0x800000

    and-long/2addr v8, v0

    cmp-long v7, v8, v10

    if-nez v7, :cond_4

    .line 95
    const/4 v5, 0x3

    .line 96
    .restart local v5    # "radix":I
    const/4 v6, 0x0

    .restart local v6    # "shift":I
    goto :goto_1

    .line 97
    .end local v5    # "radix":I
    .end local v6    # "shift":I
    :cond_4
    const-wide/32 v8, -0x80000000

    and-long/2addr v8, v0

    cmp-long v7, v8, v10

    if-nez v7, :cond_5

    .line 98
    const/4 v5, 0x2

    .line 99
    .restart local v5    # "radix":I
    const/16 v6, 0x8

    .restart local v6    # "shift":I
    goto :goto_1

    .line 100
    .end local v5    # "radix":I
    .end local v6    # "shift":I
    :cond_5
    const-wide v8, -0x8000000000L

    and-long/2addr v8, v0

    cmp-long v7, v8, v10

    if-nez v7, :cond_6

    .line 101
    const/4 v5, 0x1

    .line 102
    .restart local v5    # "radix":I
    const/16 v6, 0x10

    .restart local v6    # "shift":I
    goto :goto_1

    .line 104
    .end local v5    # "radix":I
    .end local v6    # "shift":I
    :cond_6
    const/4 v5, 0x0

    .line 105
    .restart local v5    # "radix":I
    const/16 v6, 0x17

    .restart local v6    # "shift":I
    goto :goto_1
.end method

.method public static parseDimension(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 14
    .param p0, "dimen"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x0

    const/4 v6, 0x0

    .line 26
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 27
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    .line 28
    .local v7, "len":I
    if-gtz v7, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-object v6

    .line 32
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 33
    .local v0, "buf":[C
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v7, :cond_2

    .line 34
    aget-char v11, v0, v5

    const/16 v12, 0xff

    if-gt v11, v12, :cond_0

    .line 33
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 39
    :cond_2
    aget-char v11, v0, v13

    const/16 v12, 0x30

    if-ge v11, v12, :cond_3

    aget-char v11, v0, v13

    const/16 v12, 0x39

    if-le v11, v12, :cond_3

    aget-char v11, v0, v13

    const/16 v12, 0x2e

    if-eq v11, v12, :cond_3

    aget-char v11, v0, v13

    const/16 v12, 0x2d

    if-ne v11, v12, :cond_0

    .line 43
    :cond_3
    sget-object v11, Lvivo/content/res/VivoThemeHelper;->sFloatPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v11, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 44
    .local v8, "mMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 45
    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 46
    .local v4, "f_str":Ljava/lang/String;
    const/4 v11, 0x2

    invoke-virtual {v8, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    .line 50
    .local v10, "unitStr":Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 55
    .local v2, "decimalNum":F
    invoke-static {v2}, Lvivo/content/res/VivoThemeHelper;->computeTypedValue(F)I

    move-result v9

    .line 57
    .local v9, "tmpDimen":I
    const/4 v1, 0x0

    .line 59
    .local v1, "byte0":B
    const-string v11, "px"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 60
    const/4 v1, 0x0

    .line 72
    :cond_4
    :goto_2
    or-int v11, v1, v9

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 76
    .local v6, "integer":Ljava/lang/Integer;
    goto :goto_0

    .line 51
    .end local v1    # "byte0":B
    .end local v2    # "decimalNum":F
    .end local v6    # "integer":Ljava/lang/Integer;
    .end local v9    # "tmpDimen":I
    :catch_0
    move-exception v3

    .line 52
    .local v3, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    .line 61
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "byte0":B
    .restart local v2    # "decimalNum":F
    .restart local v9    # "tmpDimen":I
    :cond_5
    const-string v11, "dp"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    const-string v11, "dip"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 62
    :cond_6
    const/4 v1, 0x1

    goto :goto_2

    .line 63
    :cond_7
    const-string v11, "sp"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 64
    const/4 v1, 0x2

    goto :goto_2

    .line 65
    :cond_8
    const-string v11, "pt"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 66
    const/4 v1, 0x3

    goto :goto_2

    .line 67
    :cond_9
    const-string v11, "in"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 68
    const/4 v1, 0x4

    goto :goto_2

    .line 69
    :cond_a
    const-string v11, "mm"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 70
    const/4 v1, 0x5

    goto :goto_2
.end method
