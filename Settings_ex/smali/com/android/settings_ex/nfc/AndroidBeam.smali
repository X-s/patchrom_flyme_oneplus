.class public Lcom/android/settings_ex/nfc/AndroidBeam;
.super Lcom/android/settings_ex/InstrumentedFragment;
.source "AndroidBeam.java"

# interfaces
.implements Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mAndroidBeamSwitch:Landroid/widget/LinearLayout;

.field private mBeamDisallowed:Z

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mOldActivityTitle:Ljava/lang/CharSequence;

.field private mSwitch:Lcom/oneplus/widget/button/OPSwitch;

.field private mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/settings_ex/InstrumentedFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 124
    const/16 v0, 0x45

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 87
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 90
    .local v0, "activity":Lcom/android/settings_ex/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsActivity;->getSwitchBar()Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    .line 91
    iget-object v4, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    iget-boolean v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mBeamDisallowed:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setChecked(Z)V

    .line 92
    iget-object v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings_ex/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 93
    iget-object v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    iget-boolean v4, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mBeamDisallowed:Z

    if-nez v4, :cond_1

    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/settings_ex/widget/SwitchBar;->setEnabled(Z)V

    .line 95
    return-void

    :cond_0
    move v1, v3

    .line 91
    goto :goto_0

    :cond_1
    move v2, v3

    .line 93
    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 130
    const/4 v0, 0x0

    .line 131
    .local v0, "success":Z
    iget-object v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mSwitch:Lcom/oneplus/widget/button/OPSwitch;

    invoke-virtual {v1}, Lcom/oneplus/widget/button/OPSwitch;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    .line 132
    iget-object v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    move-result v0

    .line 136
    :goto_0
    if-eqz v0, :cond_0

    .line 137
    iget-object v2, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mSwitch:Lcom/oneplus/widget/button/OPSwitch;

    iget-object v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mSwitch:Lcom/oneplus/widget/button/OPSwitch;

    invoke-virtual {v1}, Lcom/oneplus/widget/button/OPSwitch;->isChecked()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Lcom/oneplus/widget/button/OPSwitch;->setChecked(Z)V

    .line 139
    :cond_0
    return-void

    .line 134
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    move-result v0

    goto :goto_0

    .line 137
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 57
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0}, Landroid/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mOldActivityTitle:Ljava/lang/CharSequence;

    .line 58
    const v1, 0x7f0c04c1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 60
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 61
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    const-string v2, "no_outgoing_beam"

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mBeamDisallowed:Z

    .line 63
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/nfc/AndroidBeam;->setHasOptionsMenu(Z)V

    .line 64
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 68
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/InstrumentedFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 69
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0bbb

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lcom/android/settings_ex/HelpUtils;->prepareHelpMenuItem(Landroid/app/Activity;Landroid/view/Menu;ILjava/lang/String;)Z

    .line 71
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 76
    const v0, 0x7f040004

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mView:Landroid/view/View;

    .line 77
    iget-object v0, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mView:Landroid/view/View;

    const v2, 0x7f120009

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/widget/button/OPSwitch;

    iput-object v0, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mSwitch:Lcom/oneplus/widget/button/OPSwitch;

    .line 78
    iget-object v0, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mSwitch:Lcom/oneplus/widget/button/OPSwitch;

    invoke-virtual {v0, v1}, Lcom/oneplus/widget/button/OPSwitch;->setClickable(Z)V

    .line 79
    iget-object v2, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mSwitch:Lcom/oneplus/widget/button/OPSwitch;

    iget-boolean v0, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mBeamDisallowed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/oneplus/widget/button/OPSwitch;->setChecked(Z)V

    .line 80
    iget-object v0, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mView:Landroid/view/View;

    const v1, 0x7f120008

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mAndroidBeamSwitch:Landroid/widget/LinearLayout;

    .line 81
    iget-object v0, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mAndroidBeamSwitch:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v0, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mView:Landroid/view/View;

    return-object v0

    :cond_0
    move v0, v1

    .line 79
    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 99
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedFragment;->onDestroyView()V

    .line 100
    iget-object v0, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mOldActivityTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mOldActivityTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 104
    iget-object v0, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SwitchBar;->hide()V

    .line 105
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 3
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "desiredState"    # Z

    .prologue
    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, "success":Z
    iget-object v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/widget/SwitchBar;->setEnabled(Z)V

    .line 111
    if-eqz p2, :cond_1

    .line 112
    iget-object v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    move-result v0

    .line 116
    :goto_0
    if-eqz v0, :cond_0

    .line 117
    iget-object v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v1, p2}, Lcom/android/settings_ex/widget/SwitchBar;->setChecked(Z)V

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/widget/SwitchBar;->setEnabled(Z)V

    .line 120
    return-void

    .line 114
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    move-result v0

    goto :goto_0
.end method
