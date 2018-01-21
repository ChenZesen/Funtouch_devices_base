.class public final enum Lvivo/util/VivoThemeUtil$ThemeType;
.super Ljava/lang/Enum;
.source "VivoThemeUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvivo/util/VivoThemeUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ThemeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lvivo/util/VivoThemeUtil$ThemeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lvivo/util/VivoThemeUtil$ThemeType;

.field public static final enum BOOT_NOTIFY_DIALOG:Lvivo/util/VivoThemeUtil$ThemeType;

.field public static final enum CONTEXT_MENU_DIALOG:Lvivo/util/VivoThemeUtil$ThemeType;

.field public static final enum DIALOG_ALERT:Lvivo/util/VivoThemeUtil$ThemeType;

.field public static final enum DIALOG_SLIDE:Lvivo/util/VivoThemeUtil$ThemeType;

.field public static final enum FULL_SCREEN:Lvivo/util/VivoThemeUtil$ThemeType;

.field public static final enum INPUT_METHOD:Lvivo/util/VivoThemeUtil$ThemeType;

.field public static final enum SYSTEM_DEFAULT:Lvivo/util/VivoThemeUtil$ThemeType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 23
    new-instance v0, Lvivo/util/VivoThemeUtil$ThemeType;

    const-string v1, "SYSTEM_DEFAULT"

    invoke-direct {v0, v1, v3}, Lvivo/util/VivoThemeUtil$ThemeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lvivo/util/VivoThemeUtil$ThemeType;->SYSTEM_DEFAULT:Lvivo/util/VivoThemeUtil$ThemeType;

    new-instance v0, Lvivo/util/VivoThemeUtil$ThemeType;

    const-string v1, "DIALOG_ALERT"

    invoke-direct {v0, v1, v4}, Lvivo/util/VivoThemeUtil$ThemeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lvivo/util/VivoThemeUtil$ThemeType;->DIALOG_ALERT:Lvivo/util/VivoThemeUtil$ThemeType;

    new-instance v0, Lvivo/util/VivoThemeUtil$ThemeType;

    const-string v1, "CONTEXT_MENU_DIALOG"

    invoke-direct {v0, v1, v5}, Lvivo/util/VivoThemeUtil$ThemeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lvivo/util/VivoThemeUtil$ThemeType;->CONTEXT_MENU_DIALOG:Lvivo/util/VivoThemeUtil$ThemeType;

    new-instance v0, Lvivo/util/VivoThemeUtil$ThemeType;

    const-string v1, "INPUT_METHOD"

    invoke-direct {v0, v1, v6}, Lvivo/util/VivoThemeUtil$ThemeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lvivo/util/VivoThemeUtil$ThemeType;->INPUT_METHOD:Lvivo/util/VivoThemeUtil$ThemeType;

    new-instance v0, Lvivo/util/VivoThemeUtil$ThemeType;

    const-string v1, "BOOT_NOTIFY_DIALOG"

    invoke-direct {v0, v1, v7}, Lvivo/util/VivoThemeUtil$ThemeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lvivo/util/VivoThemeUtil$ThemeType;->BOOT_NOTIFY_DIALOG:Lvivo/util/VivoThemeUtil$ThemeType;

    new-instance v0, Lvivo/util/VivoThemeUtil$ThemeType;

    const-string v1, "FULL_SCREEN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lvivo/util/VivoThemeUtil$ThemeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lvivo/util/VivoThemeUtil$ThemeType;->FULL_SCREEN:Lvivo/util/VivoThemeUtil$ThemeType;

    new-instance v0, Lvivo/util/VivoThemeUtil$ThemeType;

    const-string v1, "DIALOG_SLIDE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lvivo/util/VivoThemeUtil$ThemeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lvivo/util/VivoThemeUtil$ThemeType;->DIALOG_SLIDE:Lvivo/util/VivoThemeUtil$ThemeType;

    .line 22
    const/4 v0, 0x7

    new-array v0, v0, [Lvivo/util/VivoThemeUtil$ThemeType;

    sget-object v1, Lvivo/util/VivoThemeUtil$ThemeType;->SYSTEM_DEFAULT:Lvivo/util/VivoThemeUtil$ThemeType;

    aput-object v1, v0, v3

    sget-object v1, Lvivo/util/VivoThemeUtil$ThemeType;->DIALOG_ALERT:Lvivo/util/VivoThemeUtil$ThemeType;

    aput-object v1, v0, v4

    sget-object v1, Lvivo/util/VivoThemeUtil$ThemeType;->CONTEXT_MENU_DIALOG:Lvivo/util/VivoThemeUtil$ThemeType;

    aput-object v1, v0, v5

    sget-object v1, Lvivo/util/VivoThemeUtil$ThemeType;->INPUT_METHOD:Lvivo/util/VivoThemeUtil$ThemeType;

    aput-object v1, v0, v6

    sget-object v1, Lvivo/util/VivoThemeUtil$ThemeType;->BOOT_NOTIFY_DIALOG:Lvivo/util/VivoThemeUtil$ThemeType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lvivo/util/VivoThemeUtil$ThemeType;->FULL_SCREEN:Lvivo/util/VivoThemeUtil$ThemeType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lvivo/util/VivoThemeUtil$ThemeType;->DIALOG_SLIDE:Lvivo/util/VivoThemeUtil$ThemeType;

    aput-object v2, v0, v1

    sput-object v0, Lvivo/util/VivoThemeUtil$ThemeType;->$VALUES:[Lvivo/util/VivoThemeUtil$ThemeType;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lvivo/util/VivoThemeUtil$ThemeType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lvivo/util/VivoThemeUtil$ThemeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lvivo/util/VivoThemeUtil$ThemeType;

    return-object v0
.end method

.method public static values()[Lvivo/util/VivoThemeUtil$ThemeType;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lvivo/util/VivoThemeUtil$ThemeType;->$VALUES:[Lvivo/util/VivoThemeUtil$ThemeType;

    invoke-virtual {v0}, [Lvivo/util/VivoThemeUtil$ThemeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lvivo/util/VivoThemeUtil$ThemeType;

    return-object v0
.end method
