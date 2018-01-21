.class public Lcom/vivo/common/autobrightness/PowerAssistant;
.super Ljava/lang/Object;
.source "PowerAssistant.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/common/autobrightness/PowerAssistant$SettingsObserver;
    }
.end annotation


# static fields
.field private static final KEY_POWER_BRIGHTNESS_MODE:Ljava/lang/String; = "power_screen_brightness_mode_in_user"

.field private static final KEY_POWER_SAVE_TYPE:Ljava/lang/String; = "power_save_type"

.field public static final POWER_ASSISTANT_NORMAL:I = 0x0

.field public static final POWER_ASSISTANT_SMART_SAVING_MODE:I = 0x1

.field public static final POWER_BRIGHTNESS_MODE_AUTO:I = 0x1

.field public static final POWER_BRIGHTNESS_MODE_USER:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PowerAssistant"

.field public static final TYPE_CPU_MODE:I = 0x0

.field public static final TYPE_DEFAULT:I = 0x1

.field public static final TYPE_SMART:I = 0x2

.field public static final TYPE_SUPER:I = 0x3

.field public static final TYPE_USER:I = 0x4

.field private static mPowerAssistantMode:I

.field private static mSettingObserver:Lcom/vivo/common/autobrightness/PowerAssistant$SettingsObserver;


# instance fields
.field private mCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$PowerAssistantCallback;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLock:Ljava/lang/Object;

.field private mPowerBrightnessMode:I

.field private mPowerSaveType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    sput v0, Lcom/vivo/common/autobrightness/PowerAssistant;->mPowerAssistantMode:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/vivo/common/autobrightness/CameraLumaCallback$PowerAssistantCallback;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "callback"    # Lcom/vivo/common/autobrightness/CameraLumaCallback$PowerAssistantCallback;

    .prologue
    const/4 v4, 0x1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/vivo/common/autobrightness/PowerAssistant;->mLock:Ljava/lang/Object;

    .line 28
    iput v4, p0, Lcom/vivo/common/autobrightness/PowerAssistant;->mPowerSaveType:I

    .line 38
    iput v4, p0, Lcom/vivo/common/autobrightness/PowerAssistant;->mPowerBrightnessMode:I

    .line 43
    iput-object p1, p0, Lcom/vivo/common/autobrightness/PowerAssistant;->mContext:Landroid/content/Context;

    .line 44
    iput-object p3, p0, Lcom/vivo/common/autobrightness/PowerAssistant;->mCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$PowerAssistantCallback;

    .line 45
    iput-object p2, p0, Lcom/vivo/common/autobrightness/PowerAssistant;->mHandler:Landroid/os/Handler;

    .line 46
    iget-object v2, p0, Lcom/vivo/common/autobrightness/PowerAssistant;->mCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$PowerAssistantCallback;

    if-nez v2, :cond_0

    .line 47
    const-string v2, "PowerAssistant"

    const-string v3, "AutoBrightnessERROR: mCallback is null."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_0
    new-instance v2, Lcom/vivo/common/autobrightness/PowerAssistant$SettingsObserver;

    iget-object v3, p0, Lcom/vivo/common/autobrightness/PowerAssistant;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/vivo/common/autobrightness/PowerAssistant$SettingsObserver;-><init>(Lcom/vivo/common/autobrightness/PowerAssistant;Landroid/os/Handler;)V

    sput-object v2, Lcom/vivo/common/autobrightness/PowerAssistant;->mSettingObserver:Lcom/vivo/common/autobrightness/PowerAssistant$SettingsObserver;

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/vivo/common/autobrightness/PowerAssistant;->mContentResolver:Landroid/content/ContentResolver;

    .line 51
    invoke-direct {p0}, Lcom/vivo/common/autobrightness/PowerAssistant;->getPowerSaveType()I

    move-result v1

    .line 52
    .local v1, "type":I
    invoke-direct {p0}, Lcom/vivo/common/autobrightness/PowerAssistant;->getPowerBrightnessMode()I

    move-result v0

    .line 53
    .local v0, "mode":I
    if-eq v4, v1, :cond_1

    .line 54
    invoke-direct {p0, v1, v0}, Lcom/vivo/common/autobrightness/PowerAssistant;->handleTypeModeChange(II)V

    .line 56
    :cond_1
    invoke-direct {p0}, Lcom/vivo/common/autobrightness/PowerAssistant;->registerObserver()V

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/vivo/common/autobrightness/PowerAssistant;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/PowerAssistant;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/vivo/common/autobrightness/PowerAssistant;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vivo/common/autobrightness/PowerAssistant;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/autobrightness/PowerAssistant;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/vivo/common/autobrightness/PowerAssistant;->handleSettingsChangedLocked()V

    return-void
.end method

