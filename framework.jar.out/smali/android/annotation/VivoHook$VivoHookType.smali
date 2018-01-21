.class public final enum Landroid/annotation/VivoHook$VivoHookType;
.super Ljava/lang/Enum;
.source "VivoHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/annotation/VivoHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VivoHookType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/annotation/VivoHook$VivoHookType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/annotation/VivoHook$VivoHookType;

.field public static final enum CHANGE_ACCESS:Landroid/annotation/VivoHook$VivoHookType;

.field public static final enum CHANGE_BASE_CLASS:Landroid/annotation/VivoHook$VivoHookType;

.field public static final enum CHANGE_CODE:Landroid/annotation/VivoHook$VivoHookType;

.field public static final enum CHANGE_CODE_AND_ACCESS:Landroid/annotation/VivoHook$VivoHookType;

.field public static final enum CHANGE_PARAMETER:Landroid/annotation/VivoHook$VivoHookType;

.field public static final enum CHANGE_PARAMETER_AND_ACCESS:Landroid/annotation/VivoHook$VivoHookType;

.field public static final enum NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;

.field public static final enum NEW_FIELD:Landroid/annotation/VivoHook$VivoHookType;

.field public static final enum NEW_METHOD:Landroid/annotation/VivoHook$VivoHookType;

.field public static final enum PUBLIC_API_CLASS:Landroid/annotation/VivoHook$VivoHookType;

.field public static final enum PUBLIC_API_CLASS_PART:Landroid/annotation/VivoHook$VivoHookType;

.field public static final enum PUBLIC_API_FIELD:Landroid/annotation/VivoHook$VivoHookType;

.field public static final enum PUBLIC_API_METHOD:Landroid/annotation/VivoHook$VivoHookType;


