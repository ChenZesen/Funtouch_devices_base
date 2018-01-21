.class public Lcom/android/server/VivoSecureInputMethodManagerService;
.super Lcom/android/server/InputMethodManagerService;
.source "VivoSecureInputMethodManagerService.java"


# instance fields
.field TAG:Ljava/lang/String;

.field private mShouldActiveClient:Z

.field private mVivoIMMS:Lcom/android/server/VivoInputMethodManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/VivoSecureInputMethodManagerService;->mShouldActiveClient:Z

    .line 20
    const-string v0, "VivoSecureInputMethodManagerService"

    iput-object v0, p0, Lcom/android/server/VivoSecureInputMethodManagerService;->TAG:Ljava/lang/String;

    .line 27
    invoke-virtual {p0}, Lcom/android/server/VivoSecureInputMethodManagerService;->setSubInputMethod()V

    .line 29
    return-void
.end method


# virtual methods
.method public hideSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z
    .locals 3
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "flags"    # I
    .param p3, "resultReceiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 87
    sget-boolean v0, Lcom/android/server/VivoSecureInputMethodManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/server/VivoSecureInputMethodManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideSoftInput client="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,resultReceiver="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/InputMethodManagerService;->hideSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z

    move-result v0

    return v0
.end method

.method setInputMethodEnabledLocked(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 33
    sget-boolean v0, Lcom/android/server/VivoSecureInputMethodManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/android/server/VivoSecureInputMethodManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInputMethodEnabledLocked id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,enabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method setInputMethodLocked(Ljava/lang/String;I)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "subtypeId"    # I

    .prologue
    .line 41
    sget-boolean v0, Lcom/android/server/VivoSecureInputMethodManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/android/server/VivoSecureInputMethodManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInputMethodLocked id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,subtypeId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_0
    return-void
.end method

.method protected setInteractive(Z)V
    .locals 2
    .param p1, "interactive"    # Z

    .prologue
    .line 128
    iget-object v1, p0, Lcom/android/server/VivoSecureInputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 129
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/VivoSecureInputMethodManagerService;->mIsInteractive:Z

    .line 130
    monitor-exit v1

    .line 131
    return-void

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setVivoInputMethodManagerService(Lcom/android/server/VivoInputMethodManagerService;)V
    .locals 0
    .param p1, "vIMMS"    # Lcom/android/server/VivoInputMethodManagerService;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/server/VivoSecureInputMethodManagerService;->mVivoIMMS:Lcom/android/server/VivoInputMethodManagerService;

    .line 101
    return-void
.end method

.method protected shouldBuildInputMethodList(Ljava/lang/String;)Z
    .locals 1
    .param p1, "strId"    # Ljava/lang/String;

    .prologue
    .line 96
    sget-object v0, Lcom/android/internal/inputmethod/InputMethodUtils;->VIVO_SECURE_INPUTMETHOD_PACKAGENAME:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public showSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z
    .locals 3
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "flags"    # I
    .param p3, "resultReceiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 77
    sget-boolean v0, Lcom/android/server/VivoSecureInputMethodManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/server/VivoSecureInputMethodManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showSoftInput client="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,resultReceiver="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/InputMethodManagerService;->showSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z

    move-result v0

    return v0
.end method

.method public startInput(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;
    .locals 4
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "inputContext"    # Lcom/android/internal/view/IInputContext;
    .param p3, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p4, "controlFlags"    # I

    .prologue
    .line 62
    sget-boolean v1, Lcom/android/server/VivoSecureInputMethodManagerService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/android/server/VivoSecureInputMethodManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startInput client="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,inputContext="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,editorInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",controlFlags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/android/server/VivoSecureInputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 67
    sget-object v1, Lcom/android/internal/inputmethod/InputMethodUtils;->VIVO_SECURE_INPUTMETHOD:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/VivoSecureInputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    .line 69
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/InputMethodManagerService;->startInput(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;

    move-result-object v0

    .line 71
    .local v0, "result":Lcom/android/internal/view/InputBindResult;
    return-object v0
.end method

.method protected vivoAbsChangeClient()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/server/VivoSecureInputMethodManagerService;->mVivoIMMS:Lcom/android/server/VivoInputMethodManagerService;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/server/VivoSecureInputMethodManagerService;->mVivoIMMS:Lcom/android/server/VivoInputMethodManagerService;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/VivoInputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    .line 111
    :cond_0
    return-void
.end method

.method protected vivoAbsIsFromSecureInputMethod(Landroid/os/IBinder;II)Z
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "vis"    # I
    .param p3, "backDisposition"    # I

    .prologue
    .line 161
    const/4 v0, 0x1

    return v0
.end method

.method protected vivoAbsIsSecureIMMS()Z
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x1

    return v0
.end method

.method protected vivoAbsSetCurClient(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "client"    # Landroid/os/IBinder;

    .prologue
    .line 120
    iget-object v1, p0, Lcom/android/server/VivoSecureInputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/android/server/VivoSecureInputMethodManagerService;->mVivoIMMS:Lcom/android/server/VivoInputMethodManagerService;

    if-eqz v0, :cond_0

    .line 122
    iget-object v2, p0, Lcom/android/server/VivoSecureInputMethodManagerService;->mVivoIMMS:Lcom/android/server/VivoInputMethodManagerService;

    iget-object v0, p0, Lcom/android/server/VivoSecureInputMethodManagerService;->mVivoIMMS:Lcom/android/server/VivoInputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/VivoInputMethodManagerService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/InputMethodManagerService$ClientState;

    iput-object v0, v2, Lcom/android/server/VivoInputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    .line 124
    :cond_0
    monitor-exit v1

    .line 125
    return-void

    .line 124
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
    .line 114
    iget-object v0, p0, Lcom/android/server/VivoSecureInputMethodManagerService;->mVivoIMMS:Lcom/android/server/VivoInputMethodManagerService;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/server/VivoSecureInputMethodManagerService;->mVivoIMMS:Lcom/android/server/VivoInputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/VivoSecureInputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    iput-object v1, v0, Lcom/android/server/VivoInputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    .line 117
    :cond_0
    return-void
.end method

.method protected vivoAbsSetInteractive(Z)V
    .locals 0
    .param p1, "interactive"    # Z

    .prologue
    .line 154
    return-void
.end method

.method protected vivoAbsShouldUpdateSystemUi()Z
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method protected vivoAbsUnbindInput()V
    .locals 5

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/server/VivoSecureInputMethodManagerService;->mVivoIMMS:Lcom/android/server/VivoInputMethodManagerService;

    iget-boolean v0, v0, Lcom/android/server/VivoInputMethodManagerService;->mBoundToMethod:Z

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/server/VivoSecureInputMethodManagerService;->mVivoIMMS:Lcom/android/server/VivoInputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/VivoInputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/VivoSecureInputMethodManagerService;->mVivoIMMS:Lcom/android/server/VivoInputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/VivoInputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/server/VivoSecureInputMethodManagerService;->mVivoIMMS:Lcom/android/server/VivoInputMethodManagerService;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/VivoInputMethodManagerService;->mBoundToMethod:Z

    .line 137
    iget-object v0, p0, Lcom/android/server/VivoSecureInputMethodManagerService;->mVivoIMMS:Lcom/android/server/VivoInputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/VivoSecureInputMethodManagerService;->mVivoIMMS:Lcom/android/server/VivoInputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/VivoInputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v2, p0, Lcom/android/server/VivoSecureInputMethodManagerService;->mVivoIMMS:Lcom/android/server/VivoInputMethodManagerService;

    iget-object v2, v2, Lcom/android/server/VivoInputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0x3e8

    iget-object v4, p0, Lcom/android/server/VivoSecureInputMethodManagerService;->mVivoIMMS:Lcom/android/server/VivoInputMethodManagerService;

    iget-object v4, v4, Lcom/android/server/VivoInputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/VivoInputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 141
    :cond_0
    return-void
.end method

.method protected vivoAbsbindInput()V
    .locals 6

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/server/VivoSecureInputMethodManagerService;->mVivoIMMS:Lcom/android/server/VivoInputMethodManagerService;

    iget-boolean v0, v0, Lcom/android/server/VivoInputMethodManagerService;->mBoundToMethod:Z

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/server/VivoSecureInputMethodManagerService;->mVivoIMMS:Lcom/android/server/VivoInputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/VivoInputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/VivoSecureInputMethodManagerService;->mVivoIMMS:Lcom/android/server/VivoInputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/VivoInputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/VivoSecureInputMethodManagerService;->mVivoIMMS:Lcom/android/server/VivoInputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/VivoInputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/server/VivoSecureInputMethodManagerService;->mVivoIMMS:Lcom/android/server/VivoInputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/VivoSecureInputMethodManagerService;->mVivoIMMS:Lcom/android/server/VivoInputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/VivoInputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v2, p0, Lcom/android/server/VivoSecureInputMethodManagerService;->mVivoIMMS:Lcom/android/server/VivoInputMethodManagerService;

    iget-object v2, v2, Lcom/android/server/VivoInputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0x3f2

    iget-object v4, p0, Lcom/android/server/VivoSecureInputMethodManagerService;->mVivoIMMS:Lcom/android/server/VivoInputMethodManagerService;

    iget-object v4, v4, Lcom/android/server/VivoInputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v5, p0, Lcom/android/server/VivoSecureInputMethodManagerService;->mVivoIMMS:Lcom/android/server/VivoInputMethodManagerService;

    iget-object v5, v5, Lcom/android/server/VivoInputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v5, v5, Lcom/android/server/InputMethodManagerService$ClientState;->binding:Landroid/view/inputmethod/InputBinding;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/VivoInputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 148
    iget-object v0, p0, Lcom/android/server/VivoSecureInputMethodManagerService;->mVivoIMMS:Lcom/android/server/VivoInputMethodManagerService;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/VivoInputMethodManagerService;->mBoundToMethod:Z

    .line 151
    :cond_0
    return-void
.end method

.method public windowGainedFocus(Lcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;)Lcom/android/internal/view/InputBindResult;
    .locals 2
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "windowToken"    # Landroid/os/IBinder;
    .param p3, "controlFlags"    # I
    .param p4, "softInputMode"    # I
    .param p5, "windowFlags"    # I
    .param p6, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p7, "inputContext"    # Lcom/android/internal/view/IInputContext;

    .prologue
    .line 51
    sget-object v1, Lcom/android/internal/inputmethod/InputMethodUtils;->VIVO_SECURE_INPUTMETHOD:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/VivoSecureInputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    .line 52
    invoke-super/range {p0 .. p7}, Lcom/android/server/InputMethodManagerService;->windowGainedFocus(Lcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;)Lcom/android/internal/view/InputBindResult;

    move-result-object v0

    .line 56
    .local v0, "result":Lcom/android/internal/view/InputBindResult;
    return-object v0
.end method
