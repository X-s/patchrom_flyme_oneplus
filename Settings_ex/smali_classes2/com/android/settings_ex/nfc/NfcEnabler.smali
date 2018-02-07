.class public Lcom/android/settings_ex/nfc/NfcEnabler;
.super Ljava/lang/Object;
.source "NfcEnabler.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/nfc/NfcEnabler$1;
    }
.end annotation


# instance fields
.field private final mAndroidBeam:Lcom/android/settings_exlib/RestrictedPreference;

.field private mBeamDisallowedBySystem:Z

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSwitch:Landroid/support/v14/preference/SwitchPreference;


# direct methods
.method static synthetic -wrap0(Lcom/android/settings_ex/nfc/NfcEnabler;I)V
    .locals 0
    .param p1, "newState"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/nfc/NfcEnabler;->handleNfcStateChanged(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v14/preference/SwitchPreference;Lcom/android/settings_exlib/RestrictedPreference;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switchPreference"    # Landroid/support/v14/preference/SwitchPreference;
    .param p3, "androidBeam"    # Lcom/android/settings_exlib/RestrictedPreference;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/android/settings_ex/nfc/NfcEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/nfc/NfcEnabler$1;-><init>(Lcom/android/settings_ex/nfc/NfcEnabler;)V

    iput-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 60
    iput-object p1, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    .line 62
    iput-object p3, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settings_exlib/RestrictedPreference;

    .line 63
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 65
    const-string/jumbo v0, "no_outgoing_beam"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 64
    invoke-static {p1, v0, v1}, Lcom/android/settings_exlib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mBeamDisallowedBySystem:Z

    .line 67
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 70
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settings_exlib/RestrictedPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_exlib/RestrictedPreference;->setEnabled(Z)V

    .line 71
    iput-object v3, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 72
    return-void

    .line 74
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mBeamDisallowedBySystem:Z

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settings_exlib/RestrictedPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_exlib/RestrictedPreference;->setEnabled(Z)V

    .line 77
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 59
    return-void
.end method

.method private handleNfcStateChanged(I)V
    .locals 3
    .param p1, "newState"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 113
    packed-switch p1, :pswitch_data_0

    .line 112
    :goto_0
    return-void

    .line 115
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 116
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 117
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settings_exlib/RestrictedPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_exlib/RestrictedPreference;->setEnabled(Z)V

    .line 118
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settings_exlib/RestrictedPreference;

    const v1, 0x7f0e06e0

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/RestrictedPreference;->setSummary(I)V

    goto :goto_0

    .line 121
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 122
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 123
    iget-boolean v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mBeamDisallowedBySystem:Z

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settings_exlib/RestrictedPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 125
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settings_exlib/RestrictedPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_exlib/RestrictedPreference;->setEnabled(Z)V

    .line 129
    :goto_1
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settings_exlib/RestrictedPreference;

    invoke-virtual {v0}, Lcom/android/settings_exlib/RestrictedPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settings_exlib/RestrictedPreference;

    const v1, 0x7f0e06de

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/RestrictedPreference;->setSummary(I)V

    goto :goto_0

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settings_exlib/RestrictedPreference;

    const-string/jumbo v1, "no_outgoing_beam"

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/RestrictedPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    goto :goto_1

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settings_exlib/RestrictedPreference;

    const v1, 0x7f0e06df

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/RestrictedPreference;->setSummary(I)V

    goto :goto_0

    .line 136
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 137
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 138
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settings_exlib/RestrictedPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_exlib/RestrictedPreference;->setEnabled(Z)V

    goto :goto_0

    .line 141
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 142
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 143
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settings_exlib/RestrictedPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_exlib/RestrictedPreference;->setEnabled(Z)V

    goto :goto_0

    .line 113
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 100
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 101
    .local v0, "desiredState":Z
    iget-object v1, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 103
    if-eqz v0, :cond_0

    .line 104
    iget-object v1, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->enable()Z

    .line 109
    :goto_0
    return v2

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->disable()Z

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 90
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    .line 91
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 94
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 89
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    .line 82
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/nfc/NfcEnabler;->handleNfcStateChanged(I)V

    .line 85
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 86
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 80
    return-void
.end method
