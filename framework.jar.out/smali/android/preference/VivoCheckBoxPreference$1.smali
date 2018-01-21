.class Landroid/preference/VivoCheckBoxPreference$1;
.super Ljava/lang/Object;
.source "VivoCheckBoxPreference.java"

# interfaces
.implements Landroid/widget/BbkMoveBoolButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/preference/VivoCheckBoxPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/preference/VivoCheckBoxPreference;


# direct methods
.method constructor <init>(Landroid/preference/VivoCheckBoxPreference;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Landroid/preference/VivoCheckBoxPreference$1;->this$0:Landroid/preference/VivoCheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/BbkMoveBoolButton;Z)V
    .locals 5
    .param p1, "buttonView"    # Landroid/widget/BbkMoveBoolButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 125
    iget-object v3, p0, Landroid/preference/VivoCheckBoxPreference$1;->this$0:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/VivoCheckBoxPreference;->isChecked()Z

    move-result v3

    if-ne p2, v3, :cond_0

    .line 154
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v3, p0, Landroid/preference/VivoCheckBoxPreference$1;->this$0:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/VivoCheckBoxPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v1

    .line 130
    .local v0, "newValue":Z
    :goto_1
    iget-object v3, p0, Landroid/preference/VivoCheckBoxPreference$1;->this$0:Landroid/preference/VivoCheckBoxPreference;

    # setter for: Landroid/preference/VivoCheckBoxPreference;->mSendClickAccessibilityEventForVivo:Z
    invoke-static {v3, v1}, Landroid/preference/VivoCheckBoxPreference;->access$002(Landroid/preference/VivoCheckBoxPreference;Z)Z

    .line 132
    iget-object v3, p0, Landroid/preference/VivoCheckBoxPreference$1;->this$0:Landroid/preference/VivoCheckBoxPreference;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/VivoCheckBoxPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 133
    iget-object v1, p0, Landroid/preference/VivoCheckBoxPreference$1;->this$0:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    .line 140
    :cond_1
    :goto_2
    iget-object v1, p0, Landroid/preference/VivoCheckBoxPreference$1;->this$0:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/VivoCheckBoxPreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceManager;->getOnPreferenceTreeClickListener()Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 143
    iget-object v1, p0, Landroid/preference/VivoCheckBoxPreference$1;->this$0:Landroid/preference/VivoCheckBoxPreference;

    # getter for: Landroid/preference/VivoCheckBoxPreference;->mTextAreaClickable:Z
    invoke-static {v1}, Landroid/preference/VivoCheckBoxPreference;->access$100(Landroid/preference/VivoCheckBoxPreference;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 144
    iget-object v1, p0, Landroid/preference/VivoCheckBoxPreference$1;->this$0:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/VivoCheckBoxPreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceManager;->getOnPreferenceTreeClickListener()Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;

    move-result-object v1

    iget-object v2, p0, Landroid/preference/VivoCheckBoxPreference$1;->this$0:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/VivoCheckBoxPreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceManager;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Landroid/preference/VivoCheckBoxPreference$1;->this$0:Landroid/preference/VivoCheckBoxPreference;

    invoke-interface {v1, v2, v3}, Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 151
    :cond_2
    iget-object v1, p0, Landroid/preference/VivoCheckBoxPreference$1;->this$0:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/VivoCheckBoxPreference;->onClick()V

    .line 153
    iget-object v1, p0, Landroid/preference/VivoCheckBoxPreference$1;->this$0:Landroid/preference/VivoCheckBoxPreference;

    # invokes: Landroid/preference/VivoCheckBoxPreference;->preClick()V
    invoke-static {v1}, Landroid/preference/VivoCheckBoxPreference;->access$200(Landroid/preference/VivoCheckBoxPreference;)V

    goto :goto_0

    .end local v0    # "newValue":Z
    :cond_3
    move v0, v2

    .line 129
    goto :goto_1

    .line 135
    .restart local v0    # "newValue":Z
    :cond_4
    if-eqz p1, :cond_1

    .line 136
    if-nez v0, :cond_5

    :goto_3
    invoke-virtual {p1, v1}, Landroid/widget/BbkMoveBoolButton;->setChecked(Z)V

    goto :goto_2

    :cond_5
    move v1, v2

    goto :goto_3
.end method
