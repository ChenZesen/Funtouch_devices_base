.class Lcom/vivo/common/widget/BBKVivoLunarDatePicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "BBKVivoLunarDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/widget/BBKVivoLunarDatePicker;
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
            "Lcom/vivo/common/widget/BBKVivoLunarDatePicker$SavedState;",
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
    .line 341
    new-instance v0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker$SavedState$1;

    invoke-direct {v0}, Lcom/vivo/common/widget/BBKVivoLunarDatePicker$SavedState$1;-><init>()V

    sput-object v0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 326
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 327
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker$SavedState;->mYear:I

    .line 328
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker$SavedState;->mMonth:I

    .line 329
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker$SavedState;->mDay:I

    .line 330
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/vivo/common/widget/BBKVivoLunarDatePicker$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/vivo/common/widget/BBKVivoLunarDatePicker$1;

    .prologue
    .line 310
    invoke-direct {p0, p1}, Lcom/vivo/common/widget/BBKVivoLunarDatePicker$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;III)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    .prologue
    .line 319
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 320
    iput p2, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker$SavedState;->mYear:I

    .line 321
    iput p3, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker$SavedState;->mMonth:I

    .line 322
    iput p4, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker$SavedState;->mDay:I

    .line 323
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;IIILcom/vivo/common/widget/BBKVivoLunarDatePicker$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcelable;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # Lcom/vivo/common/widget/BBKVivoLunarDatePicker$1;

    .prologue
    .line 310
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vivo/common/widget/BBKVivoLunarDatePicker$SavedState;-><init>(Landroid/os/Parcelable;III)V

    return-void
.end method

.method static synthetic access$100(Lcom/vivo/common/widget/BBKVivoLunarDatePicker$SavedState;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/widget/BBKVivoLunarDatePicker$SavedState;

    .prologue
    .line 310
    iget v0, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker$SavedState;->mYear:I

    return v0
.end method

.method static synthetic access$200(Lcom/vivo/common/widget/BBKVivoLunarDatePicker$SavedState;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/widget/BBKVivoLunarDatePicker$SavedState;

    .prologue
    .line 310
    iget v0, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker$SavedState;->mMonth:I

    return v0
.end method

.method static synthetic access$300(Lcom/vivo/common/widget/BBKVivoLunarDatePicker$SavedState;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/widget/BBKVivoLunarDatePicker$SavedState;

    .prologue
    .line 310
    iget v0, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker$SavedState;->mDay:I

    return v0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 334
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 335
    iget v0, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker$SavedState;->mYear:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 336
    iget v0, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker$SavedState;->mMonth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 337
    iget v0, p0, Lcom/vivo/common/widget/BBKVivoLunarDatePicker$SavedState;->mDay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 338
    return-void
.end method
