.class final Lcom/vivo/services/hallstate/HallEvent$1;
.super Ljava/lang/Object;
.source "HallEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/hallstate/HallEvent;
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
        "Lcom/vivo/services/hallstate/HallEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/vivo/services/hallstate/HallEvent;
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 122
    new-instance v0, Lcom/vivo/services/hallstate/HallEvent;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-direct {v0, v2, v3, v1}, Lcom/vivo/services/hallstate/HallEvent;-><init>(JI)V

    .line 123
    .local v0, "config":Lcom/vivo/services/hallstate/HallEvent;
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 118
    invoke-virtual {p0, p1}, Lcom/vivo/services/hallstate/HallEvent$1;->createFromParcel(Landroid/os/Parcel;)Lcom/vivo/services/hallstate/HallEvent;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/vivo/services/hallstate/HallEvent;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 129
    new-array v0, p1, [Lcom/vivo/services/hallstate/HallEvent;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 118
    invoke-virtual {p0, p1}, Lcom/vivo/services/hallstate/HallEvent$1;->newArray(I)[Lcom/vivo/services/hallstate/HallEvent;

    move-result-object v0

    return-object v0
.end method
