.class public Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;
.super Ljava/lang/Object;
.source "FrameworkPackageData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mDownloadUrl:Ljava/lang/String;

.field public mIconUrl:Ljava/lang/String;

.field public mId:J

.field public mIsUpdate:I

.field public mModuleId:Ljava/lang/String;

.field public mOffical:I

.field public mOriginId:I

.field public mPackageName:Ljava/lang/String;

.field public mPatchStr:Ljava/lang/String;

.field public mRatersCount:I

.field public mScore:F

.field public mTarget:Ljava/lang/String;

.field public mTitleEn:Ljava/lang/String;

.field public mTitleZh:Ljava/lang/String;

.field public mTotalSize:J

.field public mVersionCode:I

.field public mVersionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    new-instance v0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData$1;

    invoke-direct {v0}, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData$1;-><init>()V

    sput-object v0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-wide v4, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mId:J

    .line 13
    iput-object v1, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mTitleZh:Ljava/lang/String;

    .line 14
    iput-object v1, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mTitleEn:Ljava/lang/String;

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mScore:F

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mRatersCount:I

    .line 17
    iput-object v1, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mPackageName:Ljava/lang/String;

    .line 18
    iput v2, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mVersionCode:I

    .line 19
    iput-object v1, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mVersionName:Ljava/lang/String;

    .line 20
    iput-object v1, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mDownloadUrl:Ljava/lang/String;

    .line 21
    iput-wide v4, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mTotalSize:J

    .line 22
    iput-object v1, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mIconUrl:Ljava/lang/String;

    .line 23
    iput-object v1, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mPatchStr:Ljava/lang/String;

    .line 24
    iput v2, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mOffical:I

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "pl"    # Landroid/os/Parcel;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-wide v4, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mId:J

    .line 13
    iput-object v1, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mTitleZh:Ljava/lang/String;

    .line 14
    iput-object v1, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mTitleEn:Ljava/lang/String;

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mScore:F

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mRatersCount:I

    .line 17
    iput-object v1, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mPackageName:Ljava/lang/String;

    .line 18
    iput v2, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mVersionCode:I

    .line 19
    iput-object v1, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mVersionName:Ljava/lang/String;

    .line 20
    iput-object v1, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mDownloadUrl:Ljava/lang/String;

    .line 21
    iput-wide v4, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mTotalSize:J

    .line 22
    iput-object v1, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mIconUrl:Ljava/lang/String;

    .line 23
    iput-object v1, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mPatchStr:Ljava/lang/String;

    .line 24
    iput v2, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mOffical:I

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mId:J

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mTitleZh:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mTitleEn:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mScore:F

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mRatersCount:I

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mPackageName:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mVersionCode:I

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mVersionName:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mDownloadUrl:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mTotalSize:J

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mIconUrl:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mPatchStr:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mOffical:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mTarget:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mOriginId:I

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mModuleId:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mIsUpdate:I

    .line 57
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "pl"    # Landroid/os/Parcel;

    .prologue
    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mId:J

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mTitleZh:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mTitleEn:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mScore:F

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mRatersCount:I

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mPackageName:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mVersionCode:I

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mVersionName:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mDownloadUrl:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mTotalSize:J

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mIconUrl:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mPatchStr:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mOffical:I

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mTarget:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mOriginId:I

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mModuleId:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mIsUpdate:I

    .line 106
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 126
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 127
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, " id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " titleZh "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mTitleZh:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " score "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mScore:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " ratersCount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mRatersCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " packageName "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " versionCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mVersionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " versionName "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mVersionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " downloadUrl "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mDownloadUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " totalSize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mTotalSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " iconUrl "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mIconUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " patchStr "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mPatchStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " offical "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mOffical:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " originId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mOriginId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " modelId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mModuleId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " isUpdate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mIsUpdate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 135
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 69
    iget-object v0, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mTitleZh:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mTitleEn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget v0, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mScore:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 72
    iget v0, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mRatersCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    iget-object v0, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget v0, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mVersionCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    iget-object v0, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mVersionName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mDownloadUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget-wide v0, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mTotalSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 78
    iget-object v0, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mIconUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mPatchStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget v0, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mOffical:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget-object v0, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mTarget:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    iget v0, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mOriginId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget-object v0, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mModuleId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget v0, p0, Lcom/bbk/appstore/frameworkinterface/FrameworkPackageData;->mIsUpdate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    return-void
.end method
