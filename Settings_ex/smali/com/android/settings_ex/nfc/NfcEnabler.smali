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

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/android/settings_ex/nfc/NfcEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/nfc/NfcEnabler$1;-><init>(Lcom/android/settings_ex/nfc/NfcEnabler;)V

    iput-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 57
    iput-object p1, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    .line 59
    iput-object p3, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    .line 60
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 61
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    const-string v1, "no_outgoing_beam"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mBeamDisallowed:Z

    .line 64
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 67
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 75
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mBeamDisallowed:Z

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 74
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
    .line 36
    invoke-direct {p0, p1}, Lcom/android/settings_ex/nfc/NfcEnabler;->handleNfcStateChanged(I)V

    return-void
.end method

.method private handleNfcStateChanged(I)V
    .locals 4
    .param p1, "newState"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 110
    packed-switch p1, :pswitch_data_0

    .line 138
    :goto_0
    return-void

    .line 112
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 113
    iget-object v2, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 114
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 115
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    const v1, 0x7f09033d

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    .line 118
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 119
    iget-object v2, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 120
    iget-object v2, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    iget-boolean v3, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mBeamDisallowed:Z

    if-nez v3, :cond_0

    :goto_1
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 121
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mBeamDisallowed:Z

    if-nez v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    const v1, 0x7f09033b

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    :cond_0
    move v0, v1

    .line 120
    goto :goto_1

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    const v1, 0x7f09033c

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    .line 128
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 129
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 130
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    .line 133
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 134
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 135
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 97
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 98
    .local v0, "desiredState":Z
    iget-object v1, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 100
    if-eqz v0, :cond_0

    .line 101
    iget-object v1, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->enable()Z

    .line 106
    :goto_0
    return v2

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->disable()Z

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 91
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    .line 84
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/nfc/NfcEnabler;->handleNfcStateChanged(I)V

    .line 82
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 83
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method
