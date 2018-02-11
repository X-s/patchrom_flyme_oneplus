.class public Lcom/android/settings_ex/accounts/AddAccountSettings;
.super Landroid/app/Activity;
.source "AddAccountSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/accounts/AddAccountSettings$1;
    }
.end annotation


# static fields
.field private static final ADD_ACCOUNT_REQUEST:I = 0x2

.field private static final CHOOSE_ACCOUNT_REQUEST:I = 0x1

.field static final EXTRA_HAS_MULTIPLE_USERS:Ljava/lang/String; = "hasMultipleUsers"

.field static final EXTRA_SELECTED_ACCOUNT:Ljava/lang/String; = "selected_account"

.field private static final KEY_ADD_CALLED:Ljava/lang/String; = "AddAccountCalled"

.field private static final KEY_CALLER_IDENTITY:Ljava/lang/String; = "pendingIntent"

.field private static final SHOULD_NOT_RESOLVE:Ljava/lang/String; = "SHOULDN\'T RESOLVE!"

.field private static final TAG:Ljava/lang/String; = "AccountSettings"

.field private static final UNLOCK_WORK_PROFILE_REQUEST:I = 0x3


# instance fields
.field private mAddAccountCalled:Z

.field private final mCallback:Landroid/accounts/AccountManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private mUserHandle:Landroid/os/UserHandle;


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/accounts/AddAccountSettings;)Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/accounts/AddAccountSettings;)Landroid/os/UserHandle;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mUserHandle:Landroid/os/UserHandle;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings_ex/accounts/AddAccountSettings;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0

    iput-object p1, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 89
    new-instance v0, Lcom/android/settings_ex/accounts/AddAccountSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/accounts/AddAccountSettings$1;-><init>(Lcom/android/settings_ex/accounts/AddAccountSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mCallback:Landroid/accounts/AccountManagerCallback;

    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mAddAccountCalled:Z

    .line 62
    return-void
.end method

.method private addAccount(Ljava/lang/String;)V
    .locals 10
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 249
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 259
    .local v4, "addAccountOptions":Landroid/os/Bundle;
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 260
    .local v9, "identityIntent":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v1, "SHOULDN\'T RESOLVE!"

    const-string/jumbo v3, "SHOULDN\'T RESOLVE!"

    invoke-direct {v0, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 261
    const-string/jumbo v0, "SHOULDN\'T RESOLVE!"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    const-string/jumbo v0, "SHOULDN\'T RESOLVE!"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    invoke-static {p0, v5, v9, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;

    .line 265
    const-string/jumbo v0, "pendingIntent"

    iget-object v1, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 266
    const-string/jumbo v0, "hasMultipleUsers"

    invoke-static {p0}, Lcom/android/settings_ex/Utils;->hasMultipleUsers(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 267
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 273
    iget-object v6, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mCallback:Landroid/accounts/AccountManagerCallback;

    .line 275
    iget-object v8, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mUserHandle:Landroid/os/UserHandle;

    move-object v1, p1

    move-object v3, v2

    move-object v5, v2

    move-object v7, v2

    .line 267
    invoke-virtual/range {v0 .. v8}, Landroid/accounts/AccountManager;->addAccountAsUser(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;Landroid/os/UserHandle;)Landroid/accounts/AccountManagerFuture;

    .line 276
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mAddAccountCalled:Z

    .line 248
    return-void
.end method

.method private requestChooseAccount()V
    .locals 5

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AddAccountSettings;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "authorities"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, "authorities":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AddAccountSettings;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "account_types"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, "accountTypes":[Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/settings_ex/Settings$ChooseAccountActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 238
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 239
    const-string/jumbo v3, "authorities"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    :cond_0
    if-eqz v0, :cond_1

    .line 242
    const-string/jumbo v3, "account_types"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    :cond_1
    const-string/jumbo v3, "android.intent.extra.USER"

    iget-object v4, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 245
    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/settings_ex/accounts/AddAccountSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 232
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 194
    packed-switch p1, :pswitch_data_0

    .line 193
    :goto_0
    return-void

    .line 196
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 197
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/AddAccountSettings;->requestChooseAccount()V

    goto :goto_0

    .line 199
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AddAccountSettings;->finish()V

    goto :goto_0

    .line 203
    :pswitch_1
    if-nez p2, :cond_2

    .line 204
    if-eqz p3, :cond_1

    .line 205
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p0, p3, v0}, Lcom/android/settings_ex/accounts/AddAccountSettings;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 207
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/settings_ex/accounts/AddAccountSettings;->setResult(I)V

    .line 208
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AddAccountSettings;->finish()V

    .line 209
    return-void

    .line 212
    :cond_2
    const-string/jumbo v0, "selected_account"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/accounts/AddAccountSettings;->addAccount(Ljava/lang/String;)V

    goto :goto_0

    .line 215
    :pswitch_2
    invoke-virtual {p0, p2}, Lcom/android/settings_ex/accounts/AddAccountSettings;->setResult(I)V

    .line 216
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_3

    .line 217
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    .line 218
    iput-object v1, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;

    .line 220
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AddAccountSettings;->finish()V

    goto :goto_0

    .line 194
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 135
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 137
    if-eqz p1, :cond_0

    .line 138
    const-string/jumbo v2, "AddAccountCalled"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mAddAccountCalled:Z

    .line 139
    const-string/jumbo v2, "AccountSettings"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "AccountSettings"

    const-string/jumbo v3, "restored"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    const-string/jumbo v2, "user"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/accounts/AddAccountSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 143
    .local v1, "um":Landroid/os/UserManager;
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AddAccountSettings;->getActivityToken()Landroid/os/IBinder;

    move-result-object v2

    .line 144
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AddAccountSettings;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 143
    invoke-static {v2, v1, v4, v3}, Lcom/android/settings_ex/Utils;->getSecureTargetUser(Landroid/os/IBinder;Landroid/os/UserManager;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/UserHandle;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mUserHandle:Landroid/os/UserHandle;

    .line 145
    const-string/jumbo v2, "no_modify_accounts"

    iget-object v3, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 147
    const v2, 0x7f0e0d59

    invoke-static {p0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 149
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AddAccountSettings;->finish()V

    .line 150
    return-void

    .line 152
    :cond_1
    iget-boolean v2, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mAddAccountCalled:Z

    if-eqz v2, :cond_2

    .line 154
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AddAccountSettings;->finish()V

    .line 155
    return-void

    .line 157
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {p0, v1, v2}, Lcom/android/settings_ex/Utils;->startQuietModeDialogIfNecessary(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 158
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AddAccountSettings;->finish()V

    .line 159
    return-void

    .line 161
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 162
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/AddAccountSettings;->requestChooseAccount()V

    .line 176
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AddAccountSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 134
    return-void

    .line 166
    :cond_5
    new-instance v0, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    .line 168
    .local v0, "helper":Lcom/android/settings_ex/ChooseLockSettingsHelper;
    const v2, 0x7f0e065d

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/accounts/AddAccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 170
    iget-object v3, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 167
    const/4 v4, 0x3

    .line 169
    const/4 v5, 0x0

    .line 167
    invoke-virtual {v0, v4, v2, v5, v3}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;ZI)Z

    move-result v2

    if-nez v2, :cond_4

    .line 171
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/AddAccountSettings;->requestChooseAccount()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 184
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AddAccountSettings;->finish()V

    .line 186
    const/4 v0, 0x1

    return v0

    .line 188
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 227
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 228
    const-string/jumbo v0, "AddAccountCalled"

    iget-boolean v1, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mAddAccountCalled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 229
    const-string/jumbo v0, "AccountSettings"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "AccountSettings"

    const-string/jumbo v1, "saved"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_0
    return-void
.end method
