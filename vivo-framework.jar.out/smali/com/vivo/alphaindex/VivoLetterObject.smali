.class Lcom/vivo/alphaindex/VivoLetterObject;
.super Ljava/lang/Object;
.source "VivoLetterObject.java"


# instance fields
.field count:Ljava/lang/String;

.field letter:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "letter"    # Ljava/lang/String;
    .param p2, "count"    # Ljava/lang/String;

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/vivo/alphaindex/VivoLetterObject;->letter:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/vivo/alphaindex/VivoLetterObject;->count:Ljava/lang/String;

    .line 11
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 30
    instance-of v2, p1, Lcom/vivo/alphaindex/VivoLetterObject;

    if-nez v2, :cond_1

    .line 36
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 35
    check-cast v0, Lcom/vivo/alphaindex/VivoLetterObject;

    .line 36
    .local v0, "t":Lcom/vivo/alphaindex/VivoLetterObject;
    iget-object v2, p0, Lcom/vivo/alphaindex/VivoLetterObject;->letter:Ljava/lang/String;

    iget-object v3, v0, Lcom/vivo/alphaindex/VivoLetterObject;->letter:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/vivo/alphaindex/VivoLetterObject;->count:Ljava/lang/String;

    iget-object v3, v0, Lcom/vivo/alphaindex/VivoLetterObject;->count:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/vivo/alphaindex/VivoLetterObject;->count:Ljava/lang/String;

    return-object v0
.end method

.method public getLetter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/vivo/alphaindex/VivoLetterObject;->letter:Ljava/lang/String;

    return-object v0
.end method

.method public setCount(Ljava/lang/String;)V
    .locals 0
    .param p1, "count"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/vivo/alphaindex/VivoLetterObject;->count:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public setLetter(Ljava/lang/String;)V
    .locals 0
    .param p1, "letter"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/vivo/alphaindex/VivoLetterObject;->letter:Ljava/lang/String;

    .line 27
    return-void
.end method
