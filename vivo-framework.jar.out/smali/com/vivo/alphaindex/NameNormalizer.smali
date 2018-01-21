.class public Lcom/vivo/alphaindex/NameNormalizer;
.super Ljava/lang/Object;
.source "NameNormalizer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NameNormalizer"

.field private static sCachedComplexityCollator:Ljava/text/RuleBasedCollator;

.field private static sCachedCompressingCollator:Ljava/text/RuleBasedCollator;

.field private static sCollatorLocale:Ljava/util/Locale;

.field private static final sCollatorLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/vivo/alphaindex/NameNormalizer;->sCollatorLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareComplexity(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p0, "name1"    # Ljava/lang/String;
    .param p1, "name2"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-static {p0}, Lcom/vivo/alphaindex/NameNormalizer;->lettersAndDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "clean1":Ljava/lang/String;
    invoke-static {p1}, Lcom/vivo/alphaindex/NameNormalizer;->lettersAndDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "clean2":Ljava/lang/String;
    invoke-static {}, Lcom/vivo/alphaindex/NameNormalizer;->getComplexityCollator()Ljava/text/RuleBasedCollator;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/text/RuleBasedCollator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 100
    .local v2, "diff":I
    if-eqz v2, :cond_0

    move v3, v2

    .line 110
    :goto_0
    return v3

    .line 106
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    neg-int v2, v3

    .line 107
    if-eqz v2, :cond_1

    move v3, v2

    .line 108
    goto :goto_0

    .line 110
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    goto :goto_0
.end method

.method private static encodeByteMore([B)[B
    .locals 8
    .param p0, "key"    # [B

    .prologue
    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v0, "byteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v2, 0x0

    .line 152
    .local v2, "isLastWith2Byte":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, p0

    if-ge v1, v6, :cond_5

    .line 153
    aget-byte v4, p0, v1

    .line 155
    .local v4, "k":B
    if-nez v4, :cond_1

    .line 152
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 159
    :cond_1
    if-eqz v2, :cond_2

    .line 160
    new-instance v6, Ljava/lang/Byte;

    invoke-direct {v6, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    const/4 v2, 0x0

    goto :goto_1

    .line 163
    :cond_2
    const/16 v6, 0x14

    if-lt v4, v6, :cond_3

    const/16 v6, 0x26

    if-gt v4, v6, :cond_3

    .line 164
    new-instance v6, Ljava/lang/Byte;

    const/16 v7, 0x2a

    invoke-direct {v6, v7}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    new-instance v6, Ljava/lang/Byte;

    invoke-direct {v6, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 166
    :cond_3
    if-gez v4, :cond_4

    .line 167
    new-instance v6, Ljava/lang/Byte;

    const/16 v7, -0x21

    invoke-direct {v6, v7}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    new-instance v6, Ljava/lang/Byte;

    invoke-direct {v6, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    add-int/lit8 v6, v1, 0x1

    array-length v7, p0

    if-ge v6, v7, :cond_0

    add-int/lit8 v6, v1, 0x1

    aget-byte v6, p0, v6

    if-eqz v6, :cond_0

    .line 171
    new-instance v6, Ljava/lang/Byte;

    add-int/lit8 v7, v1, 0x1

    aget-byte v7, p0, v7

    invoke-direct {v6, v7}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 175
    :cond_4
    new-instance v6, Ljava/lang/Byte;

    invoke-direct {v6, v4}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    const/4 v2, 0x1

    goto :goto_1

    .line 181
    .end local v4    # "k":B
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v5, v6, [B

    .line 182
    .local v5, "keyByte":[B
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_6

    .line 183
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Byte;

    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    aput-byte v6, v5, v3

    .line 182
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 186
    :cond_6
    return-object v5
.end method

.method private static ensureCollators()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 48
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    .line 50
    .local v0, "locale":Ljava/util/Locale;
    sget-object v1, Lcom/vivo/alphaindex/NameNormalizer;->sCollatorLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    :goto_0
    return-void

    .line 53
    :cond_0
    sput-object v0, Lcom/vivo/alphaindex/NameNormalizer;->sCollatorLocale:Ljava/util/Locale;

    .line 55
    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v1

    check-cast v1, Ljava/text/RuleBasedCollator;

    sput-object v1, Lcom/vivo/alphaindex/NameNormalizer;->sCachedCompressingCollator:Ljava/text/RuleBasedCollator;

    .line 56
    sget-object v1, Lcom/vivo/alphaindex/NameNormalizer;->sCachedCompressingCollator:Ljava/text/RuleBasedCollator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/text/RuleBasedCollator;->setStrength(I)V

    .line 57
    sget-object v1, Lcom/vivo/alphaindex/NameNormalizer;->sCachedCompressingCollator:Ljava/text/RuleBasedCollator;

    invoke-virtual {v1, v3}, Ljava/text/RuleBasedCollator;->setDecomposition(I)V

    .line 59
    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v1

    check-cast v1, Ljava/text/RuleBasedCollator;

    sput-object v1, Lcom/vivo/alphaindex/NameNormalizer;->sCachedComplexityCollator:Ljava/text/RuleBasedCollator;

    .line 60
    sget-object v1, Lcom/vivo/alphaindex/NameNormalizer;->sCachedComplexityCollator:Ljava/text/RuleBasedCollator;

    invoke-virtual {v1, v3}, Ljava/text/RuleBasedCollator;->setStrength(I)V

    goto :goto_0
.end method

.method static getComplexityCollator()Ljava/text/RuleBasedCollator;
    .locals 2

    .prologue
    .line 71
    sget-object v1, Lcom/vivo/alphaindex/NameNormalizer;->sCollatorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 72
    :try_start_0
    invoke-static {}, Lcom/vivo/alphaindex/NameNormalizer;->ensureCollators()V

    .line 73
    sget-object v0, Lcom/vivo/alphaindex/NameNormalizer;->sCachedComplexityCollator:Ljava/text/RuleBasedCollator;

    monitor-exit v1

    return-object v0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static getCompressingCollator()Ljava/text/RuleBasedCollator;
    .locals 2

    .prologue
    .line 64
    sget-object v1, Lcom/vivo/alphaindex/NameNormalizer;->sCollatorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 65
    :try_start_0
    invoke-static {}, Lcom/vivo/alphaindex/NameNormalizer;->ensureCollators()V

    .line 66
    sget-object v0, Lcom/vivo/alphaindex/NameNormalizer;->sCachedCompressingCollator:Ljava/text/RuleBasedCollator;

    monitor-exit v1

    return-object v0

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static lettersAndDigitsOnly(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 118
    if-nez p0, :cond_1

    .line 119
    const-string p0, ""

    .line 134
    .end local p0    # "name":Ljava/lang/String;
    .local v1, "i":I
    .local v2, "length":I
    .local v4, "letters":[C
    :cond_0
    :goto_0
    return-object p0

    .line 121
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v4    # "letters":[C
    .restart local p0    # "name":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 122
    .restart local v4    # "letters":[C
    const/4 v2, 0x0

    .line 123
    .restart local v2    # "length":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    array-length v5, v4

    if-ge v1, v5, :cond_3

    .line 124
    aget-char v0, v4, v1

    .line 125
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 126
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "length":I
    .local v3, "length":I
    aput-char v0, v4, v2

    move v2, v3

    .line 123
    .end local v3    # "length":I
    .restart local v2    # "length":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 130
    .end local v0    # "c":C
    :cond_3
    array-length v5, v4

    if-eq v2, v5, :cond_0

    .line 131
    new-instance p0, Ljava/lang/String;

    .end local p0    # "name":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-direct {p0, v4, v5, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0
.end method

.method public static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-static {}, Lcom/vivo/alphaindex/NameNormalizer;->getCompressingCollator()Ljava/text/RuleBasedCollator;

    move-result-object v1

    invoke-static {p0}, Lcom/vivo/alphaindex/NameNormalizer;->lettersAndDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/RuleBasedCollator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object v0

    .line 87
    .local v0, "key":Ljava/text/CollationKey;
    invoke-virtual {v0}, Ljava/text/CollationKey;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/alphaindex/NameNormalizer;->encodeByteMore([B)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/vivo/alphaindex/Hex;->encodeHex([BZ)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
