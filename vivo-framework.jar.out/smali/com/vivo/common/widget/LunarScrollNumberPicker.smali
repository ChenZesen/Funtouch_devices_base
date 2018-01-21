.class public Lcom/vivo/common/widget/LunarScrollNumberPicker;
.super Lcom/vivo/common/widget/ScrollNumberPicker;
.source "LunarScrollNumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/common/widget/LunarScrollNumberPicker$OnChangedListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private mListener:Lcom/vivo/common/widget/LunarScrollNumberPicker$OnChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/vivo/common/widget/ScrollNumberPicker;-><init>(Landroid/content/Context;)V

    .line 9
    const-string v0, "LunarScrollNumberPicker"

    iput-object v0, p0, Lcom/vivo/common/widget/LunarScrollNumberPicker;->TAG:Ljava/lang/String;

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/common/widget/LunarScrollNumberPicker;->DEBUG:Z

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/common/widget/LunarScrollNumberPicker;->mListener:Lcom/vivo/common/widget/LunarScrollNumberPicker$OnChangedListener;

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/vivo/common/widget/ScrollNumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 9
    const-string v0, "LunarScrollNumberPicker"

    iput-object v0, p0, Lcom/vivo/common/widget/LunarScrollNumberPicker;->TAG:Ljava/lang/String;

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/common/widget/LunarScrollNumberPicker;->DEBUG:Z

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/common/widget/LunarScrollNumberPicker;->mListener:Lcom/vivo/common/widget/LunarScrollNumberPicker$OnChangedListener;

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defAttr"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/vivo/common/widget/ScrollNumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 9
    const-string v0, "LunarScrollNumberPicker"

    iput-object v0, p0, Lcom/vivo/common/widget/LunarScrollNumberPicker;->TAG:Ljava/lang/String;

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/common/widget/LunarScrollNumberPicker;->DEBUG:Z

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/common/widget/LunarScrollNumberPicker;->mListener:Lcom/vivo/common/widget/LunarScrollNumberPicker$OnChangedListener;

    .line 24
    return-void
.end method


# virtual methods
.method protected onSelectChanged(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "desPos"    # I
    .param p2, "curStr"    # Ljava/lang/String;
    .param p3, "selectItem"    # Ljava/lang/String;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/vivo/common/widget/LunarScrollNumberPicker;->mListener:Lcom/vivo/common/widget/LunarScrollNumberPicker$OnChangedListener;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/vivo/common/widget/LunarScrollNumberPicker;->mListener:Lcom/vivo/common/widget/LunarScrollNumberPicker$OnChangedListener;

    invoke-interface {v0, p1}, Lcom/vivo/common/widget/LunarScrollNumberPicker$OnChangedListener;->onChanged(I)V

    .line 44
    :cond_0
    return-void
.end method

.method public setOnSelectChangedListener(Lcom/vivo/common/widget/LunarScrollNumberPicker$OnChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/vivo/common/widget/LunarScrollNumberPicker$OnChangedListener;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/vivo/common/widget/LunarScrollNumberPicker;->mListener:Lcom/vivo/common/widget/LunarScrollNumberPicker$OnChangedListener;

    .line 39
    return-void
.end method

.method public setRange([Ljava/lang/String;II)V
    .locals 3
    .param p1, "list"    # [Ljava/lang/String;
    .param p2, "maxLines"    # I
    .param p3, "monthdays"    # I

    .prologue
    .line 27
    if-eqz p1, :cond_0

    if-gtz p3, :cond_1

    .line 35
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    new-array v1, p3, [Ljava/lang/String;

    .line 31
    .local v1, "newList":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p3, :cond_2

    .line 32
    aget-object v2, p1, v0

    aput-object v2, v1, v0

    .line 31
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 34
    :cond_2
    invoke-virtual {p0, v1, p2}, Lcom/vivo/common/widget/LunarScrollNumberPicker;->setRange([Ljava/lang/String;I)V

    goto :goto_0
.end method
