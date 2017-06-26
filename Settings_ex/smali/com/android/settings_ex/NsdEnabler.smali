.class public Lcom/android/settings_ex/NsdEnabler;
.super Ljava/lang/Object;
.source "NsdEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mNsdManager:Landroid/net/nsd/NsdManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSwitchPreference:Landroid/preference/SwitchPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pref"    # Landroid/preference/SwitchPreference;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/android/settings_ex/NsdEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/NsdEnabler$1;-><init>(Lcom/android/settings_ex/NsdEnabler;)V

    iput-object v0, p0, Lcom/android/settings_ex/NsdEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 49
    iput-object p1, p0, Lcom/android/settings_ex/NsdEnabler;->mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/android/settings_ex/NsdEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    .line 51
    iget-object v0, p0, Lcom/android/settings_ex/NsdEnabler;->mContext:Landroid/content/Context;

    const-string v1, "servicediscovery"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/nsd/NsdManager;

    iput-object v0, p0, Lcom/android/settings_ex/NsdEnabler;->mNsdManager:Landroid/net/nsd/NsdManager;

    .line 52
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.nsd.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings_ex/NsdEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/NsdEnabler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/NsdEnabler;
    .param p1, "x1"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/settings_ex/NsdEnabler;->handleNsdStateChanged(I)V

    return-void
.end method

.method private handleNsdStateChanged(I)V
    .locals 3
    .param p1, "newState"    # I

    .prologue
    const/4 v2, 0x1

    .line 74
    packed-switch p1, :pswitch_data_0

    .line 84
    :goto_0
    return-void

    .line 76
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/NsdEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 77
    iget-object v0, p0, Lcom/android/settings_ex/NsdEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    .line 80
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/NsdEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 81
    iget-object v0, p0, Lcom/android/settings_ex/NsdEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    .line 74
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 67
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 68
    .local v0, "desiredState":Z
    iget-object v1, p0, Lcom/android/settings_ex/NsdEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 69
    iget-object v1, p0, Lcom/android/settings_ex/NsdEnabler;->mNsdManager:Landroid/net/nsd/NsdManager;

    invoke-virtual {v1, v0}, Landroid/net/nsd/NsdManager;->setEnabled(Z)V

    .line 70
    return v2
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings_ex/NsdEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/NsdEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 62
    iget-object v0, p0, Lcom/android/settings_ex/NsdEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 63
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings_ex/NsdEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/NsdEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings_ex/NsdEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 57
    iget-object v0, p0, Lcom/android/settings_ex/NsdEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 58
    return-void
.end method
