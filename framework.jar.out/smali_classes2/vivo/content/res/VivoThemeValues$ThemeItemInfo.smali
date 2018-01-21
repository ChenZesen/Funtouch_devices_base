.class Lvivo/content/res/VivoThemeValues$ThemeItemInfo;
.super Ljava/lang/Object;
.source "VivoThemeValues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvivo/content/res/VivoThemeValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThemeItemInfo"
.end annotation


# instance fields
.field name:Ljava/lang/String;

.field type:Ljava/lang/String;

.field value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "nameStr"    # Ljava/lang/String;
    .param p2, "typeStr"    # Ljava/lang/String;
    .param p3, "values"    # Ljava/lang/Object;

    .prologue
    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    iput-object p1, p0, Lvivo/content/res/VivoThemeValues$ThemeItemInfo;->name:Ljava/lang/String;

    .line 243
    iput-object p2, p0, Lvivo/content/res/VivoThemeValues$ThemeItemInfo;->type:Ljava/lang/String;

    .line 244
    iput-object p3, p0, Lvivo/content/res/VivoThemeValues$ThemeItemInfo;->value:Ljava/lang/Object;

    .line 245
    return-void
.end method
