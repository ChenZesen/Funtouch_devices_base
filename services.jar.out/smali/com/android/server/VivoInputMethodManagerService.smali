.class public Lcom/android/server/VivoInputMethodManagerService;
.super Lcom/android/server/InputMethodManagerService;
.source "VivoInputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/VivoInputMethodManagerService$SettingsDBObserver;
    }
.end annotation


# static fields
.field private static VIVO_SECURE_INPUTMETHOD:Ljava/lang/String;

.field private static VIVO_SECURE_INPUTMETHOD_PACKAGENAME:Ljava/lang/String;

.field private static VIVO_SECURE_INPUTMETHOD_SERVICE:Ljava/lang/String;

.field private static final VIVO_SECURE_INPUTMETHOD_SETTINGS_DATABASE:Ljava/lang/String;


# instance fields
.field private isPasswordInputType:Z

.field private mContext:Landroid/content/Context;

.field private mHasSecureIMS:Z

.field private mObserverUri:Landroid/net/Uri;

.field private mSecureIMSOn:Z

.field private mSecureInputMethodService:Lcom/android/server/VivoSecureInputMethodManagerService;

.field private mSettingsContentObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/android/internal/inputmethod/InputMethodUtils;->VIVO_SECURE_INPUTMETHOD_DATABASE:Ljava/lang/String;

    sput-object v0, Lcom/android/server/VivoInputMethodManagerService;->VIVO_SECURE_INPUTMETHOD_SETTINGS_DATABASE:Ljava/lang/String;

    .line 41
    sget-object v0, Lcom/android/internal/inputmethod/InputMethodUtils;->VIVO_SECURE_INPUTMETHOD_PACKAGENAME:Ljava/lang/String;

    sput-object v0, Lcom/android/server/VivoInputMethodManagerService;->VIVO_SECURE_INPUTMETHOD_PACKAGENAME:Ljava/lang/String;

    .line 42
    sget-object v0, Lcom/android/internal/inputmethod/InputMethodUtils;->VIVO_SECURE_INPUTMETHOD_SERVICE:Ljava/lang/String;

    sput-object v0, Lcom/android/server/VivoInputMethodManagerService;->VIVO_SECURE_INPUTMETHOD_SERVICE:Ljava/lang/String;

    .line 43
    sget-object v0, Lcom/android/internal/inputmethod/InputMethodUtils;->VIVO_SECURE_INPUTMETHOD:Ljava/lang/String;

    sput-object v0, Lcom/android/server/VivoInputMethodManagerService;->VIVO_SECURE_INPUTMETHOD:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/InputMethodManagerService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Lcom/android/server/wm/WindowManagerService;
    .param p3, "secureIMS"    # Lcom/android/server/InputMethodManagerService;

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V

    .line 39
    iput-boolean v1, p0, Lcom/android/server/VivoInputMethodManagerService;->isPasswordInputType:Z

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/VivoInputMethodManagerService;->mSecureIMSOn:Z

    .line 46
    iput-boolean v1, p0, Lcom/android/server/VivoInputMethodManagerService;->mHasSecureIMS:Z

    .line 54
    check-cast p3, Lcom/android/server/VivoSecureInputMethodManagerService;

    .end local p3    # "secureIMS":Lcom/android/server/InputMethodManagerService;
    iput-object p3, p0, Lcom/android/server/VivoInputMethodManagerService;->mSecureInputMethodService:Lcom/android/server/VivoSecureInputMethodManagerService;

    .line 55
    iput-object p1, p0, Lcom/android/server/VivoInputMethodManagerService;->mContext:Landroid/content/Context;

    .line 56
    invoke-virtual {p0}, Lcom/android/server/VivoInputMethodManagerService;->createSecureIMMSFlag()V

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/VivoInputMethodManagerService;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VivoInputMethodManagerService;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/server/VivoInputMethodManagerService;->mObserverUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/VivoInputMethodManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/VivoInputMethodManagerService;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/server/VivoInputMethodManagerService;->updateSecureIMS()V

    return-void
.end method

