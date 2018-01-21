.class public Lvivo/util/VivoThemeUtil;
.super Ljava/lang/Object;
.source "VivoThemeUtil.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS_PART:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvivo/util/VivoThemeUtil$1;,
        Lvivo/util/VivoThemeUtil$ThemeType;
    }
.end annotation


# static fields
.field private static final KEY_THEME:Ljava/lang/String; = "ro.vivo.rom.style"

.field private static final THEME_STYLE:Ljava/lang/String;

.field private static sTempCache:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    const/4 v0, 0x1

    new-array v0, v0, [I

    sput-object v0, Lvivo/util/VivoThemeUtil;->sTempCache:[I

    .line 20
    const-string v0, "ro.vivo.rom.style"

    const-string v1, "vigour"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lvivo/util/VivoThemeUtil;->THEME_STYLE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static getAttributeResId(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrId"    # I
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    .line 123
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 124
    .local v0, "out":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 125
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    return v1
.end method

.method public static getColor(Landroid/content/Context;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrId"    # I
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 139
    sget-object v2, Lvivo/util/VivoThemeUtil;->sTempCache:[I

    aput p1, v2, v3

    .line 140
    sget-object v2, Lvivo/util/VivoThemeUtil;->sTempCache:[I

    invoke-virtual {p0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 141
    .local v1, "typeArray":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 142
    .local v0, "color":I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 143
    return v0
.end method

.method public static getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrId"    # I
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 148
    sget-object v2, Lvivo/util/VivoThemeUtil;->sTempCache:[I

    aput p1, v2, v3

    .line 149
    sget-object v2, Lvivo/util/VivoThemeUtil;->sTempCache:[I

    invoke-virtual {p0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 150
    .local v1, "typeArray":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 151
    .local v0, "color":Landroid/content/res/ColorStateList;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 152
    return-object v0
.end method

.method public static getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrId"    # I
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_METHOD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 130
    sget-object v2, Lvivo/util/VivoThemeUtil;->sTempCache:[I

    aput p1, v2, v3

    .line 131
    sget-object v2, Lvivo/util/VivoThemeUtil;->sTempCache:[I

    invoke-virtual {p0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 132
    .local v1, "typeArray":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 133
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 134
    return-object v0
.end method

.method public static getSystemThemeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lvivo/util/VivoThemeUtil;->THEME_STYLE:Ljava/lang/String;

    return-object v0
.end method

.method public static getSystemThemeStyle(Lvivo/util/VivoThemeUtil$ThemeType;)I
    .locals 3
    .param p0, "type"    # Lvivo/util/VivoThemeUtil$ThemeType;

    .prologue
    .line 59
    const/4 v0, 0x0

    .line 60
    .local v0, "result":I
    invoke-static {}, Lvivo/util/VivoThemeUtil;->isBrightStyle()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    sget-object v1, Lvivo/util/VivoThemeUtil$1;->$SwitchMap$vivo$util$VivoThemeUtil$ThemeType:[I

    invoke-virtual {p0}, Lvivo/util/VivoThemeUtil$ThemeType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 111
    :cond_0
    :goto_0
    return v0

    .line 64
    :pswitch_0
    const/high16 v0, 0x30f0000

    .line 65
    goto :goto_0

    .line 67
    :pswitch_1
    const v0, 0x30f0004

    .line 68
    goto :goto_0

    .line 70
    :pswitch_2
    const v0, 0x30f0151

    .line 71
    goto :goto_0

    .line 73
    :pswitch_3
    const v0, 0x30f014f

    .line 74
    goto :goto_0

    .line 76
    :pswitch_4
    const v0, 0x30f0156

    .line 77
    goto :goto_0

    .line 79
    :pswitch_5
    const v0, 0x30f0154

    .line 81
    :pswitch_6
    const v0, 0x30f0068

    goto :goto_0

    .line 86
    :cond_1
    invoke-static {}, Lvivo/util/VivoThemeUtil;->isDarkStyle()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    sget-object v1, Lvivo/util/VivoThemeUtil$1;->$SwitchMap$vivo$util$VivoThemeUtil$ThemeType:[I

    invoke-virtual {p0}, Lvivo/util/VivoThemeUtil$ThemeType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 90
    :pswitch_7
    const v0, 0x30f0001

    .line 91
    goto :goto_0

    .line 93
    :pswitch_8
    const v0, 0x30f0005

    .line 94
    goto :goto_0

    .line 96
    :pswitch_9
    const v0, 0x30f0152

    .line 97
    goto :goto_0

    .line 99
    :pswitch_a
    const v0, 0x30f0150

    .line 100
    goto :goto_0

    .line 102
    :pswitch_b
    const v0, 0x30f0157

    .line 103
    goto :goto_0

    .line 105
    :pswitch_c
    const v0, 0x30f0155

    goto :goto_0

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 88
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public static isBrightStyle()Z
    .locals 2

    .prologue
    .line 31
    const-string v0, "vigour"

    sget-object v1, Lvivo/util/VivoThemeUtil;->THEME_STYLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDarkStyle()Z
    .locals 2

    .prologue
    .line 35
    const-string v0, "black"

    sget-object v1, Lvivo/util/VivoThemeUtil;->THEME_STYLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVigourTheme(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 39
    sget-object v2, Lcom/vivo/internal/R$styleable;->VigourFeature:[I

    invoke-virtual {p0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 40
    .local v1, "typeArray":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 41
    .local v0, "hasStyleFlag":Z
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 42
    return v0
.end method

.method public static isVigourThemeRaw(I)Z
    .locals 1
    .param p0, "themeRes"    # I

    .prologue
    .line 50
    const v0, 0x30f014d

    if-eq p0, v0, :cond_0

    const/high16 v0, 0x30f0000

    if-eq p0, v0, :cond_0

    const v0, 0x30f0001

    if-ne p0, v0, :cond_1

    .line 53
    :cond_0
    const/4 v0, 0x1

    .line 55
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
