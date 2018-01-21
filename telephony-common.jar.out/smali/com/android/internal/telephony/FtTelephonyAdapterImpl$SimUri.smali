.class Lcom/android/internal/telephony/FtTelephonyAdapterImpl$SimUri;
.super Ljava/lang/Object;
.source "FtTelephonyAdapterImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/FtTelephonyAdapterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimUri"
.end annotation


# static fields
.field public static final mIccUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 133
    const-string v0, "content://icc/adn/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl$SimUri;->buildPrivilegeUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/FtTelephonyAdapterImpl$SimUri;->mIccUri:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Landroid/net/Uri;

    .prologue
    .line 129
    invoke-static {p0}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl$SimUri;->buildPrivilegeUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static buildPrivilegeUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 131
    # invokes: Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->getVisitorUri(Landroid/net/Uri;)Landroid/net/Uri;
    invoke-static {p0}, Lcom/android/internal/telephony/FtTelephonyAdapterImpl;->access$000(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
