.class public interface abstract Lcom/vivo/app/IVivoTitle;
.super Ljava/lang/Object;
.source "IVivoTitle.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation


# virtual methods
.method public abstract getTitleCenterView()Landroid/widget/TextView;
.end method

.method public abstract getTitleLeftButton()Landroid/widget/Button;
.end method

.method public abstract getTitleRightButton()Landroid/widget/Button;
.end method

.method public abstract hideTitleLeftButton()V
.end method

.method public abstract hideTitleRightButton()V
.end method

.method public abstract initTitleLeftButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)V
.end method

.method public abstract initTitleRightButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)V
.end method

.method public abstract setOnTitleClickListener()V
.end method

.method public abstract setOnTitleClickListener(Landroid/view/View$OnClickListener;)V
.end method

.method public abstract setOnTitleClickListener(Landroid/view/View;)V
.end method

.method public abstract setTitleCenterSubText(Ljava/lang/CharSequence;)V
.end method

.method public abstract setTitleCenterSubViewVisible(Z)V
.end method

.method public abstract setTitleCenterText(Ljava/lang/CharSequence;)V
.end method

.method public abstract setTitleLeftButtonClickListener(Landroid/view/View$OnClickListener;)V
.end method

.method public abstract setTitleLeftButtonEnable(Z)V
.end method

.method public abstract setTitleLeftButtonIcon(I)V
.end method

.method public abstract setTitleLeftButtonText(Ljava/lang/CharSequence;)V
.end method

.method public abstract setTitleRightButtonClickListener(Landroid/view/View$OnClickListener;)V
.end method

.method public abstract setTitleRightButtonEnable(Z)V
.end method

.method public abstract setTitleRightButtonIcon(I)V
.end method

.method public abstract setTitleRightButtonText(Ljava/lang/CharSequence;)V
.end method

.method public abstract showTitleLeftButton()V
.end method

.method public abstract showTitleRightButton()V
.end method
