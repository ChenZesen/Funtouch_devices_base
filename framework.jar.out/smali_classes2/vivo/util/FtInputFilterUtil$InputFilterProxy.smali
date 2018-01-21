.class Lvivo/util/FtInputFilterUtil$InputFilterProxy;
.super Landroid/view/InputFilter;
.source "FtInputFilterUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvivo/util/FtInputFilterUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InputFilterProxy"
.end annotation


# instance fields
.field final synthetic this$0:Lvivo/util/FtInputFilterUtil;


# direct methods
.method public constructor <init>(Lvivo/util/FtInputFilterUtil;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 67
    iput-object p1, p0, Lvivo/util/FtInputFilterUtil$InputFilterProxy;->this$0:Lvivo/util/FtInputFilterUtil;

    .line 68
    invoke-direct {p0, p2}, Landroid/view/InputFilter;-><init>(Landroid/os/Looper;)V

    .line 69
    return-void
.end method


# virtual methods
.method public dispatchInputEvent(Landroid/view/InputEvent;I)V
    .locals 0
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 78
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 79
    return-void
.end method

.method public onInputEvent(Landroid/view/InputEvent;I)V
    .locals 1
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 72
    iget-object v0, p0, Lvivo/util/FtInputFilterUtil$InputFilterProxy;->this$0:Lvivo/util/FtInputFilterUtil;

    # getter for: Lvivo/util/FtInputFilterUtil;->mFilterListener:Lvivo/util/FtInputFilterUtil$InputFilterListener;
    invoke-static {v0}, Lvivo/util/FtInputFilterUtil;->access$100(Lvivo/util/FtInputFilterUtil;)Lvivo/util/FtInputFilterUtil$InputFilterListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lvivo/util/FtInputFilterUtil$InputFilterProxy;->this$0:Lvivo/util/FtInputFilterUtil;

    # getter for: Lvivo/util/FtInputFilterUtil;->mFilterListener:Lvivo/util/FtInputFilterUtil$InputFilterListener;
    invoke-static {v0}, Lvivo/util/FtInputFilterUtil;->access$100(Lvivo/util/FtInputFilterUtil;)Lvivo/util/FtInputFilterUtil$InputFilterListener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lvivo/util/FtInputFilterUtil$InputFilterListener;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 75
    :cond_0
    return-void
.end method
