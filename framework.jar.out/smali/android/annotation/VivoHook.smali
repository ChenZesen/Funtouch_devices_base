.class public interface abstract annotation Landroid/annotation/VivoHook;
.super Ljava/lang/Object;
.source "VivoHook.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Landroid/annotation/VivoHook;
        arrayOfHookType = {
            .enum Landroid/annotation/VivoHook$VivoHookType;->CHANGE_ACCESS:Landroid/annotation/VivoHook$VivoHookType;,
            .enum Landroid/annotation/VivoHook$VivoHookType;->CHANGE_CODE:Landroid/annotation/VivoHook$VivoHookType;,
            .enum Landroid/annotation/VivoHook$VivoHookType;->CHANGE_CODE_AND_ACCESS:Landroid/annotation/VivoHook$VivoHookType;,
            .enum Landroid/annotation/VivoHook$VivoHookType;->CHANGE_PARAMETER:Landroid/annotation/VivoHook$VivoHookType;,
            .enum Landroid/annotation/VivoHook$VivoHookType;->CHANGE_PARAMETER_AND_ACCESS:Landroid/annotation/VivoHook$VivoHookType;,
            .enum Landroid/annotation/VivoHook$VivoHookType;->CHANGE_BASE_CLASS:Landroid/annotation/VivoHook$VivoHookType;,
            .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;,
            .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_FIELD:Landroid/annotation/VivoHook$VivoHookType;,
            .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_METHOD:Landroid/annotation/VivoHook$VivoHookType;,
            .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_METHOD:Landroid/annotation/VivoHook$VivoHookType;,
            .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS:Landroid/annotation/VivoHook$VivoHookType;,
            .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS_PART:Landroid/annotation/VivoHook$VivoHookType;,
            .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_FIELD:Landroid/annotation/VivoHook$VivoHookType;
        }
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->CHANGE_CODE:Landroid/annotation/VivoHook$VivoHookType;
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/annotation/VivoHook$VivoHookType;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# virtual methods
.method public abstract arrayOfHookType()[Landroid/annotation/VivoHook$VivoHookType;
.end method

.method public abstract hookType()Landroid/annotation/VivoHook$VivoHookType;
.end method
