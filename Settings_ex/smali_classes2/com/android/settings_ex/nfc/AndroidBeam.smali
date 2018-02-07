.class public Lcom/android/settings_ex/nfc/AndroidBeam;
.super Lcom/android/settings_ex/InstrumentedFragment;
.source "AndroidBeam.java"

# interfaces
.implements Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/nfc/AndroidBeam$1;
    }
.end annotation


# instance fields
.field private mBeamDisallowedByBase:Z

.field private mBeamDisallowedByOnlyAdmin:Z

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mOldActivityTitle:Ljava/lang/CharSequence;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

.field private mView:Landroid/view/View;


# direct methods
.method static synthetic -wrap0(Lcom/android/settings_ex/nfc/AndroidBeam;I)V
    .locals 0
    .param p1, "newState"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/nfc/AndroidBeam;->handleNfcStateChanged(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/settings_ex/InstrumentedFragment;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mIntentFilter:Landroid/content/IntentFilter;

    .line 57
    new-instance v0, Lcom/android/settings_ex/nfc/AndroidBeam$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/nfc/AndroidBeam$1;-><init>(Lcom/android/settings_ex/nfc/AndroidBeam;)V

    iput-object v0, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 46
    return-void
.end method

.method private handleNfcStateChanged(I)V
    .locals 3
    .param p1, "newState"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 69
    packed-switch p1, :pswitch_data_0

    .line 68
    :goto_0
    return-void

    .line 71
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setEnabled(Z)V

    goto :goto_0

    .line 74
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/widget/SwitchBar;->setEnabled(Z)V

    goto :goto_0

    .line 77
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/widget/SwitchBar;->setEnabled(Z)V

    goto :goto_0

    .line 80
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setEnabled(Z)V

    goto :goto_0

    .line 69
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 185
    const/16 v0, 0x45

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 139
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 141
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 143
    .local v0, "activity":Lcom/android/settings_ex/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mOldActivityTitle:Ljava/lang/CharSequence;

    .line 145
    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsActivity;->getSwitchBar()Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    .line 146
    iget-boolean v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mBeamDisallowedByOnlyAdmin:Z

    if-eqz v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings_ex/widget/SwitchBar;->hide()V

    .line 138
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    iget-boolean v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mBeamDisallowedByBase:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v1

    :goto_1
    invoke-virtual {v3, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setChecked(Z)V

    .line 150
    iget-object v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings_ex/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 151
    iget-object v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    iget-boolean v3, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mBeamDisallowedByBase:Z

    if-eqz v3, :cond_2

    :goto_2
    invoke-virtual {v1, v2}, Lcom/android/settings_ex/widget/SwitchBar;->setEnabled(Z)V

    .line 152
    iget-object v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings_ex/widget/SwitchBar;->show()V

    goto :goto_0

    :cond_1
    move v1, v2

    .line 149
    goto :goto_1

    .line 151
    :cond_2
    const/4 v2, 0x1

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 89
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/nfc/AndroidBeam;->setHasOptionsMenu(Z)V

    .line 91
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mIntentFilter:Landroid/content/IntentFilter;

    .line 86
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 97
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/InstrumentedFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 99
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/AndroidBeam;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 98
    const v2, 0x7f0e0d69

    invoke-static {v0, p1, v2, v1}, Lcom/android/settings_exlib/HelpUtils;->prepareHelpMenuItem(Landroid/app/Activity;Landroid/view/Menu;ILjava/lang/String;)Z

    .line 96
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 106
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "no_outgoing_beam"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 105
    invoke-static {v3, v4, v5}, Lcom/android/settings_exlib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 107
    .local v0, "admin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    .line 108
    .local v1, "um":Landroid/os/UserManager;
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 109
    const-string/jumbo v4, "no_outgoing_beam"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 108
    invoke-static {v3, v4, v5}, Lcom/android/settings_exlib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mBeamDisallowedByBase:Z

    .line 110
    iget-boolean v3, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mBeamDisallowedByBase:Z

    if-nez v3, :cond_0

    if-eqz v0, :cond_0

    .line 111
    const v3, 0x7f040020

    invoke-virtual {p1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 112
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v2, v0, v6}, Lcom/android/settings_ex/ShowAdminSupportDetailsDialog;->setAdminSupportDetails(Landroid/app/Activity;Landroid/view/View;Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;Z)V

    .line 113
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 114
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mBeamDisallowedByOnlyAdmin:Z

    .line 115
    return-object v2

    .line 117
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    const v3, 0x7f040021

    invoke-virtual {p1, v3, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mView:Landroid/view/View;

    .line 118
    iget-object v3, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mView:Landroid/view/View;

    return-object v3
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 158
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedFragment;->onDestroyView()V

    .line 159
    iget-object v0, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mOldActivityTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mOldActivityTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 162
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mBeamDisallowedByOnlyAdmin:Z

    if-nez v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 164
    iget-object v0, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SwitchBar;->hide()V

    .line 157
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 132
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedFragment;->onPause()V

    .line 133
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 130
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 125
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedFragment;->onResume()V

    .line 126
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 123
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 3
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "desiredState"    # Z

    .prologue
    .line 170
    const/4 v0, 0x0

    .line 171
    .local v0, "success":Z
    iget-object v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/widget/SwitchBar;->setEnabled(Z)V

    .line 172
    if-eqz p2, :cond_1

    .line 173
    iget-object v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    move-result v0

    .line 177
    .local v0, "success":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 178
    iget-object v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v1, p2}, Lcom/android/settings_ex/widget/SwitchBar;->setChecked(Z)V

    .line 180
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/widget/SwitchBar;->setEnabled(Z)V

    .line 169
    return-void

    .line 175
    .local v0, "success":Z
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    move-result v0

    .local v0, "success":Z
    goto :goto_0
.end method
