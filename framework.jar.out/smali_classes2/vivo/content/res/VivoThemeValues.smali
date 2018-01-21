.class public Lvivo/content/res/VivoThemeValues;
.super Ljava/lang/Object;
.source "VivoThemeValues.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvivo/content/res/VivoThemeValues$ThemeItemInfo;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "VivoThemeValues"

.field private static final TYPE_BOOLEAN:Ljava/lang/String; = "bool"

.field private static final TYPE_COLOR:Ljava/lang/String; = "color"

.field private static final TYPE_DIMEN:Ljava/lang/String; = "dimen"

.field private static final TYPE_DRAWABLE:Ljava/lang/String; = "drawable"

.field private static final TYPE_INTEGER:Ljava/lang/String; = "integer"

.field private static final TYPE_INTEGER_ARRAY:Ljava/lang/String; = "integer-array"

.field private static final TYPE_STRING:Ljava/lang/String; = "string"

.field private static final TYPE_STRING_ARRAY:Ljava/lang/String; = "string-array"


# instance fields
.field public mIntegerArrays:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field public mIntegers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mStringArrays:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mStrings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mSystemItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lvivo/content/res/VivoThemeValues$ThemeItemInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v0, p0, Lvivo/content/res/VivoThemeValues;->mIntegerArrays:Ljava/util/HashMap;

    .line 42
    iput-object v0, p0, Lvivo/content/res/VivoThemeValues;->mIntegers:Ljava/util/HashMap;

    .line 43
    iput-object v0, p0, Lvivo/content/res/VivoThemeValues;->mStringArrays:Ljava/util/HashMap;

    .line 44
    iput-object v0, p0, Lvivo/content/res/VivoThemeValues;->mStrings:Ljava/util/HashMap;

    .line 45
    iput-object v0, p0, Lvivo/content/res/VivoThemeValues;->mSystemItems:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lvivo/content/res/VivoThemeValues;->mIntegerArrays:Ljava/util/HashMap;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lvivo/content/res/VivoThemeValues;->mIntegers:Ljava/util/HashMap;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lvivo/content/res/VivoThemeValues;->mStringArrays:Ljava/util/HashMap;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lvivo/content/res/VivoThemeValues;->mStrings:Ljava/util/HashMap;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvivo/content/res/VivoThemeValues;->mSystemItems:Ljava/util/ArrayList;

    .line 58
    return-void
.end method

