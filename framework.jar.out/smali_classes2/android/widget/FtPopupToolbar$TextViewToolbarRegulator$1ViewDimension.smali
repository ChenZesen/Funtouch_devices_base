.class Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator$1ViewDimension;
.super Ljava/lang/Object;
.source "FtPopupToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator;->getAdjustInformation()Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator$AdjustViewInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewDimension"
.end annotation


# instance fields
.field margin:I

.field final synthetic this$1:Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator;

.field width:I


# direct methods
.method constructor <init>(Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator;)V
    .locals 0

    .prologue
    .line 813
    iput-object p1, p0, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator$1ViewDimension;->this$1:Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getAreaWidth()I
    .locals 2

    .prologue
    .line 818
    iget v0, p0, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator$1ViewDimension;->width:I

    iget v1, p0, Landroid/widget/FtPopupToolbar$TextViewToolbarRegulator$1ViewDimension;->margin:I

    add-int/2addr v0, v1

    return v0
.end method
