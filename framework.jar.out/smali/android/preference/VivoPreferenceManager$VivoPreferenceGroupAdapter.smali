.class Landroid/preference/VivoPreferenceManager$VivoPreferenceGroupAdapter;
.super Landroid/preference/PreferenceGroupAdapter;
.source "VivoPreferenceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/VivoPreferenceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VivoPreferenceGroupAdapter"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VivoPreferenceGroupAdapter"


# instance fields
.field private position_index:[I

.field final synthetic this$0:Landroid/preference/VivoPreferenceManager;


# direct methods
.method public constructor <init>(Landroid/preference/VivoPreferenceManager;Landroid/preference/PreferenceGroup;)V
    .locals 0
    .param p2, "preferenceGroup"    # Landroid/preference/PreferenceGroup;

    .prologue
    .line 106
    iput-object p1, p0, Landroid/preference/VivoPreferenceManager$VivoPreferenceGroupAdapter;->this$0:Landroid/preference/VivoPreferenceManager;

    .line 107
    invoke-direct {p0, p2}, Landroid/preference/PreferenceGroupAdapter;-><init>(Landroid/preference/PreferenceGroup;)V

    .line 108
    invoke-direct {p0}, Landroid/preference/VivoPreferenceManager$VivoPreferenceGroupAdapter;->initialLittleGroup()V

    .line 109
    return-void
.end method

.method private initialLittleGroup()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 186
    const/4 v1, 0x0

    .line 187
    .local v1, "i":I
    invoke-virtual {p0}, Landroid/preference/VivoPreferenceManager$VivoPreferenceGroupAdapter;->getCount()I

    move-result v3

    .line 189
    .local v3, "total_pref":I
    iget-object v4, p0, Landroid/preference/VivoPreferenceManager$VivoPreferenceGroupAdapter;->position_index:[I

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/preference/VivoPreferenceManager$VivoPreferenceGroupAdapter;->position_index:[I

    array-length v4, v4

    if-eq v4, v3, :cond_1

    .line 191
    :cond_0
    new-array v4, v3, [I

    iput-object v4, p0, Landroid/preference/VivoPreferenceManager$VivoPreferenceGroupAdapter;->position_index:[I

    .line 196
    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_4

    .line 198
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/preference/VivoPreferenceManager$VivoPreferenceGroupAdapter;->getItem(I)Landroid/preference/Preference;

    move-result-object v2

    .line 199
    .local v2, "preference":Landroid/preference/Preference;
    instance-of v4, v2, Landroid/preference/PreferenceCategory;

    if-eqz v4, :cond_2

    .line 201
    iget-object v4, p0, Landroid/preference/VivoPreferenceManager$VivoPreferenceGroupAdapter;->position_index:[I

    const/4 v5, 0x0

    aput v5, v4, v1

    .line 196
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 205
    :cond_2
    add-int/lit8 v4, v3, -0x1

    if-ne v1, v4, :cond_6

    .line 207
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p0, v4}, Landroid/preference/VivoPreferenceManager$VivoPreferenceGroupAdapter;->getItem(I)Landroid/preference/Preference;

    move-result-object v4

    instance-of v4, v4, Landroid/preference/PreferenceCategory;

    if-nez v4, :cond_3

    if-ne v3, v6, :cond_5

    .line 209
    :cond_3
    iget-object v4, p0, Landroid/preference/VivoPreferenceManager$VivoPreferenceGroupAdapter;->position_index:[I

    const/4 v5, 0x4

    aput v5, v4, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 258
    .end local v2    # "preference":Landroid/preference/Preference;
    :catch_0
    move-exception v0

    .line 260
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "VivoPreferenceGroupAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "...exception...."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    return-void

    .line 213
    .restart local v2    # "preference":Landroid/preference/Preference;
    :cond_5
    :try_start_1
    iget-object v4, p0, Landroid/preference/VivoPreferenceManager$VivoPreferenceGroupAdapter;->position_index:[I

    const/4 v5, 0x2

    aput v5, v4, v1

    goto :goto_1

    .line 218
    :cond_6
    if-nez v1, :cond_8

    .line 220
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Landroid/preference/VivoPreferenceManager$VivoPreferenceGroupAdapter;->getItem(I)Landroid/preference/Preference;

    move-result-object v4

    instance-of v4, v4, Landroid/preference/PreferenceCategory;

    if-eqz v4, :cond_7

    .line 222
    iget-object v4, p0, Landroid/preference/VivoPreferenceManager$VivoPreferenceGroupAdapter;->position_index:[I

    const/4 v5, 0x4

    aput v5, v4, v1

    goto :goto_1

    .line 226
    :cond_7
    iget-object v4, p0, Landroid/preference/VivoPreferenceManager$VivoPreferenceGroupAdapter;->position_index:[I

    const/4 v5, 0x1

    aput v5, v4, v1

    goto :goto_1

    .line 231
    :cond_8
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p0, v4}, Landroid/preference/VivoPreferenceManager$VivoPreferenceGroupAdapter;->getItem(I)Landroid/preference/Preference;

    move-result-object v4

    instance-of v4, v4, Landroid/preference/PreferenceCategory;

    if-eqz v4, :cond_a

    .line 233
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Landroid/preference/VivoPreferenceManager$VivoPreferenceGroupAdapter;->getItem(I)Landroid/preference/Preference;

    move-result-object v4

    instance-of v4, v4, Landroid/preference/PreferenceCategory;

    if-eqz v4, :cond_9

    .line 235
    iget-object v4, p0, Landroid/preference/VivoPreferenceManager$VivoPreferenceGroupAdapter;->position_index:[I

    const/4 v5, 0x4

    aput v5, v4, v1

    goto :goto_1

    .line 239
    :cond_9
    iget-object v4, p0, Landroid/preference/VivoPreferenceManager$VivoPreferenceGroupAdapter;->position_index:[I

    const/4 v5, 0x1

    aput v5, v4, v1

    goto :goto_1

    .line 244
    :cond_a
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Landroid/preference/VivoPreferenceManager$VivoPreferenceGroupAdapter;->getItem(I)Landroid/preference/Preference;

    move-result-object v4

    instance-of v4, v4, Landroid/preference/PreferenceCategory;

    if-eqz v4, :cond_b

    .line 246
    iget-object v4, p0, Landroid/preference/VivoPreferenceManager$VivoPreferenceGroupAdapter;->position_index:[I

    const/4 v5, 0x2

    aput v5, v4, v1

    goto :goto_1

    .line 250
    :cond_b
    iget-object v4, p0, Landroid/preference/VivoPreferenceManager$VivoPreferenceGroupAdapter;->position_index:[I

    const/4 v5, 0x3

    aput v5, v4, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 114
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceGroupAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 115
    .local v5, "view":Landroid/view/View;
    invoke-virtual {p0, p1}, Landroid/preference/VivoPreferenceManager$VivoPreferenceGroupAdapter;->getItem(I)Landroid/preference/Preference;

    move-result-object v3

    .line 118
    .local v3, "preference":Landroid/preference/Preference;
    if-ltz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/preference/VivoPreferenceManager$VivoPreferenceGroupAdapter;->getCount()I

    move-result v6

    if-lt p1, v6, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-object v5

    .line 122
    :cond_1
    instance-of v6, v3, Landroid/preference/PreferenceCategory;

    if-nez v6, :cond_0

    .line 126
    const/4 v4, 0x0

    .line 127
    .local v4, "specialBackground":I
    invoke-virtual {p0, p1}, Landroid/preference/VivoPreferenceManager$VivoPreferenceGroupAdapter;->getItem(I)Landroid/preference/Preference;

    move-result-object v6

    instance-of v6, v6, Landroid/preference/VivoPreferenceBackground;

    if-eqz v6, :cond_2

    .line 129
    invoke-virtual {p0, p1}, Landroid/preference/VivoPreferenceManager$VivoPreferenceGroupAdapter;->getItem(I)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/VivoPreferenceBackground;

    invoke-interface {v6}, Landroid/preference/VivoPreferenceBackground;->getBackgroundRes()I

    move-result v4

    .line 131
    :cond_2
    iget-object v6, p0, Landroid/preference/VivoPreferenceManager$VivoPreferenceGroupAdapter;->position_index:[I

    aget v2, v6, p1

    .line 132
    .local v2, "int_position":I
    const/4 v0, 0x0

    .line 133
    .local v0, "divider":Landroid/view/View;
    if-eqz v2, :cond_3

    .line 135
    const/high16 v6, 0x30d0000

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 136
    if-eqz v0, :cond_3

    .line 138
    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 141
    :cond_3
    if-lez v4, :cond_4

    .line 143
    invoke-virtual {v5, v4}, Landroid/view/View;->setBackgroundResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 170
    .end local v0    # "divider":Landroid/view/View;
    .end local v2    # "int_position":I
    .end local v4    # "specialBackground":I
    :catch_0
    move-exception v1

    .line 172
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "VivoPreferenceGroupAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "exception...."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 145
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "divider":Landroid/view/View;
    .restart local v2    # "int_position":I
    .restart local v4    # "specialBackground":I
    :cond_4
    const/4 v6, 0x1

    if-ne v2, v6, :cond_5

    .line 147
    :try_start_1
    iget-object v6, p0, Landroid/preference/VivoPreferenceManager$VivoPreferenceGroupAdapter;->this$0:Landroid/preference/VivoPreferenceManager;

    # getter for: Landroid/preference/VivoPreferenceManager;->mTopRound:Landroid/graphics/drawable/Drawable;
    invoke-static {v6}, Landroid/preference/VivoPreferenceManager;->access$000(Landroid/preference/VivoPreferenceManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 148
    if-eqz v0, :cond_0

    .line 150
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 153
    :cond_5
    const/4 v6, 0x2

    if-ne v2, v6, :cond_6

    .line 155
    iget-object v6, p0, Landroid/preference/VivoPreferenceManager$VivoPreferenceGroupAdapter;->this$0:Landroid/preference/VivoPreferenceManager;

    # getter for: Landroid/preference/VivoPreferenceManager;->mBottomRound:Landroid/graphics/drawable/Drawable;
    invoke-static {v6}, Landroid/preference/VivoPreferenceManager;->access$100(Landroid/preference/VivoPreferenceManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 157
    :cond_6
    const/4 v6, 0x3

    if-ne v2, v6, :cond_7

    .line 159
    iget-object v6, p0, Landroid/preference/VivoPreferenceManager$VivoPreferenceGroupAdapter;->this$0:Landroid/preference/VivoPreferenceManager;

    # getter for: Landroid/preference/VivoPreferenceManager;->mUnRound:Landroid/graphics/drawable/Drawable;
    invoke-static {v6}, Landroid/preference/VivoPreferenceManager;->access$200(Landroid/preference/VivoPreferenceManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 160
    if-eqz v0, :cond_0

    .line 162
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 165
    :cond_7
    const/4 v6, 0x4

    if-ne v2, v6, :cond_0

    .line 167
    iget-object v6, p0, Landroid/preference/VivoPreferenceManager$VivoPreferenceGroupAdapter;->this$0:Landroid/preference/VivoPreferenceManager;

    # getter for: Landroid/preference/VivoPreferenceManager;->mAllRound:Landroid/graphics/drawable/Drawable;
    invoke-static {v6}, Landroid/preference/VivoPreferenceManager;->access$300(Landroid/preference/VivoPreferenceManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 180
    invoke-direct {p0}, Landroid/preference/VivoPreferenceManager$VivoPreferenceGroupAdapter;->initialLittleGroup()V

    .line 181
    invoke-super {p0}, Landroid/preference/PreferenceGroupAdapter;->notifyDataSetChanged()V

    .line 182
    return-void
.end method
