.class public Landroid/content/res/ExtraConfiguration;
.super Ljava/lang/Object;
.source "ExtraConfiguration.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation


# static fields
.field public static final THEME_CONFIG_CHANGED:I = -0x80000000


# instance fields
.field public themeId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static needNewResources(I)Z
    .locals 2
    .param p0, "configChanges"    # I

    .prologue
    .line 106
    const/high16 v1, -0x80000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_0

    .line 107
    const/4 v0, 0x1

    .line 110
    .local v0, "flag":Z
    :goto_0
    return v0

    .line 109
    .end local v0    # "flag":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "flag":Z
    goto :goto_0
.end method

.method public static updateThemeConfiguration(Landroid/content/res/ExtraConfiguration;)Z
    .locals 6
    .param p0, "extraCon"    # Landroid/content/res/ExtraConfiguration;

    .prologue
    .line 25
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 26
    .local v0, "am":Landroid/app/IActivityManager;
    if-eqz v0, :cond_0

    .line 27
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 29
    .local v4, "token":J
    :try_start_0
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 30
    .local v1, "config":Landroid/content/res/Configuration;
    iput-object p0, v1, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/ExtraConfiguration;

    .line 31
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 38
    .end local v1    # "config":Landroid/content/res/Configuration;
    .end local v4    # "token":J
    :cond_0
    const/4 v3, 0x1

    :goto_0
    return v3

    .line 32
    .restart local v4    # "token":J
    :catch_0
    move-exception v2

    .line 33
    .local v2, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    .line 35
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method


# virtual methods
.method public compareTo(Landroid/content/res/ExtraConfiguration;)I
    .locals 2
    .param p1, "extraconfiguration"    # Landroid/content/res/ExtraConfiguration;

    .prologue
    .line 51
    iget v0, p1, Landroid/content/res/ExtraConfiguration;->themeId:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/content/res/ExtraConfiguration;->themeId:I

    iget v1, p1, Landroid/content/res/ExtraConfiguration;->themeId:I

    if-eq v0, v1, :cond_0

    .line 52
    const/4 v0, 0x1

    .line 54
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 46
    check-cast p1, Landroid/content/res/ExtraConfiguration;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/content/res/ExtraConfiguration;->compareTo(Landroid/content/res/ExtraConfiguration;)I

    move-result v0

    return v0
.end method

.method public diff(Landroid/content/res/ExtraConfiguration;)I
    .locals 3
    .param p1, "extraconfiguration"    # Landroid/content/res/ExtraConfiguration;

    .prologue
    .line 58
    const/4 v0, 0x0

    .line 59
    .local v0, "i":I
    iget v1, p1, Landroid/content/res/ExtraConfiguration;->themeId:I

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/content/res/ExtraConfiguration;->themeId:I

    iget v2, p1, Landroid/content/res/ExtraConfiguration;->themeId:I

    if-eq v1, v2, :cond_0

    .line 60
    const/high16 v0, -0x80000000

    .line 61
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Landroid/content/res/ExtraConfiguration;->themeId:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/ExtraConfiguration;->themeId:I

    .line 70
    return-void
.end method

.method public setTo(Landroid/content/res/ExtraConfiguration;)V
    .locals 1
    .param p1, "extraconfiguration"    # Landroid/content/res/ExtraConfiguration;

    .prologue
    .line 73
    iget v0, p1, Landroid/content/res/ExtraConfiguration;->themeId:I

    iput v0, p0, Landroid/content/res/ExtraConfiguration;->themeId:I

    .line 74
    return-void
.end method

.method public setToDefaults()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/ExtraConfiguration;->themeId:I

    .line 78
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .local v0, "stringbuilder":Ljava/lang/StringBuilder;
    const-string v1, " themeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iget v1, p0, Landroid/content/res/ExtraConfiguration;->themeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateFrom(Landroid/content/res/ExtraConfiguration;)I
    .locals 3
    .param p1, "extraconfiguration"    # Landroid/content/res/ExtraConfiguration;

    .prologue
    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, "i":I
    iget v1, p1, Landroid/content/res/ExtraConfiguration;->themeId:I

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/content/res/ExtraConfiguration;->themeId:I

    iget v2, p1, Landroid/content/res/ExtraConfiguration;->themeId:I

    if-eq v1, v2, :cond_0

    .line 90
    const/high16 v0, -0x80000000

    .line 91
    iget v1, p1, Landroid/content/res/ExtraConfiguration;->themeId:I

    iput v1, p0, Landroid/content/res/ExtraConfiguration;->themeId:I

    .line 93
    :cond_0
    return v0
.end method

.method public updateTheme(J)V
    .locals 1
    .param p1, "l"    # J

    .prologue
    .line 97
    iget v0, p0, Landroid/content/res/ExtraConfiguration;->themeId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/content/res/ExtraConfiguration;->themeId:I

    .line 98
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 101
    iget v0, p0, Landroid/content/res/ExtraConfiguration;->themeId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    return-void
.end method
