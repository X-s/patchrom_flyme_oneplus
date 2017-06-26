.class public Lcom/android/settings_ex/ProxySelector;
.super Lcom/android/settings_ex/InstrumentedFragment;
.source "ProxySelector.java"

# interfaces
.implements Lcom/android/settings_ex/DialogCreatable;


# static fields
.field private static final ERROR_DIALOG_ID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ProxySelector"


# instance fields
.field mClearButton:Landroid/widget/Button;

.field mClearHandler:Landroid/view/View$OnClickListener;

.field mDefaultButton:Landroid/widget/Button;

.field mDefaultHandler:Landroid/view/View$OnClickListener;

.field private mDialogFragment:Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;

.field mExclusionListField:Landroid/widget/EditText;

.field mHostnameField:Landroid/widget/EditText;

.field mOKButton:Landroid/widget/Button;

.field mOKHandler:Landroid/view/View$OnClickListener;

.field mOnFocusChangeHandler:Landroid/view/View$OnFocusChangeListener;

.field mPortField:Landroid/widget/EditText;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/settings_ex/InstrumentedFragment;-><init>()V

    .line 244
    new-instance v0, Lcom/android/settings_ex/ProxySelector$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ProxySelector$1;-><init>(Lcom/android/settings_ex/ProxySelector;)V

    iput-object v0, p0, Lcom/android/settings_ex/ProxySelector;->mOKHandler:Landroid/view/View$OnClickListener;

    .line 252
    new-instance v0, Lcom/android/settings_ex/ProxySelector$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ProxySelector$2;-><init>(Lcom/android/settings_ex/ProxySelector;)V

    iput-object v0, p0, Lcom/android/settings_ex/ProxySelector;->mClearHandler:Landroid/view/View$OnClickListener;

    .line 260
    new-instance v0, Lcom/android/settings_ex/ProxySelector$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ProxySelector$3;-><init>(Lcom/android/settings_ex/ProxySelector;)V

    iput-object v0, p0, Lcom/android/settings_ex/ProxySelector;->mDefaultHandler:Landroid/view/View$OnClickListener;

    .line 267
    new-instance v0, Lcom/android/settings_ex/ProxySelector$4;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ProxySelector$4;-><init>(Lcom/android/settings_ex/ProxySelector;)V

    iput-object v0, p0, Lcom/android/settings_ex/ProxySelector;->mOnFocusChangeHandler:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 121
    const v0, 0x7f1201bc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings_ex/ProxySelector;->mHostnameField:Landroid/widget/EditText;

    .line 122
    iget-object v0, p0, Lcom/android/settings_ex/ProxySelector;->mHostnameField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings_ex/ProxySelector;->mOnFocusChangeHandler:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 124
    const v0, 0x7f1201bd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings_ex/ProxySelector;->mPortField:Landroid/widget/EditText;

    .line 125
    iget-object v0, p0, Lcom/android/settings_ex/ProxySelector;->mPortField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings_ex/ProxySelector;->mOKHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v0, p0, Lcom/android/settings_ex/ProxySelector;->mPortField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings_ex/ProxySelector;->mOnFocusChangeHandler:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 128
    const v0, 0x7f1201be

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings_ex/ProxySelector;->mExclusionListField:Landroid/widget/EditText;

    .line 129
    iget-object v0, p0, Lcom/android/settings_ex/ProxySelector;->mExclusionListField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings_ex/ProxySelector;->mOnFocusChangeHandler:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 131
    const v0, 0x7f1201bf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings_ex/ProxySelector;->mOKButton:Landroid/widget/Button;

    .line 132
    iget-object v0, p0, Lcom/android/settings_ex/ProxySelector;->mOKButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings_ex/ProxySelector;->mOKHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    const v0, 0x7f1201c0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings_ex/ProxySelector;->mClearButton:Landroid/widget/Button;

    .line 135
    iget-object v0, p0, Lcom/android/settings_ex/ProxySelector;->mClearButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings_ex/ProxySelector;->mClearHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    const v0, 0x7f1201c1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings_ex/ProxySelector;->mDefaultButton:Landroid/widget/Button;

    .line 138
    iget-object v0, p0, Lcom/android/settings_ex/ProxySelector;->mDefaultButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings_ex/ProxySelector;->mDefaultHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    return-void
