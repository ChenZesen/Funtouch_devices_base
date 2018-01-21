.class Lcom/android/internal/view/menu/VivoIconMenuItemView$1;
.super Ljava/lang/Object;
.source "VivoIconMenuItemView.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/view/menu/VivoIconMenuItemView;->setCheckable(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/view/menu/VivoIconMenuItemView;


# direct methods
.method constructor <init>(Lcom/android/internal/view/menu/VivoIconMenuItemView;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView$1;->this$0:Lcom/android/internal/view/menu/VivoIconMenuItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView$1;->this$0:Lcom/android/internal/view/menu/VivoIconMenuItemView;

    # getter for: Lcom/android/internal/view/menu/VivoIconMenuItemView;->mOnCheckedChangeListener:Lcom/android/internal/view/menu/VivoIconMenuItemView$OnCheckedChangeListener;
    invoke-static {v0}, Lcom/android/internal/view/menu/VivoIconMenuItemView;->access$000(Lcom/android/internal/view/menu/VivoIconMenuItemView;)Lcom/android/internal/view/menu/VivoIconMenuItemView$OnCheckedChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView$1;->this$0:Lcom/android/internal/view/menu/VivoIconMenuItemView;

    # getter for: Lcom/android/internal/view/menu/VivoIconMenuItemView;->mOnCheckedChangeListener:Lcom/android/internal/view/menu/VivoIconMenuItemView$OnCheckedChangeListener;
    invoke-static {v0}, Lcom/android/internal/view/menu/VivoIconMenuItemView;->access$000(Lcom/android/internal/view/menu/VivoIconMenuItemView;)Lcom/android/internal/view/menu/VivoIconMenuItemView$OnCheckedChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/view/menu/VivoIconMenuItemView$1;->this$0:Lcom/android/internal/view/menu/VivoIconMenuItemView;

    invoke-interface {v0, v1, p2}, Lcom/android/internal/view/menu/VivoIconMenuItemView$OnCheckedChangeListener;->onCheckedChange(Lcom/android/internal/view/menu/VivoIconMenuItemView;Z)V

    .line 216
    :cond_0
    return-void
.end method
