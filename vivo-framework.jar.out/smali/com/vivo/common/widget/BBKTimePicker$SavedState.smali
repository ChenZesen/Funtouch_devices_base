.class Lcom/vivo/common/widget/BBKTimePicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "BBKTimePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/widget/BBKTimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vivo/common/widget/BBKTimePicker$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mHour:I

.field private final mMinute:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 446
    new-instance v0, Lcom/vivo/common/widget/BBKTimePicker$SavedState$1;

    invoke-direct {v0}, Lcom/vivo/common/widget/BBKTimePicker$SavedState$1;-><init>()V

    sput-object v0, Lcom/vivo/common/widget/BBKTimePicker$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 425
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 426
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vivo/common/widget/BBKTimePicker$SavedState;->mHour:I

    .line 427
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vivo/common/widget/BBKTimePicker$SavedState;->mMinute:I

    .line 428
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/vivo/common/widget/BBKTimePicker$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/vivo/common/widget/BBKTimePicker$1;

    .prologue
    .line 414
    invoke-direct {p0, p1}, Lcom/vivo/common/widget/BBKTimePicker$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;II)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;
    .param p2, "hour"    # I
    .param p3, "minute"    # I

    .prologue
    .line 419
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 420
    iput p2, p0, Lcom/vivo/common/widget/BBKTimePicker$SavedState;->mHour:I

    .line 421
    iput p3, p0, Lcom/vivo/common/widget/BBKTimePicker$SavedState;->mMinute:I

    .line 422
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;IILcom/vivo/common/widget/BBKTimePicker$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcelable;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # Lcom/vivo/common/widget/BBKTimePicker$1;

    .prologue
    .line 414
    invoke-direct {p0, p1, p2, p3}, Lcom/vivo/common/widget/BBKTimePicker$SavedState;-><init>(Landroid/os/Parcelable;II)V

    return-void
.end method


# virtual methods
.method public getHour()I
    .locals 1

    .prologue
    .line 431
    iget v0, p0, Lcom/vivo/common/widget/BBKTimePicker$SavedState;->mHour:I

    return v0
.end method

.method public getMinute()I
    .locals 1

    .prologue
    .line 435
    iget v0, p0, Lcom/vivo/common/widget/BBKTimePicker$SavedState;->mMinute:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 440
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 441
    iget v0, p0, Lcom/vivo/common/widget/BBKTimePicker$SavedState;->mHour:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 442
    iget v0, p0, Lcom/vivo/common/widget/BBKTimePicker$SavedState;->mMinute:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 443
    return-void
.end method
