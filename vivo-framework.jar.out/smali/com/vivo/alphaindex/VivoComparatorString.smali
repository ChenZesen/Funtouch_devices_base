.class public Lcom/vivo/alphaindex/VivoComparatorString;
.super Ljava/lang/Object;
.source "VivoComparatorString.java"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 8
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .local v0, "letter0":Ljava/lang/String;
    move-object v1, p2

    .line 9
    check-cast v1, Ljava/lang/String;

    .line 10
    .local v1, "letter1":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/vivo/alphaindex/VivoComparatorString;->isTaLanguage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/vivo/alphaindex/VivoComparatorString;->isTaLanguage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 11
    invoke-static {v0}, Lcom/vivo/alphaindex/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-static {v1}, Lcom/vivo/alphaindex/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 14
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public isTaLanguage(Ljava/lang/String;)Z
    .locals 3
    .param p1, "letter"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0xb80

    if-lt v1, v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0xbff

    if-le v1, v2, :cond_1

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x600

    if-lt v1, v2, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x6ff

    if-gt v1, v2, :cond_2

    .line 19
    :cond_1
    const/4 v0, 0x1

    .line 21
    :cond_2
    return v0
.end method
