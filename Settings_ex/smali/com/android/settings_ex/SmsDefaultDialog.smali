.class public final Lcom/android/settings_ex/SmsDefaultDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "SmsDefaultDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/SmsDefaultDialog$AppListAdapter;
    }
.end annotation


# instance fields
.field private mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 137
    return-void
.end method

.method private buildDialog(Ljava/lang/String;)Z
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 87
    const-string v6, "phone"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/SmsDefaultDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 88
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v6

    if-nez v6, :cond_1

    .line 131
    :cond_0
    :goto_0
    return v4

    .line 92
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/SmsDefaultDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 93
    .local v2, "p":Lcom/android/internal/app/AlertController$AlertParams;
    const v6, 0x7f0c06e3

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/SmsDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 94
    invoke-static {p1, p0}, Lcom/android/internal/telephony/SmsApplication;->getSmsApplicationData(Ljava/lang/String;Landroid/content/Context;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 95
    iget-object v6, p0, Lcom/android/settings_ex/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    if-eqz v6, :cond_4

    .line 98
    const/4 v0, 0x0

    .line 99
    .local v0, "oldSmsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    invoke-static {p0, v5}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v1

    .line 100
    .local v1, "oldSmsComponent":Landroid/content/ComponentName;
    if-eqz v1, :cond_2

    .line 101
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p0}, Lcom/android/internal/telephony/SmsApplication;->getSmsApplicationData(Ljava/lang/String;Landroid/content/Context;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v0

    .line 103
    iget-object v6, v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settings_ex/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v7, v7, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 110
    :cond_2
    if-eqz v0, :cond_3

    .line 111
    const v6, 0x7f0c06e4

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/settings_ex/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v8, v8, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    aput-object v8, v7, v4

    iget-object v4, v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    aput-object v4, v7, v5

    invoke-virtual {p0, v6, v7}, Lcom/android/settings_ex/SmsDefaultDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 118
    :goto_1
    const v4, 0x7f0c02b6

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/SmsDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 119
    const v4, 0x7f0c02b7

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/SmsDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 120
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 121
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 129
    .end local v0    # "oldSmsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    .end local v1    # "oldSmsComponent":Landroid/content/ComponentName;
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings_ex/SmsDefaultDialog;->setupAlert()V

    move v4, v5

    .line 131
    goto :goto_0

    .line 115
    .restart local v0    # "oldSmsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    .restart local v1    # "oldSmsComponent":Landroid/content/ComponentName;
    :cond_3
    const v6, 0x7f0c06e5

    new-array v7, v5, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/settings_ex/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v8, v8, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    aput-object v8, v7, v4

    invoke-virtual {p0, v6, v7}, Lcom/android/settings_ex/SmsDefaultDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_1

    .line 124
    .end local v0    # "oldSmsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    .end local v1    # "oldSmsComponent":Landroid/content/ComponentName;
    :cond_4
    new-instance v4, Lcom/android/settings_ex/SmsDefaultDialog$AppListAdapter;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/SmsDefaultDialog$AppListAdapter;-><init>(Lcom/android/settings_ex/SmsDefaultDialog;)V

    iput-object v4, v2, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 125
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 126
    const v4, 0x7f0c0389

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/SmsDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 127
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    goto :goto_2
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, -0x1

    .line 64
    packed-switch p2, :pswitch_data_0

    .line 72
    if-ltz p2, :cond_0

    .line 73
    iget-object v2, p0, Lcom/android/settings_ex/SmsDefaultDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Lcom/android/settings_ex/SmsDefaultDialog$AppListAdapter;

    .line 74
    .local v0, "adapter":Lcom/android/settings_ex/SmsDefaultDialog$AppListAdapter;
    invoke-virtual {v0, p2}, Lcom/android/settings_ex/SmsDefaultDialog$AppListAdapter;->isSelected(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 75
    invoke-virtual {v0, p2}, Lcom/android/settings_ex/SmsDefaultDialog$AppListAdapter;->getPackageName(I)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 77
    invoke-static {v1, p0}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    .line 78
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/SmsDefaultDialog;->setResult(I)V

    .line 84
    .end local v0    # "adapter":Lcom/android/settings_ex/SmsDefaultDialog$AppListAdapter;
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 66
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings_ex/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v2, v2, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static {v2, p0}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    .line 67
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/SmsDefaultDialog;->setResult(I)V

    goto :goto_0

    .line 64
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/settings_ex/SmsDefaultDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 54
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "packageName":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/SmsDefaultDialog;->setResult(I)V

    .line 57
    invoke-direct {p0, v1}, Lcom/android/settings_ex/SmsDefaultDialog;->buildDialog(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/android/settings_ex/SmsDefaultDialog;->finish()V

    .line 60
    :cond_0
    return-void
.end method
