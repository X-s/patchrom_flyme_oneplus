.class Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;
.super Landroid/support/v14/preference/SwitchPreference;
.source "AppRestrictionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/users/AppRestrictionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AppRestrictionsPreference"
.end annotation


# instance fields
.field private hasSettings:Z

.field private immutable:Z

.field private listener:Landroid/view/View$OnClickListener;

.field private mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private panelOpen:Z

.field private restrictions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/RestrictionEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->hasSettings:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;)Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->listener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->mChildren:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->restrictions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setSettingsEnabled(Z)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 141
    invoke-direct {p0, p1}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->mChildren:Ljava/util/List;

    .line 142
    const v0, 0x7f040134

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setLayoutResource(I)V

    .line 143
    iput-object p2, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->listener:Landroid/view/View$OnClickListener;

    .line 140
    return-void
.end method

.method private setSettingsEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 147
    iput-boolean p1, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->hasSettings:Z

    .line 146
    return-void
.end method


# virtual methods
.method getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/preference/Preference;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->mChildren:Ljava/util/List;

    return-object v0
.end method

.method getRestrictions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/RestrictionEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->restrictions:Ljava/util/ArrayList;

    return-object v0
.end method

.method isImmutable()Z
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->immutable:Z

    return v0
.end method

.method isPanelOpen()Z
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->panelOpen:Z

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 9
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    const/16 v6, 0x8

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 180
    invoke-super {p0, p1}, Landroid/support/v14/preference/SwitchPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 182
    const v4, 0x7f110262

    invoke-virtual {p1, v4}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 183
    .local v1, "appRestrictionsSettings":Landroid/view/View;
    iget-boolean v4, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->hasSettings:Z

    if-eqz v4, :cond_2

    move v4, v5

    :goto_0
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 184
    const v4, 0x7f110263

    invoke-virtual {p1, v4}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 185
    iget-boolean v8, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->hasSettings:Z

    if-eqz v8, :cond_0

    move v6, v5

    .line 184
    :cond_0
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 186
    iget-object v4, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    invoke-virtual {v1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 189
    const v4, 0x7f110261

    invoke-virtual {p1, v4}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 190
    .local v0, "appRestrictionsPref":Landroid/view/View;
    iget-object v4, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    invoke-virtual {v0, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 193
    const v4, 0x1020018

    invoke-virtual {p1, v4}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 194
    .local v3, "widget":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->isImmutable()Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v5

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 195
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lez v4, :cond_1

    .line 196
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    .line 197
    .local v2, "toggle":Landroid/widget/Switch;
    invoke-virtual {p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->isImmutable()Z

    move-result v4

    if-eqz v4, :cond_4

    :goto_2
    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 198
    invoke-virtual {v2, p0}, Landroid/widget/Switch;->setTag(Ljava/lang/Object;)V

    .line 199
    invoke-virtual {v2, v7}, Landroid/widget/Switch;->setClickable(Z)V

    .line 200
    invoke-virtual {v2, v7}, Landroid/widget/Switch;->setFocusable(Z)V

    .line 201
    new-instance v4, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference$1;

    invoke-direct {v4, p0, v2}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference$1;-><init>(Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;Landroid/widget/Switch;)V

    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 179
    .end local v2    # "toggle":Landroid/widget/Switch;
    :cond_1
    return-void

    .end local v0    # "appRestrictionsPref":Landroid/view/View;
    .end local v3    # "widget":Landroid/view/ViewGroup;
    :cond_2
    move v4, v6

    .line 183
    goto :goto_0

    .restart local v0    # "appRestrictionsPref":Landroid/view/View;
    .restart local v3    # "widget":Landroid/view/ViewGroup;
    :cond_3
    move v4, v7

    .line 194
    goto :goto_1

    .restart local v2    # "toggle":Landroid/widget/Switch;
    :cond_4
    move v5, v7

    .line 197
    goto :goto_2
.end method

.method setImmutable(Z)V
    .locals 0
    .param p1, "immutable"    # Z

    .prologue
    .line 155
    iput-boolean p1, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->immutable:Z

    .line 154
    return-void
.end method

.method setPanelOpen(Z)V
    .locals 0
    .param p1, "open"    # Z

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->panelOpen:Z

    .line 170
    return-void
.end method

.method setRestrictions(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/RestrictionEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p1, "restrictions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/RestrictionEntry;>;"
    iput-object p1, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->restrictions:Ljava/util/ArrayList;

    .line 150
    return-void
.end method
