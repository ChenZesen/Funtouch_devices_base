.class public Landroid/hardware/Flashlight;
.super Ljava/lang/Object;
.source "Flashlight.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation


# static fields
.field public static final FLASHLIGHT_CAMERA_FRONT_ON:I = 0x4

.field public static final FLASHLIGHT_REMIND_BACK_ON:I = 0x6

.field public static final FLASHLIGHT_REMIND_FRONT_ON:I = 0x5

.field public static final FLASHLIGHT_STATE_HIGH:I = 0x2

.field public static final FLASHLIGHT_STATE_LOW:I = 0x1

.field public static final FLASHLIGHT_STATE_OFF:I = 0x0

.field public static final FLASHLIGHT_STATE_SOS:I = 0x7

.field public static final FLASHLIGHT_STATE_STATUSBAR:I = 0x8

.field public static final FRONT_FLASHLIGHT_STATE_HIGH:I = 0xc

.field public static final FRONT_FLASHLIGHT_STATE_LOW:I = 0xb

.field public static final FRONT_FLASHLIGHT_STATE_OFF:I = 0xa

.field private static final TAG:Ljava/lang/String; = "Flashlight"


# instance fields
.field private mCtx:Landroid/content/Context;

.field private mFlashState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/Flashlight;->mCtx:Landroid/content/Context;

    .line 39
    iput v1, p0, Landroid/hardware/Flashlight;->mFlashState:I

    .line 42
    iput-object p1, p0, Landroid/hardware/Flashlight;->mCtx:Landroid/content/Context;

    .line 43
    iput v1, p0, Landroid/hardware/Flashlight;->mFlashState:I

    .line 44
    return-void
.end method

.method private static native setFlashlightStateNative(I)Z
.end method


# virtual methods
.method public getFlashlightState()I
    .locals 3

    .prologue
    .line 106
    iget-object v0, p0, Landroid/hardware/Flashlight;->mCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "FlashState"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public setFlashlightState(I)Z
    .locals 5
    .param p1, "state"    # I

    .prologue
    .line 47
    const/4 v0, 0x0

    .line 49
    .local v0, "ret":Z
    const/16 v2, 0xc

    if-gt p1, v2, :cond_0

    if-gez p1, :cond_1

    .line 50
    :cond_0
    const-string v2, "Flashlight"

    const-string/jumbo v3, "invalid state for flashlight."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 65
    .end local v0    # "ret":Z
    .local v1, "ret":I
    :goto_0
    return v1

    .line 58
    .end local v1    # "ret":I
    .restart local v0    # "ret":Z
    :cond_1
    const-string v2, "Flashlight"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The state["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] is set."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-static {p1}, Landroid/hardware/Flashlight;->setFlashlightStateNative(I)Z

    move-result v0

    .line 61
    if-eqz v0, :cond_2

    .line 62
    iput p1, p0, Landroid/hardware/Flashlight;->mFlashState:I

    :cond_2
    move v1, v0

    .line 65
    .restart local v1    # "ret":I
    goto :goto_0
.end method

.method public setFlashlightState(Landroid/content/Context;I)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "state"    # I

    .prologue
    .line 70
    const/4 v0, 0x0

    .line 72
    .local v0, "ret":Z
    const/16 v2, 0xc

    if-gt p2, v2, :cond_0

    if-gez p2, :cond_1

    .line 73
    :cond_0
    const-string v2, "Flashlight"

    const-string/jumbo v3, "invalid state for flashlight."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 82
    .end local v0    # "ret":Z
    .local v1, "ret":I
    :goto_0
    return v1

    .line 76
    .end local v1    # "ret":I
    .restart local v0    # "ret":Z
    :cond_1
    const-string v2, "Flashlight"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The only for state["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] is set."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-static {p2}, Landroid/hardware/Flashlight;->setFlashlightStateNative(I)Z

    move-result v0

    .line 78
    iget-object v2, p0, Landroid/hardware/Flashlight;->mCtx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "FlashState"

    invoke-static {v2, v3, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 79
    if-eqz v0, :cond_2

    .line 80
    iput p2, p0, Landroid/hardware/Flashlight;->mFlashState:I

    :cond_2
    move v1, v0

    .line 82
    .restart local v1    # "ret":I
    goto :goto_0
.end method

.method public setFlashlightState(Landroid/content/Context;II)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "state"    # I
    .param p3, "runner"    # I

    .prologue
    .line 88
    const/4 v0, 0x0

    .line 90
    .local v0, "ret":Z
    const/16 v2, 0xc

    if-gt p2, v2, :cond_0

    if-gez p2, :cond_1

    .line 91
    :cond_0
    const-string v2, "Flashlight"

    const-string/jumbo v3, "invalid state for flashlight."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 101
    .end local v0    # "ret":Z
    .local v1, "ret":I
    :goto_0
    return v1

    .line 94
    .end local v1    # "ret":I
    .restart local v0    # "ret":Z
    :cond_1
    const-string v2, "Flashlight"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The only for state["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] is set."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-static {p2}, Landroid/hardware/Flashlight;->setFlashlightStateNative(I)Z

    move-result v0

    .line 96
    iget-object v2, p0, Landroid/hardware/Flashlight;->mCtx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "FlashState"

    invoke-static {v2, v3, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 97
    iget-object v2, p0, Landroid/hardware/Flashlight;->mCtx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "Flash-State"

    invoke-static {v2, v3, p3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 98
    if-eqz v0, :cond_2

    .line 99
    iput p2, p0, Landroid/hardware/Flashlight;->mFlashState:I

    :cond_2
    move v1, v0

    .line 101
    .restart local v1    # "ret":I
    goto :goto_0
.end method