.method private static getPowerAssistantMode(II)I
    .locals 2
    .param p0, "type"    # I
    .param p1, "brightnessMode"    # I

    .prologue
    .line 134
    const/4 v0, 0x0

    .line 135
    .local v0, "mode":I
    const/4 v1, 0x2

    if-ne v1, p0, :cond_1

    .line 136
    const/4 v0, 0x1

    .line 142
    :cond_0
    :goto_0
    sput v0, Lcom/vivo/common/autobrightness/PowerAssistant;->mPowerAssistantMode:I

    .line 143
    return v0

    .line 137
    :cond_1
    const/4 v1, 0x4

    if-ne v1, p0, :cond_0

    .line 138
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 139
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getPowerAssistantMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 147
    sget v1, Lcom/vivo/common/autobrightness/PowerAssistant;->mPowerAssistantMode:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPowerBrightnessMode()I
    .locals 5

    .prologue
    .line 93
    const/4 v0, 0x1

    .line 95
    .local v0, "brightnessMode":I
    :try_start_0
    iget-object v2, p0, Lcom/vivo/common/autobrightness/PowerAssistant;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "power_screen_brightness_mode_in_user"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 97
    const-string v2, "PowerAssistant"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPowerBrightnessMode brightnessMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_0
    return v0

    .line 98
    :catch_0
    move-exception v1

    .line 100
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "PowerAssistant"

    const-string v3, "getPowerBrightnessMode failed."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getPowerSaveType()I
    .locals 5

    .prologue
    .line 80
    const/4 v1, 0x1

    .line 82
    .local v1, "type":I
    :try_start_0
    iget-object v2, p0, Lcom/vivo/common/autobrightness/PowerAssistant;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "power_save_type"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 84
    const-string v2, "PowerAssistant"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPowerSaveType type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_0
    return v1

    .line 85
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PowerAssistant"

    const-string v3, "handleSettingsChangedLocked failed."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleSettingsChangedLocked()V
    .locals 2

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/vivo/common/autobrightness/PowerAssistant;->getPowerSaveType()I

    move-result v1

    .line 107
    .local v1, "type":I
    invoke-direct {p0}, Lcom/vivo/common/autobrightness/PowerAssistant;->getPowerBrightnessMode()I

    move-result v0

    .line 108
    .local v0, "brightMode":I
    invoke-direct {p0, v1, v0}, Lcom/vivo/common/autobrightness/PowerAssistant;->handleTypeModeChange(II)V

    .line 109
    return-void
.end method

.method private handleTypeModeChange(II)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "brightnessMode"    # I

    .prologue
    .line 64
    iget v1, p0, Lcom/vivo/common/autobrightness/PowerAssistant;->mPowerSaveType:I

    if-ne p1, v1, :cond_0

    iget v1, p0, Lcom/vivo/common/autobrightness/PowerAssistant;->mPowerBrightnessMode:I

    if-eq p2, v1, :cond_2

    .line 65
    :cond_0
    iput p1, p0, Lcom/vivo/common/autobrightness/PowerAssistant;->mPowerSaveType:I

    .line 66
    iput p2, p0, Lcom/vivo/common/autobrightness/PowerAssistant;->mPowerBrightnessMode:I

    .line 67
    const-string v1, "PowerAssistant"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleTypeChange type changed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/vivo/common/autobrightness/PowerAssistant;->mPowerSaveType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v1, p0, Lcom/vivo/common/autobrightness/PowerAssistant;->mCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$PowerAssistantCallback;

    if-eqz v1, :cond_1

    .line 69
    invoke-static {p1, p2}, Lcom/vivo/common/autobrightness/PowerAssistant;->getPowerAssistantMode(II)I

    move-result v0

    .line 70
    .local v0, "mode":I
    iget-object v1, p0, Lcom/vivo/common/autobrightness/PowerAssistant;->mCallback:Lcom/vivo/common/autobrightness/CameraLumaCallback$PowerAssistantCallback;

    invoke-interface {v1, v0}, Lcom/vivo/common/autobrightness/CameraLumaCallback$PowerAssistantCallback;->onPowerSaveTypeChanged(I)V

    .line 77
    .end local v0    # "mode":I
    :goto_0
    return-void

    .line 72
    :cond_1
    const-string v1, "PowerAssistant"

    const-string v2, "handleTypeChange mCallback is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 75
    :cond_2
    const-string v1, "handleTypeModeChange same mode."

    invoke-direct {p0, v1}, Lcom/vivo/common/autobrightness/PowerAssistant;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    const-string v0, "PowerAssistant"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_0
    return-void
.end method

.method private registerObserver()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 112
    iget-object v1, p0, Lcom/vivo/common/autobrightness/PowerAssistant;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 113
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "power_save_type"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/vivo/common/autobrightness/PowerAssistant;->mSettingObserver:Lcom/vivo/common/autobrightness/PowerAssistant$SettingsObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 115
    const-string v1, "power_screen_brightness_mode_in_user"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/vivo/common/autobrightness/PowerAssistant;->mSettingObserver:Lcom/vivo/common/autobrightness/PowerAssistant$SettingsObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 117
    return-void
.end method