.method private static getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resType"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "pkg"    # Ljava/lang/String;

    .prologue
    .line 82
    const-string v0, "integer-array"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "string-array"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    :cond_0
    const-string v0, "array"

    invoke-virtual {p0, p2, v0, p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 84
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p2, p1, p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 49
    const-string v0, "VivoThemeValues"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return-void
.end method

.method private static mergeMapValues(Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 4
    .param p0, "map"    # Ljava/util/HashMap;
    .param p1, "tobeMerged"    # Ljava/util/HashMap;

    .prologue
    .line 225
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 234
    :cond_0
    return-void

    .line 227
    :cond_1
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 228
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry;>;"
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 229
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 230
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 231
    .local v1, "id":Ljava/lang/Integer;
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 232
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static mergeValues(Lvivo/content/res/VivoThemeValues;Ljava/util/ArrayList;Landroid/content/res/Resources;Ljava/lang/String;)V
    .locals 6
    .param p0, "themeValues"    # Lvivo/content/res/VivoThemeValues;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvivo/content/res/VivoThemeValues;",
            "Ljava/util/ArrayList",
            "<",
            "Lvivo/content/res/VivoThemeValues$ThemeItemInfo;",
            ">;",
            "Landroid/content/res/Resources;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 192
    .local p1, "tobeMerged":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvivo/content/res/VivoThemeValues$ThemeItemInfo;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 213
    :cond_0
    return-void

    .line 194
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 195
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvivo/content/res/VivoThemeValues$ThemeItemInfo;

    .line 196
    .local v2, "item":Lvivo/content/res/VivoThemeValues$ThemeItemInfo;
    iget-object v4, v2, Lvivo/content/res/VivoThemeValues$ThemeItemInfo;->type:Ljava/lang/String;

    iget-object v5, v2, Lvivo/content/res/VivoThemeValues$ThemeItemInfo;->name:Ljava/lang/String;

    invoke-static {p2, v4, v5, p3}, Lvivo/content/res/VivoThemeValues;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 197
    .local v1, "id":I
    if-lez v1, :cond_2

    .line 198
    const/4 v3, 0x0

    .line 199
    .local v3, "map":Ljava/util/HashMap;
    const-string v4, "integer-array"

    iget-object v5, v2, Lvivo/content/res/VivoThemeValues$ThemeItemInfo;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 200
    iget-object v3, p0, Lvivo/content/res/VivoThemeValues;->mIntegerArrays:Ljava/util/HashMap;

    .line 208
    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 209
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, v2, Lvivo/content/res/VivoThemeValues$ThemeItemInfo;->value:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    .end local v3    # "map":Ljava/util/HashMap;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 201
    .restart local v3    # "map":Ljava/util/HashMap;
    :cond_3
    const-string v4, "string-array"

    iget-object v5, v2, Lvivo/content/res/VivoThemeValues$ThemeItemInfo;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 202
    iget-object v3, p0, Lvivo/content/res/VivoThemeValues;->mStringArrays:Ljava/util/HashMap;

    goto :goto_1

    .line 203
    :cond_4
    const-string v4, "string"

    iget-object v5, v2, Lvivo/content/res/VivoThemeValues$ThemeItemInfo;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 204
    iget-object v3, p0, Lvivo/content/res/VivoThemeValues;->mStrings:Ljava/util/HashMap;

    goto :goto_1

    .line 206
    :cond_5
    iget-object v3, p0, Lvivo/content/res/VivoThemeValues;->mIntegers:Ljava/util/HashMap;

    goto :goto_1
.end method

.method public static mergeValues(Lvivo/content/res/VivoThemeValues;Lvivo/content/res/VivoThemeValues;)V
    .locals 2
    .param p0, "themeValues"    # Lvivo/content/res/VivoThemeValues;
    .param p1, "tobeMerged"    # Lvivo/content/res/VivoThemeValues;

    .prologue
    .line 216
    if-nez p1, :cond_0

    .line 222
    :goto_0
    return-void

    .line 218
    :cond_0
    iget-object v0, p0, Lvivo/content/res/VivoThemeValues;->mIntegers:Ljava/util/HashMap;

    iget-object v1, p1, Lvivo/content/res/VivoThemeValues;->mIntegers:Ljava/util/HashMap;

    invoke-static {v0, v1}, Lvivo/content/res/VivoThemeValues;->mergeMapValues(Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 219
    iget-object v0, p0, Lvivo/content/res/VivoThemeValues;->mStrings:Ljava/util/HashMap;

    iget-object v1, p1, Lvivo/content/res/VivoThemeValues;->mStrings:Ljava/util/HashMap;

    invoke-static {v0, v1}, Lvivo/content/res/VivoThemeValues;->mergeMapValues(Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 220
    iget-object v0, p0, Lvivo/content/res/VivoThemeValues;->mIntegerArrays:Ljava/util/HashMap;

    iget-object v1, p1, Lvivo/content/res/VivoThemeValues;->mIntegerArrays:Ljava/util/HashMap;

    invoke-static {v0, v1}, Lvivo/content/res/VivoThemeValues;->mergeMapValues(Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 221
    iget-object v0, p0, Lvivo/content/res/VivoThemeValues;->mStringArrays:Ljava/util/HashMap;

    iget-object v1, p1, Lvivo/content/res/VivoThemeValues;->mStringArrays:Ljava/util/HashMap;

    invoke-static {v0, v1}, Lvivo/content/res/VivoThemeValues;->mergeMapValues(Ljava/util/HashMap;Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method private static parseResourceArrayValue(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/lang/Object;
    .locals 6
    .param p0, "resourceType"    # Ljava/lang/String;
    .param p1, "element"    # Lorg/w3c/dom/Element;

    .prologue
    const/4 v4, 0x0

    .line 88
    const-string v5, "item"

    invoke-interface {p1, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 89
    .local v0, "itemList":Lorg/w3c/dom/NodeList;
    if-nez v0, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-object v4

    .line 91
    :cond_1
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    .line 92
    .local v2, "length":I
    if-eqz v2, :cond_0

    .line 94
    const-string v5, "string-array"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 95
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 96
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 97
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 99
    .end local v1    # "j":I
    .end local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    const-string v5, "integer-array"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 100
    new-array v3, v2, [I

    .line 101
    .local v3, "list":[I
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_2
    if-ge v1, v2, :cond_3

    .line 102
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v3, v1

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    move-object v4, v3

    .line 103
    goto :goto_0
.end method

.method private static parseResourceNonArrayValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p0, "resType"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 109
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 110
    const/4 v0, 0x0

    .line 118
    :cond_0
    :goto_0
    return-object v0

    .line 111
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "str":Ljava/lang/String;
    const-string v2, "bool"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 113
    const-string v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 114
    :cond_3
    const-string v2, "color"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "integer"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "drawable"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 115
    :cond_4
    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->convertValueToUnsignedInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 116
    :cond_5
    const-string v1, "dimen"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    invoke-static {v0}, Lvivo/content/res/VivoThemeHelper;->parseDimension(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public static parseThemeValues(Landroid/content/res/Resources;Ljava/io/InputStream;Ljava/lang/String;Z)Lvivo/content/res/VivoThemeValues;
    .locals 18
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "isSystemResource"    # Z

    .prologue
    .line 122
    const-string v16, "framework-res"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 123
    const-string p2, "android"

    .line 124
    :cond_0
    new-instance v14, Lvivo/content/res/VivoThemeValues;

    invoke-direct {v14}, Lvivo/content/res/VivoThemeValues;-><init>()V

    .line 125
    .local v14, "themeValues":Lvivo/content/res/VivoThemeValues;
    if-nez p1, :cond_1

    .line 188
    :goto_0
    return-object v14

    .line 127
    :cond_1
    const/4 v2, 0x0

    .line 129
    .local v2, "bufferedInputStream":Ljava/io/BufferedInputStream;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v4

    .line 130
    .local v4, "builder":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v3, Ljava/io/BufferedInputStream;

    const/16 v16, 0x2000

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-direct {v3, v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    .end local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .local v3, "bufferedInputStream":Ljava/io/BufferedInputStream;
    :try_start_1
    invoke-virtual {v4, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v5

    .line 132
    .local v5, "childList":Lorg/w3c/dom/NodeList;
    if-nez v5, :cond_3

    .line 177
    if-eqz v3, :cond_2

    .line 178
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 183
    :cond_2
    :goto_1
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 184
    :catch_0
    move-exception v6

    .line 185
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 179
    .end local v6    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v6

    .line 180
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 134
    .end local v6    # "e":Ljava/io/IOException;
    :cond_3
    :try_start_4
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_b
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v9

    .line 135
    .local v9, "length":I
    if-nez v9, :cond_5

    .line 177
    if-eqz v3, :cond_4

    .line 178
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 183
    :cond_4
    :goto_2
    :try_start_6
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    .line 184
    :catch_2
    move-exception v6

    .line 185
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 179
    .end local v6    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v6

    .line 180
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 137
    .end local v6    # "e":Ljava/io/IOException;
    :cond_5
    add-int/lit8 v7, v9, -0x1

    .local v7, "i":I
    :goto_3
    if-ltz v7, :cond_b

    .line 138
    :try_start_7
    invoke-interface {v5, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    .line 139
    .local v12, "node":Lorg/w3c/dom/Node;
    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_7

    .line 140
    move-object v0, v12

    check-cast v0, Lorg/w3c/dom/Element;

    move-object/from16 v16, v0

    const-string v17, "name"

    invoke-interface/range {v16 .. v17}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 141
    .local v11, "name":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_7

    .line 142
    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v13

    .line 143
    .local v13, "resType":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v13, v11, v1}, Lvivo/content/res/VivoThemeValues;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 144
    .local v8, "id":I
    if-lez v8, :cond_7

    .line 145
    const/4 v10, 0x0

    .line 146
    .local v10, "map":Ljava/util/HashMap;
    const/4 v15, 0x0

    .line 147
    .local v15, "value":Ljava/lang/Object;
    const-string v16, "integer-array"

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 148
    iget-object v10, v14, Lvivo/content/res/VivoThemeValues;->mIntegerArrays:Ljava/util/HashMap;

    .line 149
    check-cast v12, Lorg/w3c/dom/Element;

    .end local v12    # "node":Lorg/w3c/dom/Node;
    invoke-static {v13, v12}, Lvivo/content/res/VivoThemeValues;->parseResourceArrayValue(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/lang/Object;

    move-result-object v15

    .line 160
    :goto_4
    if-eqz v15, :cond_7

    .line 161
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v0, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    if-eqz p3, :cond_7

    .line 163
    iget-object v0, v14, Lvivo/content/res/VivoThemeValues;->mSystemItems:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    if-nez v16, :cond_6

    .line 164
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v16

    iput-object v0, v14, Lvivo/content/res/VivoThemeValues;->mSystemItems:Ljava/util/ArrayList;

    .line 165
    :cond_6
    iget-object v0, v14, Lvivo/content/res/VivoThemeValues;->mSystemItems:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    new-instance v17, Lvivo/content/res/VivoThemeValues$ThemeItemInfo;

    move-object/from16 v0, v17

    invoke-direct {v0, v11, v13, v15}, Lvivo/content/res/VivoThemeValues$ThemeItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    .end local v8    # "id":I
    .end local v10    # "map":Ljava/util/HashMap;
    .end local v11    # "name":Ljava/lang/String;
    .end local v13    # "resType":Ljava/lang/String;
    .end local v15    # "value":Ljava/lang/Object;
    :cond_7
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    .line 150
    .restart local v8    # "id":I
    .restart local v10    # "map":Ljava/util/HashMap;
    .restart local v11    # "name":Ljava/lang/String;
    .restart local v12    # "node":Lorg/w3c/dom/Node;
    .restart local v13    # "resType":Ljava/lang/String;
    .restart local v15    # "value":Ljava/lang/Object;
    :cond_8
    const-string v16, "string-array"

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 151
    iget-object v10, v14, Lvivo/content/res/VivoThemeValues;->mStringArrays:Ljava/util/HashMap;

    .line 152
    check-cast v12, Lorg/w3c/dom/Element;

    .end local v12    # "node":Lorg/w3c/dom/Node;
    invoke-static {v13, v12}, Lvivo/content/res/VivoThemeValues;->parseResourceArrayValue(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/lang/Object;

    move-result-object v15

    goto :goto_4

    .line 153
    .restart local v12    # "node":Lorg/w3c/dom/Node;
    :cond_9
    const-string v16, "string"

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 154
    iget-object v10, v14, Lvivo/content/res/VivoThemeValues;->mStrings:Ljava/util/HashMap;

    .line 155
    check-cast v12, Lorg/w3c/dom/Element;

    .end local v12    # "node":Lorg/w3c/dom/Node;
    invoke-interface {v12}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v13, v0}, Lvivo/content/res/VivoThemeValues;->parseResourceNonArrayValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    goto :goto_4

    .line 157
    .restart local v12    # "node":Lorg/w3c/dom/Node;
    :cond_a
    iget-object v10, v14, Lvivo/content/res/VivoThemeValues;->mIntegers:Ljava/util/HashMap;

    .line 158
    check-cast v12, Lorg/w3c/dom/Element;

    .end local v12    # "node":Lorg/w3c/dom/Node;
    invoke-interface {v12}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v13, v0}, Lvivo/content/res/VivoThemeValues;->parseResourceNonArrayValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_b
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v15

    goto :goto_4

    .line 177
    .end local v8    # "id":I
    .end local v10    # "map":Ljava/util/HashMap;
    .end local v11    # "name":Ljava/lang/String;
    .end local v13    # "resType":Ljava/lang/String;
    .end local v15    # "value":Ljava/lang/Object;
    :cond_b
    if-eqz v3, :cond_c

    .line 178
    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 183
    :cond_c
    :goto_5
    :try_start_9
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    move-object v2, v3

    .line 186
    .end local v3    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    goto/16 :goto_0

    .line 179
    .end local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v3    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    :catch_4
    move-exception v6

    .line 180
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 184
    .end local v6    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v6

    .line 185
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    .line 187
    .end local v3    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    goto/16 :goto_0

    .line 173
    .end local v4    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v5    # "childList":Lorg/w3c/dom/NodeList;
    .end local v6    # "e":Ljava/io/IOException;
    .end local v7    # "i":I
    .end local v9    # "length":I
    :catch_6
    move-exception v6

    .line 174
    .local v6, "e":Ljava/lang/Exception;
    :goto_6
    :try_start_a
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 177
    if-eqz v2, :cond_d

    .line 178
    :try_start_b
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 183
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_d
    :goto_7
    :try_start_c
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    goto/16 :goto_0

    .line 184
    :catch_7
    move-exception v6

    .line 185
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 179
    .local v6, "e":Ljava/lang/Exception;
    :catch_8
    move-exception v6

    .line 180
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 176
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v16

    .line 177
    :goto_8
    if-eqz v2, :cond_e

    .line 178
    :try_start_d
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 183
    :cond_e
    :goto_9
    :try_start_e
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    .line 186
    :goto_a
    throw v16

    .line 179
    :catch_9
    move-exception v6

    .line 180
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 184
    .end local v6    # "e":Ljava/io/IOException;
    :catch_a
    move-exception v6

    .line 185
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 176
    .end local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v3    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v4    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    :catchall_1
    move-exception v16

    move-object v2, v3

    .end local v3    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    goto :goto_8

    .line 173
    .end local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v3    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    :catch_b
    move-exception v6

    move-object v2, v3

    .end local v3    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    goto :goto_6
.end method


# virtual methods
.method public clearCache()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lvivo/content/res/VivoThemeValues;->mIntegerArrays:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 75
    iget-object v0, p0, Lvivo/content/res/VivoThemeValues;->mIntegers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 76
    iget-object v0, p0, Lvivo/content/res/VivoThemeValues;->mStringArrays:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 77
    iget-object v0, p0, Lvivo/content/res/VivoThemeValues;->mStrings:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 78
    iget-object v0, p0, Lvivo/content/res/VivoThemeValues;->mSystemItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 79
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lvivo/content/res/VivoThemeValues;->mIntegers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvivo/content/res/VivoThemeValues;->mStrings:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvivo/content/res/VivoThemeValues;->mIntegerArrays:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvivo/content/res/VivoThemeValues;->mStringArrays:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public putAll(Lvivo/content/res/VivoThemeValues;)V
    .locals 2
    .param p1, "themeValues"    # Lvivo/content/res/VivoThemeValues;

    .prologue
    .line 65
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lvivo/content/res/VivoThemeValues;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    iget-object v0, p0, Lvivo/content/res/VivoThemeValues;->mIntegers:Ljava/util/HashMap;

    iget-object v1, p1, Lvivo/content/res/VivoThemeValues;->mIntegers:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 68
    iget-object v0, p0, Lvivo/content/res/VivoThemeValues;->mStrings:Ljava/util/HashMap;

    iget-object v1, p1, Lvivo/content/res/VivoThemeValues;->mStrings:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 69
    iget-object v0, p0, Lvivo/content/res/VivoThemeValues;->mIntegerArrays:Ljava/util/HashMap;

    iget-object v1, p1, Lvivo/content/res/VivoThemeValues;->mIntegerArrays:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 70
    iget-object v0, p0, Lvivo/content/res/VivoThemeValues;->mStringArrays:Ljava/util/HashMap;

    iget-object v1, p1, Lvivo/content/res/VivoThemeValues;->mStringArrays:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_0
.end method
