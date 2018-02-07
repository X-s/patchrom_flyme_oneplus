.class public Lcom/android/settings_ex/accessibility/AccessibilitySettingsForSetupWizardActivity;
.super Lcom/android/settings_ex/SettingsActivity;
.source "AccessibilitySettingsForSetupWizardActivity.java"


# static fields
.field private static final SAVE_KEY_TITLE:Ljava/lang/String; = "activity_title"


# instance fields
.field private mSendExtraWindowStateChanged:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettingsForSetupWizardActivity;->mSendExtraWindowStateChanged:Z

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettingsForSetupWizardActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 149
    const/16 v1, 0x20

    .line 148
    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 145
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 48
    const v3, 0x7f11008a

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/accessibility/AccessibilitySettingsForSetupWizardActivity;->setMainContentId(I)V

    .line 49
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettingsForSetupWizardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/settings/utils/OPUtils;->isWhiteModeOn(Landroid/content/ContentResolver;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettingsForSetupWizardActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    .line 53
    const/16 v4, 0x2000

    .line 52
    invoke-virtual {v3, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 57
    :cond_0
    const v3, 0x7f1102de

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/accessibility/AccessibilitySettingsForSetupWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 58
    .local v1, "parentLayout":Landroid/widget/FrameLayout;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 59
    const v4, 0x7f04001a

    .line 58
    invoke-virtual {v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 61
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettingsForSetupWizardActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 62
    invoke-virtual {p0, v5}, Lcom/android/settings_ex/accessibility/AccessibilitySettingsForSetupWizardActivity;->setIsDrawerPresent(Z)V

    .line 65
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettingsForSetupWizardActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-static {v3}, Lcom/android/setupwizardlib/util/SystemBarHelper;->hideSystemBars(Landroid/view/Window;)V

    .line 66
    const v3, 0x7f1102e2

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/accessibility/AccessibilitySettingsForSetupWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 67
    .local v2, "parentView":Landroid/widget/LinearLayout;
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setFitsSystemWindows(Z)V

    .line 69
    new-instance v3, Lcom/android/settings_ex/accessibility/AccessibilitySettingsForSetupWizardActivity$1;

    invoke-direct {v3, p0, v2}, Lcom/android/settings_ex/accessibility/AccessibilitySettingsForSetupWizardActivity$1;-><init>(Lcom/android/settings_ex/accessibility/AccessibilitySettingsForSetupWizardActivity;Landroid/widget/LinearLayout;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 78
    const v3, 0x7f11008b

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/accessibility/AccessibilitySettingsForSetupWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/view/NavigationBar;

    .line 79
    .local v0, "navigationBar":Lcom/android/setupwizardlib/view/NavigationBar;
    invoke-virtual {v0}, Lcom/android/setupwizardlib/view/NavigationBar;->getNextButton()Landroid/widget/Button;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 80
    new-instance v3, Lcom/android/settings_ex/accessibility/AccessibilitySettingsForSetupWizardActivity$2;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettingsForSetupWizardActivity$2;-><init>(Lcom/android/settings_ex/accessibility/AccessibilitySettingsForSetupWizardActivity;)V

    invoke-virtual {v0, v3}, Lcom/android/setupwizardlib/view/NavigationBar;->setNavigationBarListener(Lcom/android/setupwizardlib/view/NavigationBar$NavigationBarListener;)V

    .line 45
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 114
    const/4 v0, 0x1

    return v0
.end method

.method public onNavigateUp()Z
    .locals 2

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettingsForSetupWizardActivity;->onBackPressed()V

    .line 122
    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettingsForSetupWizardActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 123
    const/16 v1, 0x20

    .line 122
    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 125
    const/4 v0, 0x1

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 102
    const-string/jumbo v0, "activity_title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accessibility/AccessibilitySettingsForSetupWizardActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 100
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 107
    invoke-super {p0}, Lcom/android/settings_ex/SettingsActivity;->onResume()V

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettingsForSetupWizardActivity;->mSendExtraWindowStateChanged:Z

    .line 106
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 95
    const-string/jumbo v0, "activity_title"

    invoke-virtual {p0}, Lcom/android/settings_ex/accessibility/AccessibilitySettingsForSetupWizardActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 96
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 94
    return-void
.end method

.method public startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V
    .locals 3
    .param p1, "fragmentClass"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleRes"    # I
    .param p4, "titleText"    # Ljava/lang/CharSequence;
    .param p5, "resultTo"    # Landroid/app/Fragment;
    .param p6, "resultRequestCode"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 132
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 133
    invoke-virtual {p0, p4}, Lcom/android/settings_ex/accessibility/AccessibilitySettingsForSetupWizardActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 139
    :cond_0
    :goto_0
    const-string/jumbo v0, "help_uri_resource"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 140
    invoke-static {p0, p1, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/android/settings_ex/accessibility/AccessibilitySettingsForSetupWizardActivity;->startPreferenceFragment(Landroid/app/Fragment;Z)V

    .line 141
    iput-boolean v2, p0, Lcom/android/settings_ex/accessibility/AccessibilitySettingsForSetupWizardActivity;->mSendExtraWindowStateChanged:Z

    .line 130
    return-void

    .line 134
    :cond_1
    if-lez p3, :cond_0

    .line 135
    invoke-virtual {p0, p3}, Lcom/android/settings_ex/accessibility/AccessibilitySettingsForSetupWizardActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accessibility/AccessibilitySettingsForSetupWizardActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
