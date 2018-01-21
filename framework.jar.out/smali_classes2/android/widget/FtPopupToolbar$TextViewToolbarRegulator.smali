.class Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator;
.super Ljava/lang/Object;
.source "FtPopupToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/FtPopupToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TextViewToolbarRegulator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator$AdjustViewInfo;
    }
.end annotation


# instance fields
.field private Debug:Z

.field private TAG:Ljava/lang/String;

.field private availableAreaHeight:I

.field private availableAreaWidth:I

.field private isViewChanged:Z

.field private mContext:Landroid/content/Context;

.field private mToolbarGroup:Landroid/view/ViewGroup;

.field final synthetic this$0:Landroid/widget/FtPopupToolbar;


# direct methods
.method public constructor <init>(Landroid/widget/FtPopupToolbar;Landroid/content/Context;)V
    .locals 2
    .param p2, "con"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 753
    iput-object p1, p0, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator;->this$0:Landroid/widget/FtPopupToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 726
    const-string v0, "toolbar"

    iput-object v0, p0, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator;->TAG:Ljava/lang/String;

    .line 727
    iput-boolean v1, p0, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator;->Debug:Z

    .line 730
    iput v1, p0, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator;->availableAreaWidth:I

    .line 731
    iput v1, p0, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator;->availableAreaHeight:I

    .line 737
    iput-boolean v1, p0, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator;->isViewChanged:Z

    .line 754
    iput-object p2, p0, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator;->mContext:Landroid/content/Context;

    .line 755
    return-void
.end method