.end method

.method private showDialog(I)V
    .locals 3
    .param p1, "dialogId"    # I

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/settings_ex/ProxySelector;->mDialogFragment:Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 114
    const-string v0, "ProxySelector"

    const-string v1, "Old dialog fragment not null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_0
    new-instance v0, Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-direct {v0, p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;-><init>(Lcom/android/settings_ex/DialogCreatable;I)V

    iput-object v0, p0, Lcom/android/settings_ex/ProxySelector;->mDialogFragment:Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 117
    iget-object v0, p0, Lcom/android/settings_ex/ProxySelector;->mDialogFragment:Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p0}, Lcom/android/settings_ex/ProxySelector;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public static validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "hostname"    # Ljava/lang/String;
    .param p1, "port"    # Ljava/lang/String;
    .param p2, "exclList"    # Ljava/lang/String;

    .prologue
    .line 186
    invoke-static {p0, p1, p2}, Landroid/net/Proxy;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 201
    const-string v0, "ProxySelector"

    const-string v1, "Unknown proxy settings error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 188
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 190
    :pswitch_1
    const v0, 0x7f0c0362

    goto :goto_0

    .line 192
    :pswitch_2
    const v0, 0x7f0c035f

    goto :goto_0

    .line 194
    :pswitch_3
    const v0, 0x7f0c0361

    goto :goto_0

    .line 196
    :pswitch_4
    const v0, 0x7f0c0363

    goto :goto_0

    .line 198
    :pswitch_5
    const v0, 0x7f0c0360

    goto :goto_0

    .line 186
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 278
    const/16 v0, 0x52

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/settings_ex/ProxySelector;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 83
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getGlobalProxyAdmin()Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 85
    .local v1, "userSetGlobalProxy":Z
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/ProxySelector;->mHostnameField:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 86
    iget-object v2, p0, Lcom/android/settings_ex/ProxySelector;->mPortField:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 87
    iget-object v2, p0, Lcom/android/settings_ex/ProxySelector;->mExclusionListField:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 88
    iget-object v2, p0, Lcom/android/settings_ex/ProxySelector;->mOKButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 89
    iget-object v2, p0, Lcom/android/settings_ex/ProxySelector;->mClearButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 90
    iget-object v2, p0, Lcom/android/settings_ex/ProxySelector;->mDefaultButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 91
    return-void

    .line 83
    .end local v1    # "userSetGlobalProxy":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .param p1, "id"    # I

    .prologue
    const/4 v4, 0x0

    .line 97
    if-nez p1, :cond_0

    .line 98
    iget-object v5, p0, Lcom/android/settings_ex/ProxySelector;->mHostnameField:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "hostname":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings_ex/ProxySelector;->mPortField:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 100
    .local v3, "portStr":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings_ex/ProxySelector;->mExclusionListField:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "exclList":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/ProxySelector;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v1, v3, v0}, Lcom/android/settings_ex/ProxySelector;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, "msg":Ljava/lang/String;
    new-instance v5, Lcom/oneplus/app/OPAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/ProxySelector;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/oneplus/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0c035d

    invoke-virtual {v5, v6}, Lcom/oneplus/app/OPAlertDialog$Builder;->setTitle(I)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0c035e

    invoke-virtual {v5, v6, v4}, Lcom/oneplus/app/OPAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/oneplus/app/OPAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oneplus/app/OPAlertDialog$Builder;->create()Lcom/oneplus/app/OPAlertDialog;

    move-result-object v4

    .line 109
    .end local v0    # "exclList":Ljava/lang/String;
    .end local v1    # "hostname":Ljava/lang/String;
    .end local v2    # "msg":Ljava/lang/String;
    .end local v3    # "portStr":Ljava/lang/String;
    :cond_0
    return-object v4
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    const v0, 0x7f0400ef

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ProxySelector;->mView:Landroid/view/View;

    .line 71
    iget-object v0, p0, Lcom/android/settings_ex/ProxySelector;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/ProxySelector;->initView(Landroid/view/View;)V

    .line 73
    invoke-virtual {p0}, Lcom/android/settings_ex/ProxySelector;->populateFields()V

    .line 74
    iget-object v0, p0, Lcom/android/settings_ex/ProxySelector;->mView:Landroid/view/View;

    return-object v0
