.class public Lcom/android/settings_ex/AppListPreferenceWithSettings;
.super Lcom/android/settings_ex/AppListPreference;
.source "AppListPreferenceWithSettings.java"


# instance fields
.field private mSettingsComponent:Landroid/content/ComponentName;

.field private mSettingsIcon:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/AppListPreferenceWithSettings;)Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/AppListPreferenceWithSettings;->mSettingsComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/AppListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const v0, 0x7f04015d

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/AppListPreferenceWithSettings;->setWidgetLayoutResource(I)V

    .line 19
    return-void
.end method

.method private updateSettingsVisibility()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings_ex/AppListPreferenceWithSettings;->mSettingsIcon:Landroid/view/View;

    if-nez v0, :cond_0

    .line 46
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/AppListPreferenceWithSettings;->mSettingsComponent:Landroid/content/ComponentName;

    if-nez v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/android/settings_ex/AppListPreferenceWithSettings;->mSettingsIcon:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 44
    :goto_0
    return-void

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/AppListPreferenceWithSettings;->mSettingsIcon:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 4
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    const/4 v3, 0x0

    .line 26
    invoke-super {p0, p1}, Lcom/android/settings_ex/AppListPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 28
    const v1, 0x7f11028d

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/AppListPreferenceWithSettings;->mSettingsIcon:Landroid/view/View;

    .line 29
    iget-object v1, p0, Lcom/android/settings_ex/AppListPreferenceWithSettings;->mSettingsIcon:Landroid/view/View;

    new-instance v2, Lcom/android/settings_ex/AppListPreferenceWithSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/AppListPreferenceWithSettings$1;-><init>(Lcom/android/settings_ex/AppListPreferenceWithSettings;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iget-object v1, p0, Lcom/android/settings_ex/AppListPreferenceWithSettings;->mSettingsIcon:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 39
    .local v0, "container":Landroid/view/ViewGroup;
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    .line 41
    invoke-direct {p0}, Lcom/android/settings_ex/AppListPreferenceWithSettings;->updateSettingsVisibility()V

    .line 25
    return-void
.end method

.method protected setSettingsComponent(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "settings"    # Landroid/content/ComponentName;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/settings_ex/AppListPreferenceWithSettings;->mSettingsComponent:Landroid/content/ComponentName;

    .line 58
    invoke-direct {p0}, Lcom/android/settings_ex/AppListPreferenceWithSettings;->updateSettingsVisibility()V

    .line 56
    return-void
.end method
