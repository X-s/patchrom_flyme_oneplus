.class public Lcom/android/settings_ex/accounts/AddAccountSettings;
.super Landroid/app/Activity;
.source "AddAccountSettings.java"


# static fields
.field private static final ADD_ACCOUNT_REQUEST:I = 0x2

.field private static final CHOOSE_ACCOUNT_REQUEST:I = 0x1

.field static final EXTRA_HAS_MULTIPLE_USERS:Ljava/lang/String; = "hasMultipleUsers"

.field static final EXTRA_SELECTED_ACCOUNT:Ljava/lang/String; = "selected_account"

.field private static final KEY_ADD_CALLED:Ljava/lang/String; = "AddAccountCalled"

.field private static final KEY_CALLER_IDENTITY:Ljava/lang/String; = "pendingIntent"

.field private static final SHOULD_NOT_RESOLVE:Ljava/lang/String; = "SHOULDN\'T RESOLVE!"

.field private static final TAG:Ljava/lang/String; = "AccountSettings"


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
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 87
    new-instance v0, Lcom/android/settings_ex/accounts/AddAccountSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/accounts/AddAccountSettings$1;-><init>(Lcom/android/settings_ex/accounts/AddAccountSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mCallback:Landroid/accounts/AccountManagerCallback;

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mAddAccountCalled:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/accounts/AddAccountSettings;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/accounts/AddAccountSettings;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings_ex/accounts/AddAccountSettings;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/accounts/AddAccountSettings;
    .param p1, "x1"    # Landroid/app/PendingIntent;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings_ex/accounts/AddAccountSettings;)Landroid/os/UserHandle;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/accounts/AddAccountSettings;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mUserHandle:Landroid/os/UserHandle;

    return-object v0
.end method

.method private addAccount(Ljava/lang/String;)V
    .locals 10
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 200
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 210
    .local v4, "addAccountOptions":Landroid/os/Bundle;
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 211
    .local v9, "identityIntent":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "SHOULDN\'T RESOLVE!"

    const-string v3, "SHOULDN\'T RESOLVE!"

    invoke-direct {v0, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 212
    const-string v0, "SHOULDN\'T RESOLVE!"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    const-string v0, "SHOULDN\'T RESOLVE!"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    invoke-static {p0, v5, v9, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;

    .line 216
    const-string v0, "pendingIntent"

    iget-object v1, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 217
    const-string v0, "hasMultipleUsers"

    invoke-static {p0}, Lcom/android/settings_ex/Utils;->hasMultipleUsers(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 218
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v6, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mCallback:Landroid/accounts/AccountManagerCallback;

    iget-object v8, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mUserHandle:Landroid/os/UserHandle;

    move-object v1, p1

    move-object v3, v2

    move-object v5, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v8}, Landroid/accounts/AccountManager;->addAccountAsUser(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;Landroid/os/UserHandle;)Landroid/accounts/AccountManagerFuture;

    .line 227
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mAddAccountCalled:Z

    .line 228
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 171
    packed-switch p1, :pswitch_data_0

    .line 190
    :goto_0
    return-void

    .line 173
    :pswitch_0
    if-nez p2, :cond_0

    .line 174
    invoke-virtual {p0, p2}, Lcom/android/settings_ex/accounts/AddAccountSettings;->setResult(I)V

    .line 175
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AddAccountSettings;->finish()V

    goto :goto_0

    .line 179
    :cond_0
    const-string v0, "selected_account"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/accounts/AddAccountSettings;->addAccount(Ljava/lang/String;)V

    goto :goto_0

    .line 182
    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/android/settings_ex/accounts/AddAccountSettings;->setResult(I)V

    .line 183
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;

    .line 187
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AddAccountSettings;->finish()V

    goto :goto_0

    .line 171
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    .line 132
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 134
    if-eqz p1, :cond_0

    .line 135
    const-string v4, "AddAccountCalled"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mAddAccountCalled:Z

    .line 136
    const-string v4, "AccountSettings"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "AccountSettings"

    const-string v5, "restored"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_0
    const-string v4, "user"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/accounts/AddAccountSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 140
    .local v3, "um":Landroid/os/UserManager;
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AddAccountSettings;->getActivityToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AddAccountSettings;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-static {v4, v3, v5, v6}, Lcom/android/settings_ex/Utils;->getSecureTargetUser(Landroid/os/IBinder;Landroid/os/UserManager;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/UserHandle;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mUserHandle:Landroid/os/UserHandle;

    .line 142
    const-string v4, "no_modify_accounts"

    iget-object v5, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 144
    const v4, 0x7f0c0b7f

    invoke-static {p0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 146
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AddAccountSettings;->finish()V

    .line 167
    :goto_0
    return-void

    .line 149
    :cond_1
    iget-boolean v4, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mAddAccountCalled:Z

    if-eqz v4, :cond_2

    .line 151
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AddAccountSettings;->finish()V

    goto :goto_0

    .line 154
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AddAccountSettings;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "authorities"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, "authorities":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AddAccountSettings;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "account_types"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "accountTypes":[Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/android/settings_ex/accounts/ChooseAccountActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 159
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_3

    .line 160
    const-string v4, "authorities"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    :cond_3
    if-eqz v0, :cond_4

    .line 163
    const-string v4, "account_types"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    :cond_4
    const-string v4, "android.intent.extra.USER"

    iget-object v5, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 166
    invoke-virtual {p0, v2, v7}, Lcom/android/settings_ex/accounts/AddAccountSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 236
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 237
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AddAccountSettings;->finish()V

    .line 238
    const/4 v0, 0x1

    .line 240
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 194
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 195
    const-string v0, "AddAccountCalled"

    iget-boolean v1, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mAddAccountCalled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 196
    const-string v0, "AccountSettings"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AccountSettings"

    const-string v1, "saved"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_0
    return-void
.end method