.method private hasSecureIME()Z
    .locals 6

    .prologue
    .line 78
    iget-object v3, p0, Lcom/android/server/VivoInputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.view.InputMethod"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v5, 0x8080

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 82
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 83
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 84
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_0

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v3, :cond_0

    .line 85
    sget-object v3, Lcom/android/server/VivoInputMethodManagerService;->VIVO_SECURE_INPUTMETHOD_SERVICE:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 86
    const/4 v3, 0x1

    .line 90
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    :goto_1
    return v3

    .line 82
    .restart local v1    # "info":Landroid/content/pm/ResolveInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private updateSecureIMS()V
    .locals 4

    .prologue
    .line 60
    iget-object v1, p0, Lcom/android/server/VivoInputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/server/VivoInputMethodManagerService;->VIVO_SECURE_INPUTMETHOD_SETTINGS_DATABASE:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "str":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/VivoInputMethodManagerService;->mSecureIMSOn:Z

    .line 67
    :goto_0
    iget-object v1, p0, Lcom/android/server/VivoInputMethodManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSecureIMSOn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/VivoInputMethodManagerService;->mSecureIMSOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-void

    .line 65
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/VivoInputMethodManagerService;->mSecureIMSOn:Z

    goto :goto_0
.end method

.method private useSecureIMS()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/server/VivoInputMethodManagerService;->mSecureIMSOn:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/VivoInputMethodManagerService;->isPasswordInputType:Z

    if-eqz v0, :cond_0

    .line 72
    const/4 v0, 0x1

    .line 74
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addClient(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;II)V
    .locals 1
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "inputContext"    # Lcom/android/internal/view/IInputContext;
    .param p3, "uid"    # I
    .param p4, "pid"    # I

    .prologue
    .line 189
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/InputMethodManagerService;->addClient(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;II)V

    .line 190
    iget-object v0, p0, Lcom/android/server/VivoInputMethodManagerService;->mSecureInputMethodService:Lcom/android/server/VivoSecureInputMethodManagerService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/VivoSecureInputMethodManagerService;->addClient(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;II)V

    .line 191
    return-void
.end method

.method calledWithValidToken(Landroid/os/IBinder;)Z
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/server/VivoInputMethodManagerService;->mSecureInputMethodService:Lcom/android/server/VivoSecureInputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/VivoSecureInputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    if-ne p1, v0, :cond_0

    .line 95
    const/4 v0, 0x0

    .line 97
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/InputMethodManagerService;->calledWithValidToken(Landroid/os/IBinder;)Z

    move-result v0

    goto :goto_0
.end method

.method protected createSecureIMMSFlag()V
    .locals 6

    .prologue
    .line 310
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "secureInputMethodFlag"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 313
    .local v1, "file":Ljava/io/File;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/VivoInputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/server/VivoInputMethodManagerService;->VIVO_SECURE_INPUTMETHOD_SETTINGS_DATABASE:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 316
    .local v2, "value":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 317
    iget-object v3, p0, Lcom/android/server/VivoInputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/server/VivoInputMethodManagerService;->VIVO_SECURE_INPUTMETHOD_SETTINGS_DATABASE:Ljava/lang/String;

    const-string v5, "1"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 321
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 330
    .end local v2    # "value":Ljava/lang/String;
    :goto_0
    return-void

    .line 324
    .restart local v2    # "value":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/server/VivoInputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/server/VivoInputMethodManagerService;->VIVO_SECURE_INPUTMETHOD_SETTINGS_DATABASE:Ljava/lang/String;

    const-string v5, "1"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 326
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 327
    .end local v2    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 328
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/server/VivoInputMethodManagerService;->TAG:Ljava/lang/String;

    const-string v4, "create flag secureInputMethodFlag fail!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public hideMySoftInput(Landroid/os/IBinder;I)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "flags"    # I

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/android/server/VivoInputMethodManagerService;->mHasSecureIMS:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/VivoInputMethodManagerService;->useSecureIMS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/server/VivoInputMethodManagerService;->mSecureInputMethodService:Lcom/android/server/VivoSecureInputMethodManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/VivoSecureInputMethodManagerService;->hideMySoftInput(Landroid/os/IBinder;I)V

    .line 206
    :goto_0
    return-void

    .line 204
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/server/InputMethodManagerService;->hideMySoftInput(Landroid/os/IBinder;I)V

    goto :goto_0
.end method

.method public hideSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z
    .locals 1
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "flags"    # I
    .param p3, "resultReceiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/android/server/VivoInputMethodManagerService;->mHasSecureIMS:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/VivoInputMethodManagerService;->useSecureIMS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/server/VivoInputMethodManagerService;->mSecureInputMethodService:Lcom/android/server/VivoSecureInputMethodManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/VivoSecureInputMethodManagerService;->hideSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z

    move-result v0

    .line 223
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/InputMethodManagerService;->hideSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z

    move-result v0

    goto :goto_0
