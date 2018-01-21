.class public final enum Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;
.super Ljava/lang/Enum;
.source "VivoPermissionType.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/security/client/VivoPermissionType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VivoPermissionCategory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;

.field public static final enum COMMUNICATION:Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;

.field public static final enum DEVICE:Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;

.field public static final enum LAST_CATEGORY:Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;

.field public static final enum OTHERS:Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;

.field public static final enum PRIVACY:Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 267
    new-instance v0, Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;

    const-string v1, "COMMUNICATION"

    invoke-direct {v0, v1, v2, v2}, Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;->COMMUNICATION:Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;

    new-instance v0, Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;

    const-string v1, "PRIVACY"

    invoke-direct {v0, v1, v3, v3}, Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;->PRIVACY:Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;

    new-instance v0, Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;

    const-string v1, "DEVICE"

    invoke-direct {v0, v1, v4, v4}, Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;->DEVICE:Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;

    new-instance v0, Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;

    const-string v1, "OTHERS"

    invoke-direct {v0, v1, v5, v5}, Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;->OTHERS:Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;

    new-instance v0, Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;

    const-string v1, "LAST_CATEGORY"

    invoke-direct {v0, v1, v6, v6}, Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;->LAST_CATEGORY:Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;

    .line 264
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;

    sget-object v1, Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;->COMMUNICATION:Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;

    aput-object v1, v0, v2

    sget-object v1, Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;->PRIVACY:Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;

    aput-object v1, v0, v3

    sget-object v1, Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;->DEVICE:Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;

    aput-object v1, v0, v4

    sget-object v1, Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;->OTHERS:Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;

    aput-object v1, v0, v5

    sget-object v1, Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;->LAST_CATEGORY:Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;

    aput-object v1, v0, v6

    sput-object v0, Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;->$VALUES:[Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 272
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 273
    iput p3, p0, Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;->mValue:I

    .line 274
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 264
    const-class v0, Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;

    return-object v0
.end method

.method public static values()[Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;
    .locals 1

    .prologue
    .line 264
    sget-object v0, Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;->$VALUES:[Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;

    invoke-virtual {v0}, [Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 278
    iget v0, p0, Lcom/vivo/services/security/client/VivoPermissionType$VivoPermissionCategory;->mValue:I

    return v0
.end method
