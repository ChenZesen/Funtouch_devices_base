.class public abstract Lcom/android/server/AbsInputMethodManagerService;
.super Lcom/android/internal/view/IInputMethodManager$Stub;
.source "AbsInputMethodManagerService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/android/internal/view/IInputMethodManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method protected shouldBuildInputMethodList(Ljava/lang/String;)Z
    .locals 1
    .param p1, "methodId"    # Ljava/lang/String;

    .prologue
    .line 11
    sget-object v0, Lcom/android/internal/inputmethod/InputMethodUtils;->VIVO_SECURE_INPUTMETHOD_PACKAGENAME:Ljava/lang/String;

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

.method protected vivoAbsChangeClient()V
    .locals 0

    .prologue
    .line 19
    return-void
.end method

.method protected vivoAbsIsFromSecureInputMethod(Landroid/os/IBinder;II)Z
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "vis"    # I
    .param p3, "backDisposition"    # I

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method protected vivoAbsIsSecureIMMS()Z
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    return v0
.end method

.method protected vivoAbsSetCurClient(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "client"    # Landroid/os/IBinder;

    .prologue
    .line 25
    return-void
.end method

.method protected vivoAbsSetCurFocusedWindow()V
    .locals 0

    .prologue
    .line 22
    return-void
.end method

.method protected vivoAbsSetInteractive(Z)V
    .locals 0
    .param p1, "interactive"    # Z

    .prologue
    .line 28
    return-void
.end method

.method protected vivoAbsShouldUpdateSystemUi()Z
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method protected vivoAbsUnbindInput()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method protected vivoAbsbindInput()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method
