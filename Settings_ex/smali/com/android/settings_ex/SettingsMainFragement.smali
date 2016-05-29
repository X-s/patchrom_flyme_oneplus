.class public Lcom/android/settings_ex/SettingsMainFragement;
.super Landroid/app/Activity;
.source "SettingsMainFragement.java"


# static fields
.field private static final FRAG_ACTION_AUTOPROVISION:I = 0x1


# instance fields
.field private in:Landroid/content/Intent;

.field private mFrag:Landroid/app/Fragment;

.field private mRemoteAction:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/SettingsMainFragement;)Landroid/app/Fragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/SettingsMainFragement;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/settings_ex/SettingsMainFragement;->mFrag:Landroid/app/Fragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/SettingsMainFragement;Landroid/app/Fragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/SettingsMainFragement;
    .param p1, "x1"    # Landroid/app/Fragment;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/android/settings_ex/SettingsMainFragement;->changeFragment(Landroid/app/Fragment;)V

    return-void
.end method

.method private changeFragment(Landroid/app/Fragment;)V
    .locals 2
    .param p1, "newFragment"    # Landroid/app/Fragment;

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsMainFragement;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 111
    .local v0, "transaction":Landroid/app/FragmentTransaction;
    const v1, 0x7f0f0135

    invoke-virtual {v0, v1, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 113
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 114
    return-void
.end method

.method private getFragment(I)Landroid/app/Fragment;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 85
    move v0, p1

    .line 87
    .local v0, "fid":I
    packed-switch v0, :pswitch_data_0

    .line 101
    :pswitch_0
    new-instance v1, Lcom/android/settings_ex/vpn2/VpnSettings;

    invoke-direct {v1}, Lcom/android/settings_ex/vpn2/VpnSettings;-><init>()V

    :goto_0
    return-object v1

    .line 89
    :pswitch_1
    new-instance v1, Lcom/android/settings_ex/vpn2/VpnSettings;

    invoke-direct {v1}, Lcom/android/settings_ex/vpn2/VpnSettings;-><init>()V

    goto :goto_0

    .line 92
    :pswitch_2
    new-instance v1, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;

    invoke-direct {v1}, Lcom/android/settings_ex/accessibility/BlackScreenPreferenceFragement;-><init>()V

    goto :goto_0

    .line 95
    :pswitch_3
    new-instance v1, Lcom/android/settings_ex/DataUsageSummary;

    invoke-direct {v1}, Lcom/android/settings_ex/DataUsageSummary;-><init>()V

    goto :goto_0

    .line 97
    :pswitch_4
    new-instance v1, Lcom/android/settings_ex/TetherSettings;

    invoke-direct {v1}, Lcom/android/settings_ex/TetherSettings;-><init>()V

    goto :goto_0

    .line 99
    :pswitch_5
    new-instance v1, Lcom/android/settings_ex/MasterClearConfirm;

    invoke-direct {v1}, Lcom/android/settings_ex/MasterClearConfirm;-><init>()V

    goto :goto_0

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const v1, 0x7f04007a

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/SettingsMainFragement;->setContentView(I)V

    .line 31
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsMainFragement;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 36
    const-string v0, ""

    .line 39
    .local v0, "Title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsMainFragement;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/SettingsMainFragement;->in:Landroid/content/Intent;

    .line 41
    iget-object v1, p0, Lcom/android/settings_ex/SettingsMainFragement;->in:Landroid/content/Intent;

    const-string v2, "actionid"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/SettingsMainFragement;->mRemoteAction:I

    .line 43
    iget v1, p0, Lcom/android/settings_ex/SettingsMainFragement;->mRemoteAction:I

    packed-switch v1, :pswitch_data_0

    .line 69
    :goto_0
    :pswitch_0
    iget v1, p0, Lcom/android/settings_ex/SettingsMainFragement;->mRemoteAction:I

    invoke-direct {p0, v1}, Lcom/android/settings_ex/SettingsMainFragement;->getFragment(I)Landroid/app/Fragment;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/SettingsMainFragement;->mFrag:Landroid/app/Fragment;

    .line 71
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/settings_ex/SettingsMainFragement$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/SettingsMainFragement$1;-><init>(Lcom/android/settings_ex/SettingsMainFragement;)V

    const-wide/16 v4, 0x14

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 80
    return-void

    .line 45
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsMainFragement;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const-string v2, "VPN"

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 48
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsMainFragement;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090715

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsMainFragement;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 52
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsMainFragement;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090928

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsMainFragement;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 56
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsMainFragement;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900db

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsMainFragement;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 60
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsMainFragement;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09054a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsMainFragement;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 43
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 120
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 121
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 125
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 123
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsMainFragement;->finish()V

    goto :goto_0

    .line 121
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
