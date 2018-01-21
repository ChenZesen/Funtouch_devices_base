.class public final enum Lcom/android/server/policy/VivoWindowType;
.super Ljava/lang/Enum;
.source "VivoWindowType.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/policy/VivoWindowType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/policy/VivoWindowType;

.field public static final enum LAST_SYSTEM_WINDOW:Lcom/android/server/policy/VivoWindowType;

.field public static final enum TYPE_APPLICATION:Lcom/android/server/policy/VivoWindowType;

.field public static final enum TYPE_BOOT_PROGRESS:Lcom/android/server/policy/VivoWindowType;

.field public static final enum TYPE_DISPLAY_OVERLAY:Lcom/android/server/policy/VivoWindowType;

.field public static final enum TYPE_DRAG:Lcom/android/server/policy/VivoWindowType;

.field public static final enum TYPE_DREAM:Lcom/android/server/policy/VivoWindowType;

.field public static final enum TYPE_INPUT_METHOD:Lcom/android/server/policy/VivoWindowType;

.field public static final enum TYPE_INPUT_METHOD_DIALOG:Lcom/android/server/policy/VivoWindowType;

.field public static final enum TYPE_KEYGUARD:Lcom/android/server/policy/VivoWindowType;

.field public static final enum TYPE_KEYGUARD_DIALOG:Lcom/android/server/policy/VivoWindowType;

.field public static final enum TYPE_KEYGUARD_SCRIM:Lcom/android/server/policy/VivoWindowType;

.field public static final enum TYPE_MAGNIFICATION_OVERLAY:Lcom/android/server/policy/VivoWindowType;

.field public static final enum TYPE_NAVIGATION_BAR:Lcom/android/server/policy/VivoWindowType;

.field public static final enum TYPE_NAVIGATION_BAR_PANEL:Lcom/android/server/policy/VivoWindowType;

.field public static final enum TYPE_PHONE:Lcom/android/server/policy/VivoWindowType;

.field public static final enum TYPE_POINTER:Lcom/android/server/policy/VivoWindowType;

.field public static final enum TYPE_PRIORITY_PHONE:Lcom/android/server/policy/VivoWindowType;

.field public static final enum TYPE_PRIVATE_PRESENTATION:Lcom/android/server/policy/VivoWindowType;

.field public static final enum TYPE_SEARCH_BAR:Lcom/android/server/policy/VivoWindowType;

.field public static final enum TYPE_SECURE_SYSTEM_OVERLAY:Lcom/android/server/policy/VivoWindowType;

.field public static final enum TYPE_STATUS_BAR:Lcom/android/server/policy/VivoWindowType;

.field public static final enum TYPE_STATUS_BAR_PANEL:Lcom/android/server/policy/VivoWindowType;

.field public static final enum TYPE_STATUS_BAR_SUB_PANEL:Lcom/android/server/policy/VivoWindowType;

.field public static final enum TYPE_SYSTEM_ALERT:Lcom/android/server/policy/VivoWindowType;

.field public static final enum TYPE_SYSTEM_DIALOG:Lcom/android/server/policy/VivoWindowType;

.field public static final enum TYPE_SYSTEM_ERROR:Lcom/android/server/policy/VivoWindowType;

.field public static final enum TYPE_SYSTEM_OVERLAY:Lcom/android/server/policy/VivoWindowType;

.field public static final enum TYPE_TOAST:Lcom/android/server/policy/VivoWindowType;

.field public static final enum TYPE_VOLUME_OVERLAY:Lcom/android/server/policy/VivoWindowType;

.field public static final enum TYPE_WALLPAPER:Lcom/android/server/policy/VivoWindowType;


# instance fields
.field private mLayer:I

