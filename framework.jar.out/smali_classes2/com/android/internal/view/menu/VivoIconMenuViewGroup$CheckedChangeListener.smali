.class Lcom/android/internal/view/menu/VivoIconMenuViewGroup$CheckedChangeListener;
.super Ljava/lang/Object;
.source "VivoIconMenuViewGroup.java"

# interfaces
.implements Lcom/android/internal/view/menu/VivoIconMenuItemView$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/VivoIconMenuViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckedChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/view/menu/VivoIconMenuViewGroup;


# direct methods
.method private constructor <init>(Lcom/android/internal/view/menu/VivoIconMenuViewGroup;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/internal/view/menu/VivoIconMenuViewGroup$CheckedChangeListener;->this$0:Lcom/android/internal/view/menu/VivoIconMenuViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/view/menu/VivoIconMenuViewGroup;Lcom/android/internal/view/menu/VivoIconMenuViewGroup$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/view/menu/VivoIconMenuViewGroup;
    .param p2, "x1"    # Lcom/android/internal/view/menu/VivoIconMenuViewGroup$1;

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/VivoIconMenuViewGroup$CheckedChangeListener;-><init>(Lcom/android/internal/view/menu/VivoIconMenuViewGroup;)V

    return-void
.end method


# virtual methods
.method public onCheckedChange(Lcom/android/internal/view/menu/VivoIconMenuItemView;Z)V
    .locals 2
    .param p1, "view"    # Lcom/android/internal/view/menu/VivoIconMenuItemView;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v1, 0x1

    .line 119
    invoke-virtual {p1}, Lcom/android/internal/view/menu/VivoIconMenuItemView;->singleChoice()Z

    move-result v0

    if-ne v0, v1, :cond_1

    if-ne p2, v1, :cond_1

    .line 120
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoIconMenuViewGroup$CheckedChangeListener;->this$0:Lcom/android/internal/view/menu/VivoIconMenuViewGroup;

    # getter for: Lcom/android/internal/view/menu/VivoIconMenuViewGroup;->mCheckedView:Lcom/android/internal/view/menu/VivoIconMenuItemView;
    invoke-static {v0}, Lcom/android/internal/view/menu/VivoIconMenuViewGroup;->access$200(Lcom/android/internal/view/menu/VivoIconMenuViewGroup;)Lcom/android/internal/view/menu/VivoIconMenuItemView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoIconMenuViewGroup$CheckedChangeListener;->this$0:Lcom/android/internal/view/menu/VivoIconMenuViewGroup;

    # getter for: Lcom/android/internal/view/menu/VivoIconMenuViewGroup;->mCheckedView:Lcom/android/internal/view/menu/VivoIconMenuItemView;
    invoke-static {v0}, Lcom/android/internal/view/menu/VivoIconMenuViewGroup;->access$200(Lcom/android/internal/view/menu/VivoIconMenuViewGroup;)Lcom/android/internal/view/menu/VivoIconMenuItemView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/VivoIconMenuItemView;->setChecked(Z)V

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/VivoIconMenuViewGroup$CheckedChangeListener;->this$0:Lcom/android/internal/view/menu/VivoIconMenuViewGroup;

    # setter for: Lcom/android/internal/view/menu/VivoIconMenuViewGroup;->mCheckedView:Lcom/android/internal/view/menu/VivoIconMenuItemView;
    invoke-static {v0, p1}, Lcom/android/internal/view/menu/VivoIconMenuViewGroup;->access$202(Lcom/android/internal/view/menu/VivoIconMenuViewGroup;Lcom/android/internal/view/menu/VivoIconMenuItemView;)Lcom/android/internal/view/menu/VivoIconMenuItemView;

    .line 125
    :cond_1
    return-void
.end method
