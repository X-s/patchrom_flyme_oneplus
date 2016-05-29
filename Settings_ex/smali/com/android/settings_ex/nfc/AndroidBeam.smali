.class public Lcom/android/settings_ex/nfc/AndroidBeam;
.super Landroid/app/Fragment;
.source "AndroidBeam.java"

# interfaces
.implements Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;


# instance fields
.field private mBeamDisallowed:Z

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mOldActivityTitle:Ljava/lang/CharSequence;

.field private mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 66
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 70
    .local v0, "activity":Lcom/android/settings_ex/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsActivity;->getSwitchBar()Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    .line 71
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

    .line 72
    iget-object v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings_ex/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 73
    iget-object v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    iget-boolean v4, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mBeamDisallowed:Z

    if-nez v4, :cond_1

    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/settings_ex/widget/SwitchBar;->setEnabled(Z)V

    .line 74
    iget-object v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings_ex/widget/SwitchBar;->show()V

    .line 75
    return-void

    :cond_0
    move v1, v3

    .line 71
    goto :goto_0

    :cond_1
    move v2, v3

    .line 73
    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 48
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0}, Landroid/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mOldActivityTitle:Ljava/lang/CharSequence;

    .line 49
    const v1, 0x7f09033a

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 51
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 52
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

    .line 54
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    const v0, 0x7f040003

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mView:Landroid/view/View;

    .line 61
    iget-object v0, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 79
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 80
    iget-object v0, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mOldActivityTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mOldActivityTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 84
    iget-object v0, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SwitchBar;->hide()V

    .line 85
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 3
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "desiredState"    # Z

    .prologue
    .line 89
    const/4 v0, 0x0

    .line 90
    .local v0, "success":Z
    iget-object v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/widget/SwitchBar;->setEnabled(Z)V

    .line 91
    if-eqz p2, :cond_1

    .line 92
    iget-object v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    move-result v0

    .line 96
    :goto_0
    if-eqz v0, :cond_0

    .line 97
    iget-object v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v1, p2}, Lcom/android/settings_ex/widget/SwitchBar;->setChecked(Z)V

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/widget/SwitchBar;->setEnabled(Z)V

    .line 100
    return-void

    .line 94
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    move-result v0

    goto :goto_0
.end method
