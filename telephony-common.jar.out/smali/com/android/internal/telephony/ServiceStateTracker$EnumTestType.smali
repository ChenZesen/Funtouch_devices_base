.class public final enum Lcom/android/internal/telephony/ServiceStateTracker$EnumTestType;
.super Ljava/lang/Enum;
.source "ServiceStateTracker.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_FIELD:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "EnumTestType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/ServiceStateTracker$EnumTestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/ServiceStateTracker$EnumTestType;

.field public static final enum CMCC:Lcom/android/internal/telephony/ServiceStateTracker$EnumTestType;

.field public static final enum NO:Lcom/android/internal/telephony/ServiceStateTracker$EnumTestType;

.field public static final enum UNICOM:Lcom/android/internal/telephony/ServiceStateTracker$EnumTestType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 135
    new-instance v0, Lcom/android/internal/telephony/ServiceStateTracker$EnumTestType;

    const-string v1, "NO"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker$EnumTestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/ServiceStateTracker$EnumTestType;->NO:Lcom/android/internal/telephony/ServiceStateTracker$EnumTestType;

    .line 136
    new-instance v0, Lcom/android/internal/telephony/ServiceStateTracker$EnumTestType;

    const-string v1, "CMCC"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/ServiceStateTracker$EnumTestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/ServiceStateTracker$EnumTestType;->CMCC:Lcom/android/internal/telephony/ServiceStateTracker$EnumTestType;

    .line 137
    new-instance v0, Lcom/android/internal/telephony/ServiceStateTracker$EnumTestType;

    const-string v1, "UNICOM"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/ServiceStateTracker$EnumTestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/ServiceStateTracker$EnumTestType;->UNICOM:Lcom/android/internal/telephony/ServiceStateTracker$EnumTestType;

    .line 133
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/internal/telephony/ServiceStateTracker$EnumTestType;

    sget-object v1, Lcom/android/internal/telephony/ServiceStateTracker$EnumTestType;->NO:Lcom/android/internal/telephony/ServiceStateTracker$EnumTestType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/ServiceStateTracker$EnumTestType;->CMCC:Lcom/android/internal/telephony/ServiceStateTracker$EnumTestType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/ServiceStateTracker$EnumTestType;->UNICOM:Lcom/android/internal/telephony/ServiceStateTracker$EnumTestType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/ServiceStateTracker$EnumTestType;->$VALUES:[Lcom/android/internal/telephony/ServiceStateTracker$EnumTestType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/ServiceStateTracker$EnumTestType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 133
    const-class v0, Lcom/android/internal/telephony/ServiceStateTracker$EnumTestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ServiceStateTracker$EnumTestType;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/ServiceStateTracker$EnumTestType;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/android/internal/telephony/ServiceStateTracker$EnumTestType;->$VALUES:[Lcom/android/internal/telephony/ServiceStateTracker$EnumTestType;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/ServiceStateTracker$EnumTestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/ServiceStateTracker$EnumTestType;

    return-object v0
.end method