# instance fields
.field private typeString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 20
    new-instance v0, Landroid/annotation/VivoHook$VivoHookType;

    const-string v1, "CHANGE_ACCESS"

    const-string v2, "CHANGE_ACCESS"

    invoke-direct {v0, v1, v4, v2}, Landroid/annotation/VivoHook$VivoHookType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/annotation/VivoHook$VivoHookType;->CHANGE_ACCESS:Landroid/annotation/VivoHook$VivoHookType;

    .line 24
    new-instance v0, Landroid/annotation/VivoHook$VivoHookType;

    const-string v1, "CHANGE_CODE"

    const-string v2, "CHANGE_CODE"

    invoke-direct {v0, v1, v5, v2}, Landroid/annotation/VivoHook$VivoHookType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/annotation/VivoHook$VivoHookType;->CHANGE_CODE:Landroid/annotation/VivoHook$VivoHookType;

    .line 28
    new-instance v0, Landroid/annotation/VivoHook$VivoHookType;

    const-string v1, "CHANGE_CODE_AND_ACCESS"

    const-string v2, "CHANGE_CODE_AND_ACCESS"

    invoke-direct {v0, v1, v6, v2}, Landroid/annotation/VivoHook$VivoHookType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/annotation/VivoHook$VivoHookType;->CHANGE_CODE_AND_ACCESS:Landroid/annotation/VivoHook$VivoHookType;

    .line 32
    new-instance v0, Landroid/annotation/VivoHook$VivoHookType;

    const-string v1, "CHANGE_PARAMETER"

    const-string v2, "CHANGE_PARAMETER"

    invoke-direct {v0, v1, v7, v2}, Landroid/annotation/VivoHook$VivoHookType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/annotation/VivoHook$VivoHookType;->CHANGE_PARAMETER:Landroid/annotation/VivoHook$VivoHookType;

    .line 36
    new-instance v0, Landroid/annotation/VivoHook$VivoHookType;

    const-string v1, "CHANGE_PARAMETER_AND_ACCESS"

    const-string v2, "CHANGE_PARAMETER_AND_ACCESS"

    invoke-direct {v0, v1, v8, v2}, Landroid/annotation/VivoHook$VivoHookType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/annotation/VivoHook$VivoHookType;->CHANGE_PARAMETER_AND_ACCESS:Landroid/annotation/VivoHook$VivoHookType;

    .line 40
    new-instance v0, Landroid/annotation/VivoHook$VivoHookType;

    const-string v1, "CHANGE_BASE_CLASS"

    const/4 v2, 0x5

    const-string v3, "CHANGE_BASE_CLASS"

    invoke-direct {v0, v1, v2, v3}, Landroid/annotation/VivoHook$VivoHookType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/annotation/VivoHook$VivoHookType;->CHANGE_BASE_CLASS:Landroid/annotation/VivoHook$VivoHookType;

    .line 44
    new-instance v0, Landroid/annotation/VivoHook$VivoHookType;

    const-string v1, "NEW_CLASS"

    const/4 v2, 0x6

    const-string v3, "NEW_CLASS"

    invoke-direct {v0, v1, v2, v3}, Landroid/annotation/VivoHook$VivoHookType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;

    .line 48
    new-instance v0, Landroid/annotation/VivoHook$VivoHookType;

    const-string v1, "NEW_FIELD"

    const/4 v2, 0x7

    const-string v3, "NEW_FIELD"

    invoke-direct {v0, v1, v2, v3}, Landroid/annotation/VivoHook$VivoHookType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/annotation/VivoHook$VivoHookType;->NEW_FIELD:Landroid/annotation/VivoHook$VivoHookType;

    .line 52
    new-instance v0, Landroid/annotation/VivoHook$VivoHookType;

    const-string v1, "NEW_METHOD"

    const/16 v2, 0x8

    const-string v3, "NEW_METHOD"

    invoke-direct {v0, v1, v2, v3}, Landroid/annotation/VivoHook$VivoHookType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/annotation/VivoHook$VivoHookType;->NEW_METHOD:Landroid/annotation/VivoHook$VivoHookType;

    .line 57
    new-instance v0, Landroid/annotation/VivoHook$VivoHookType;

    const-string v1, "PUBLIC_API_METHOD"

    const/16 v2, 0x9

    const-string v3, "PUBLIC_API_METHOD"

    invoke-direct {v0, v1, v2, v3}, Landroid/annotation/VivoHook$VivoHookType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_METHOD:Landroid/annotation/VivoHook$VivoHookType;

    .line 62
    new-instance v0, Landroid/annotation/VivoHook$VivoHookType;

    const-string v1, "PUBLIC_API_CLASS"

    const/16 v2, 0xa

    const-string v3, "PUBLIC_API_CLASS"

    invoke-direct {v0, v1, v2, v3}, Landroid/annotation/VivoHook$VivoHookType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS:Landroid/annotation/VivoHook$VivoHookType;

    .line 67
    new-instance v0, Landroid/annotation/VivoHook$VivoHookType;

    const-string v1, "PUBLIC_API_CLASS_PART"

    const/16 v2, 0xb

    const-string v3, "PUBLIC_API_CLASS_PART"

    invoke-direct {v0, v1, v2, v3}, Landroid/annotation/VivoHook$VivoHookType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS_PART:Landroid/annotation/VivoHook$VivoHookType;

    .line 72
    new-instance v0, Landroid/annotation/VivoHook$VivoHookType;

    const-string v1, "PUBLIC_API_FIELD"

    const/16 v2, 0xc

    const-string v3, "PUBLIC_API_FIELD"

    invoke-direct {v0, v1, v2, v3}, Landroid/annotation/VivoHook$VivoHookType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_FIELD:Landroid/annotation/VivoHook$VivoHookType;

    .line 16
    const/16 v0, 0xd

    new-array v0, v0, [Landroid/annotation/VivoHook$VivoHookType;

    sget-object v1, Landroid/annotation/VivoHook$VivoHookType;->CHANGE_ACCESS:Landroid/annotation/VivoHook$VivoHookType;

    aput-object v1, v0, v4

    sget-object v1, Landroid/annotation/VivoHook$VivoHookType;->CHANGE_CODE:Landroid/annotation/VivoHook$VivoHookType;

    aput-object v1, v0, v5

    sget-object v1, Landroid/annotation/VivoHook$VivoHookType;->CHANGE_CODE_AND_ACCESS:Landroid/annotation/VivoHook$VivoHookType;

    aput-object v1, v0, v6

    sget-object v1, Landroid/annotation/VivoHook$VivoHookType;->CHANGE_PARAMETER:Landroid/annotation/VivoHook$VivoHookType;

    aput-object v1, v0, v7

    sget-object v1, Landroid/annotation/VivoHook$VivoHookType;->CHANGE_PARAMETER_AND_ACCESS:Landroid/annotation/VivoHook$VivoHookType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Landroid/annotation/VivoHook$VivoHookType;->CHANGE_BASE_CLASS:Landroid/annotation/VivoHook$VivoHookType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/annotation/VivoHook$VivoHookType;->NEW_FIELD:Landroid/annotation/VivoHook$VivoHookType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroid/annotation/VivoHook$VivoHookType;->NEW_METHOD:Landroid/annotation/VivoHook$VivoHookType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_METHOD:Landroid/annotation/VivoHook$VivoHookType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS:Landroid/annotation/VivoHook$VivoHookType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS_PART:Landroid/annotation/VivoHook$VivoHookType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_FIELD:Landroid/annotation/VivoHook$VivoHookType;

    aput-object v2, v0, v1

    sput-object v0, Landroid/annotation/VivoHook$VivoHookType;->$VALUES:[Landroid/annotation/VivoHook$VivoHookType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 75
    iput-object p3, p0, Landroid/annotation/VivoHook$VivoHookType;->typeString:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/annotation/VivoHook$VivoHookType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 16
    const-class v0, Landroid/annotation/VivoHook$VivoHookType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/annotation/VivoHook$VivoHookType;

    return-object v0
.end method

.method public static values()[Landroid/annotation/VivoHook$VivoHookType;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Landroid/annotation/VivoHook$VivoHookType;->$VALUES:[Landroid/annotation/VivoHook$VivoHookType;

    invoke-virtual {v0}, [Landroid/annotation/VivoHook$VivoHookType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/annotation/VivoHook$VivoHookType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Landroid/annotation/VivoHook$VivoHookType;->typeString:Ljava/lang/String;

    return-object v0
.end method
