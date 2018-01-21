.class final Landroid/net/wifi/VivoWifiConfiguration$1;
.super Ljava/lang/Object;
.source "VivoWifiConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/VivoWifiConfiguration;
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
        "Landroid/net/wifi/VivoWifiConfiguration;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/VivoWifiConfiguration;
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 217
    new-instance v0, Landroid/net/wifi/VivoWifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/VivoWifiConfiguration;-><init>()V

    .line 218
    .local v0, "config":Landroid/net/wifi/VivoWifiConfiguration;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Landroid/net/wifi/VivoWifiConfiguration;->vivoConnectedCount:I
    invoke-static {v0, v1}, Landroid/net/wifi/VivoWifiConfiguration;->access$002(Landroid/net/wifi/VivoWifiConfiguration;I)I

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Landroid/net/wifi/VivoWifiConfiguration;->vivoConfigInitTime:I
    invoke-static {v0, v1}, Landroid/net/wifi/VivoWifiConfiguration;->access$102(Landroid/net/wifi/VivoWifiConfiguration;I)I

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Landroid/net/wifi/VivoWifiConfiguration;->vivoLastConnectedTime:I
    invoke-static {v0, v1}, Landroid/net/wifi/VivoWifiConfiguration;->access$202(Landroid/net/wifi/VivoWifiConfiguration;I)I

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Landroid/net/wifi/VivoWifiConfiguration;->vivoLastAutoEnabledTime:I
    invoke-static {v0, v1}, Landroid/net/wifi/VivoWifiConfiguration;->access$302(Landroid/net/wifi/VivoWifiConfiguration;I)I

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Landroid/net/wifi/VivoWifiConfiguration;->vivoNoInternetAccessTime:I
    invoke-static {v0, v1}, Landroid/net/wifi/VivoWifiConfiguration;->access$402(Landroid/net/wifi/VivoWifiConfiguration;I)I

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    # setter for: Landroid/net/wifi/VivoWifiConfiguration;->vivoLatitude:D
    invoke-static {v0, v4, v5}, Landroid/net/wifi/VivoWifiConfiguration;->access$502(Landroid/net/wifi/VivoWifiConfiguration;D)D

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    # setter for: Landroid/net/wifi/VivoWifiConfiguration;->vivoLongitude:D
    invoke-static {v0, v4, v5}, Landroid/net/wifi/VivoWifiConfiguration;->access$602(Landroid/net/wifi/VivoWifiConfiguration;D)D

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    # setter for: Landroid/net/wifi/VivoWifiConfiguration;->vivoIsInRange:Z
    invoke-static {v0, v1}, Landroid/net/wifi/VivoWifiConfiguration;->access$702(Landroid/net/wifi/VivoWifiConfiguration;Z)Z

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    # setter for: Landroid/net/wifi/VivoWifiConfiguration;->vivoIsLastEnableAP:Z
    invoke-static {v0, v1}, Landroid/net/wifi/VivoWifiConfiguration;->access$802(Landroid/net/wifi/VivoWifiConfiguration;Z)Z

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Landroid/net/wifi/VivoWifiConfiguration;->vivoNoInternetState:I
    invoke-static {v0, v1}, Landroid/net/wifi/VivoWifiConfiguration;->access$902(Landroid/net/wifi/VivoWifiConfiguration;I)I

    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    :goto_2
    # setter for: Landroid/net/wifi/VivoWifiConfiguration;->vivoNeedAutoJoinScan:Z
    invoke-static {v0, v2}, Landroid/net/wifi/VivoWifiConfiguration;->access$1002(Landroid/net/wifi/VivoWifiConfiguration;Z)Z

    .line 229
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Landroid/net/wifi/VivoWifiConfiguration;->vivoPoorRssiState:I
    invoke-static {v0, v1}, Landroid/net/wifi/VivoWifiConfiguration;->access$1102(Landroid/net/wifi/VivoWifiConfiguration;I)I

    .line 230
    return-object v0

    :cond_0
    move v1, v3

    .line 225
    goto :goto_0

    :cond_1
    move v1, v3

    .line 226
    goto :goto_1

    :cond_2
    move v2, v3

    .line 228
    goto :goto_2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 215
    invoke-virtual {p0, p1}, Landroid/net/wifi/VivoWifiConfiguration$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/VivoWifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/VivoWifiConfiguration;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 234
    new-array v0, p1, [Landroid/net/wifi/VivoWifiConfiguration;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 215
    invoke-virtual {p0, p1}, Landroid/net/wifi/VivoWifiConfiguration$1;->newArray(I)[Landroid/net/wifi/VivoWifiConfiguration;

    move-result-object v0

    return-object v0
.end method
