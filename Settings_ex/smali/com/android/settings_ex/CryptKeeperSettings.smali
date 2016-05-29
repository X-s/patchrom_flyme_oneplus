.class public Lcom/android/settings_ex/CryptKeeperSettings;
.super Landroid/app/Fragment;
.source "CryptKeeperSettings.java"


# static fields
.field private static final KEYGUARD_REQUEST:I = 0x37

.field private static final MIN_BATTERY_LEVEL:I = 0x50

.field private static final TAG:Ljava/lang/String; = "CryptKeeper"


# instance fields
.field private mBatteryWarning:Landroid/view/View;

.field private mContentView:Landroid/view/View;

.field private mInitiateButton:Landroid/widget/Button;

.field private mInitiateListener:Landroid/view/View$OnClickListener;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPowerWarning:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 54
    new-instance v0, Lcom/android/settings_ex/CryptKeeperSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/CryptKeeperSettings$1;-><init>(Lcom/android/settings_ex/CryptKeeperSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/CryptKeeperSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 83
    new-instance v0, Lcom/android/settings_ex/CryptKeeperSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/CryptKeeperSettings$2;-><init>(Lcom/android/settings_ex/CryptKeeperSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/CryptKeeperSettings;->mInitiateListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/CryptKeeperSettings;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/CryptKeeperSettings;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings_ex/CryptKeeperSettings;->mInitiateButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/CryptKeeperSettings;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/CryptKeeperSettings;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings_ex/CryptKeeperSettings;->mPowerWarning:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/CryptKeeperSettings;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/CryptKeeperSettings;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings_ex/CryptKeeperSettings;->mBatteryWarning:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/CryptKeeperSettings;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/CryptKeeperSettings;
    .param p1, "x1"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/settings_ex/CryptKeeperSettings;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 5
    .param p1, "request"    # I

    .prologue
    const/4 v2, 0x1

    .line 156
    invoke-virtual {p0}, Lcom/android/settings_ex/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 157
    .local v1, "res":Landroid/content/res/Resources;
    new-instance v0, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3, p0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 159
    .local v0, "helper":Lcom/android/settings_ex/ChooseLockSettingsHelper;
    invoke-virtual {v0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v3

    if-nez v3, :cond_0

    .line 161
    const-string v3, ""

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/CryptKeeperSettings;->showFinalConfirmation(ILjava/lang/String;)V

    .line 165
    :goto_0
    return v2

    :cond_0
    const/4 v3, 0x0

    const v4, 0x7f09026e

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, p1, v3, v4, v2}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    goto :goto_0
.end method

.method private showFinalConfirmation(ILjava/lang/String;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 190
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 191
    .local v0, "preference":Landroid/preference/Preference;
    const-class v1, Lcom/android/settings_ex/CryptKeeperConfirm;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 192
    const v1, 0x7f09026f

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 193
    invoke-virtual {v0}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 194
    invoke-virtual {v0}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "password"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0}, Lcom/android/settings_ex/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/SettingsActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/android/settings_ex/SettingsActivity;->onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z

    .line 196
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 133
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 134
    invoke-virtual {p0}, Lcom/android/settings_ex/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 135
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 136
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "android.app.action.START_ENCRYPTION"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 137
    const-string v4, "device_policy"

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 139
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v1, :cond_0

    .line 140
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v3

    .line 141
    .local v3, "status":I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 143
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 147
    .end local v1    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v3    # "status":I
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    .line 172
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 174
    const/16 v2, 0x37

    if-eq p1, v2, :cond_1

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    if-ne p2, v3, :cond_0

    if-eqz p3, :cond_0

    .line 181
    const-string v2, "type"

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 182
    .local v1, "type":I
    const-string v2, "password"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "password":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 184
    invoke-direct {p0, v1, v0}, Lcom/android/settings_ex/CryptKeeperSettings;->showFinalConfirmation(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 100
    const v0, 0x7f040029

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/CryptKeeperSettings;->mContentView:Landroid/view/View;

    .line 102
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/CryptKeeperSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 103
    iget-object v0, p0, Lcom/android/settings_ex/CryptKeeperSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/android/settings_ex/CryptKeeperSettings;->mContentView:Landroid/view/View;

    const v1, 0x7f0f0068

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings_ex/CryptKeeperSettings;->mInitiateButton:Landroid/widget/Button;

    .line 106
    iget-object v0, p0, Lcom/android/settings_ex/CryptKeeperSettings;->mInitiateButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings_ex/CryptKeeperSettings;->mInitiateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v0, p0, Lcom/android/settings_ex/CryptKeeperSettings;->mInitiateButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 109
    iget-object v0, p0, Lcom/android/settings_ex/CryptKeeperSettings;->mContentView:Landroid/view/View;

    const v1, 0x7f0f0067

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/CryptKeeperSettings;->mPowerWarning:Landroid/view/View;

    .line 110
    iget-object v0, p0, Lcom/android/settings_ex/CryptKeeperSettings;->mContentView:Landroid/view/View;

    const v1, 0x7f0f0066

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/CryptKeeperSettings;->mBatteryWarning:Landroid/view/View;

    .line 112
    iget-object v0, p0, Lcom/android/settings_ex/CryptKeeperSettings;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 123
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 124
    invoke-virtual {p0}, Lcom/android/settings_ex/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/CryptKeeperSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 125
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 117
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 118
    invoke-virtual {p0}, Lcom/android/settings_ex/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/CryptKeeperSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings_ex/CryptKeeperSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 119
    return-void
.end method
