.class public abstract Lcom/android/settings_ex/utils/ProfileSettingsPreferenceFragment;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "ProfileSettingsPreferenceFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getIntentActionString()Ljava/lang/String;
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 40
    const-string/jumbo v3, "user"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/utils/ProfileSettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 42
    .local v2, "um":Landroid/os/UserManager;
    invoke-virtual {p0}, Lcom/android/settings_ex/utils/ProfileSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings_exlib/drawer/UserAdapter;->createUserSpinnerAdapter(Landroid/os/UserManager;Landroid/content/Context;)Lcom/android/settings_exlib/drawer/UserAdapter;

    move-result-object v0

    .line 43
    .local v0, "profileSpinnerAdapter":Lcom/android/settings_exlib/drawer/UserAdapter;
    if-eqz v0, :cond_0

    .line 44
    const v3, 0x7f0401a2

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/utils/ProfileSettingsPreferenceFragment;->setPinnedHeaderView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 45
    .local v1, "spinner":Landroid/widget/Spinner;
    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 46
    new-instance v3, Lcom/android/settings_ex/utils/ProfileSettingsPreferenceFragment$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/settings_ex/utils/ProfileSettingsPreferenceFragment$1;-><init>(Lcom/android/settings_ex/utils/ProfileSettingsPreferenceFragment;Lcom/android/settings_exlib/drawer/UserAdapter;Landroid/widget/Spinner;)V

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 38
    .end local v1    # "spinner":Landroid/widget/Spinner;
    :cond_0
    return-void
.end method