.method private getAdjustInformation()Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator$AdjustViewInfo;
    .locals 14

    .prologue
    const/4 v11, 0x0

    .line 823
    iget-object v12, p0, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator;->mToolbarGroup:Landroid/view/ViewGroup;

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    .line 825
    .local v9, "viewCount":I
    iget v0, p0, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator;->availableAreaWidth:I

    .line 827
    .local v0, "adjustWidth":I
    const/4 v8, 0x0

    .line 829
    .local v8, "textViewCount":I
    const/4 v3, 0x0

    .line 830
    .local v3, "itemView":Landroid/view/View;
    new-instance v2, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator$AdjustViewInfo;

    invoke-direct {v2, p0, v11}, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator$AdjustViewInfo;-><init>(Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator;Landroid/widget/FtPopupToolbar$1;)V

    .line 831
    .local v2, "info":Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator$AdjustViewInfo;
    const/4 v7, 0x0

    .line 834
    .local v7, "paint":Landroid/graphics/Paint;
    new-array v10, v9, [Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator$1ViewDimension;

    .line 836
    .local v10, "viewDimen":[Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator$1ViewDimension;
    new-array v12, v9, [Landroid/widget/TextView;

    iput-object v12, v2, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator$AdjustViewInfo;->adjustView:[Landroid/widget/TextView;

    .line 837
    new-array v12, v9, [I

    iput-object v12, v2, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator$AdjustViewInfo;->measuredWidth:[I

    .line 838
    new-array v12, v9, [I

    iput-object v12, v2, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator$AdjustViewInfo;->marginWidth:[I

    .line 840
    const/4 v6, 0x0

    .line 843
    .local v6, "lParam":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v9, :cond_2

    .line 844
    iget-object v12, p0, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator;->mToolbarGroup:Landroid/view/ViewGroup;

    invoke-virtual {v12, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 845
    new-instance v12, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator$1ViewDimension;

    invoke-direct {v12, p0}, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator$1ViewDimension;-><init>(Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator;)V

    aput-object v12, v10, v1

    .line 848
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-eqz v12, :cond_0

    .line 843
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 851
    :cond_0
    instance-of v12, v3, Landroid/widget/TextView;

    if-nez v12, :cond_1

    .line 852
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    sub-int/2addr v0, v12

    goto :goto_1

    .line 855
    :cond_1
    add-int/lit8 v8, v8, 0x1

    .line 856
    aget-object v12, v10, v1

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    iput v13, v12, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator$1ViewDimension;->width:I

    .line 857
    aget-object v12, v10, v1

    const/4 v13, 0x0

    iput v13, v12, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator$1ViewDimension;->margin:I

    goto :goto_1

    .line 861
    :cond_2
    if-nez v8, :cond_4

    move-object v2, v11

    .line 897
    .end local v2    # "info":Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator$AdjustViewInfo;
    :cond_3
    return-object v2

    .line 864
    .restart local v2    # "info":Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator$AdjustViewInfo;
    :cond_4
    div-int v11, v0, v8

    iput v11, v2, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator$AdjustViewInfo;->maxWidth:I

    .line 867
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v9, :cond_3

    .line 868
    iget-object v11, p0, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator;->mToolbarGroup:Landroid/view/ViewGroup;

    invoke-virtual {v11, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 870
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-eqz v11, :cond_6

    .line 867
    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 873
    :cond_6
    instance-of v11, v3, Landroid/widget/TextView;

    if-eqz v11, :cond_5

    .line 874
    aget-object v11, v10, v1

    invoke-virtual {v11}, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator$1ViewDimension;->getAreaWidth()I

    move-result v11

    iget v12, v2, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator$AdjustViewInfo;->maxWidth:I

    if-le v11, v12, :cond_a

    .line 877
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_4
    iget v11, v2, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator$AdjustViewInfo;->viewCount:I

    if-ge v4, v11, :cond_7

    .line 878
    iget-object v11, v2, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator$AdjustViewInfo;->measuredWidth:[I

    aget v11, v11, v4

    aget-object v12, v10, v1

    invoke-virtual {v12}, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator$1ViewDimension;->getAreaWidth()I

    move-result v12

    if-le v11, v12, :cond_8

    .line 880
    :cond_7
    iget v5, v2, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator$AdjustViewInfo;->viewCount:I

    .local v5, "k":I
    :goto_5
    if-le v5, v4, :cond_9

    .line 881
    iget-object v11, v2, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator$AdjustViewInfo;->adjustView:[Landroid/widget/TextView;

    iget-object v12, v2, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator$AdjustViewInfo;->adjustView:[Landroid/widget/TextView;

    add-int/lit8 v13, v5, -0x1

    aget-object v12, v12, v13

    aput-object v12, v11, v5

    .line 882
    iget-object v11, v2, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator$AdjustViewInfo;->measuredWidth:[I

    iget-object v12, v2, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator$AdjustViewInfo;->measuredWidth:[I

    add-int/lit8 v13, v5, -0x1

    aget v12, v12, v13

    aput v12, v11, v5

    .line 880
    add-int/lit8 v5, v5, -0x1

    goto :goto_5

    .line 877
    .end local v5    # "k":I
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 885
    .restart local v5    # "k":I
    :cond_9
    iget-object v12, v2, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator$AdjustViewInfo;->adjustView:[Landroid/widget/TextView;

    move-object v11, v3

    check-cast v11, Landroid/widget/TextView;

    aput-object v11, v12, v4

    .line 886
    iget-object v11, v2, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator$AdjustViewInfo;->measuredWidth:[I

    aget-object v12, v10, v1

    iget v12, v12, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator$1ViewDimension;->width:I

    aput v12, v11, v4

    .line 887
    iget-object v11, v2, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator$AdjustViewInfo;->marginWidth:[I

    aget-object v12, v10, v1

    iget v12, v12, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator$1ViewDimension;->margin:I

    aput v12, v11, v4

    .line 888
    iget v11, v2, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator$AdjustViewInfo;->viewCount:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v2, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator$AdjustViewInfo;->viewCount:I

    goto :goto_3

    .end local v4    # "j":I
    .end local v5    # "k":I
    :cond_a
    move-object v11, v3

    .line 891
    check-cast v11, Landroid/widget/TextView;

    aget-object v12, v10, v1

    iget v12, v12, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator$1ViewDimension;->width:I

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 892
    iget v11, v2, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator$AdjustViewInfo;->extraWidth:I

    iget v12, v2, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator$AdjustViewInfo;->maxWidth:I

    aget-object v13, v10, v1

    invoke-virtual {v13}, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator$1ViewDimension;->getAreaWidth()I

    move-result v13

    sub-int/2addr v12, v13

    add-int/2addr v11, v12

    iput v11, v2, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator$AdjustViewInfo;->extraWidth:I

    goto :goto_3
.end method

.method private layout()Z
    .locals 9

    .prologue
    .line 774
    invoke-direct {p0}, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator;->getAdjustInformation()Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator$AdjustViewInfo;

    move-result-object v2

    .line 776
    .local v2, "info":Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator$AdjustViewInfo;
    if-nez v2, :cond_0

    .line 777
    const/4 v5, 0x0

    .line 802
    :goto_0
    return v5

    .line 779
    :cond_0
    iget-object v5, p0, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "viewCount = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator$AdjustViewInfo;->viewCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\nextraWidth = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator$AdjustViewInfo;->extraWidth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\nmaxWidth = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator$AdjustViewInfo;->maxWidth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    iget v5, v2, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator$AdjustViewInfo;->viewCount:I

    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_2

    .line 784
    iget-object v5, v2, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator$AdjustViewInfo;->adjustView:[Landroid/widget/TextView;

    aget-object v0, v5, v1

    .line 785
    .local v0, "adjustView":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    .line 788
    .local v3, "paint":Landroid/graphics/Paint;
    iget v5, v2, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator$AdjustViewInfo;->extraWidth:I

    iget v6, v2, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator$AdjustViewInfo;->maxWidth:I

    add-int/2addr v5, v6

    iget-object v6, v2, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator$AdjustViewInfo;->measuredWidth:[I

    aget v6, v6, v1

    iget-object v7, v2, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator$AdjustViewInfo;->marginWidth:[I

    aget v7, v7, v1

    add-int/2addr v6, v7

    if-ge v5, v6, :cond_1

    .line 789
    iget v5, v2, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator$AdjustViewInfo;->extraWidth:I

    iget v6, v2, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator$AdjustViewInfo;->maxWidth:I

    add-int/2addr v5, v6

    invoke-virtual {p0, v0, v5}, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator;->getProperWidth(Landroid/widget/TextView;I)I

    move-result v4

    .line 791
    .local v4, "requiredWidth":I
    iget-object v5, p0, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " requiredWidth = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    iget-object v5, v2, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator$AdjustViewInfo;->marginWidth:[I

    aget v5, v5, v1

    sub-int v5, v4, v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 793
    iget v5, v2, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator$AdjustViewInfo;->extraWidth:I

    iget v6, v2, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator$AdjustViewInfo;->maxWidth:I

    sub-int/2addr v6, v4

    add-int/2addr v5, v6

    iput v5, v2, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator$AdjustViewInfo;->extraWidth:I

    .line 783
    .end local v4    # "requiredWidth":I
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 797
    :cond_1
    iget-object v5, v2, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator$AdjustViewInfo;->measuredWidth:[I

    aget v5, v5, v1

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 798
    iget v5, v2, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator$AdjustViewInfo;->extraWidth:I

    iget v6, v2, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator$AdjustViewInfo;->maxWidth:I

    iget-object v7, v2, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator$AdjustViewInfo;->measuredWidth:[I

    aget v7, v7, v1

    iget-object v8, v2, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator$AdjustViewInfo;->marginWidth:[I

    aget v8, v8, v1

    add-int/2addr v7, v8

    sub-int/2addr v6, v7

    add-int/2addr v5, v6

    iput v5, v2, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator$AdjustViewInfo;->extraWidth:I

    goto :goto_2

    .line 802
    .end local v0    # "adjustView":Landroid/widget/TextView;
    .end local v3    # "paint":Landroid/graphics/Paint;
    :cond_2
    const/4 v5, 0x1

    goto/16 :goto_0
.end method

.method private log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 985
    iget-boolean v0, p0, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator;->Debug:Z

    if-eqz v0, :cond_0

    .line 986
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    :cond_0
    return-void
.end method

.method private resetViewsRegion(Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "group"    # Landroid/view/ViewGroup;

    .prologue
    .line 916
    if-nez p1, :cond_1

    .line 926
    :cond_0
    return-void

    .line 919
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 920
    .local v2, "viewCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 921
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 923
    .local v1, "v":Landroid/view/View;
    instance-of v3, v1, Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 924
    check-cast v1, Landroid/widget/TextView;

    .end local v1    # "v":Landroid/view/View;
    const v3, 0x7fffffff

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 920
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected adjust(Landroid/view/ViewGroup;[I)Z
    .locals 3
    .param p1, "view"    # Landroid/view/ViewGroup;
    .param p2, "dimen"    # [I

    .prologue
    const/4 v0, 0x0

    .line 758
    iput-object p1, p0, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator;->mToolbarGroup:Landroid/view/ViewGroup;

    .line 760
    iget-object v1, p0, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator;->mToolbarGroup:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    aget v1, p2, v0

    const/4 v2, 0x1

    aget v2, p2, v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator;->needChange(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 761
    invoke-direct {p0}, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator;->layout()Z

    move-result v0

    .line 763
    :cond_0
    return v0
.end method

.method protected getProperWidth(Landroid/widget/TextView;I)I
    .locals 13
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "maxWidth"    # I

    .prologue
    .line 937
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    .line 938
    .local v9, "str":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    .line 941
    .local v6, "paint":Landroid/graphics/Paint;
    const/4 v7, 0x0

    .local v7, "properPos":I
    const/4 v1, 0x0

    .line 944
    .local v1, "i":I
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x1

    if-gt v11, v12, :cond_1

    .line 981
    .end local p2    # "maxWidth":I
    :cond_0
    :goto_0
    return p2

    .line 947
    .restart local p2    # "maxWidth":I
    :cond_1
    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v11

    float-to-int v11, v11

    mul-int/lit8 v12, p2, 0x2

    if-ge v11, v12, :cond_0

    .line 953
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v1, v11, :cond_2

    .line 954
    const/4 v11, 0x0

    add-int/lit8 v12, v1, 0x1

    invoke-virtual {v9, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v11

    float-to-int v0, v11

    .line 955
    .local v0, "firstLineLen":I
    add-int/lit8 v11, v1, 0x1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v9, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v11

    float-to-int v8, v11

    .line 957
    .local v8, "secondLineLen":I
    if-lt v0, v8, :cond_5

    .line 958
    add-int/lit8 v7, v1, 0x1

    .line 963
    .end local v0    # "firstLineLen":I
    .end local v8    # "secondLineLen":I
    :cond_2
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    if-lt v1, v11, :cond_3

    .line 964
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v7, v11, -0x1

    .line 966
    :cond_3
    const/4 v11, 0x0

    invoke-virtual {v9, v11, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v11

    float-to-int v0, v11

    .line 967
    .restart local v0    # "firstLineLen":I
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v9, v7, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v11

    float-to-int v8, v11

    .line 969
    .restart local v8    # "secondLineLen":I
    if-le v0, v8, :cond_6

    move v4, v0

    .line 970
    .local v4, "max":I
    :goto_2
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v11

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v12

    add-int v5, v11, v12

    .line 971
    .local v5, "padding":I
    const/4 v3, 0x0

    .line 973
    .local v3, "margin":I
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .line 974
    .local v10, "vParam":Landroid/view/ViewGroup$LayoutParams;
    const/4 v2, 0x0

    .line 976
    .local v2, "mParam":Landroid/view/ViewGroup$LayoutParams;
    instance-of v11, v10, Landroid/view/ViewGroup$LayoutParams;

    if-eqz v11, :cond_4

    .line 977
    move-object v2, v10

    .line 978
    const/4 v3, 0x0

    .line 981
    :cond_4
    add-int v11, v4, v5

    add-int/lit8 p2, v11, 0x0

    goto :goto_0

    .line 953
    .end local v2    # "mParam":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "margin":I
    .end local v4    # "max":I
    .end local v5    # "padding":I
    .end local v10    # "vParam":Landroid/view/ViewGroup$LayoutParams;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    move v4, v8

    .line 969
    goto :goto_2
.end method

.method protected needChange(II)Z
    .locals 2
    .param p1, "usableWidth"    # I
    .param p2, "usableHeight"    # I

    .prologue
    const/4 v1, 0x0

    .line 906
    iget-object v0, p0, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator;->mToolbarGroup:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator;->resetViewsRegion(Landroid/view/ViewGroup;)V

    .line 907
    iget-object v0, p0, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator;->mToolbarGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v1}, Landroid/view/ViewGroup;->measure(II)V

    .line 909
    iput p1, p0, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator;->availableAreaWidth:I

    .line 910
    iput p2, p0, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator;->availableAreaHeight:I

    .line 912
    const/4 v0, 0x1

    return v0
.end method
