.class final Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData$1;
.super Ljava/lang/Object;
.source "FrameworkPackageData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 113
    new-instance v0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;

    invoke-direct {v0, p1}, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 119
    new-array v0, p1, [Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData$1;->newArray(I)[Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;

    move-result-object v0

    return-object v0
.end method