.field private mTypeId:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/16 v7, 0x19

    const/16 v6, 0xf

    const/4 v5, 0x2

    .line 15
    new-instance v0, Lcom/android/server/policy/VivoWindowType;

    const-string v1, "TYPE_PRIVATE_PRESENTATION"

    const/4 v2, 0x0

    const/16 v3, 0x7ee

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/android/server/policy/VivoWindowType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/server/policy/VivoWindowType;->TYPE_PRIVATE_PRESENTATION:Lcom/android/server/policy/VivoWindowType;

    .line 16
    new-instance v0, Lcom/android/server/policy/VivoWindowType;

    const-string v1, "TYPE_WALLPAPER"

    const/4 v2, 0x1

    const/16 v3, 0x7dd

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/android/server/policy/VivoWindowType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/server/policy/VivoWindowType;->TYPE_WALLPAPER:Lcom/android/server/policy/VivoWindowType;

    .line 17
    new-instance v0, Lcom/android/server/policy/VivoWindowType;

    const-string v1, "TYPE_APPLICATION"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/android/server/policy/VivoWindowType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/server/policy/VivoWindowType;->TYPE_APPLICATION:Lcom/android/server/policy/VivoWindowType;

    .line 18
    new-instance v0, Lcom/android/server/policy/VivoWindowType;

    const-string v1, "TYPE_PHONE"

    const/16 v2, 0x7d2

    invoke-direct {v0, v1, v8, v2, v8}, Lcom/android/server/policy/VivoWindowType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/server/policy/VivoWindowType;->TYPE_PHONE:Lcom/android/server/policy/VivoWindowType;

    .line 19
    new-instance v0, Lcom/android/server/policy/VivoWindowType;

    const-string v1, "TYPE_SEARCH_BAR"

    const/16 v2, 0x7d1

    invoke-direct {v0, v1, v9, v2, v9}, Lcom/android/server/policy/VivoWindowType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/server/policy/VivoWindowType;->TYPE_SEARCH_BAR:Lcom/android/server/policy/VivoWindowType;

    .line 20
    new-instance v0, Lcom/android/server/policy/VivoWindowType;

    const-string v1, "TYPE_SYSTEM_DIALOG"

    const/4 v2, 0x5

    const/16 v3, 0x7d8

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/android/server/policy/VivoWindowType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/server/policy/VivoWindowType;->TYPE_SYSTEM_DIALOG:Lcom/android/server/policy/VivoWindowType;

    .line 21
    new-instance v0, Lcom/android/server/policy/VivoWindowType;

    const-string v1, "TYPE_PRIORITY_PHONE"

    const/4 v2, 0x6

    const/16 v3, 0x7d7

    const/4 v4, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/policy/VivoWindowType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/server/policy/VivoWindowType;->TYPE_PRIORITY_PHONE:Lcom/android/server/policy/VivoWindowType;

    .line 22
    new-instance v0, Lcom/android/server/policy/VivoWindowType;

    const-string v1, "TYPE_DREAM"

    const/4 v2, 0x7

    const/16 v3, 0x7e7

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/policy/VivoWindowType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/server/policy/VivoWindowType;->TYPE_DREAM:Lcom/android/server/policy/VivoWindowType;

    .line 23
    new-instance v0, Lcom/android/server/policy/VivoWindowType;

    const-string v1, "TYPE_SYSTEM_ALERT"

    const/16 v2, 0x8

    const/16 v3, 0x7d3

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/policy/VivoWindowType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/server/policy/VivoWindowType;->TYPE_SYSTEM_ALERT:Lcom/android/server/policy/VivoWindowType;

    .line 24
    new-instance v0, Lcom/android/server/policy/VivoWindowType;

    const-string v1, "TYPE_INPUT_METHOD"

    const/16 v2, 0x9

    const/16 v3, 0x7db

    const/16 v4, 0x9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/policy/VivoWindowType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/server/policy/VivoWindowType;->TYPE_INPUT_METHOD:Lcom/android/server/policy/VivoWindowType;

    .line 25
    new-instance v0, Lcom/android/server/policy/VivoWindowType;

    const-string v1, "TYPE_INPUT_METHOD_DIALOG"

    const/16 v2, 0xa

    const/16 v3, 0x7dc

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/policy/VivoWindowType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/server/policy/VivoWindowType;->TYPE_INPUT_METHOD_DIALOG:Lcom/android/server/policy/VivoWindowType;

    .line 26
    new-instance v0, Lcom/android/server/policy/VivoWindowType;

    const-string v1, "TYPE_KEYGUARD_SCRIM"

    const/16 v2, 0xb

    const/16 v3, 0x7ed

    const/16 v4, 0xb

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/policy/VivoWindowType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/server/policy/VivoWindowType;->TYPE_KEYGUARD_SCRIM:Lcom/android/server/policy/VivoWindowType;

    .line 27
    new-instance v0, Lcom/android/server/policy/VivoWindowType;

    const-string v1, "TYPE_KEYGUARD"

    const/16 v2, 0xc

    const/16 v3, 0x7d4

    const/16 v4, 0xc

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/policy/VivoWindowType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/server/policy/VivoWindowType;->TYPE_KEYGUARD:Lcom/android/server/policy/VivoWindowType;

    .line 28
    new-instance v0, Lcom/android/server/policy/VivoWindowType;

    const-string v1, "TYPE_STATUS_BAR_SUB_PANEL"

    const/16 v2, 0xd

    const/16 v3, 0x7e1

    const/16 v4, 0xd

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/policy/VivoWindowType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/server/policy/VivoWindowType;->TYPE_STATUS_BAR_SUB_PANEL:Lcom/android/server/policy/VivoWindowType;

    .line 29
    new-instance v0, Lcom/android/server/policy/VivoWindowType;

    const-string v1, "TYPE_STATUS_BAR"

    const/16 v2, 0xe

    const/16 v3, 0x7d0

    const/16 v4, 0xe

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/policy/VivoWindowType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/server/policy/VivoWindowType;->TYPE_STATUS_BAR:Lcom/android/server/policy/VivoWindowType;

    .line 30
    new-instance v0, Lcom/android/server/policy/VivoWindowType;

    const-string v1, "TYPE_STATUS_BAR_PANEL"

    const/16 v2, 0x7de

    invoke-direct {v0, v1, v6, v2, v6}, Lcom/android/server/policy/VivoWindowType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/server/policy/VivoWindowType;->TYPE_STATUS_BAR_PANEL:Lcom/android/server/policy/VivoWindowType;

    .line 31
    new-instance v0, Lcom/android/server/policy/VivoWindowType;

    const-string v1, "TYPE_KEYGUARD_DIALOG"

    const/16 v2, 0x10

    const/16 v3, 0x7d9

    const/16 v4, 0x10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/policy/VivoWindowType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/server/policy/VivoWindowType;->TYPE_KEYGUARD_DIALOG:Lcom/android/server/policy/VivoWindowType;

    .line 32
    new-instance v0, Lcom/android/server/policy/VivoWindowType;

    const-string v1, "TYPE_TOAST"

    const/16 v2, 0x11

    const/16 v3, 0x7d5

    const/16 v4, 0x11

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/policy/VivoWindowType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/server/policy/VivoWindowType;->TYPE_TOAST:Lcom/android/server/policy/VivoWindowType;

    .line 33
    new-instance v0, Lcom/android/server/policy/VivoWindowType;

    const-string v1, "TYPE_VOLUME_OVERLAY"

    const/16 v2, 0x12

    const/16 v3, 0x7e4

    const/16 v4, 0x12

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/policy/VivoWindowType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/server/policy/VivoWindowType;->TYPE_VOLUME_OVERLAY:Lcom/android/server/policy/VivoWindowType;

    .line 34
    new-instance v0, Lcom/android/server/policy/VivoWindowType;

    const-string v1, "TYPE_SYSTEM_OVERLAY"

    const/16 v2, 0x13

    const/16 v3, 0x7d6

    const/16 v4, 0x13

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/policy/VivoWindowType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/server/policy/VivoWindowType;->TYPE_SYSTEM_OVERLAY:Lcom/android/server/policy/VivoWindowType;

    .line 35
    new-instance v0, Lcom/android/server/policy/VivoWindowType;

    const-string v1, "TYPE_NAVIGATION_BAR"

    const/16 v2, 0x14

    const/16 v3, 0x7e3

    const/16 v4, 0x14

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/policy/VivoWindowType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/server/policy/VivoWindowType;->TYPE_NAVIGATION_BAR:Lcom/android/server/policy/VivoWindowType;

    .line 36
    new-instance v0, Lcom/android/server/policy/VivoWindowType;

    const-string v1, "TYPE_NAVIGATION_BAR_PANEL"

    const/16 v2, 0x15

    const/16 v3, 0x7e8

    const/16 v4, 0x15

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/policy/VivoWindowType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/server/policy/VivoWindowType;->TYPE_NAVIGATION_BAR_PANEL:Lcom/android/server/policy/VivoWindowType;

    .line 37
    new-instance v0, Lcom/android/server/policy/VivoWindowType;

    const-string v1, "TYPE_SYSTEM_ERROR"

    const/16 v2, 0x16

    const/16 v3, 0x7da

    const/16 v4, 0x16

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/policy/VivoWindowType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/server/policy/VivoWindowType;->TYPE_SYSTEM_ERROR:Lcom/android/server/policy/VivoWindowType;

    .line 38
    new-instance v0, Lcom/android/server/policy/VivoWindowType;

    const-string v1, "TYPE_MAGNIFICATION_OVERLAY"

    const/16 v2, 0x17

    const/16 v3, 0x7eb

    const/16 v4, 0x17

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/policy/VivoWindowType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/server/policy/VivoWindowType;->TYPE_MAGNIFICATION_OVERLAY:Lcom/android/server/policy/VivoWindowType;

    .line 39
    new-instance v0, Lcom/android/server/policy/VivoWindowType;

    const-string v1, "TYPE_DISPLAY_OVERLAY"

    const/16 v2, 0x18

    const/16 v3, 0x7ea

    const/16 v4, 0x18

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/policy/VivoWindowType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/server/policy/VivoWindowType;->TYPE_DISPLAY_OVERLAY:Lcom/android/server/policy/VivoWindowType;

    .line 40
    new-instance v0, Lcom/android/server/policy/VivoWindowType;

    const-string v1, "TYPE_DRAG"

    const/16 v2, 0x7e0

    invoke-direct {v0, v1, v7, v2, v7}, Lcom/android/server/policy/VivoWindowType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/server/policy/VivoWindowType;->TYPE_DRAG:Lcom/android/server/policy/VivoWindowType;

    .line 41
    new-instance v0, Lcom/android/server/policy/VivoWindowType;

    const-string v1, "TYPE_SECURE_SYSTEM_OVERLAY"

    const/16 v2, 0x1a

    const/16 v3, 0x7df

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/android/server/policy/VivoWindowType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/server/policy/VivoWindowType;->TYPE_SECURE_SYSTEM_OVERLAY:Lcom/android/server/policy/VivoWindowType;

    .line 42
    new-instance v0, Lcom/android/server/policy/VivoWindowType;

    const-string v1, "TYPE_BOOT_PROGRESS"

    const/16 v2, 0x1b

    const/16 v3, 0x7e5

    const/16 v4, 0x1b

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/policy/VivoWindowType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/server/policy/VivoWindowType;->TYPE_BOOT_PROGRESS:Lcom/android/server/policy/VivoWindowType;

    .line 43
    new-instance v0, Lcom/android/server/policy/VivoWindowType;

    const-string v1, "TYPE_POINTER"

    const/16 v2, 0x1c

    const/16 v3, 0x7e2

    const/16 v4, 0x1c

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/policy/VivoWindowType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/server/policy/VivoWindowType;->TYPE_POINTER:Lcom/android/server/policy/VivoWindowType;

    .line 45
    new-instance v0, Lcom/android/server/policy/VivoWindowType;

    const-string v1, "LAST_SYSTEM_WINDOW"

    const/16 v2, 0x1d

    const/16 v3, 0xbb7

    const/4 v4, -0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/policy/VivoWindowType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/server/policy/VivoWindowType;->LAST_SYSTEM_WINDOW:Lcom/android/server/policy/VivoWindowType;

    .line 12
    const/16 v0, 0x1e

    new-array v0, v0, [Lcom/android/server/policy/VivoWindowType;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/server/policy/VivoWindowType;->TYPE_PRIVATE_PRESENTATION:Lcom/android/server/policy/VivoWindowType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/server/policy/VivoWindowType;->TYPE_WALLPAPER:Lcom/android/server/policy/VivoWindowType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/android/server/policy/VivoWindowType;->TYPE_APPLICATION:Lcom/android/server/policy/VivoWindowType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/policy/VivoWindowType;->TYPE_PHONE:Lcom/android/server/policy/VivoWindowType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/server/policy/VivoWindowType;->TYPE_SEARCH_BAR:Lcom/android/server/policy/VivoWindowType;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/android/server/policy/VivoWindowType;->TYPE_SYSTEM_DIALOG:Lcom/android/server/policy/VivoWindowType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/server/policy/VivoWindowType;->TYPE_PRIORITY_PHONE:Lcom/android/server/policy/VivoWindowType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/server/policy/VivoWindowType;->TYPE_DREAM:Lcom/android/server/policy/VivoWindowType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/server/policy/VivoWindowType;->TYPE_SYSTEM_ALERT:Lcom/android/server/policy/VivoWindowType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/server/policy/VivoWindowType;->TYPE_INPUT_METHOD:Lcom/android/server/policy/VivoWindowType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/server/policy/VivoWindowType;->TYPE_INPUT_METHOD_DIALOG:Lcom/android/server/policy/VivoWindowType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/server/policy/VivoWindowType;->TYPE_KEYGUARD_SCRIM:Lcom/android/server/policy/VivoWindowType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/server/policy/VivoWindowType;->TYPE_KEYGUARD:Lcom/android/server/policy/VivoWindowType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/android/server/policy/VivoWindowType;->TYPE_STATUS_BAR_SUB_PANEL:Lcom/android/server/policy/VivoWindowType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/android/server/policy/VivoWindowType;->TYPE_STATUS_BAR:Lcom/android/server/policy/VivoWindowType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/android/server/policy/VivoWindowType;->TYPE_STATUS_BAR_PANEL:Lcom/android/server/policy/VivoWindowType;

    aput-object v1, v0, v6

    const/16 v1, 0x10

    sget-object v2, Lcom/android/server/policy/VivoWindowType;->TYPE_KEYGUARD_DIALOG:Lcom/android/server/policy/VivoWindowType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/android/server/policy/VivoWindowType;->TYPE_TOAST:Lcom/android/server/policy/VivoWindowType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/android/server/policy/VivoWindowType;->TYPE_VOLUME_OVERLAY:Lcom/android/server/policy/VivoWindowType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/android/server/policy/VivoWindowType;->TYPE_SYSTEM_OVERLAY:Lcom/android/server/policy/VivoWindowType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/android/server/policy/VivoWindowType;->TYPE_NAVIGATION_BAR:Lcom/android/server/policy/VivoWindowType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/android/server/policy/VivoWindowType;->TYPE_NAVIGATION_BAR_PANEL:Lcom/android/server/policy/VivoWindowType;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/android/server/policy/VivoWindowType;->TYPE_SYSTEM_ERROR:Lcom/android/server/policy/VivoWindowType;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/android/server/policy/VivoWindowType;->TYPE_MAGNIFICATION_OVERLAY:Lcom/android/server/policy/VivoWindowType;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/android/server/policy/VivoWindowType;->TYPE_DISPLAY_OVERLAY:Lcom/android/server/policy/VivoWindowType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/android/server/policy/VivoWindowType;->TYPE_DRAG:Lcom/android/server/policy/VivoWindowType;

    aput-object v1, v0, v7

    const/16 v1, 0x1a

    sget-object v2, Lcom/android/server/policy/VivoWindowType;->TYPE_SECURE_SYSTEM_OVERLAY:Lcom/android/server/policy/VivoWindowType;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/android/server/policy/VivoWindowType;->TYPE_BOOT_PROGRESS:Lcom/android/server/policy/VivoWindowType;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/android/server/policy/VivoWindowType;->TYPE_POINTER:Lcom/android/server/policy/VivoWindowType;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/android/server/policy/VivoWindowType;->LAST_SYSTEM_WINDOW:Lcom/android/server/policy/VivoWindowType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/policy/VivoWindowType;->$VALUES:[Lcom/android/server/policy/VivoWindowType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p3, "typeId"    # I
    .param p4, "layer"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    iput p3, p0, Lcom/android/server/policy/VivoWindowType;->mTypeId:I

    .line 53
    iput p4, p0, Lcom/android/server/policy/VivoWindowType;->mLayer:I

    .line 54
    return-void
.end method

.method public static final getWindowLayer(I)I
    .locals 7
    .param p0, "typeId"    # I

    .prologue
    .line 68
    const/4 v4, 0x1

    if-lt p0, v4, :cond_0

    const/16 v4, 0x63

    if-gt p0, v4, :cond_0

    .line 70
    sget-object v4, Lcom/android/server/policy/VivoWindowType;->TYPE_APPLICATION:Lcom/android/server/policy/VivoWindowType;

    invoke-virtual {v4}, Lcom/android/server/policy/VivoWindowType;->getLayer()I

    move-result v4

    .line 81
    :goto_0
    return v4

    .line 73
    :cond_0
    invoke-static {}, Lcom/android/server/policy/VivoWindowType;->values()[Lcom/android/server/policy/VivoWindowType;

    move-result-object v0

    .local v0, "arr$":[Lcom/android/server/policy/VivoWindowType;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 75
    .local v3, "type":Lcom/android/server/policy/VivoWindowType;
    invoke-virtual {v3}, Lcom/android/server/policy/VivoWindowType;->getTypeId()I

    move-result v4

    if-ne v4, p0, :cond_1

    .line 77
    invoke-virtual {v3}, Lcom/android/server/policy/VivoWindowType;->getLayer()I

    move-result v4

    goto :goto_0

    .line 73
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 80
    .end local v3    # "type":Lcom/android/server/policy/VivoWindowType;
    :cond_2
    const-string v4, "VivoWMPHook"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error: invalid typeId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/policy/VivoWindowType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 12
    const-class v0, Lcom/android/server/policy/VivoWindowType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/VivoWindowType;

    return-object v0
.end method

.method public static values()[Lcom/android/server/policy/VivoWindowType;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/android/server/policy/VivoWindowType;->$VALUES:[Lcom/android/server/policy/VivoWindowType;

    invoke-virtual {v0}, [Lcom/android/server/policy/VivoWindowType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/policy/VivoWindowType;

    return-object v0
.end method


# virtual methods
.method public final getLayer()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/android/server/policy/VivoWindowType;->mLayer:I

    return v0
.end method

.method public final getTypeId()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/android/server/policy/VivoWindowType;->mTypeId:I

    return v0
.end method
