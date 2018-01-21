.class final Lcom/android/internal/telephony/VivoTelephonyApiParams$1;
.super Ljava/lang/Object;
.source "VivoTelephonyApiParams.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/VivoTelephonyApiParams;
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
        "Lcom/android/internal/telephony/VivoTelephonyApiParams;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/VivoTelephonyApiParams;
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    .line 547
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    .line 548
    .local v0, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v1, Lcom/android/internal/telephony/VivoTelephonyApiParams;

    invoke-direct {v1, v0, v2}, Lcom/android/internal/telephony/VivoTelephonyApiParams;-><init>(Ljava/util/HashMap;Lcom/android/internal/telephony/VivoTelephonyApiParams$1;)V

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 543
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/VivoTelephonyApiParams$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/VivoTelephonyApiParams;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/internal/telephony/VivoTelephonyApiParams;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 552
    new-array v0, p1, [Lcom/android/internal/telephony/VivoTelephonyApiParams;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 543
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/VivoTelephonyApiParams$1;->newArray(I)[Lcom/android/internal/telephony/VivoTelephonyApiParams;

    move-result-object v0

    return-object v0
.end method
