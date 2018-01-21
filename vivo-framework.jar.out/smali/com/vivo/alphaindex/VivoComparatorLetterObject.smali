.class public Lcom/vivo/alphaindex/VivoComparatorLetterObject;
.super Ljava/lang/Object;
.source "VivoComparatorLetterObject.java"

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
    .locals 6
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 8
    move-object v3, p1

    check-cast v3, Lcom/vivo/alphaindex/VivoLetterObject;

    .local v3, "letterObject0":Lcom/vivo/alphaindex/VivoLetterObject;
    move-object v4, p2

    .line 9
    check-cast v4, Lcom/vivo/alphaindex/VivoLetterObject;

    .line 11
    .local v4, "letterObject1":Lcom/vivo/alphaindex/VivoLetterObject;
    invoke-virtual {v3}, Lcom/vivo/alphaindex/VivoLetterObject;->getCount()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 12
    .local v0, "count0":I
    invoke-virtual {v4}, Lcom/vivo/alphaindex/VivoLetterObject;->getCount()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 13
    .local v1, "count1":I
    sub-int v2, v0, v1

    .line 14
    .local v2, "flag":I
    if-nez v2, :cond_0

    .line 18
    .end local v2    # "flag":I
    :goto_0
    return v2

    .restart local v2    # "flag":I
    :cond_0
    neg-int v2, v2

    goto :goto_0
.end method
