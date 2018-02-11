.class public Lcom/android/settings_ex/AppListSwitchPreference;
.super Lcom/android/settings_ex/AppListPreference;
.source "AppListSwitchPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AppListSwitchPref"


# instance fields
.field private mSwitch:Landroid/widget/Checkable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    const/4 v0, 0x0

    const v1, 0x7f1003d9

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/settings_ex/AppListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 20
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/android/settings_ex/AppListPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 27
    const v0, 0x1020040

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Checkable;

    iput-object v0, p0, Lcom/android/settings_ex/AppListSwitchPreference;->mSwitch:Landroid/widget/Checkable;

    .line 28
    iget-object v1, p0, Lcom/android/settings_ex/AppListSwitchPreference;->mSwitch:Landroid/widget/Checkable;

    invoke-virtual {p0}, Lcom/android/settings_ex/AppListSwitchPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 25
    return-void

    .line 28
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onClick()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 33
    invoke-virtual {p0}, Lcom/android/settings_ex/AppListSwitchPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 35
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/AppListSwitchPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/AppListSwitchPreference;->setValue(Ljava/lang/String;)V

    .line 32
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/AppListSwitchPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings_ex/AppListSwitchPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_3

    .line 39
    :cond_2
    const-string/jumbo v1, "AppListSwitchPref"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Attempting to show dialog with zero entries: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings_ex/AppListSwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 40
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings_ex/AppListSwitchPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 42
    invoke-virtual {p0}, Lcom/android/settings_ex/AppListSwitchPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/AppListSwitchPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/AppListSwitchPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    .end local v0    # "value":Ljava/lang/String;
    :cond_4
    invoke-super {p0}, Lcom/android/settings_ex/AppListPreference;->onClick()V

    goto :goto_0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/android/settings_ex/AppListPreference;->setValue(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/android/settings_ex/AppListSwitchPreference;->mSwitch:Landroid/widget/Checkable;

    if-eqz v0, :cond_0

    .line 55
    iget-object v1, p0, Lcom/android/settings_ex/AppListSwitchPreference;->mSwitch:Landroid/widget/Checkable;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 52
    :cond_0
    return-void

    .line 55
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
