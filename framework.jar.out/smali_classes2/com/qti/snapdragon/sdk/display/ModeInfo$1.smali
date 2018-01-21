.class final Lcom/qti/snapdragon/sdk/display/ModeInfo$1;
.super Ljava/lang/Object;
.source "ModeInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/snapdragon/sdk/display/ModeInfo;
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
        "Lcom/qti/snapdragon/sdk/display/ModeInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/qti/snapdragon/sdk/display/ModeInfo;
    .locals 4
    .param p1, "inParcel"    # Landroid/os/Parcel;

    .prologue
    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 86
    .local v0, "id":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 88
    .local v1, "modeType":I
    new-instance v3, Lcom/qti/snapdragon/sdk/display/ModeInfo;

    invoke-direct {v3, v0, v2, v1}, Lcom/qti/snapdragon/sdk/display/ModeInfo;-><init>(ILjava/lang/String;I)V

    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/qti/snapdragon/sdk/display/ModeInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/qti/snapdragon/sdk/display/ModeInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/qti/snapdragon/sdk/display/ModeInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 93
    new-array v0, p1, [Lcom/qti/snapdragon/sdk/display/ModeInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/qti/snapdragon/sdk/display/ModeInfo$1;->newArray(I)[Lcom/qti/snapdragon/sdk/display/ModeInfo;

    move-result-object v0

    return-object v0
.end method
