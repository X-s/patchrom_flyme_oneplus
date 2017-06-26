.class public Lcom/android/settings_ex/nfc/NfcEnabler;
.super Ljava/lang/Object;
.source "NfcEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final mAndroidBeam:Landroid/preference/PreferenceScreen;

.field private mBeamDisallowed:Z

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private final mPayment:Landroid/preference/PreferenceScreen;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSwitch:Landroid/preference/SwitchPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/SwitchPreference;Landroid/preference/PreferenceScreen;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switchPreference"    # Landroid/preference/SwitchPreference;
    .param p3, "androidBeam"    # Landroid/preference/PreferenceScreen;

    .prologue
    const/4 v2, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/android/settings_ex/nfc/NfcEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/nfc/NfcEnabler$1;-><init>(Lcom/android/settings_ex/nfc/NfcEnabler;)V

    iput-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 60
    iput-object p1, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    .line 62
    iput-object p3, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    .line 63
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mPayment:Landroid/preference/PreferenceScreen;

    .line 64
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 65
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    const-string v1, "no_outgoing_beam"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mBeamDisallowed:Z

    .line 68
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 71
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 79
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mBeamDisallowed:Z

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 78
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/preference/SwitchPreference;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switchPreference"    # Landroid/preference/SwitchPreference;
    .param p3, "androidBeam"    # Landroid/preference/PreferenceScreen;
    .param p4, "payment"    # Landroid/preference/PreferenceScreen;

    .prologue
    const/4 v2, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/android/settings_ex/nfc/NfcEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/nfc/NfcEnabler$1;-><init>(Lcom/android/settings_ex/nfc/NfcEnabler;)V

    iput-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 90
    iput-object p1, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    .line 91
    iput-object p2, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    .line 92
    iput-object p3, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    .line 93
    iput-object p4, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mPayment:Landroid/preference/PreferenceScreen;

    .line 94
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 95
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    const-string v1, "no_outgoing_beam"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mBeamDisallowed:Z

    .line 98
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 101
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 102
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mPayment:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 111
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mBeamDisallowed:Z

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 108
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mPayment:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 110
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings_ex/nfc/NfcEnabler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/nfc/NfcEnabler;
    .param p1, "x1"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/settings_ex/nfc/NfcEnabler;->handleNfcStateChanged(I)V

    return-void
.end method

.method private handleNfcStateChanged(I)V
    .locals 4
    .param p1, "newState"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 146
    packed-switch p1, :pswitch_data_0

    .line 179
    :goto_0
    return-void

    .line 148
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 149
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 150
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 151
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mPayment:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 152
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0c04c4

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    .line 155
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 156
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 157
    iget-object v3, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    iget-boolean v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mBeamDisallowed:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 158
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mPayment:Landroid/preference/PreferenceScreen;

    iget-boolean v3, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mBeamDisallowed:Z

    if-nez v3, :cond_1

    :goto_2
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 160
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mBeamDisallowed:Z

    if-nez v0, :cond_2

    .line 161
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0c04c2

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    :cond_0
    move v0, v2

    .line 157
    goto :goto_1

    :cond_1
    move v1, v2

    .line 158
    goto :goto_2

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0c04c3

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    .line 167
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 168
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 169
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 170
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mPayment:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    .line 173
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 174
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 175
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 176
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mPayment:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_0

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private showNFCTipsDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 182
    iget-object v1, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "show_nfc_tips"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 183
    new-instance v0, Lcom/oneplus/app/OPNFCGuidelineDialog;

    iget-object v1, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oneplus/app/OPNFCGuidelineDialog;-><init>(Landroid/content/Context;)V

    .line 184
    .local v0, "opNFCGuidelineDialognew":Lcom/oneplus/app/OPNFCGuidelineDialog;
    invoke-virtual {v0, v3}, Lcom/oneplus/app/OPNFCGuidelineDialog;->setCancelable(Z)V

    .line 185
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/app/OPNFCGuidelineDialog;->setOnOkListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 186
    invoke-virtual {v0}, Lcom/oneplus/app/OPNFCGuidelineDialog;->show()V

    .line 187
    iget-object v1, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "show_nfc_tips"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 189
    .end local v0    # "opNFCGuidelineDialognew":Lcom/oneplus/app/OPNFCGuidelineDialog;
    :cond_0
    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 133
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 134
    .local v0, "desiredState":Z
    iget-object v1, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 136
    if-eqz v0, :cond_0

    .line 137
    iget-object v1, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->enable()Z

    .line 142
    :goto_0
    return v2

    .line 139
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->disable()Z

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    .line 128
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 127
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    .line 120
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/nfc/NfcEnabler;->handleNfcStateChanged(I)V

    .line 118
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 119
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method
