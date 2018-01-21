.class Lcom/android/internal/telephony/NitzTimeUpdatePolicy$UserLoc;
.super Ljava/lang/Object;
.source "NitzTimeUpdatePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/NitzTimeUpdatePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UserLoc"
.end annotation


# instance fields
.field public mCellLoc:Landroid/telephony/CellLocation;

.field public mIsCdma:Z

.field public mPlmn:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$UserLoc;->mPlmn:Ljava/lang/String;

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$UserLoc;->mIsCdma:Z

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$UserLoc;->mCellLoc:Landroid/telephony/CellLocation;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/NitzTimeUpdatePolicy$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/NitzTimeUpdatePolicy$1;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$UserLoc;-><init>()V

    return-void
.end method
