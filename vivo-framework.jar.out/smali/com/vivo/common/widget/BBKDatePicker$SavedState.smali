.class Lcom/vivo/common/widget/BBKDatePicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "BBKDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/widget/BBKDatePicker;
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
            "Lcom/vivo/common/widget/BBKDatePicker$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDay:I

.field private final mMonth:I

.field private final mYear:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 433
    new-instance v0, Lcom/vivo/common/widget/BBKDatePicker$SavedState$1;

    invoke-direct {v0}, Lcom/vivo/common/widget/BBKDatePicker$SavedState$1;-><init>()V

    sput-object v0, Lcom/vivo/common/widget/BBKDatePicker$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 415
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 417
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vivo/common/widget/BBKDatePicker$SavedState;->mYear:I

    .line 418
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vivo/common/widget/BBKDatePicker$SavedState;->mMonth:I

    .line 419
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vivo/common/widget/BBKDatePicker$SavedState;->mDay:I

    .line 420
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/vivo/common/widget/BBKDatePicker$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/vivo/common/widget/BBKDatePicker$1;

    .prologue
    .line 401
    invoke-direct {p0, p1}, Lcom/vivo/common/widget/BBKDatePicker$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;III)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    .prologue
    .line 407
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 409
    iput p2, p0, Lcom/vivo/common/widget/BBKDatePicker$SavedState;->mYear:I

    .line 410
    iput p3, p0, Lcom/vivo/common/widget/BBKDatePicker$SavedState;->mMonth:I

    .line 411
    iput p4, p0, Lcom/vivo/common/widget/BBKDatePicker$SavedState;->mDay:I

    .line 412
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;IIILcom/vivo/common/widget/BBKDatePicker$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcelable;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # Lcom/vivo/common/widget/BBKDatePicker$1;

    .prologue
    .line 401
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vivo/common/widget/BBKDatePicker$SavedState;-><init>(Landroid/os/Parcelable;III)V

    return-void
.end method

.method static synthetic access$100(Lcom/vivo/common/widget/BBKDatePicker$SavedState;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/widget/BBKDatePicker$SavedState;

    .prologue
    .line 401
    iget v0, p0, Lcom/vivo/common/widget/BBKDatePicker$SavedState;->mYear:I

    return v0
.end method

.method static synthetic access$200(Lcom/vivo/common/widget/BBKDatePicker$SavedState;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/widget/BBKDatePicker$SavedState;

    .prologue
    .line 401
    iget v0, p0, Lcom/vivo/common/widget/BBKDatePicker$SavedState;->mMonth:I

    return v0
.end method

.method static synthetic access$300(Lcom/vivo/common/widget/BBKDatePicker$SavedState;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/widget/BBKDatePicker$SavedState;

    .prologue
    .line 401
    iget v0, p0, Lcom/vivo/common/widget/BBKDatePicker$SavedState;->mDay:I

    return v0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 424
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 426
    iget v0, p0, Lcom/vivo/common/widget/BBKDatePicker$SavedState;->mYear:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 427
    iget v0, p0, Lcom/vivo/common/widget/BBKDatePicker$SavedState;->mMonth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 428
    iget v0, p0, Lcom/vivo/common/widget/BBKDatePicker$SavedState;->mDay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 429
    return-void
.end method