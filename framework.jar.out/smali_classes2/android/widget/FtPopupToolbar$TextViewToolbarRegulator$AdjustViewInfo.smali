.class Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator$AdjustViewInfo;
.super Ljava/lang/Object;
.source "FtPopupToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdjustViewInfo"
.end annotation


# instance fields
.field adjustView:[Landroid/widget/TextView;

.field extraWidth:I

.field marginWidth:[I

.field maxWidth:I

.field measuredWidth:[I

.field final synthetic this$1:Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator;

.field viewCount:I


# direct methods
.method private constructor <init>(Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 739
    iput-object p1, p0, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator$AdjustViewInfo;->this$1:Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 741
    iput-object v1, p0, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator$AdjustViewInfo;->adjustView:[Landroid/widget/TextView;

    .line 743
    iput-object v1, p0, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator$AdjustViewInfo;->measuredWidth:[I

    .line 745
    iput-object v1, p0, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator$AdjustViewInfo;->marginWidth:[I

    .line 747
    iput v0, p0, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator$AdjustViewInfo;->viewCount:I

    .line 749
    iput v0, p0, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator$AdjustViewInfo;->extraWidth:I

    .line 750
    iput v0, p0, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator$AdjustViewInfo;->maxWidth:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator;Landroid/widget/FtPopupToolbar$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator;
    .param p2, "x1"    # Landroid/widget/FtPopupToolbar$1;

    .prologue
    .line 739
    invoke-direct {p0, p1}, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator$AdjustViewInfo;-><init>(Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator;)V

    return-void
.end method
