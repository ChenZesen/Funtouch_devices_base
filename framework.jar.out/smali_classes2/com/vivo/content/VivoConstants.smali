.class public Lcom/vivo/content/VivoConstants;
.super Ljava/lang/Object;
.source "VivoConstants.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/content/VivoConstants$VivoKeyMgmt;,
        Lcom/vivo/content/VivoConstants$VivoWifiManager;
    }
.end annotation


# static fields
.field public static MTK_PLATFORM:Ljava/lang/String;

.field public static PLATFORM_TAG:Ljava/lang/String;

.field public static PRODUCT_TAG:Ljava/lang/String;

.field public static QCOM_PLATFORM:Ljava/lang/String;

.field public static SIM_SLOT_1:I

.field public static SIM_SLOT_2:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "ro.product.model.bbk"

    sput-object v0, Lcom/vivo/content/VivoConstants;->PRODUCT_TAG:Ljava/lang/String;

    .line 16
    const-string v0, "ro.vivo.product.solution"

    sput-object v0, Lcom/vivo/content/VivoConstants;->PLATFORM_TAG:Ljava/lang/String;

    .line 18
    const-string v0, "QCOM"

    sput-object v0, Lcom/vivo/content/VivoConstants;->QCOM_PLATFORM:Ljava/lang/String;

    .line 19
    const-string v0, "MTK"

    sput-object v0, Lcom/vivo/content/VivoConstants;->MTK_PLATFORM:Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    sput v0, Lcom/vivo/content/VivoConstants;->SIM_SLOT_1:I

    .line 22
    const/4 v0, 0x1

    sput v0, Lcom/vivo/content/VivoConstants;->SIM_SLOT_2:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method
