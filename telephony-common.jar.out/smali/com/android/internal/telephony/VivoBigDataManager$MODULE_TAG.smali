.class public final enum Lcom/android/internal/telephony/VivoBigDataManager$MODULE_TAG;
.super Ljava/lang/Enum;
.source "VivoBigDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/VivoBigDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MODULE_TAG"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/VivoBigDataManager$MODULE_TAG;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/VivoBigDataManager$MODULE_TAG;

.field public static final enum NITZ_TAG:Lcom/android/internal/telephony/VivoBigDataManager$MODULE_TAG;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 40
    new-instance v0, Lcom/android/internal/telephony/VivoBigDataManager$MODULE_TAG;

    const-string v1, "NITZ_TAG"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/VivoBigDataManager$MODULE_TAG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/VivoBigDataManager$MODULE_TAG;->NITZ_TAG:Lcom/android/internal/telephony/VivoBigDataManager$MODULE_TAG;

    .line 39
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/internal/telephony/VivoBigDataManager$MODULE_TAG;

    sget-object v1, Lcom/android/internal/telephony/VivoBigDataManager$MODULE_TAG;->NITZ_TAG:Lcom/android/internal/telephony/VivoBigDataManager$MODULE_TAG;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/telephony/VivoBigDataManager$MODULE_TAG;->$VALUES:[Lcom/android/internal/telephony/VivoBigDataManager$MODULE_TAG;

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
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/VivoBigDataManager$MODULE_TAG;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 39
    const-class v0, Lcom/android/internal/telephony/VivoBigDataManager$MODULE_TAG;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/VivoBigDataManager$MODULE_TAG;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/VivoBigDataManager$MODULE_TAG;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/android/internal/telephony/VivoBigDataManager$MODULE_TAG;->$VALUES:[Lcom/android/internal/telephony/VivoBigDataManager$MODULE_TAG;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/VivoBigDataManager$MODULE_TAG;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/VivoBigDataManager$MODULE_TAG;

    return-object v0
.end method
