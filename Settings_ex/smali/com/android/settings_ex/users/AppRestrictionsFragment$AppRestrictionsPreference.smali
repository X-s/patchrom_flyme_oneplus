.class Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;
.super Landroid/preference/SwitchPreference;
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
            "Landroid/preference/Preference;",
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
.method constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 161
    invoke-direct {p0, p1}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->mChildren:Ljava/util/List;

    .line 162
    const v0, 0x7f0400b4

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setLayoutResource(I)V

    .line 163
    iput-object p2, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->listener:Landroid/view/View$OnClickListener;

    .line 164
    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->hasSettings:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->mChildren:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->listener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;
    .param p1, "x1"    # Z

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->setSettingsEnabled(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->restrictions:Ljava/util/ArrayList;

    return-object v0
.end method

.method private setSettingsEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 167
    iput-boolean p1, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->hasSettings:Z

    .line 168
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
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation

    .prologue
    .line 195
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
    .line 183
    iget-object v0, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->restrictions:Ljava/util/ArrayList;

    return-object v0
.end method

.method isImmutable()Z
    .locals 1

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->immutable:Z

    return v0
.end method

.method isPanelOpen()Z
    .locals 1

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->panelOpen:Z

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v6, 0x8

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 200
    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->onBindView(Landroid/view/View;)V

    .line 202
    const v4, 0x7f120144

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 203
    .local v1, "appRestrictionsSettings":Landroid/view/View;
    iget-boolean v4, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->hasSettings:Z

    if-eqz v4, :cond_3

    move v4, v5

    :goto_0
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 204
    const v4, 0x7f120145

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-boolean v8, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->hasSettings:Z

    if-eqz v8, :cond_0

    move v6, v5

    :cond_0
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 206
    iget-object v4, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    invoke-virtual {v1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 209
    const v4, 0x7f120143

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 210
    .local v0, "appRestrictionsPref":Landroid/view/View;
    iget-object v4, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    invoke-virtual {v0, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 213
    const v4, 0x1020018

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 214
    .local v3, "widget":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->isImmutable()Z

    move-result v4

    if-nez v4, :cond_4

    move v4, v7

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 215
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lez v4, :cond_2

    .line 216
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    .line 217
    .local v2, "toggle":Landroid/widget/Switch;
    invoke-virtual {p0}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->isImmutable()Z

    move-result v4

    if-nez v4, :cond_1

    move v5, v7

    :cond_1
    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 218
    invoke-virtual {v2, p0}, Landroid/widget/Switch;->setTag(Ljava/lang/Object;)V

    .line 219
    invoke-virtual {v2, v7}, Landroid/widget/Switch;->setClickable(Z)V

    .line 220
    invoke-virtual {v2, v7}, Landroid/widget/Switch;->setFocusable(Z)V

    .line 221
    new-instance v4, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference$1;

    invoke-direct {v4, p0, v2}, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference$1;-><init>(Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;Landroid/widget/Switch;)V

    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 228
    .end local v2    # "toggle":Landroid/widget/Switch;
    :cond_2
    return-void

    .end local v0    # "appRestrictionsPref":Landroid/view/View;
    .end local v3    # "widget":Landroid/view/ViewGroup;
    :cond_3
    move v4, v6

    .line 203
    goto :goto_0

    .restart local v0    # "appRestrictionsPref":Landroid/view/View;
    .restart local v3    # "widget":Landroid/view/ViewGroup;
    :cond_4
    move v4, v5

    .line 214
    goto :goto_1
.end method

.method setImmutable(Z)V
    .locals 0
    .param p1, "immutable"    # Z

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->immutable:Z

    .line 176
    return-void
.end method

.method setPanelOpen(Z)V
    .locals 0
    .param p1, "open"    # Z

    .prologue
    .line 191
    iput-boolean p1, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->panelOpen:Z

    .line 192
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
    .line 171
    .local p1, "restrictions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/RestrictionEntry;>;"
    iput-object p1, p0, Lcom/android/settings_ex/users/AppRestrictionsFragment$AppRestrictionsPreference;->restrictions:Ljava/util/ArrayList;

    .line 172
    return-void
.end method