.end method

.method public isPasswordInputType(Lcom/android/internal/view/IInputMethodClient;Landroid/view/inputmethod/EditorInfo;)Z
    .locals 3
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "editorInfoOut"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 120
    move-object v0, p2

    .line 121
    .local v0, "editorInfo":Landroid/view/inputmethod/EditorInfo;
    if-nez v0, :cond_0

    .line 122
    iget-boolean v2, p0, Lcom/android/server/VivoInputMethodManagerService;->isPasswordInputType:Z

    .line 127
    :goto_0
    return v2

    .line 125
    :cond_0
    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v1, v2, 0xfff

    .line 127
    .local v1, "variation":I
    const/16 v2, 0x81

    if-eq v1, v2, :cond_1

    const/16 v2, 0xe1

    if-eq v1, v2, :cond_1

    const/16 v2, 0x12

    if-eq v1, v2, :cond_1

    const/16 v2, 0x91

    if-ne v1, v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public removeClient(Lcom/android/internal/view/IInputMethodClient;)V
    .locals 1
    .param p1, "inputMethodClient"    # Lcom/android/internal/view/IInputMethodClient;

    .prologue
    .line 195
    invoke-super {p0, p1}, Lcom/android/server/InputMethodManagerService;->removeClient(Lcom/android/internal/view/IInputMethodClient;)V

    .line 196
    iget-object v0, p0, Lcom/android/server/VivoInputMethodManagerService;->mSecureInputMethodService:Lcom/android/server/VivoSecureInputMethodManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/VivoSecureInputMethodManagerService;->removeClient(Lcom/android/internal/view/IInputMethodClient;)V

    .line 197
    return-void
.end method

