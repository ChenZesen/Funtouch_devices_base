.class final Lcom/vivo/services/security/client/VivoPermissionInfo$1;
.super Ljava/lang/Object;
.source "VivoPermissionInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/security/client/VivoPermissionInfo;
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
        "Lcom/vivo/services/security/client/VivoPermissionInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/vivo/services/security/client/VivoPermissionInfo;
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 382
    new-instance v0, Lcom/vivo/services/security/client/VivoPermissionInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vivo/services/security/client/VivoPermissionInfo;-><init>(Ljava/lang/String;)V

    .line 383
    .local v0, "config":Lcom/vivo/services/security/client/VivoPermissionInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    # setter for: Lcom/vivo/services/security/client/VivoPermissionInfo;->mIsWhiteListApp:Z
    invoke-static {v0, v1}, Lcom/vivo/services/security/client/VivoPermissionInfo;->access$002(Lcom/vivo/services/security/client/VivoPermissionInfo;Z)Z

    .line 384
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    # setter for: Lcom/vivo/services/security/client/VivoPermissionInfo;->mIsBlackListApp:Z
    invoke-static {v0, v1}, Lcom/vivo/services/security/client/VivoPermissionInfo;->access$102(Lcom/vivo/services/security/client/VivoPermissionInfo;Z)Z

    .line 385
    # getter for: Lcom/vivo/services/security/client/VivoPermissionInfo;->mPermissionResults:[I
    invoke-static {v0}, Lcom/vivo/services/security/client/VivoPermissionInfo;->access$200(Lcom/vivo/services/security/client/VivoPermissionInfo;)[I

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    .line 386
    # getter for: Lcom/vivo/services/security/client/VivoPermissionInfo;->mPermissionBackup:[I
    invoke-static {v0}, Lcom/vivo/services/security/client/VivoPermissionInfo;->access$300(Lcom/vivo/services/security/client/VivoPermissionInfo;)[I

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    .line 387
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    :goto_2
    # setter for: Lcom/vivo/services/security/client/VivoPermissionInfo;->mIsConfigured:Z
    invoke-static {v0, v2}, Lcom/vivo/services/security/client/VivoPermissionInfo;->access$402(Lcom/vivo/services/security/client/VivoPermissionInfo;Z)Z

    .line 389
    return-object v0

    :cond_0
    move v1, v3

    .line 383
    goto :goto_0

    :cond_1
    move v1, v3

    .line 384
    goto :goto_1

    :cond_2
    move v2, v3

    .line 387
    goto :goto_2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 378
    invoke-virtual {p0, p1}, Lcom/vivo/services/security/client/VivoPermissionInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/vivo/services/security/client/VivoPermissionInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/vivo/services/security/client/VivoPermissionInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 395
    new-array v0, p1, [Lcom/vivo/services/security/client/VivoPermissionInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 378
    invoke-virtual {p0, p1}, Lcom/vivo/services/security/client/VivoPermissionInfo$1;->newArray(I)[Lcom/vivo/services/security/client/VivoPermissionInfo;

    move-result-object v0

    return-object v0
.end method
