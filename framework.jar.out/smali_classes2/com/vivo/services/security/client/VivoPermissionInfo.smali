.class public Lcom/vivo/services/security/client/VivoPermissionInfo;
.super Ljava/lang/Object;
.source "VivoPermissionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS_PART:Landroid/annotation/VivoHook$VivoHookType;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vivo/services/security/client/VivoPermissionInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DENIED:I = 0x2
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_FIELD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation
.end field

.field public static final DENIED_DIALOG_FLAG:I = 0xf00

.field public static final DENIED_DIALOG_MAXVALUE:I = 0x400

.field public static final DENIED_DIALOG_MODE_COUNTDOWN_CHOOSE:I = 0x300
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_FIELD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation
.end field

.field public static final DENIED_DIALOG_MODE_NO_COUNTDOWN_CHOOSE:I = 0x200
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_FIELD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation
.end field

.field public static final DENIED_DIALOG_MODE_NO_COUNTDOWN_SETTING:I = 0x100
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_FIELD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation
.end field

.field public static final DENIED_MODE_FLAG:I = 0xf0

.field public static final DENIED_MODE_MAXVALUE:I = 0x60

.field public static final DENIED_MODE_NOT_SHOW:I = 0x10
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_FIELD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation
.end field

.field public static final DENIED_MODE_SHOWDIALOG_EVERY_TIME:I = 0x40
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_FIELD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation
.end field

.field public static final DENIED_MODE_SHOWDIALOG_ONE_TIME:I = 0x30
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_FIELD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation
.end field

.field public static final DENIED_MODE_SHOWDIALOG_ONE_TIMES_USED:I = 0x50
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_FIELD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation
.end field

.field public static final DENIED_MODE_SHOWDIALOG_ZERO_TIME:I = 0x20
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_FIELD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation
.end field

.field public static final GRANTED:I = 0x1
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_FIELD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation
.end field

.field public static final INITIAL:I = 0x4

.field public static final MAX_VALUE:I = 0x5

.field public static final PERMISSION_FLAG:I = 0xf

.field public static final UNKNOWN:I = 0x0
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_FIELD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation
.end field

.field public static final WARNING:I = 0x3
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_FIELD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation
.end field


# instance fields
.field private mIsBlackListApp:Z

.field private mIsConfigured:Z

.field private mIsWhiteListApp:Z

.field private mPackageName:Ljava/lang/String;