.method setInputMethodEnabledLocked(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 170
    sget-object v0, Lcom/android/server/VivoInputMethodManagerService;->VIVO_SECURE_INPUTMETHOD:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/server/VivoInputMethodManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to false"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/4 v0, 0x0

    .line 174
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/server/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method setInputMethodLocked(Ljava/lang/String;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "subtypeId"    # I

    .prologue
    .line 179
    invoke-super {p0, p1, p2}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    .line 180
    return-void
.end method

.method protected shouldBuildInputMethodList(Ljava/lang/String;)Z
    .locals 1
    .param p1, "strId"    # Ljava/lang/String;

    .prologue
    .line 184
    sget-object v0, Lcom/android/server/VivoInputMethodManagerService;->VIVO_SECURE_INPUTMETHOD_PACKAGENAME:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showInputMethodPickerFromClient(Lcom/android/internal/view/IInputMethodClient;I)V
    .locals 1
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "auxiliarySubtypeMode"    # I

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/android/server/VivoInputMethodManagerService;->mHasSecureIMS:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/VivoInputMethodManagerService;->useSecureIMS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    :goto_0
    return-void

    .line 165
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/server/InputMethodManagerService;->showInputMethodPickerFromClient(Lcom/android/internal/view/IInputMethodClient;I)V

    goto :goto_0
.end method

.method public showMySoftInput(Landroid/os/IBinder;I)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "flags"    # I

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/android/server/VivoInputMethodManagerService;->mHasSecureIMS:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/VivoInputMethodManagerService;->useSecureIMS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/server/VivoInputMethodManagerService;->mSecureInputMethodService:Lcom/android/server/VivoSecureInputMethodManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/VivoSecureInputMethodManagerService;->showMySoftInput(Landroid/os/IBinder;I)V

    .line 215
    :goto_0
    return-void

    .line 213
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/server/InputMethodManagerService;->showMySoftInput(Landroid/os/IBinder;I)V

    goto :goto_0
.end method

.method public showSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z
    .locals 1
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "flags"    # I
    .param p3, "resultReceiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 230
    iget-boolean v0, p0, Lcom/android/server/VivoInputMethodManagerService;->mHasSecureIMS:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/VivoInputMethodManagerService;->useSecureIMS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/android/server/VivoInputMethodManagerService;->mSecureInputMethodService:Lcom/android/server/VivoSecureInputMethodManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/VivoSecureInputMethodManagerService;->showSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z

    move-result v0

    .line 233
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/InputMethodManagerService;->showSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z

    move-result v0

    goto :goto_0
.end method

.method public startInput(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;
    .locals 6
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "inputContext"    # Lcom/android/internal/view/IInputContext;
    .param p3, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p4, "controlFlags"    # I

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x10000

    .line 140
    invoke-virtual {p0, p1, p3}, Lcom/android/server/VivoInputMethodManagerService;->isPasswordInputType(Lcom/android/internal/view/IInputMethodClient;Landroid/view/inputmethod/EditorInfo;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/VivoInputMethodManagerService;->isPasswordInputType:Z

    .line 141
    iget-object v1, p0, Lcom/android/server/VivoInputMethodManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startInput isPasswordInputType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/VivoInputMethodManagerService;->isPasswordInputType:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-boolean v1, p0, Lcom/android/server/VivoInputMethodManagerService;->mHasSecureIMS:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/VivoInputMethodManagerService;->useSecureIMS()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 144
    invoke-super {p0, p1, p4, v5}, Lcom/android/server/InputMethodManagerService;->hideSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z

    move-result v0

    .line 145
    .local v0, "result":Z
    if-eqz v0, :cond_0

    .line 146
    or-int/2addr p4, v4

    .line 148
    :cond_0
    iget-object v1, p0, Lcom/android/server/VivoInputMethodManagerService;->mSecureInputMethodService:Lcom/android/server/VivoSecureInputMethodManagerService;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/VivoSecureInputMethodManagerService;->startInput(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;

    move-result-object v1

    .line 155
    :goto_0
    return-object v1

    .line 151
    .end local v0    # "result":Z
    :cond_1
    iget-object v1, p0, Lcom/android/server/VivoInputMethodManagerService;->mSecureInputMethodService:Lcom/android/server/VivoSecureInputMethodManagerService;

    invoke-virtual {v1, p1, p4, v5}, Lcom/android/server/VivoSecureInputMethodManagerService;->hideSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z

    move-result v0

    .line 152
    .restart local v0    # "result":Z
    if-eqz v0, :cond_2

    .line 153
    or-int/2addr p4, v4

    .line 155
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/InputMethodManagerService;->startInput(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;

    move-result-object v1

    goto :goto_0
.end method

.method public systemRunning(Lcom/android/server/statusbar/StatusBarManagerService;)V
    .locals 4
    .param p1, "statusBar"    # Lcom/android/server/statusbar/StatusBarManagerService;

    .prologue
    .line 238
    invoke-direct {p0}, Lcom/android/server/VivoInputMethodManagerService;->hasSecureIME()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/VivoInputMethodManagerService;->mHasSecureIMS:Z

    .line 239
    invoke-direct {p0}, Lcom/android/server/VivoInputMethodManagerService;->updateSecureIMS()V

    .line 240
    invoke-super {p0, p1}, Lcom/android/server/InputMethodManagerService;->systemRunning(Lcom/android/server/statusbar/StatusBarManagerService;)V

    .line 242
    sget-object v0, Lcom/android/server/VivoInputMethodManagerService;->VIVO_SECURE_INPUTMETHOD_SETTINGS_DATABASE:Ljava/lang/String;

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/VivoInputMethodManagerService;->mObserverUri:Landroid/net/Uri;

    .line 243
    new-instance v0, Lcom/android/server/VivoInputMethodManagerService$SettingsDBObserver;

    iget-object v1, p0, Lcom/android/server/VivoInputMethodManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/VivoInputMethodManagerService$SettingsDBObserver;-><init>(Lcom/android/server/VivoInputMethodManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/VivoInputMethodManagerService;->mSettingsContentObserver:Landroid/database/ContentObserver;

    .line 244
    iget-object v0, p0, Lcom/android/server/VivoInputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/VivoInputMethodManagerService;->mObserverUri:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/VivoInputMethodManagerService;->mSettingsContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 247
    iget-object v0, p0, Lcom/android/server/VivoInputMethodManagerService;->mSecureInputMethodService:Lcom/android/server/VivoSecureInputMethodManagerService;

    invoke-virtual {v0, p0}, Lcom/android/server/VivoSecureInputMethodManagerService;->setVivoInputMethodManagerService(Lcom/android/server/VivoInputMethodManagerService;)V

    .line 248
    return-void
.end method

.method protected vivoAbsChangeClient()V
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/server/VivoInputMethodManagerService;->mSecureInputMethodService:Lcom/android/server/VivoSecureInputMethodManagerService;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/VivoSecureInputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    .line 272
    return-void
.end method

.method protected vivoAbsIsFromSecureInputMethod(Landroid/os/IBinder;II)Z
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "vis"    # I
    .param p3, "backDisposition"    # I

    .prologue
    .line 333
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/VivoInputMethodManagerService;->mSecureInputMethodService:Lcom/android/server/VivoSecureInputMethodManagerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/VivoInputMethodManagerService;->mSecureInputMethodService:Lcom/android/server/VivoSecureInputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/VivoSecureInputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    if-ne v0, p1, :cond_0

    .line 334
    iget-object v0, p0, Lcom/android/server/VivoInputMethodManagerService;->mSecureInputMethodService:Lcom/android/server/VivoSecureInputMethodManagerService;

    iput p2, v0, Lcom/android/server/VivoSecureInputMethodManagerService;->mImeWindowVis:I

    .line 335
    iget-object v0, p0, Lcom/android/server/VivoInputMethodManagerService;->mSecureInputMethodService:Lcom/android/server/VivoSecureInputMethodManagerService;

    iput p3, v0, Lcom/android/server/VivoSecureInputMethodManagerService;->mBackDisposition:I

    .line 336
    const/4 v0, 0x1

    .line 338
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected vivoAbsIsSecureIMMS()Z
    .locals 1

    .prologue
    .line 267
    const/4 v0, 0x0

    return v0
.end method

.method protected vivoAbsSetCurClient(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "client"    # Landroid/os/IBinder;

    .prologue
    .line 279
    iget-object v1, p0, Lcom/android/server/VivoInputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 280
    :try_start_0
    iget-object v2, p0, Lcom/android/server/VivoInputMethodManagerService;->mSecureInputMethodService:Lcom/android/server/VivoSecureInputMethodManagerService;

    iget-object v0, p0, Lcom/android/server/VivoInputMethodManagerService;->mSecureInputMethodService:Lcom/android/server/VivoSecureInputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/VivoSecureInputMethodManagerService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/InputMethodManagerService$ClientState;

    iput-object v0, v2, Lcom/android/server/VivoSecureInputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    .line 281
    monitor-exit v1

    .line 282
    return-void

    .line 281
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected vivoAbsSetCurFocusedWindow()V
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/server/VivoInputMethodManagerService;->mSecureInputMethodService:Lcom/android/server/VivoSecureInputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/VivoInputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    iput-object v1, v0, Lcom/android/server/VivoSecureInputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    .line 276
    return-void
.end method

.method protected vivoAbsSetInteractive(Z)V
    .locals 1
    .param p1, "interactive"    # Z

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/server/VivoInputMethodManagerService;->mSecureInputMethodService:Lcom/android/server/VivoSecureInputMethodManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/VivoSecureInputMethodManagerService;->setInteractive(Z)V

    .line 286
    return-void
.end method

.method protected vivoAbsUnbindInput()V
    .locals 5

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/server/VivoInputMethodManagerService;->mSecureInputMethodService:Lcom/android/server/VivoSecureInputMethodManagerService;

    iget-boolean v0, v0, Lcom/android/server/VivoSecureInputMethodManagerService;->mBoundToMethod:Z

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/android/server/VivoInputMethodManagerService;->mSecureInputMethodService:Lcom/android/server/VivoSecureInputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/VivoSecureInputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/VivoInputMethodManagerService;->mSecureInputMethodService:Lcom/android/server/VivoSecureInputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/VivoSecureInputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/server/VivoInputMethodManagerService;->mSecureInputMethodService:Lcom/android/server/VivoSecureInputMethodManagerService;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/VivoSecureInputMethodManagerService;->mBoundToMethod:Z

    .line 292
    iget-object v0, p0, Lcom/android/server/VivoInputMethodManagerService;->mSecureInputMethodService:Lcom/android/server/VivoSecureInputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/VivoInputMethodManagerService;->mSecureInputMethodService:Lcom/android/server/VivoSecureInputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/VivoSecureInputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v2, p0, Lcom/android/server/VivoInputMethodManagerService;->mSecureInputMethodService:Lcom/android/server/VivoSecureInputMethodManagerService;

    iget-object v2, v2, Lcom/android/server/VivoSecureInputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0x3e8

    iget-object v4, p0, Lcom/android/server/VivoInputMethodManagerService;->mSecureInputMethodService:Lcom/android/server/VivoSecureInputMethodManagerService;

    iget-object v4, v4, Lcom/android/server/VivoSecureInputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/VivoSecureInputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 296
    :cond_0
    return-void
.end method

.method protected vivoAbsbindInput()V
    .locals 6

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/server/VivoInputMethodManagerService;->mSecureInputMethodService:Lcom/android/server/VivoSecureInputMethodManagerService;

    iget-boolean v0, v0, Lcom/android/server/VivoSecureInputMethodManagerService;->mBoundToMethod:Z

    if-nez v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/android/server/VivoInputMethodManagerService;->mSecureInputMethodService:Lcom/android/server/VivoSecureInputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/VivoSecureInputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/VivoInputMethodManagerService;->mSecureInputMethodService:Lcom/android/server/VivoSecureInputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/VivoSecureInputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/VivoInputMethodManagerService;->mSecureInputMethodService:Lcom/android/server/VivoSecureInputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/VivoSecureInputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/android/server/VivoInputMethodManagerService;->mSecureInputMethodService:Lcom/android/server/VivoSecureInputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/VivoInputMethodManagerService;->mSecureInputMethodService:Lcom/android/server/VivoSecureInputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/VivoSecureInputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v2, p0, Lcom/android/server/VivoInputMethodManagerService;->mSecureInputMethodService:Lcom/android/server/VivoSecureInputMethodManagerService;

    iget-object v2, v2, Lcom/android/server/VivoSecureInputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0x3f2

    iget-object v4, p0, Lcom/android/server/VivoInputMethodManagerService;->mSecureInputMethodService:Lcom/android/server/VivoSecureInputMethodManagerService;

    iget-object v4, v4, Lcom/android/server/VivoSecureInputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v5, p0, Lcom/android/server/VivoInputMethodManagerService;->mSecureInputMethodService:Lcom/android/server/VivoSecureInputMethodManagerService;

    iget-object v5, v5, Lcom/android/server/VivoSecureInputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v5, v5, Lcom/android/server/InputMethodManagerService$ClientState;->binding:Landroid/view/inputmethod/InputBinding;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/VivoSecureInputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 304
    iget-object v0, p0, Lcom/android/server/VivoInputMethodManagerService;->mSecureInputMethodService:Lcom/android/server/VivoSecureInputMethodManagerService;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/VivoSecureInputMethodManagerService;->mBoundToMethod:Z

    .line 307
    :cond_0
    return-void
.end method

.method public windowGainedFocus(Lcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;)Lcom/android/internal/view/InputBindResult;
    .locals 8
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "windowToken"    # Landroid/os/IBinder;
    .param p3, "controlFlags"    # I
    .param p4, "softInputMode"    # I
    .param p5, "windowFlags"    # I
    .param p6, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p7, "inputContext"    # Lcom/android/internal/view/IInputContext;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 104
    invoke-virtual {p0, p1, p6}, Lcom/android/server/VivoInputMethodManagerService;->isPasswordInputType(Lcom/android/internal/view/IInputMethodClient;Landroid/view/inputmethod/EditorInfo;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/VivoInputMethodManagerService;->isPasswordInputType:Z

    .line 105
    iget-object v0, p0, Lcom/android/server/VivoInputMethodManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "windowGainedFocus isPasswordInputType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/VivoInputMethodManagerService;->isPasswordInputType:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-boolean v0, p0, Lcom/android/server/VivoInputMethodManagerService;->mHasSecureIMS:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/VivoInputMethodManagerService;->useSecureIMS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-super {p0, p1, v3, v4}, Lcom/android/server/InputMethodManagerService;->hideSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z

    .line 108
    iget-object v0, p0, Lcom/android/server/VivoInputMethodManagerService;->mSecureInputMethodService:Lcom/android/server/VivoSecureInputMethodManagerService;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/VivoSecureInputMethodManagerService;->windowGainedFocus(Lcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;)Lcom/android/internal/view/InputBindResult;

    move-result-object v0

    .line 113
    :goto_0
    return-object v0

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/android/server/VivoInputMethodManagerService;->mSecureInputMethodService:Lcom/android/server/VivoSecureInputMethodManagerService;

    invoke-virtual {v0, p1, v3, v4}, Lcom/android/server/VivoSecureInputMethodManagerService;->hideSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z

    .line 113
    invoke-super/range {p0 .. p7}, Lcom/android/server/InputMethodManagerService;->windowGainedFocus(Lcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;)Lcom/android/internal/view/InputBindResult;

    move-result-object v0

    goto :goto_0
.end method