.end method

.method populateFields()V
    .locals 12

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/android/settings_ex/ProxySelector;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 143
    .local v0, "activity":Landroid/app/Activity;
    const-string v4, ""

    .line 144
    .local v4, "hostname":Ljava/lang/String;
    const/4 v6, -0x1

    .line 145
    .local v6, "port":I
    const-string v3, ""

    .line 147
    .local v3, "exclList":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/ProxySelector;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-string v11, "connectivity"

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 150
    .local v2, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getGlobalProxy()Landroid/net/ProxyInfo;

    move-result-object v8

    .line 151
    .local v8, "proxy":Landroid/net/ProxyInfo;
    if-eqz v8, :cond_0

    .line 152
    invoke-virtual {v8}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v4

    .line 153
    invoke-virtual {v8}, Landroid/net/ProxyInfo;->getPort()I

    move-result v6

    .line 154
    invoke-virtual {v8}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v3

    .line 157
    :cond_0
    if-nez v4, :cond_1

    .line 158
    const-string v4, ""

    .line 161
    :cond_1
    iget-object v10, p0, Lcom/android/settings_ex/ProxySelector;->mHostnameField:Landroid/widget/EditText;

    invoke-virtual {v10, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 163
    const/4 v10, -0x1

    if-ne v6, v10, :cond_4

    const-string v7, ""

    .line 164
    .local v7, "portStr":Ljava/lang/String;
    :goto_0
    iget-object v10, p0, Lcom/android/settings_ex/ProxySelector;->mPortField:Landroid/widget/EditText;

    invoke-virtual {v10, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v10, p0, Lcom/android/settings_ex/ProxySelector;->mExclusionListField:Landroid/widget/EditText;

    invoke-virtual {v10, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 168
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 170
    .local v5, "intent":Landroid/content/Intent;
    const-string v10, "button-label"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, "buttonLabel":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 172
    iget-object v10, p0, Lcom/android/settings_ex/ProxySelector;->mOKButton:Landroid/widget/Button;

    invoke-virtual {v10, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 175
    :cond_2
    const-string v10, "title"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 176
    .local v9, "title":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 177
    invoke-virtual {v0, v9}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 179
    :cond_3
    return-void

    .line 163
    .end local v1    # "buttonLabel":Ljava/lang/String;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v7    # "portStr":Ljava/lang/String;
    .end local v9    # "title":Ljava/lang/String;
    :cond_4
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method saveToDb()Z
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 211
    iget-object v9, p0, Lcom/android/settings_ex/ProxySelector;->mHostnameField:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 212
    .local v3, "hostname":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings_ex/ProxySelector;->mPortField:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 213
    .local v6, "portStr":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings_ex/ProxySelector;->mExclusionListField:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 214
    .local v2, "exclList":Ljava/lang/String;
    const/4 v5, 0x0

    .line 216
    .local v5, "port":I
    invoke-static {v3, v6, v2}, Lcom/android/settings_ex/ProxySelector;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 217
    .local v7, "result":I
    if-eqz v7, :cond_0

    .line 218
    invoke-direct {p0, v8}, Lcom/android/settings_ex/ProxySelector;->showDialog(I)V

    .line 241
    :goto_0
    return v8

    .line 222
    :cond_0
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1

    .line 224
    :try_start_0
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 230
    :cond_1
    new-instance v4, Landroid/net/ProxyInfo;

    invoke-direct {v4, v3, v5, v2}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 237
    .local v4, "p":Landroid/net/ProxyInfo;
    invoke-virtual {p0}, Lcom/android/settings_ex/ProxySelector;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string v9, "connectivity"

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 240
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->setGlobalProxy(Landroid/net/ProxyInfo;)V

    .line 241
    const/4 v8, 0x1

    goto :goto_0

    .line 225
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    .end local v4    # "p":Landroid/net/ProxyInfo;
    :catch_0
    move-exception v1

    .line 227
    .local v1, "ex":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method