.field private mPermissionBackup:[I

.field private mPermissionResults:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 377
    new-instance v0, Lcom/vivo/services/security/client/VivoPermissionInfo$1;

    invoke-direct {v0}, Lcom/vivo/services/security/client/VivoPermissionInfo$1;-><init>()V

    sput-object v0, Lcom/vivo/services/security/client/VivoPermissionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/16 v3, 0x1e

    const/4 v2, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v1, p0, Lcom/vivo/services/security/client/VivoPermissionInfo;->mPackageName:Ljava/lang/String;

    .line 50
    iput-boolean v2, p0, Lcom/vivo/services/security/client/VivoPermissionInfo;->mIsWhiteListApp:Z

    .line 51
    iput-boolean v2, p0, Lcom/vivo/services/security/client/VivoPermissionInfo;->mIsBlackListApp:Z

    .line 52
    iput-object v1, p0, Lcom/vivo/services/security/client/VivoPermissionInfo;->mPermissionResults:[I

    .line 53
    iput-object v1, p0, Lcom/vivo/services/security/client/VivoPermissionInfo;->mPermissionBackup:[I

    .line 54
    iput-boolean v2, p0, Lcom/vivo/services/security/client/VivoPermissionInfo;->mIsConfigured:Z

    .line 59
    iput-object p1, p0, Lcom/vivo/services/security/client/VivoPermissionInfo;->mPackageName:Ljava/lang/String;

    .line 60
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/vivo/services/security/client/VivoPermissionInfo;->mPermissionResults:[I

    .line 61
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/vivo/services/security/client/VivoPermissionInfo;->mPermissionBackup:[I

    .line 62
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 64
    iget-object v1, p0, Lcom/vivo/services/security/client/VivoPermissionInfo;->mPermissionResults:[I

    aput v2, v1, v0

    .line 65
    iget-object v1, p0, Lcom/vivo/services/security/client/VivoPermissionInfo;->mPermissionBackup:[I

    aput v2, v1, v0

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    :cond_0
    return-void
.end method

.method static synthetic access$002(Lcom/vivo/services/security/client/VivoPermissionInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/security/client/VivoPermissionInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 13
    iput-boolean p1, p0, Lcom/vivo/services/security/client/VivoPermissionInfo;->mIsWhiteListApp:Z

    return p1
.end method

.method static synthetic access$102(Lcom/vivo/services/security/client/VivoPermissionInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/security/client/VivoPermissionInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 13
    iput-boolean p1, p0, Lcom/vivo/services/security/client/VivoPermissionInfo;->mIsBlackListApp:Z

    return p1
.end method

.method static synthetic access$200(Lcom/vivo/services/security/client/VivoPermissionInfo;)[I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/security/client/VivoPermissionInfo;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/vivo/services/security/client/VivoPermissionInfo;->mPermissionResults:[I

    return-object v0
.end method

.method static synthetic access$300(Lcom/vivo/services/security/client/VivoPermissionInfo;)[I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/security/client/VivoPermissionInfo;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/vivo/services/security/client/VivoPermissionInfo;->mPermissionBackup:[I

    return-object v0
.end method

.method static synthetic access$402(Lcom/vivo/services/security/client/VivoPermissionInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/security/client/VivoPermissionInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 13
    iput-boolean p1, p0, Lcom/vivo/services/security/client/VivoPermissionInfo;->mIsConfigured:Z

    return p1
.end method

.method public static isValidPermissionResult(I)Z
    .locals 5
    .param p0, "premResult"    # I
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    .line 131
    and-int/lit8 v2, p0, 0xf

    .line 132
    .local v2, "valuePerm":I
    and-int/lit16 v0, p0, 0xf0

    .line 133
    .local v0, "valueDenideMode":I
    and-int/lit16 v1, p0, 0xf00

    .line 135
    .local v1, "valueDialogDialogMode":I
    const/4 v3, 0x5

    if-ge v2, v3, :cond_0

    const/16 v3, 0x60

    if-ge v0, v3, :cond_0

    const/16 v3, 0x400

    if-ge v1, v3, :cond_0

    .line 138
    const/4 v3, 0x1

    .line 142
    :goto_0
    return v3

    .line 141
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VPI isValidPermissionResult false premResult="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/vivo/services/security/client/VivoPermissionManager;->printfInfo(Ljava/lang/String;)V

    .line 142
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private resetAllDeniedModeToOneTime()V
    .locals 3

    .prologue
    .line 200
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    const/16 v1, 0x1e

    if-ge v0, v1, :cond_1

    .line 202
    invoke-virtual {p0, v0}, Lcom/vivo/services/security/client/VivoPermissionInfo;->getDeniedMode(I)I

    move-result v1

    const/16 v2, 0x50

    if-ne v1, v2, :cond_0

    .line 204
    const/16 v1, 0x30

    invoke-virtual {p0, v0, v1}, Lcom/vivo/services/security/client/VivoPermissionInfo;->setDeniedMode(II)V

    .line 200
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 207
    :cond_1
    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/vivo/services/security/client/VivoPermissionInfo;)V
    .locals 3
    .param p1, "newVpi"    # Lcom/vivo/services/security/client/VivoPermissionInfo;

    .prologue
    .line 71
    iget-object v1, p0, Lcom/vivo/services/security/client/VivoPermissionInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/vivo/services/security/client/VivoPermissionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 83
    :cond_0
    return-void

    .line 75
    :cond_1
    invoke-virtual {p1}, Lcom/vivo/services/security/client/VivoPermissionInfo;->isWhiteListApp()Z

    move-result v1

    iput-boolean v1, p0, Lcom/vivo/services/security/client/VivoPermissionInfo;->mIsWhiteListApp:Z

    .line 76
    invoke-virtual {p1}, Lcom/vivo/services/security/client/VivoPermissionInfo;->isBlackListApp()Z

    move-result v1

    iput-boolean v1, p0, Lcom/vivo/services/security/client/VivoPermissionInfo;->mIsBlackListApp:Z

    .line 77
    invoke-virtual {p1}, Lcom/vivo/services/security/client/VivoPermissionInfo;->isConfigured()Z

    move-result v1

    iput-boolean v1, p0, Lcom/vivo/services/security/client/VivoPermissionInfo;->mIsConfigured:Z

    .line 78
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/vivo/services/security/client/VivoPermissionInfo;->mPermissionResults:[I

    invoke-virtual {p1, v0}, Lcom/vivo/services/security/client/VivoPermissionInfo;->getAllPermission(I)I

    move-result v2

    aput v2, v1, v0

    .line 81
    iget-object v1, p0, Lcom/vivo/services/security/client/VivoPermissionInfo;->mPermissionBackup:[I

    invoke-virtual {p1, v0}, Lcom/vivo/services/security/client/VivoPermissionInfo;->getAllPermissionBackup(I)I

    move-result v2

    aput v2, v1, v0

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    .line 362
    const/4 v0, 0x0

    return v0
.end method

.method public getAllPermission(I)I
    .locals 1
    .param p1, "vpTypeId"    # I

    .prologue
    .line 275
    iget-object v0, p0, Lcom/vivo/services/security/client/VivoPermissionInfo;->mPermissionResults:[I

    aget v0, v0, p1

    return v0
.end method

.method public getAllPermissionBackup(I)I
    .locals 1
    .param p1, "vpTypeId"    # I

    .prologue
    .line 285
    iget-object v0, p0, Lcom/vivo/services/security/client/VivoPermissionInfo;->mPermissionBackup:[I

    aget v0, v0, p1

    return v0
.end method

.method public getDeniedDialogMode(I)I
    .locals 1
    .param p1, "vpTypeId"    # I
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    .line 323
    iget-object v0, p0, Lcom/vivo/services/security/client/VivoPermissionInfo;->mPermissionResults:[I

    aget v0, v0, p1

    and-int/lit16 v0, v0, 0xf00

    return v0
.end method

.method public getDeniedMode(I)I
    .locals 1
    .param p1, "vpTypeId"    # I
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    .line 291
    iget-object v0, p0, Lcom/vivo/services/security/client/VivoPermissionInfo;->mPermissionResults:[I

    aget v0, v0, p1

    and-int/lit16 v0, v0, 0xf0

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lcom/vivo/services/security/client/VivoPermissionInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissionResult(I)I
    .locals 1
    .param p1, "vpTypeId"    # I
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    .line 236
    iget-object v0, p0, Lcom/vivo/services/security/client/VivoPermissionInfo;->mPermissionResults:[I

    aget v0, v0, p1

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public grantAllPermissions()V
    .locals 2

    .prologue
    .line 211
    invoke-direct {p0}, Lcom/vivo/services/security/client/VivoPermissionInfo;->resetAllDeniedModeToOneTime()V

    .line 212
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    const/16 v1, 0x1e

    if-ge v0, v1, :cond_1

    .line 214
    invoke-virtual {p0, v0}, Lcom/vivo/services/security/client/VivoPermissionInfo;->getPermissionResult(I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/vivo/services/security/client/VivoPermissionInfo;->setPermissionResult(II)V

    .line 212
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 219
    :cond_1
    return-void
.end method

.method public isBlackListApp()Z
    .locals 1

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/vivo/services/security/client/VivoPermissionInfo;->mIsBlackListApp:Z

    return v0
.end method

.method public isConfigured()Z
    .locals 1

    .prologue
    .line 350
    iget-boolean v0, p0, Lcom/vivo/services/security/client/VivoPermissionInfo;->mIsConfigured:Z

    return v0
.end method

.method public isWhiteListApp()Z
    .locals 1
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/vivo/services/security/client/VivoPermissionInfo;->mIsWhiteListApp:Z

    return v0
.end method

.method public setAllPermission(II)V
    .locals 1
    .param p1, "vpTypeId"    # I
    .param p2, "perm"    # I

    .prologue
    .line 270
    iget-object v0, p0, Lcom/vivo/services/security/client/VivoPermissionInfo;->mPermissionResults:[I

    aput p2, v0, p1

    .line 271
    return-void
.end method

.method public setAllPermissionBackup(II)V
    .locals 1
    .param p1, "vpTypeId"    # I
    .param p2, "perm"    # I

    .prologue
    .line 280
    iget-object v0, p0, Lcom/vivo/services/security/client/VivoPermissionInfo;->mPermissionBackup:[I

    aput p2, v0, p1

    .line 281
    return-void
.end method

.method public setBlackListApp(Z)V
    .locals 0
    .param p1, "isBlackListApp"    # Z

    .prologue
    .line 229
    iput-boolean p1, p0, Lcom/vivo/services/security/client/VivoPermissionInfo;->mIsBlackListApp:Z

    .line 231
    return-void
.end method

.method public setConfigured(Z)V
    .locals 0
    .param p1, "isConfigured"    # Z

    .prologue
    .line 355
    iput-boolean p1, p0, Lcom/vivo/services/security/client/VivoPermissionInfo;->mIsConfigured:Z

    .line 356
    return-void
.end method

.method public setDeniedDialogMode(II)V
    .locals 4
    .param p1, "vpTypeId"    # I
    .param p2, "deniedDialogMode"    # I
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    .line 329
    and-int/lit16 v0, p2, 0xf00

    .line 330
    .local v0, "deniedDialogModeTemp":I
    const/16 v2, 0x400

    if-ge v0, v2, :cond_0

    if-gtz v0, :cond_2

    .line 332
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VPI setDeniedDialogMode error deniedDialogMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vivo/services/security/client/VivoPermissionManager;->printfInfo(Ljava/lang/String;)V

    .line 346
    :cond_1
    :goto_0
    return-void

    .line 336
    :cond_2
    iget-object v2, p0, Lcom/vivo/services/security/client/VivoPermissionInfo;->mPermissionResults:[I

    iget-object v3, p0, Lcom/vivo/services/security/client/VivoPermissionInfo;->mPermissionResults:[I

    aget v3, v3, p1

    and-int/lit16 v3, v3, -0xf01

    or-int/2addr v3, v0

    aput v3, v2, p1

    .line 338
    invoke-static {}, Lcom/vivo/services/security/client/VivoPermissionManager;->getOSVersion()F

    move-result v1

    .line 339
    .local v1, "osVer":F
    const/high16 v2, 0x40400000    # 3.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_1

    .line 341
    iget-boolean v2, p0, Lcom/vivo/services/security/client/VivoPermissionInfo;->mIsWhiteListApp:Z

    if-eqz v2, :cond_1

    .line 343
    iget-object v2, p0, Lcom/vivo/services/security/client/VivoPermissionInfo;->mPermissionBackup:[I

    iget-object v3, p0, Lcom/vivo/services/security/client/VivoPermissionInfo;->mPermissionBackup:[I

    aget v3, v3, p1

    and-int/lit16 v3, v3, -0xf01

    or-int/2addr v3, v0

    aput v3, v2, p1

    goto :goto_0
.end method

.method public setDeniedMode(II)V
    .locals 4
    .param p1, "vpTypeId"    # I
    .param p2, "deniedMode"    # I
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    .line 297
    and-int/lit16 v0, p2, 0xf0

    .line 298
    .local v0, "deniedModeTemp":I
    const/16 v2, 0x60

    if-ge v0, v2, :cond_0

    if-gtz v0, :cond_2

    .line 300
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VPI setDeniedMode error deniedMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vivo/services/security/client/VivoPermissionManager;->printfError(Ljava/lang/String;)V

    .line 318
    :cond_1
    :goto_0
    return-void

    .line 304
    :cond_2
    iget-object v2, p0, Lcom/vivo/services/security/client/VivoPermissionInfo;->mPermissionResults:[I

    iget-object v3, p0, Lcom/vivo/services/security/client/VivoPermissionInfo;->mPermissionResults:[I

    aget v3, v3, p1

    and-int/lit16 v3, v3, -0xf1

    or-int/2addr v3, v0

    aput v3, v2, p1

    .line 306
    invoke-static {}, Lcom/vivo/services/security/client/VivoPermissionManager;->getOSVersion()F

    move-result v1

    .line 307
    .local v1, "osVer":F
    const/high16 v2, 0x40400000    # 3.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_1

    .line 309
    iget-boolean v2, p0, Lcom/vivo/services/security/client/VivoPermissionInfo;->mIsWhiteListApp:Z

    if-eqz v2, :cond_1

    .line 311
    const/16 v2, 0x50

    if-ne v0, v2, :cond_3

    .line 313
    const-string v2, "have some error problem check check check "

    invoke-static {v2}, Lcom/vivo/services/security/client/VivoPermissionManager;->printfError(Ljava/lang/String;)V

    .line 315
    :cond_3
    iget-object v2, p0, Lcom/vivo/services/security/client/VivoPermissionInfo;->mPermissionBackup:[I

    iget-object v3, p0, Lcom/vivo/services/security/client/VivoPermissionInfo;->mPermissionBackup:[I

    aget v3, v3, p1

    and-int/lit16 v3, v3, -0xf1

    or-int/2addr v3, v0

    aput v3, v2, p1

    goto :goto_0
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/vivo/services/security/client/VivoPermissionInfo;->mPackageName:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setPermissionResult(II)V
    .locals 3
    .param p1, "vpTypeId"    # I
    .param p2, "permResult"    # I
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    .line 242
    const/4 v1, 0x5

    if-lt p2, v1, :cond_1

    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VPI setPermissionResult error permResult:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/services/security/client/VivoPermissionManager;->printfError(Ljava/lang/String;)V

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    iget-object v1, p0, Lcom/vivo/services/security/client/VivoPermissionInfo;->mPermissionResults:[I

    aget v1, v1, p1

    if-eq v1, p2, :cond_2

    .line 250
    invoke-virtual {p0, p1}, Lcom/vivo/services/security/client/VivoPermissionInfo;->getDeniedMode(I)I

    move-result v1

    const/16 v2, 0x50

    if-ne v1, v2, :cond_2

    .line 252
    const/16 v1, 0x30

    invoke-virtual {p0, p1, v1}, Lcom/vivo/services/security/client/VivoPermissionInfo;->setDeniedMode(II)V

    .line 256
    :cond_2
    iget-object v1, p0, Lcom/vivo/services/security/client/VivoPermissionInfo;->mPermissionResults:[I

    iget-object v2, p0, Lcom/vivo/services/security/client/VivoPermissionInfo;->mPermissionResults:[I

    aget v2, v2, p1

    and-int/lit8 v2, v2, -0x10

    or-int/2addr v2, p2

    aput v2, v1, p1

    .line 258
    invoke-static {}, Lcom/vivo/services/security/client/VivoPermissionManager;->getOSVersion()F

    move-result v0

    .line 259
    .local v0, "osVer":F
    const/high16 v1, 0x40400000    # 3.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 261
    iget-boolean v1, p0, Lcom/vivo/services/security/client/VivoPermissionInfo;->mIsWhiteListApp:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    if-eq p2, v1, :cond_3

    const/4 v1, 0x3

    if-ne p2, v1, :cond_0

    .line 263
    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/vivo/services/security/client/VivoPermissionInfo;->mIsWhiteListApp:Z

    goto :goto_0
.end method

.method public setWhiteListApp(Z)V
    .locals 6
    .param p1, "isWhiteListApp"    # Z

    .prologue
    const/16 v5, 0x1e

    const/high16 v4, 0x40400000    # 3.0f

    .line 164
    invoke-static {}, Lcom/vivo/services/security/client/VivoPermissionManager;->getOSVersion()F

    move-result v1

    .line 166
    .local v1, "osVer":F
    iget-boolean v2, p0, Lcom/vivo/services/security/client/VivoPermissionInfo;->mIsWhiteListApp:Z

    if-eq v2, p1, :cond_4

    .line 168
    if-eqz p1, :cond_2

    .line 170
    invoke-direct {p0}, Lcom/vivo/services/security/client/VivoPermissionInfo;->resetAllDeniedModeToOneTime()V

    .line 172
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    if-ge v0, v5, :cond_3

    .line 174
    cmpg-float v2, v1, v4

    if-gez v2, :cond_0

    .line 176
    iget-object v2, p0, Lcom/vivo/services/security/client/VivoPermissionInfo;->mPermissionBackup:[I

    iget-object v3, p0, Lcom/vivo/services/security/client/VivoPermissionInfo;->mPermissionResults:[I

    aget v3, v3, v0

    aput v3, v2, v0

    .line 178
    :cond_0
    invoke-virtual {p0, v0}, Lcom/vivo/services/security/client/VivoPermissionInfo;->getPermissionResult(I)I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/vivo/services/security/client/VivoPermissionInfo;->getDeniedMode(I)I

    move-result v2

    const/16 v3, 0x10

    if-eq v2, v3, :cond_1

    .line 180
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/vivo/services/security/client/VivoPermissionInfo;->setPermissionResult(II)V

    .line 172
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    .end local v0    # "index":I
    :cond_2
    cmpg-float v2, v1, v4

    if-gez v2, :cond_3

    .line 188
    const/4 v0, 0x0

    .restart local v0    # "index":I
    :goto_1
    if-ge v0, v5, :cond_3

    .line 190
    iget-object v2, p0, Lcom/vivo/services/security/client/VivoPermissionInfo;->mPermissionResults:[I

    iget-object v3, p0, Lcom/vivo/services/security/client/VivoPermissionInfo;->mPermissionBackup:[I

    aget v3, v3, v0

    aput v3, v2, v0

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 194
    .end local v0    # "index":I
    :cond_3
    iput-boolean p1, p0, Lcom/vivo/services/security/client/VivoPermissionInfo;->mIsWhiteListApp:Z

    .line 196
    :cond_4
    return-void
.end method

.method public updateFrom(Lcom/vivo/services/security/client/VivoPermissionInfo;)V
    .locals 4
    .param p1, "oldVpi"    # Lcom/vivo/services/security/client/VivoPermissionInfo;

    .prologue
    .line 87
    iget-object v2, p0, Lcom/vivo/services/security/client/VivoPermissionInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/vivo/services/security/client/VivoPermissionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    const/4 v1, 0x1

    .line 93
    .local v1, "isCopyBlackWhiteList":Z
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    const/16 v2, 0x1e

    if-ge v0, v2, :cond_5

    .line 95
    invoke-virtual {p1, v0}, Lcom/vivo/services/security/client/VivoPermissionInfo;->getPermissionResult(I)I

    move-result v2

    if-nez v2, :cond_3

    .line 97
    invoke-virtual {p0, v0}, Lcom/vivo/services/security/client/VivoPermissionInfo;->getPermissionResult(I)I

    move-result v2

    if-eqz v2, :cond_2

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateFrom add permission:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/vivo/services/security/client/VivoPermissionType;->getVPType(I)Lcom/vivo/services/security/client/VivoPermissionType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vivo/services/security/client/VivoPermissionManager;->printfInfo(Ljava/lang/String;)V

    .line 100
    const/4 v1, 0x0

    .line 93
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 105
    :cond_3
    invoke-virtual {p0, v0}, Lcom/vivo/services/security/client/VivoPermissionInfo;->getPermissionResult(I)I

    move-result v2

    if-nez v2, :cond_4

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateFrom remove permission:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/vivo/services/security/client/VivoPermissionType;->getVPType(I)Lcom/vivo/services/security/client/VivoPermissionType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vivo/services/security/client/VivoPermissionManager;->printfInfo(Ljava/lang/String;)V

    goto :goto_2

    .line 111
    :cond_4
    invoke-virtual {p1, v0}, Lcom/vivo/services/security/client/VivoPermissionInfo;->getAllPermission(I)I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/vivo/services/security/client/VivoPermissionInfo;->setAllPermission(II)V

    .line 112
    invoke-virtual {p1, v0}, Lcom/vivo/services/security/client/VivoPermissionInfo;->getAllPermissionBackup(I)I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/vivo/services/security/client/VivoPermissionInfo;->setAllPermissionBackup(II)V

    goto :goto_2

    .line 116
    :cond_5
    invoke-virtual {p1}, Lcom/vivo/services/security/client/VivoPermissionInfo;->isBlackListApp()Z

    move-result v2

    iput-boolean v2, p0, Lcom/vivo/services/security/client/VivoPermissionInfo;->mIsBlackListApp:Z

    .line 117
    invoke-virtual {p1}, Lcom/vivo/services/security/client/VivoPermissionInfo;->isConfigured()Z

    move-result v2

    iput-boolean v2, p0, Lcom/vivo/services/security/client/VivoPermissionInfo;->mIsConfigured:Z

    .line 118
    invoke-virtual {p1}, Lcom/vivo/services/security/client/VivoPermissionInfo;->isWhiteListApp()Z

    move-result v2

    iput-boolean v2, p0, Lcom/vivo/services/security/client/VivoPermissionInfo;->mIsWhiteListApp:Z

    .line 120
    if-nez v1, :cond_0

    .line 122
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/vivo/services/security/client/VivoPermissionInfo;->mIsWhiteListApp:Z

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 369
    iget-object v0, p0, Lcom/vivo/services/security/client/VivoPermissionInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 370
    iget-boolean v0, p0, Lcom/vivo/services/security/client/VivoPermissionInfo;->mIsWhiteListApp:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 371
    iget-boolean v0, p0, Lcom/vivo/services/security/client/VivoPermissionInfo;->mIsBlackListApp:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 372
    iget-object v0, p0, Lcom/vivo/services/security/client/VivoPermissionInfo;->mPermissionResults:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 373
    iget-object v0, p0, Lcom/vivo/services/security/client/VivoPermissionInfo;->mPermissionBackup:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 374
    iget-boolean v0, p0, Lcom/vivo/services/security/client/VivoPermissionInfo;->mIsConfigured:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 375
    return-void

    :cond_0
    move v0, v2

    .line 370
    goto :goto_0

    :cond_1
    move v0, v2

    .line 371
    goto :goto_1

    :cond_2
    move v1, v2

    .line 374
    goto :goto_2
.end method
