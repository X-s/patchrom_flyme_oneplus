.class public Lcom/android/settings_ex/notification/ZenModeVisualInterruptionSettings;
.super Lcom/android/settings_ex/notification/ZenModeSettingsBase;
.source "ZenModeVisualInterruptionSettings.java"


# static fields
.field private static final KEY_SCREEN_OFF:Ljava/lang/String; = "screenOff"

.field private static final KEY_SCREEN_ON:Ljava/lang/String; = "screenOn"


# instance fields
.field private mDisableListeners:Z

.field private mPolicy:Landroid/app/NotificationManager$Policy;

.field private mScreenOff:Landroid/support/v14/preference/SwitchPreference;

.field private mScreenOn:Landroid/support/v14/preference/SwitchPreference;


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/notification/ZenModeVisualInterruptionSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings_ex/notification/ZenModeVisualInterruptionSettings;->mDisableListeners:Z

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/settings_ex/notification/ZenModeVisualInterruptionSettings;ZI)I
    .locals 1
    .param p1, "suppress"    # Z
    .param p2, "effectType"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/notification/ZenModeVisualInterruptionSettings;->getNewSuppressedEffects(ZI)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings_ex/notification/ZenModeVisualInterruptionSettings;I)V
    .locals 0
    .param p1, "suppressedVisualEffects"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/notification/ZenModeVisualInterruptionSettings;->savePolicy(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/settings_ex/notification/ZenModeSettingsBase;-><init>()V

    return-void
.end method

.method private getNewSuppressedEffects(ZI)I
    .locals 2
    .param p1, "suppress"    # Z
    .param p2, "effectType"    # I

    .prologue
    .line 116
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeVisualInterruptionSettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v0, v1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 117
    .local v0, "effects":I
    if-eqz p1, :cond_0

    .line 118
    or-int/2addr v0, p2

    .line 122
    :goto_0
    return v0

    .line 120
    :cond_0
    not-int v1, p2

    and-int/2addr v0, v1

    goto :goto_0
.end method

.method private isEffectSuppressed(I)Z
    .locals 2
    .param p1, "effect"    # I

    .prologue
    const/4 v0, 0x0

    .line 112
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeVisualInterruptionSettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v1, v1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private savePolicy(I)V
    .locals 4
    .param p1, "suppressedVisualEffects"    # I

    .prologue
    .line 126
    new-instance v0, Landroid/app/NotificationManager$Policy;

    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeVisualInterruptionSettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v1, v1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    .line 127
    iget-object v2, p0, Lcom/android/settings_ex/notification/ZenModeVisualInterruptionSettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v2, v2, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iget-object v3, p0, Lcom/android/settings_ex/notification/ZenModeVisualInterruptionSettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v3, v3, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    .line 126
    invoke-direct {v0, v1, v2, v3, p1}, Landroid/app/NotificationManager$Policy;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/settings_ex/notification/ZenModeVisualInterruptionSettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    .line 129
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeVisualInterruptionSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeVisualInterruptionSettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->setNotificationPolicy(Landroid/app/NotificationManager$Policy;)V

    .line 125
    return-void
.end method

.method private updateControls()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 105
    iput-boolean v1, p0, Lcom/android/settings_ex/notification/ZenModeVisualInterruptionSettings;->mDisableListeners:Z

    .line 106
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeVisualInterruptionSettings;->mScreenOff:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0, v1}, Lcom/android/settings_ex/notification/ZenModeVisualInterruptionSettings;->isEffectSuppressed(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 107
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeVisualInterruptionSettings;->mScreenOn:Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/settings_ex/notification/ZenModeVisualInterruptionSettings;->isEffectSuppressed(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/notification/ZenModeVisualInterruptionSettings;->mDisableListeners:Z

    .line 104
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 90
    const/16 v0, 0x106

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/android/settings_ex/notification/ZenModeSettingsBase;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v1, 0x7f0800ae

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/notification/ZenModeVisualInterruptionSettings;->addPreferencesFromResource(I)V

    .line 53
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeVisualInterruptionSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 55
    .local v0, "root":Landroid/support/v7/preference/PreferenceScreen;
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeVisualInterruptionSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/notification/ZenModeVisualInterruptionSettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    .line 57
    const-string/jumbo v1, "screenOff"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings_ex/notification/ZenModeVisualInterruptionSettings;->mScreenOff:Landroid/support/v14/preference/SwitchPreference;

    .line 58
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeVisualInterruptionSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 59
    const v2, 0x1120045

    .line 58
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeVisualInterruptionSettings;->mScreenOff:Landroid/support/v14/preference/SwitchPreference;

    const v2, 0x7f0e0eb0

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    .line 62
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeVisualInterruptionSettings;->mScreenOff:Landroid/support/v14/preference/SwitchPreference;

    new-instance v2, Lcom/android/settings_ex/notification/ZenModeVisualInterruptionSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/notification/ZenModeVisualInterruptionSettings$1;-><init>(Lcom/android/settings_ex/notification/ZenModeVisualInterruptionSettings;)V

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 74
    const-string/jumbo v1, "screenOn"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings_ex/notification/ZenModeVisualInterruptionSettings;->mScreenOn:Landroid/support/v14/preference/SwitchPreference;

    .line 75
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeVisualInterruptionSettings;->mScreenOn:Landroid/support/v14/preference/SwitchPreference;

    new-instance v2, Lcom/android/settings_ex/notification/ZenModeVisualInterruptionSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/notification/ZenModeVisualInterruptionSettings$2;-><init>(Lcom/android/settings_ex/notification/ZenModeVisualInterruptionSettings;)V

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 50
    return-void
.end method

.method protected onZenModeChanged()V
    .locals 0

    .prologue
    .line 94
    return-void
.end method

.method protected onZenModeConfigChanged()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeVisualInterruptionSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notification/ZenModeVisualInterruptionSettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    .line 101
    invoke-direct {p0}, Lcom/android/settings_ex/notification/ZenModeVisualInterruptionSettings;->updateControls()V

    .line 99
    return-void
.end method
